enum Menu {
  howToUse('Как пользоваться', 'question'),
  aboutUs('О нас', 'info');

  final String title;
  final String icon;

  const Menu(this.title, this.icon);
}
