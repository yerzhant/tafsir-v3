enum AyahFontType {
  uthmanTaha('KFGQPC Uthman Taha Naskh', 1.6),
  meQurah('Me Quran', 2.1),
  noorehira('Noorehira', 1.7),
  saleem('PDMS Saleem', 1.8),
  scheherazade('Scheherazade', 1.4),
  hamdullah('Shaikh Hamdullah', 1.5),
  ;

  final String family;
  final double height;

  const AyahFontType(this.family, this.height);
}
