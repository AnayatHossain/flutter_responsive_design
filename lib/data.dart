class GridItem {
  final String imagePath;
  final String title;
  final int sets;
  final int days;

  GridItem({
    required this.imagePath,
    required this.title,
    this.sets = 0,
    this.days = 0,
  });
}


final List<GridItem> items = [
  GridItem(
    imagePath: 'assets/images/bangladesh.jpg',
    title: 'Bangladesh',
    sets: 3,
    days: 7,
  ),
  GridItem(
    imagePath: 'assets/images/palestine.jpg',
    title: 'Palestine',
    sets: 4,
    days: 5,
  ),
  GridItem(
    imagePath: 'assets/images/afghanistan.jpg',
    title: 'Afghanistan',
    sets: 2,
    days: 10,
  ),
  GridItem(
    imagePath: 'assets/images/pakisthan.jpg',
    title: 'Pakisthan',
    sets: 1,
    days: 14,
  ),
  GridItem(
    imagePath: 'assets/images/saudi_arabia.jpg',
    title: 'Saudi Arabia',
    sets: 3,
    days: 7,
  ),
  GridItem(
    imagePath: 'assets/images/jordan.jpg',
    title: 'Jordan',
    sets: 4,
    days: 5,
  ),
  GridItem(
    imagePath: 'assets/images/azerbaijan.jpg',
    title: 'Afghanistan',
    sets: 2,
    days: 10,
  ),
  GridItem(
    imagePath: 'assets/images/maldives.jpg',
    title: 'Maldives',
    sets: 2,
    days: 10,
  ),

];
