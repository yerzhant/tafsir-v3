import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tafsir/common/ui/app_theme.dart';
import 'package:tafsir/surah/domain/ayah.dart';
import 'package:tafsir/surah/ui/html_styles.dart';

class AyahCard extends StatefulWidget {
  const AyahCard({
    super.key,
    required this.theme,

    required this.ayah,

    required this.showAyah,
    required this.showTafsir,
    required this.showTransaltion,
    required this.showFootnotes,

    required this.isBookmarked,

    required this.onShare,
    required this.onPlay,
    required this.onBookmark,
  });

  final AppTheme theme;
  final Ayah ayah;

  final bool showAyah;
  final bool showTafsir;
  final bool showTransaltion;
  final bool showFootnotes;

  final bool isBookmarked;

  final void Function(String text) onShare;
  final void Function(int number) onPlay;
  final void Function(int number) onBookmark;

  @override
  State<AyahCard> createState() => _AyahCardState();
}

class _AyahCardState extends State<AyahCard> {
  var _menuIsOpen = false;

  void _toggleMenu() => setState(() {
    _menuIsOpen = !_menuIsOpen;
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          padding: const .all(12),
          decoration: BoxDecoration(
            color: bgSecondary(widget.theme),
            borderRadius: .circular(16),
            boxShadow: const [
              .new(
                blurRadius: 4,
                offset: .new(0, 2),
                color: Color(0x14A0A0A0),
                blurStyle: .outer,
              ),
            ],
          ),

          child: Column(
            spacing: 12,
            children: [
              Row(
                children: [
                  Container(
                    padding: const .symmetric(horizontal: 8),
                    decoration: BoxDecoration(
                      color: bgPrimary(widget.theme),
                      borderRadius: .circular(4),
                    ),
                    child: Text(
                      '${widget.ayah.number}',
                      style: textCallout.copyWith(
                        color: typographyPrimary(widget.theme),
                      ),
                    ),
                  ),

                  const Spacer(),

                  GestureDetector(
                    onTap: _toggleMenu,
                    child: Container(
                      decoration: BoxDecoration(
                        color: bgPrimary(widget.theme),
                        borderRadius: .circular(8),
                      ),
                      child: SvgPicture.asset(
                        'assets/icons/vertical-dots-in-ayah-header.svg',
                        colorFilter: .mode(
                          typographyPrimary(widget.theme),
                          .srcIn,
                        ),
                      ),
                    ),
                  ),
                ],
              ),

              if (widget.showAyah || widget.showTransaltion)
                Container(
                  padding: const .all(8),
                  decoration: BoxDecoration(
                    color: bgPrimary(widget.theme),
                    borderRadius: .circular(8),
                  ),
                  child: Column(
                    spacing: 8,
                    children: [
                      if (widget.showAyah)
                        Row(
                          mainAxisAlignment: .end,
                          children: [
                            Text(
                              widget.ayah.arabic,
                              textAlign: .right,
                              style: textBodyReg.copyWith(
                                color: typographyPrimary(widget.theme),
                              ),
                            ),
                          ],
                        ),

                      if (widget.showTransaltion)
                        Row(
                          children: [
                            Text(
                              widget.ayah.translation,
                              style: textCallout.copyWith(
                                color: typographyPrimary(widget.theme),
                              ),
                            ),
                          ],
                        ),
                    ],
                  ),
                ),

              if (widget.showTafsir)
                Html(
                  data: widget.ayah.tafsir,
                  style: {
                    ...htmlStyles(widget.theme),
                    'div.snoski': .new(
                      display: widget.showFootnotes ? .block : .none,
                    ),
                  },
                ),
            ],
          ),
        ),

        if (_menuIsOpen)
          Positioned(
            top: 43,
            right: 12,
            child: _Menu(
              theme: widget.theme,
              isBookmarked: widget.isBookmarked,
              
              onShare: _onShare,
              onPlay: () => widget.onPlay(widget.ayah.number),
              onBookmark: () => widget.onBookmark(widget.ayah.number),
            ),
          ),
      ],
    );
  }

  void _onShare() {
    widget.onShare('123');
  }
}

class _Menu extends StatelessWidget {
  const _Menu({
    required this.theme,
    required this.onShare,
    required this.onPlay,
    required this.onBookmark,
    required this.isBookmarked,
  });

  final AppTheme theme;

  final VoidCallback onShare;
  final VoidCallback onPlay;
  final VoidCallback onBookmark;

  final bool isBookmarked;

  @override
  Widget build(BuildContext context) {
    final color = typographyLabelsAndIcons(theme);

    final bookmarkIcon = isBookmarked ? '-active' : '';

    return Container(
      padding: const .all(18),
      decoration: BoxDecoration(
        color: bgContainer(theme),
        borderRadius: .circular(12),
        boxShadow: const [
          .new(
            blurRadius: 12,
            offset: .new(0, 2),
            color: Color(0x14000000),
            blurStyle: .outer,
          ),
        ],
      ),
      child: Row(
        spacing: 12,
        mainAxisSize: .min,
        children: [
          GestureDetector(
            onTap: onShare,
            child: SvgPicture.asset(
              'assets/icons/share-ayah.svg',
              colorFilter: .mode(color, .srcIn),
            ),
          ),

          GestureDetector(
            onTap: onPlay,
            child: SvgPicture.asset(
              'assets/icons/play-ayah.svg',
              colorFilter: .mode(color, .srcIn),
            ),
          ),

          GestureDetector(
            onTap: onBookmark,
            child: SvgPicture.asset(
              'assets/icons/bookmark-ayah$bookmarkIcon.svg',
              colorFilter: .mode(color, .srcIn),
            ),
          ),
        ],
      ),
    );
  }
}

// @Preview(group: 'Ayah Card', name: 'Light')
// Widget previewLight() => sizedWrapper(
//   AyahCard(
//     theme: .light,

//     ayah: const .new(
//       1,
//       .new(_arabic),
//       .new(_tafsir),
//       .new(_translation),
//     ),

//     showAyah: true,
//     showTafsir: true,
//     showTransaltion: true,
//     showFootnotes: true,

//     isBookmarked: false,

//     onShare: (text) => print(text),
//     onPlay: (number) => print(number),
//     onBookmark: (number) => print(number),
//   ),
//   width: 400,
//   hight: 2900,
// );

// const _arabic = 'الْحَمْدُ للّهِ رَبِّ الْعَالَمِينَ';

// const _translation = 'Вся хвала Аллаху, Господу миров,';

// const _tafsir = '''
// <div>
// <div>Имам Матуриди пишет:</div>

// <div>&nbsp;</div>

// <blockquote class="blue">
// <div>&laquo;Слова &laquo;<strong>Вся хвала Аллаху &ndash; Господу миров</strong>&raquo; содержат благодарность Всевышнему Аллаху за все Его блага, адресованную Тому, у кого нет сотоварища. Это восхваление Его наилучшим способом за все Его блага от всех Его творений. Аят также содержит подтверждение единственности Того, кто создал всех людей. Также в нем &ndash; утверждение Его господства в словах &laquo;<strong>Господь миров</strong>&raquo;. Аяты суры обязательно обеспечат читающему их &ndash; с убежденностью в сердце &ndash; счастье в обоих мирах&raquo;<a href="#_ftn1" name="_ftnref1" title="">[1]</a>.</div>
// </blockquote>

// <div>&nbsp;</div>

// <div>Арабское слово <em>&laquo;хамд&raquo;</em> (&laquo;хвала&raquo;) близко по значению слову <em>&laquo;шукр&raquo;</em> (&laquo;благодарность&raquo;).</div>

// <div>&nbsp;</div>

// <div>Имам Ибн Джузай аль-Кальби пишет:</div>

// <div>&nbsp;</div>

// <blockquote class="blue">
// <div>&laquo;Понятие &laquo;восхваление&raquo; <em>(хамд)</em> имеет более общее значение, чем &laquo;благодарность&raquo; <em>(шукр)</em>, поскольку благодарностью называется именно ответ на благодеяние, а восхваление может быть как в ответ на благодеяние, так и без всякого повода.</div>

// <div>&nbsp;</div>

// <div>Однако, с другой стороны, благодарность имеет более общее значение, чем восхваление, ибо восхваление осуществляется словами, а благодарность может быть как скрыта в сердце, так и выражена словами или действиями.</div>

// <div>&nbsp;</div>

// <div>Если ты поймешь общий смысл восхваления, то поймешь следом и то, что слова Всевышнего <strong>&laquo;Вся хвала Аллаху&raquo;</strong> &ndash; это восхваление Его за Его величие, великолепие, единственность, могущество, превосходство, знание, силу, мудрость и другие атрибуты, а также за смыслы девяноста девяти Его прекрасных имен. Кроме того, этот аят включает в себя благодарность и восхваление за все блага, которые он дал, и за все Его милости, оказанные творениям в этом мире и в вечности.</div>

// <div>&nbsp;</div>

// <div>Эти слова &ndash; <strong>&laquo;Вся хвала Аллаху&raquo;</strong> &ndash; содержат смыслы, которые невозможно описать в великом множестве томов; количество этих смыслов разум людей не способен сосчитать! Тебе достаточно уже того, что Всевышний Аллах сделал эти слова началом Его Книги, и обитатели Рая будут ими завершать свои речи<a href="#_ftn2" name="_ftnref2" title="">[2]</a>&raquo;<a href="#_ftn3" name="_ftnref3" title="">[3]</a>.</div>
// </blockquote>

// <div>&nbsp;</div>

// <div>Всевышний Аллах был бы достоин всех похвал, даже если бы Он не создал весь этот мир, включая нас с вами. Даже если бы Он не даровал нам пропитание и даже если бы Он уничтожил нас всех, Он достоин всех похвал! Поэтому в аяте употребляется слово <em>&laquo;аль-хамд&raquo;</em>.</div>

// <div>&nbsp;</div>

// <div>Также имам Матуриди пишет, что одна из важнейших форм восхваления Всевышнего &mdash; это описывать Его только качествами совершенства и не приписывать Ему то, что не подобает Его величию<a href="#_ftn4" name="_ftnref4" title="">[4]</a>. Таким образом, придающие Господу недостатки вроде качеств творений &ndash; нахождения в пространстве, движения, частей тела и т. д. &ndash; не могут считаться теми, кто по-настоящему восхваляет Аллаха.</div>

// <div>&nbsp;</div>

// <div>Слово <em>&laquo;ʼалямин&raquo;</em> &ndash; это множественное число слова <em>&laquo;ʼалям&raquo;</em> (мир, вселенная, царство). &laquo;Миры&raquo; &ndash; это всевозможные формы жизни: небо, земля, солнце, луна, звезды, ветер и дождь, ангелы, джинны, животные, растения, минералы и, конечно, люди. Так, выражение &laquo;Господь всех миров&raquo; означает, что один Аллах творит все существующее во вселенной или в миллионах вселенных, которые могут находиться за пределами нашей в космическом пространстве. Имам ар-Рази, великий комментатор Священного Корана, пишет, что существование иных вселенных за границами нашей рационально допустимо, ибо Аллах &ndash; Всемогущий, и Ему не составило бы труда создать миллионы других вселенных. Имам аль-Куртуби пишет, что, как передается от сподвижника Абу Саʼида аль-Худри (да будет Аллах им доволен), существует сорок тысяч миров, а наш мир, простирающийся от востока до запада, является только одним из них. Согласно имаму Мукатылю, число миров достигает восьмидесяти тысяч<a href="#_ftn5" name="_ftnref5" title="">[5]</a>.</div>

// <div>&nbsp;</div>

// <div>И поскольку Всевышний Аллах &ndash; Обладатель абсолютного Могущества, то только Он в истинном смысле заслуживает хвалы, ведь все творения сами по себе бессильны и постоянно нуждаются в Нем. И именно эта идея составляет ядро истинного единобожия <em>(таухида)</em>.</div>

// <div>
// <div>&nbsp;</div>

// <div>
// <div class="snoski">
// <div><a href="#_ftnref1" name="_ftn1" title="">[1]</a> Матуриди, 1/10.</div>

// <div>&nbsp;</div>

// <div id="ftn2">
// <div><a href="#_ftnref2" name="_ftn2" title="">[2]</a> Имеются в виду слова Аллаха: <strong>&laquo;И последними их (обитателей Рая) словами будут: &laquo;Вся хвала Аллаху, Господу миров!&raquo;&raquo;</strong> (<a href="https://azan.ru/tafsir/Yunus/10">Коран, 10:10</a>).</div>

// <div>&nbsp;</div>
// </div>

// <div id="ftn3">
// <div><a href="#_ftnref3" name="_ftn3" title="">[3]</a> Ибн Джузай, 1/44-45.</div>

// <div>&nbsp;</div>
// </div>

// <div id="ftn4">
// <div><a href="#_ftnref4" name="_ftn4" title="">[4]</a> Матуриди, 1/13.</div>

// <div>&nbsp;</div>
// </div>

// <div id="ftn5">
// <div><a href="#_ftnref5" name="_ftn5" title="">[5]</a> Маʼариф аль-Куран, 1/64-65.</div>
// </div>
// </div>
// </div>
// </div>
// </div>
// ''';
