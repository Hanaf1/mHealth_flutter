class CategoryModel {
  String vector;
  bool isSelected;

  CategoryModel({
    required this.vector,
    required this.isSelected,
  });

  static List<CategoryModel> getCategories() {
    List<CategoryModel> categories = [];
    categories.add(
        CategoryModel(vector: 'assets/vectors/heart.svg', isSelected: false));
    categories.add(
        CategoryModel(vector: 'assets/vectors/pills.svg', isSelected: false));
    categories.add(
        CategoryModel(vector: 'assets/vectors/Dentist.svg', isSelected: false));
    categories.add(
        CategoryModel(vector: 'assets/vectors/fetus.svg', isSelected: false));

    return categories;
  }
}
