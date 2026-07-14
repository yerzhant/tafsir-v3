enum MenuItem {
  howToUse('Как пользоваться', 'question'),
  aboutUs('О нас', 'info');

  final String title;
  final String icon;

  const MenuItem(this.title, this.icon);
}
