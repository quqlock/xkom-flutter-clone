class SubCategory {
  const SubCategory(
      {this.subCategoryId,
      this.categoryId,
      this.subCategoryName,
      this.subCategoryIcon});
  final int categoryId;
  final int subCategoryId;
  final String subCategoryName;
  final String subCategoryIcon;
}

const List<SubCategory> subCategories = <SubCategory>[
  SubCategory(
      categoryId: 1,
      subCategoryId: 1,
      subCategoryName: 'Laptopy/Notebooki/Ultrabooki',
      subCategoryIcon: 'assets/images/icons/cat_computers.jpg'),
  SubCategory(
      categoryId: 1,
      subCategoryId: 2,
      subCategoryName: 'Laptopy 2 w 1',
      subCategoryIcon: 'assets/images/icons/cat_computers.jpg'),
  SubCategory(
      categoryId: 1,
      subCategoryId: 3,
      subCategoryName: 'Komputery i serwery',
      subCategoryIcon: 'assets/images/icons/cat_computers.jpg'),
  SubCategory(
      categoryId: 1,
      subCategoryId: 4,
      subCategoryName: 'Komputery G4M3R',
      subCategoryIcon: 'assets/images/icons/cat_computers.jpg'),
  SubCategory(
      categoryId: 1,
      subCategoryId: 5,
      subCategoryName: 'Programy',
      subCategoryIcon: 'assets/images/icons/cat_computers.jpg'),
  SubCategory(
      categoryId: 1,
      subCategoryId: 6,
      subCategoryName: 'Torby i etui',
      subCategoryIcon: 'assets/images/icons/cat_computers.jpg'),
  SubCategory(
      categoryId: 1,
      subCategoryId: 7,
      subCategoryName: 'Akcesoria do laptopów',
      subCategoryIcon: 'assets/images/icons/cat_computers.jpg'),
  SubCategory(
      categoryId: 1,
      subCategoryId: 8,
      subCategoryName: 'Akcesoria komputerowe',
      subCategoryIcon: 'assets/images/icons/cat_computers.jpg'),
  //Smartfony i telefony
  SubCategory(
      categoryId: 2,
      subCategoryId: 1,
      subCategoryName: 'Smartfony i telefony',
      subCategoryIcon: 'assets/images/icons/cat_computers.jpg'),
  SubCategory(
      categoryId: 2,
      subCategoryId: 2,
      subCategoryName: 'Inteligentne zegarki',
      subCategoryIcon: 'assets/images/icons/cat_computers.jpg'),
  SubCategory(
      categoryId: 2,
      subCategoryId: 3,
      subCategoryName: 'Pamięci flash',
      subCategoryIcon: 'assets/images/icons/cat_computers.jpg'),
  SubCategory(
      categoryId: 2,
      subCategoryId: 4,
      subCategoryName: 'Tablety',
      subCategoryIcon: 'assets/images/icons/cat_computers.jpg'),
  SubCategory(
      categoryId: 2,
      subCategoryId: 5,
      subCategoryName: 'Czytniki ebook',
      subCategoryIcon: 'assets/images/icons/cat_computers.jpg'),
];
