class modelHouse {
  final String title;
  final String location;
  final String imageUrl;
  final String description;
  final double price;
  final int bedrooms;
  final int bathrooms;
  final bool isFavorite;

  modelHouse({
    required this.title,
    required this.location,
    required this.imageUrl,
    required this.description,
    required this.price,
    required this.bedrooms,
    required this.bathrooms,
    this.isFavorite = false,
  });
}

var dummyHouses = [
  modelHouse(
    title: 'Black Modern House',
    location: 'Main Street, Paris',
    imageUrl:
        'https://i.pinimg.com/564x/2b/0e/d8/2b0ed8eef2ef33eaeb9cca6c3e960384.jpg',
    description: 'An elegant house in the heart of Paris.',
    price: 500000.0,
    bedrooms: 4,
    bathrooms: 3,
  ),
  modelHouse(
    title: 'Black Modern House 1',
    location: 'Broadway Street, New York',
    imageUrl:
        'https://i.pinimg.com/564x/7a/f4/2e/7af42e48362503024bcaab2b147adf51.jpg',
    description: 'A modern and stylish house with a beautiful view.',
    price: 300000.0,
    bedrooms: 3,
    bathrooms: 2,
  ),

  modelHouse(
    title: 'Modern Villa 3',
    location: 'Sunset Boulevard, Los Angeles',
    imageUrl: 'https://example.com/image3.jpg',
    description: 'A luxurious villa with a stunning sunset view.',
    price: 800000.0,
    bedrooms: 5,
    bathrooms: 4,
  ),
  // Tambahkan data dummy sesuai kebutuhan
];
