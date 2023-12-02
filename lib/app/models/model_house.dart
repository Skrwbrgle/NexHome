class modelHouse {
  final String title;
  final String location;
  final String imageAsset;
  final String imageUrl;
  final String description;
  final double price;
  final int bedrooms;
  final int bathrooms;

  modelHouse({
    required this.title,
    required this.location,
    required this.imageAsset,
    required this.imageUrl,
    required this.description,
    required this.price,
    required this.bedrooms,
    required this.bathrooms,
  });
}

var dummyHouses = [
  modelHouse(
    title: 'Black Modern House',
    location: 'Broadway Street, New York',
    imageAsset: 'images/black-modern-house.jpg',
    imageUrl:
        'https://i.pinimg.com/564x/2b/0e/d8/2b0ed8eef2ef33eaeb9cca6c3e960384.jpg',
    description: 'An elegant house in the heart of Paris.',
    price: 500000.0,
    bedrooms: 4,
    bathrooms: 3,
  ),
  modelHouse(
    title: 'Hommy Smart Home',
    location: 'Main Street, Paris',
    imageAsset: 'images/hommy-smart-home.jpg',
    imageUrl:
        'https://i.pinimg.com/564x/7a/f4/2e/7af42e48362503024bcaab2b147adf51.jpg',
    description: 'A modern and stylish house with a beautiful view.',
    price: 300000.0,
    bedrooms: 3,
    bathrooms: 2,
  ),
  modelHouse(
    title: 'Modern Villa',
    location: 'Sunset Boulevard, Los Angeles',
    imageAsset: 'images/modern-villa.jpg',
    imageUrl:
        'https://i.pinimg.com/564x/53/9b/c4/539bc4f70019c31545bfb4cc050eb4d1.jpg',
    description: 'A luxurious villa with a stunning sunset view.',
    price: 800000.0,
    bedrooms: 5,
    bathrooms: 4,
  ),
  modelHouse(
    title: 'Modern Townhouse',
    location: 'Downtown, San Francisco',
    imageAsset: 'images/modern-townhouse.jpg',
    imageUrl:
        'https://i.pinimg.com/564x/b6/4b/de/b64bde5f56583432e6a07ab475b35793.jpg',
    description: 'A stylish townhouse in the heart of San Francisco.',
    price: 700000.0,
    bedrooms: 3,
    bathrooms: 2,
  ),
  modelHouse(
    title: 'Cozy Cottage',
    location: 'Countryside, England',
    imageAsset: 'images/cozy-cottage.jpg',
    imageUrl:
        'https://i.pinimg.com/564x/5c/ab/5f/5cab5f283cb9761643e9824bc1889354.jpg',
    description: 'A charming cottage nestled in the English countryside.',
    price: 400000.0,
    bedrooms: 2,
    bathrooms: 1,
  ),
  modelHouse(
    title: 'Seaside Retreat',
    location: 'Oceanfront, Malibu',
    imageAsset: 'images/seaside-retreat.jpg',
    imageUrl:
        'https://i.pinimg.com/564x/f6/e7/c9/f6e7c961ffa46e73db0d9c2e4972d028.jpg',
    description: 'A beautiful retreat with stunning views of the ocean.',
    price: 900000.0,
    bedrooms: 4,
    bathrooms: 3,
  ),
  modelHouse(
    title: 'Rustic Cabin',
    location: 'Mountain Valley, Colorado',
    imageAsset: 'images/rustic-cabin.jpg',
    imageUrl:
        'https://i.pinimg.com/564x/06/72/5e/06725e88e7c79f7c85eae35ec2f013c6.jpg',
    description:
        'A cozy cabin surrounded by the beauty of the Colorado mountains.',
    price: 600000.0,
    bedrooms: 3,
    bathrooms: 2,
  ),
  modelHouse(
    title: 'Mediterranean Villa',
    location: 'Cliffside, Santorini',
    imageAsset: 'images/mediterranean-villa.jpg',
    imageUrl:
        'https://i.pinimg.com/564x/c6/3d/c3/c63dc3424395b579046623bfe7017e94.jpg',
    description: 'An elegant villa perched on the cliffs of Santorini.',
    price: 1200000.0,
    bedrooms: 6,
    bathrooms: 4,
  ),
  modelHouse(
    title: 'Urban Loft',
    location: 'City Center, New York',
    imageAsset: 'images/urban-loft.jpg',
    imageUrl:
        'https://i.pinimg.com/564x/9a/36/17/9a3617cfc4bf27e09137f97e1bfe3aea.jpg',
    description: 'A modern loft in the bustling heart of New York City.',
    price: 850000.0,
    bedrooms: 3,
    bathrooms: 2,
  ),
  modelHouse(
    title: 'Scandinavian Retreat',
    location: 'Fjordside, Norway',
    imageAsset: 'images/scandinavia-retreat.jpg',
    imageUrl:
        'https://i.pinimg.com/564x/fe/2b/d8/fe2bd8db85a4a3d53794f6beaa06ec55.jpg',
    description:
        'A minimalistic retreat surrounded by the serene beauty of Norway.',
    price: 750000.0,
    bedrooms: 4,
    bathrooms: 3,
  ),
  modelHouse(
    title: 'Tropical Paradise',
    location: 'Beachfront, Bali',
    imageAsset: 'images/tropical-paradise.jpg',
    imageUrl:
        'https://i.pinimg.com/564x/5a/a6/80/5aa68086d2499893271920fb19e70944.jpg',
    description: 'A luxurious paradise on the beautiful beaches of Bali.',
    price: 1100000.0,
    bedrooms: 5,
    bathrooms: 4,
  ),
  modelHouse(
    title: 'Mountain View Chalet',
    location: 'Alpine Heights, Switzerland',
    imageAsset: 'images/mountain-view-chalet.jpg',
    imageUrl:
        'https://i.pinimg.com/564x/1f/f4/df/1ff4dfdd02f236807910f2f7196bf0e2.jpg',
    description: 'A charming chalet with breathtaking views of the Swiss Alps.',
    price: 950000.0,
    bedrooms: 4,
    bathrooms: 3,
  ),
  modelHouse(
    title: 'Elegant Mansion',
    location: 'Luxury District, Dubai',
    imageAsset: 'images/elegant-mansion.jpg',
    imageUrl:
        'https://i.pinimg.com/564x/83/b6/0e/83b60ea510da52f07a174a1c43580042.jpg',
    description: 'An opulent mansion in the upscale district of Dubai.',
    price: 1500000.0,
    bedrooms: 7,
    bathrooms: 5,
  ),
];
