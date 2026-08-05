enum AyahFontType {
  uthmanTaha(
    'KFGQPC Uthman Taha Naskh',
    'KFGQPC-Uthman-Taha-Naskh-Regular',
  ),
  meQurah(
    'Me Quran',
    'me-Quran',
  ),
  noorehira(
    'Noorehira',
    'noorehira-Regular',
  ),
  saleem(
    'PDMS Saleem',
    'PDMS-Saleem-QuranFont-Regular',
  ),
  scheherazade(
    'Scheherazade',
    'Scheherazade-Regular',
  ),
  hamdullah(
    'Shaikh Hamdullah',
    'Shaikh-Hamdullah-Mushaf',
  ),
  ;

  final String name;
  final String file;

  const AyahFontType(this.name, this.file);
}
