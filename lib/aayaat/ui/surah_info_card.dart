import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:tafsir/common/ui/app_theme.dart';
import 'package:tafsir/main/domain/surah.dart';
import 'package:tafsir/aayaat/ui/html_styles.dart';

class SurahInfoCard extends StatelessWidget {
  const SurahInfoCard({super.key, required this.theme, required this.info});

  final AppTheme theme;
  final SurahInfo info;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        padding: const .only(
          bottom: 20,
          right: 20,
          left: 20,
          top: 0,
        ),
        child: Container(
          padding: const .all(12),
          decoration: BoxDecoration(
            color: bgSecondary(theme),
            borderRadius: .circular(16),
          ),
          child: Html(
            data: info.value,
            style: htmlStyles(theme),
          ),
        ),
      ),
    );
  }
}

// @Preview(group: 'Surah Info Card', name: 'Light')
// Widget previewLight() => sizedWrapper(
//   const SurahInfoCard(theme: .light, info: .new(_text)),
//   width: 400,
//   hight: 500,
// );

// const _text = '''
// <div><strong>Ниспослана в Мекке. В ней 7&nbsp;аятов.</strong></div>

// <div>&nbsp;</div>

// <div>Мекканская сура, согласно основному мнению толкователей Корана, состоит из семи аятов. Однако ученые делят ее на аяты по-разному:</div>

// <div>&nbsp;</div>

// <blockquote class="blue">
// <ul class="blue">
// 	<li>Большинство, считая, что <em>&laquo;БисмиЛляхи-р-Рахмани-р-Рахим&raquo;</em> является первым аятом суры &laquo;Аль-Фатиха&raquo;, седьмым аятом называют: <strong>&laquo;Путем тех, кого Ты облагодетельствовал, а не тех, на кого пал (Твой) гнев и не (путем) заблудших&raquo;</strong>.<br />
// 	&nbsp;</li>
// 	<li>Ханафиты же, не считая <em>&laquo;БисмиЛляхи-р-Рахмани-р-Рахим&raquo;</em> аятом суры &laquo;Аль-Фатиха&raquo;, полагают, что первый аят суры &ndash; это &laquo;Вся хвала Аллаху, Господу миров&raquo;, шестой аят &ndash; &laquo;Путем тех, кого Ты облагодетельствовал&raquo;, а седьмой &ndash; &laquo;А не тех, на кого пал (Твой) гнев и не (путем) заблудших&raquo;.</li>
// </ul>
// </blockquote>

// <div>&nbsp;</div>

// <div>Это разногласие отражено даже в печатных изданиях Корана &ndash; так, например, в последнем издании казанского <em>мусхафа</em><a href="#_ftn1" name="_ftnref1" title="">[1]</a> нумерация аятов &laquo;Фатихи&raquo; дана в соответствии с мнением ханафитского мазхаба. Мы также станем придерживаться такого деления.</div>

// <div>&nbsp;</div>

// <div>
// <div class="snoski">
// <h2 style="text-align: center;"><span style="font-size:16px;"><strong>Достоинства суры</strong></span></h2>
// </div>
// </div>

// <div>&nbsp;</div>

// <div>Эта сура была первой во многих отношениях:</div>

// <div>&nbsp;</div>

// <blockquote class="blue">
// <ul class="blue">
// 	<li>Коран открывается этой сурой.<br />
// 	&nbsp;</li>
// 	<li>Каждый <a href="https://azan.ru/islam/namaz">намаз</a> начинается с этой суры.<br />
// 	&nbsp;</li>
// 	<li>Это первая законченная сура, которая была ниспослана нашему <a href="https://azan.ru/durus/dars/sira-nur-al-yakyin-biografiya-proroka-da-blagoslovit-ego-Allah-i-22">Пророку</a> (да благословит его Аллах и да приветствует)<a href="#_ftn2" name="_ftnref2" title="">[2]</a>.</li>
// </ul>
// </blockquote>

// <div>&nbsp;</div>

// <div>Пророк (да благословит его Аллах и да приветствует) сказал сподвижнику Абу Саи&rsquo;ду ибн аль-Му&rsquo;алле (да будет доволен им Аллах):</div>

// <div>&nbsp;</div>

// <div>
// <div class="specdiv">
// <div>&laquo;Не научить ли мне тебя величайшей суре Корана прежде, чем ты покинешь мечеть?&raquo; Затем он взял меня за руку и вел меня, так что мы уже почти вышли из мечети. Тогда я сказал: &laquo;О Посланник Аллаха, ты сказал, что научишь меня величайшей суре из Корана&raquo;. Он (мир ему и благословение Аллаха) сказал: <em>&laquo;Аль-хамду лиЛляхи Раббиль ʼалямин&raquo;</em><a href="#_ftn3" name="_ftnref3" title="">[3]</a> &ndash;&nbsp;это <em>&laquo;ас-сабʼ аль-масани&raquo;</em> и великий Коран, который был дарован мне&raquo;<a href="#_ftn4" name="_ftnref4" title="">[4]</a>.</div>
// </div>
// </div>

// <div>&nbsp;</div>

// <div><em>&laquo;Ас-саб&rsquo; аль-масани&raquo;</em> переводится как &laquo;семь повторяющихся (аятов)&raquo;. Иными словами, сура &laquo;Аль-Фатиха&raquo; состоит из семи аятов, которые часто повторяются: ведь их читают в каждом ракаате каждого намаза. Если человек совершает только обязательные намазы, он читает суру &laquo;Аль-Фатиха&raquo; семнадцать раз в день. А если добавить различные желательные намазы, это число еще увеличивается.</div>

// <div>&nbsp;</div>

// <div>Убай ибн Ка&rsquo;б (да будет доволен им Аллах) рассказывает:</div>

// <div>&nbsp;</div>

// <blockquote class="blue">
// <div>&laquo;Пророк (да благословит его Аллах и приветствует) прочитал мне суру &laquo;Аль-Фатиха&raquo;. После этого он сказал: &laquo;Клянусь Тем, в Чьей длани моя душа<a href="#_ftn5" name="_ftnref5" title="">[5]</a>! В Таурате, Инджиле, Забуре и в Фуркане<a href="#_ftn6" name="_ftnref6" title="">[6]</a> не было ниспослано ничего, подобного этой суре. Эти семь повторяющихся аятов<a href="#_ftn7" name="_ftnref7" title="">[7]</a> и есть Великий Коран<a href="#_ftn8" name="_ftnref8" title="">[8]</a>&raquo;<a href="#_ftn9" name="_ftnref9" title="">[9]</a>.</div>
// </blockquote>

// <div>&nbsp;</div>

// <div>Сура &laquo;Аль-Фатиха&raquo; &ndash; квинтэссенция, самая суть Священного Корана, а остальная часть Книги &ndash; это раскрытие ее смыслов. Таким образом, эта сура раскрывается в двух частях (очерчивает два направления). Самые главные темы Корана &ndash; это вера <em>(<a href="https://azan.ru/islam/shahada#:~:text=%D0%9F%D1%80%D0%BE%D1%81%D1%82%D0%BE%20%D0%B8%20%D0%BF%D0%BE%D1%81%D0%BB%D0%B5%D0%B4%D0%BE%D0%B2%D0%B0%D1%82%D0%B5%D0%BB%D1%8C%D0%BD%D0%BE-,%D0%98%D0%9C%D0%90%D0%9D,-%D0%A1%D0%BB%D0%BE%D0%B2%D0%BE%20%C2%AB%D0%B8%D0%BC%D0%B0%D0%BD">иман</a>)</em> и благие дела. И то, и другое упоминается в &laquo;Фатихе&raquo;. Кроме того, эта сура дает понять человеку, который только начинает читать или изучать Коран: нужно подойти к этой книге непредвзято &ndash; с разумом, очищенным от всех прежних убеждений и мнений, не ища ничего, кроме истины, обращаясь к Аллаху с мольбой о наставлении на верный путь. Остальные суры Корана &ndash; это как раз ответ на эту мольбу. И этот ответ начинается со слов суры &laquo;Аль-Бакара&raquo;: &laquo;<strong>Алиф Лям Мим. Эта книга &mdash; нет сомнения в ней &mdash; руководство для богобоязненных</strong>&raquo;<a href="#_ftn10" name="_ftnref10" title="">[10]</a>. Это то самое руководство, о котором человек просит в суре &laquo;Аль-Фатиха&raquo; и которое содержится в Священном Коране<a href="#_ftn11" name="_ftnref11" title="">[11]</a>.</div>

// <div>&nbsp;</div>

// <div>Имам Абу Мансур Матуриди (да будет Аллах им доволен) пишет:</div>

// <div>&nbsp;</div>

// <blockquote class="blue">
// <div>&laquo;Смысл суры &laquo;Аль-Фатиха&raquo; обязан понимать каждый человек, ибо эта сура учит восхвалять Аллаха, возвеличивать Его, поклоняться Ему одному, просить помощи только у Него, а также просить у Него наставить нас на прямой путь. Все это необходимо каждому человеку. В этом заключается благородное познание Творца, восхваление Аллаха подобающим образом, ибо Он одаряет Своими благами все Свои создания, и каждый из Его рабов нуждается в Нем&raquo;<a href="#_ftn12" name="_ftnref12" title="">[12]</a>.</div>
// </blockquote>

// <div>&nbsp;</div>

// <div>
// <div class="snoski">
// <h2 style="text-align: center;"><span style="font-size:16px;"><strong>Названия суры</strong></span></h2>
// </div>
// </div>

// <div>&nbsp;</div>

// <div>Имам аль-Куртуби в своем тафсире перечисляет двенадцать имен этой суры. Приведем основные из них:</div>

// <div>&nbsp;</div>

// <blockquote class="blue">
// <ol>
// 	<li>
// 	<div>&laquo;Аль-Фатиха&raquo; или &laquo;Фатиха аль-Китаб&raquo; &ndash; &laquo;Открывающая Книгу&raquo;, ведь Коран начинается с этой суры.<br />
// 	&nbsp;</div>
// 	</li>
// 	<li>
// 	<div>&laquo;аль-Хамд&raquo; (&laquo;Хвала&raquo;). Сура называется так по аяту <strong>&laquo;Вся Хвала Аллаху&hellip;&raquo;</strong>.<br />
// 	&nbsp;</div>
// 	</li>
// 	<li>
// 	<div>&laquo;Умм аль-Китаб&raquo; или &laquo;Умм аль-Куран&raquo; (&laquo;Основа Корана&raquo;), ведь эта сура, как мы сказали выше, &ndash; суть и квинтэссенция Священного Корана.<br />
// 	&nbsp;</div>
// 	</li>
// 	<li>
// 	<div>&laquo;Ас-сабʼ аль-масани&raquo; (&laquo;Семь повторяющихся (аятов)&raquo;).<br />
// 	&nbsp;</div>
// 	</li>
// 	<li>
// 	<div>&laquo;Аль-Куран аль-ʼАзым&raquo; (&laquo;Великий Коран&raquo;). Сура названа так в согласии с принципом метонимии &ndash; часть называется именем целого, чтобы подчеркнуть важность этой части для целого, поскольку самые важные темы Корана присутствуют в первой суре.<br />
// 	&nbsp;</div>
// 	</li>
// 	<li>
// 	<div>&laquo;Аш-Шифа&raquo; (&laquo;Исцеление&raquo;), согласно словам Пророка (да благословит его Аллах и да приветствует): &laquo;Сура &laquo;Аль-Фатиха&raquo; &ndash; это исцеление от любого яда&raquo;<a href="#_ftn13" name="_ftnref13" title="">[13]</a>.<br />
// 	&nbsp;</div>
// 	</li>
// 	<li>
// 	<div>&laquo;Аль-Кафия&raquo; (&laquo;Достаточная&raquo;). Имам аль-Куртуби приводит такой хадис: &laquo;Основа Книги заменяет собой остальное, а остальное не может заменить ее&raquo;<a href="#_ftn14" name="_ftnref14" title="">[14]</a>.</div>
// 	</li>
// </ol>
// </blockquote>

// <div>&nbsp;</div>

// <div>
// <div class="snoski">
// <h2 style="text-align: center;"><span style="font-size:16px;"><strong>Важный хадис об этой суре</strong></span></h2>
// </div>
// </div>

// <div>&nbsp;</div>

// <div>Имам Муслим передает от Абу Хурайры (да будет Аллах им доволен) хадис, в котором Пророк (да благословит его Аллах и да приветствует) говорит:</div>

// <div>&nbsp;</div>

// <div>
// <div class="specdiv">
// <div>&laquo;Аллах Всемогущий и Великий сказал: &laquo;Я разделил молитву (то есть суру &laquo;Аль-Фатиха&raquo;) между Собой и рабом Своим поровну, и Моему рабу достанется то, о чем он просит&raquo;.</div>
// </div>
// </div>

// <div>&nbsp;</div>

// <div>Затем Посланник Аллаха (да благословит его Аллах и да приветствует) сказал: &laquo;И если раб скажет:</div>

// <div>&nbsp;</div>

// <div>
// <div class="specdiv">
// <div style="text-align: right;"><span style="font-family:verdana;"><span dir="rtl" lang="ar"><span style="font-size:20px;">الْحَمْدُ للّهِ رَبِّ الْعَالَمِينَ</span></span></span></div>

// <div align="center">&nbsp;</div>

// <div><strong>&laquo;Вся хвала Аллаху, Господу миров&raquo;, &mdash;</strong></div>
// </div>
// </div>

// <div>&nbsp;</div>

// <div>Всевышний Аллах говорит: <strong>&laquo;Раб Мой воздал Мне хвалу&raquo;.</strong></div>

// <div>&nbsp;</div>

// <div>И если человек скажет:</div>

// <div>&nbsp;</div>

// <div>
// <div class="specdiv">
// <div style="text-align: right;"><span style="font-family:verdana;"><span dir="rtl" lang="ar"><span style="font-size:20px;">الرَّحْمنِ الرَّحِيمِ&nbsp;</span></span></span></div>

// <div align="center" style="margin-left: 18pt;">&nbsp;</div>

// <div><strong>&laquo;Милостивому, Милующему&raquo;, &mdash;</strong></div>
// </div>
// </div>

// <div>&nbsp;</div>

// <div>Аллах говорит: <strong>&laquo;Раб Мой восславил Меня&raquo;.</strong></div>

// <div>&nbsp;</div>

// <div>И если он скажет:</div>

// <div>&nbsp;</div>

// <div>
// <div class="specdiv">
// <div style="text-align: right;"><span style="font-family:verdana;"><span dir="rtl" lang="ar"><span style="font-size:20px;">مَالِكِ يَوْمِ الدِّينِ</span></span></span></div>

// <div align="center">&nbsp;</div>

// <div><strong>&laquo;Властелину Судного Дня&raquo;, &mdash;</strong></div>
// </div>
// </div>

// <p>&nbsp;</p>

// <div>Всевышний Аллах говорит:<strong> &laquo;Раб Мой превознёс Меня&raquo;</strong>.</div>

// <div>&nbsp;</div>

// <div>И если он скажет:</div>

// <div>&nbsp;</div>

// <div>
// <div class="specdiv">
// <div style="text-align: right;"><span style="font-family:verdana;"><span dir="rtl" lang="ar"><span style="font-size:20px;">إِيَّاكَ نَعْبُدُ وإِيَّاكَ نَسْتَعِينُ&nbsp;</span></span></span></div>

// <div style="margin-left: 18pt;">&nbsp;</div>

// <p><strong>&laquo;Тебе одному мы поклоняемся и Тебя одного просим о помощи&raquo;, &mdash;</strong></p>
// </div>
// </div>

// <p>&nbsp;</p>

// <div>Аллах говорит: <strong>&laquo;Это (будет поделено поровну) между Мной и рабом Моим, и достанется рабу Моему то, о чём он просит&raquo;.</strong></div>

// <div>&nbsp;</div>

// <div>И если раб скажет:</div>

// <div>&nbsp;</div>

// <div>
// <div class="specdiv">
// <div style="text-align: right;"><span style="font-family:verdana;"><span dir="rtl" lang="ar"><span style="font-size:20px;">اهدِنَا الصِّرَاطَ المُستَقِيمَ</span></span></span></div>

// <div dir="RTL"><span style="font-family:verdana;"><span dir="rtl" lang="ar"><span style="font-size:20px;">صِرَاطَ الَّذِينَ أَنعَمتَ عَلَيهِمْ غَيرِ المَغضُوبِ عَلَيهِمْ وَلاَ الضَّالِّينَ</span></span></span></div>

// <div align="center">&nbsp;</div>

// <div><strong>&laquo;Веди нас прямым путем,</strong>&nbsp;<strong>Путем тех, кого Ты облагодетельствовал, а не тех, на кого пал (Твой) гнев и не (путем) заблудших&raquo;, &mdash;</strong></div>
// </div>
// </div>

// <p>&nbsp;</p>

// <div>Аллах говорит: <strong>&laquo;Это &mdash; Моему рабу, и будет ему то, о чём он просит!&raquo;</strong></div>

// <div>&nbsp;</div>

// <div>
// <div id="ftn1">
// <div>
// <div class="snoski">
// <div id="ftn1">
// <div><a href="#_ftnref1" name="_ftn1" title="">[1]</a> Издание текста Священного Корана подготовлено под руководством муфтия республики Татарстан Камиля-хазрата Самигуллина; Казань, 2016.</div>

// <div>&nbsp;</div>
// </div>

// <div id="ftn2">
// <div><a href="#_ftnref2" name="_ftn2" title="">[2]</a> Маʼариф аль-Куран&raquo; 1/53.</div>

// <div>&nbsp;</div>

// <div><a href="#_ftnref3" name="_ftn3" title="">[3]</a> То есть сура &laquo;Аль-Фатиха&raquo;.</div>

// <div>&nbsp;</div>
// </div>

// <div id="ftn4">
// <div><a href="#_ftnref4" name="_ftn4" title="">[4]</a> Привел аль-Бухари.</div>

// <div>&nbsp;</div>
// </div>

// <div id="ftn5">
// <div><a href="#_ftnref5" name="_ftn5" title="">[5]</a> То есть &laquo;Клянусь именем Всевышнего Аллаха&raquo;.</div>

// <div>&nbsp;</div>
// </div>

// <div id="ftn6">
// <div><a href="#_ftnref6" name="_ftn6" title="">[6]</a> То есть в Коране.</div>

// <div>&nbsp;</div>
// </div>

// <div id="ftn7">
// <div><a href="#_ftnref7" name="_ftn7" title="">[7]</a> &laquo;Ас-саб&rsquo; аль-масани&raquo;.</div>

// <div>&nbsp;</div>
// </div>

// <div id="ftn8">
// <div><a href="#_ftnref8" name="_ftn8" title="">[8]</a> Саму эту суру называют Великим Кораном, поскольку она содержит все, что есть в Коране.</div>

// <div>&nbsp;</div>
// </div>

// <div id="ftn9">
// <div><a href="#_ftnref9" name="_ftn9" title="">[9]</a> Передали ат-Тирмизи, Ахмад и др.</div>

// <div>&nbsp;</div>
// </div>

// <div id="ftn10">
// <div><a href="#_ftnref10" name="_ftn10" title="">[10]</a> <a href="https://azan.ru/tafsir/al-Bakara/1">Коран, 2:1-2</a>.</div>

// <div>&nbsp;</div>
// </div>

// <div id="ftn11">
// <div><a href="#_ftnref11" name="_ftn11" title="">[11]</a> Маʼариф аль-Куран, 1/54.</div>

// <div>&nbsp;</div>
// </div>

// <div id="ftn12">
// <div><a href="#_ftnref12" name="_ftn12" title="">[12]</a> Матуриди, 1/7-8.</div>

// <div>&nbsp;</div>
// </div>

// <div id="ftn13">
// <div><a href="#_ftnref13" name="_ftn13" title="">[13]</a> Привели ад-Дарими, аль-Байхакы в &laquo;Шуʼаб&raquo; и др.</div>

// <div>&nbsp;</div>
// </div>

// <div id="ftn14">
// <div><a href="#_ftnref14" name="_ftn14" title="">[14]</a> Куртуби, 1/172-175.</div>
// </div>
// </div>
// </div>
// </div>
// </div>
// ''';
