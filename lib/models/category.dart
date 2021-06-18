class Category {
  const Category({this.categoryId, this.categoryName, this.categoryIcon});
  final String categoryName;
  final String categoryIcon;
  final int categoryId;
}

const List<Category> categories = <Category>[
  Category(
      categoryId: 1,
      categoryName: 'Laptopy i komputery',
      categoryIcon: 'assets/images/icons/cat_computers.jpg'),
  Category(
      categoryId: 2,
      categoryName: 'Smartfony i smartwatche',
      categoryIcon: 'assets/images/icons/cat_smartphones.jpg'),
  Category(
      categoryId: 3,
      categoryName: 'Gaming i streaming',
      categoryIcon: 'assets/images/icons/cat_gameing.jpg'),
  Category(
      categoryId: 4,
      categoryName: 'Podzespoły komputerowe',
      categoryIcon: 'assets/images/icons/cat_hardware.jpg'),
  Category(
      categoryId: 5,
      categoryName: 'Urządzenia peryferyjne',
      categoryIcon: 'assets/images/icons/cat_hdd.jpg'),
  Category(
      categoryId: 6,
      categoryName: 'TV i audio',
      categoryIcon: 'assets/images/icons/cat_tv.jpg'),
  Category(
      categoryId: 7,
      categoryName: 'Smarthome i lifestyle',
      categoryIcon: 'assets/images/icons/cat_smart.jpg'),
  Category(
      categoryId: 8,
      categoryName: 'Akcesoria',
      categoryIcon: 'assets/images/icons/cat_accesories.jpg'),
];
