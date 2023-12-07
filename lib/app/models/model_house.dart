class modelHouse {
  final int id;
  final String title;
  final String location;
  final String imageAsset;
  final List<String> imageUrl;
  final String description;
  final double price;
  final int bedrooms;
  final int bathrooms;
  final double latitude;
  final double longitude;

  modelHouse({
    required this.id,
    required this.title,
    required this.location,
    required this.imageAsset,
    required this.imageUrl,
    required this.description,
    required this.price,
    required this.bedrooms,
    required this.bathrooms,
    required this.latitude,
    required this.longitude,
  });
}

var dummyHouses = [
  modelHouse(
    id: 1,
    title: 'Black Modern House',
    location: 'Broadway Street, New York',
    imageAsset: 'images/black-modern-house.jpg',
    imageUrl: [
      'https://i.pinimg.com/564x/d7/ed/23/d7ed23e4bb9f737d4eeb00862c459313.jpg',
      'https://i.pinimg.com/564x/35/2d/ce/352dce5b645c7758d98e65238c598084.jpg',
      'https://i.pinimg.com/564x/2b/0e/d8/2b0ed8eef2ef33eaeb9cca6c3e960384.jpg',
    ],
    description:
        'An elegant house in the heart of Paris. This stunning modern residence offers a harmonious blend of sleek design and comfort. With four spacious bedrooms and three luxurious bathrooms, it provides an ideal living space for those who appreciate contemporary aesthetics. The house features high-end finishes, state-of-the-art appliances, and large windows that flood the interiors with natural light. Enjoy the vibrant city life while residing in this black modern house, where sophistication meets urban living.',
    price: 500000.0,
    bedrooms: 4,
    bathrooms: 3,
    latitude: 40.81332932260718,
    longitude: -73.96034118414931,
  ),
  modelHouse(
    id: 2,
    title: 'Hommy Smart Home',
    location: 'Main Street, Paris',
    imageAsset: 'images/hommy-smart-home.jpg',
    imageUrl: [
      'https://i.pinimg.com/564x/d7/ed/23/d7ed23e4bb9f737d4eeb00862c459313.jpg',
      'https://i.pinimg.com/564x/35/2d/ce/352dce5b645c7758d98e65238c598084.jpg',
      'https://i.pinimg.com/564x/7a/f4/2e/7af42e48362503024bcaab2b147adf51.jpg',
    ],
    description:
        'An elegant house in the heart of Paris. This stunning modern residence offers a harmonious blend of sleek design and comfort. With four spacious bedrooms and three luxurious bathrooms, it provides an ideal living space for those who appreciate contemporary aesthetics. The house features high-end finishes, state-of-the-art appliances, and large windows that flood the interiors with natural light. Enjoy the vibrant city life while residing in this black modern house, where sophistication meets urban living.',
    price: 300000.0,
    bedrooms: 3,
    bathrooms: 2,
    latitude: 40.85675871259618,
    longitude: -73.96740402307016,
  ),
  modelHouse(
    id: 3,
    title: 'Modern Villa',
    location: 'Sunset Boulevard, Los Angeles',
    imageAsset: 'images/modern-villa.jpg',
    imageUrl: [
      'https://i.pinimg.com/564x/d7/ed/23/d7ed23e4bb9f737d4eeb00862c459313.jpg',
      'https://i.pinimg.com/564x/35/2d/ce/352dce5b645c7758d98e65238c598084.jpg',
      'https://i.pinimg.com/564x/53/9b/c4/539bc4f70019c31545bfb4cc050eb4d1.jpg',
    ],
    description:
        'An elegant house in the heart of Paris. This stunning modern residence offers a harmonious blend of sleek design and comfort. With four spacious bedrooms and three luxurious bathrooms, it provides an ideal living space for those who appreciate contemporary aesthetics. The house features high-end finishes, state-of-the-art appliances, and large windows that flood the interiors with natural light. Enjoy the vibrant city life while residing in this black modern house, where sophistication meets urban living.',
    price: 800000.0,
    bedrooms: 5,
    bathrooms: 4,
    latitude: 34.095404954541365,
    longitude: -118.37239742291656,
  ),
  modelHouse(
    id: 4,
    title: 'Modern Townhouse',
    location: 'Downtown, San Francisco',
    imageAsset: 'images/modern-townhouse.jpg',
    imageUrl: [
      'https://i.pinimg.com/564x/d7/ed/23/d7ed23e4bb9f737d4eeb00862c459313.jpg',
      'https://i.pinimg.com/564x/35/2d/ce/352dce5b645c7758d98e65238c598084.jpg',
      'https://i.pinimg.com/564x/b6/4b/de/b64bde5f56583432e6a07ab475b35793.jpg',
    ],
    description:
        'An elegant house in the heart of Paris. This stunning modern residence offers a harmonious blend of sleek design and comfort. With four spacious bedrooms and three luxurious bathrooms, it provides an ideal living space for those who appreciate contemporary aesthetics. The house features high-end finishes, state-of-the-art appliances, and large windows that flood the interiors with natural light. Enjoy the vibrant city life while residing in this black modern house, where sophistication meets urban living.',
    price: 700000.0,
    bedrooms: 3,
    bathrooms: 2,
    latitude: 37.794039079874366,
    longitude: -122.39651100188173,
  ),
  modelHouse(
    id: 5,
    title: 'Cozy Cottage',
    location: 'Countryside, England',
    imageAsset: 'images/cozy-cottage.jpg',
    imageUrl: [
      'https://i.pinimg.com/564x/d7/ed/23/d7ed23e4bb9f737d4eeb00862c459313.jpg',
      'https://i.pinimg.com/564x/35/2d/ce/352dce5b645c7758d98e65238c598084.jpg',
      'https://i.pinimg.com/564x/5c/ab/5f/5cab5f283cb9761643e9824bc1889354.jpg',
    ],
    description:
        'An elegant house in the heart of Paris. This stunning modern residence offers a harmonious blend of sleek design and comfort. With four spacious bedrooms and three luxurious bathrooms, it provides an ideal living space for those who appreciate contemporary aesthetics. The house features high-end finishes, state-of-the-art appliances, and large windows that flood the interiors with natural light. Enjoy the vibrant city life while residing in this black modern house, where sophistication meets urban living.',
    price: 400000.0,
    bedrooms: 2,
    bathrooms: 1,
    latitude: 52.451925856504694,
    longitude: -2.4004989449850918,
  ),
  modelHouse(
    id: 6,
    title: 'Seaside Retreat',
    location: 'Oceanfront, Malibu',
    imageAsset: 'images/seaside-retreat.jpg',
    imageUrl: [
      'https://i.pinimg.com/564x/d7/ed/23/d7ed23e4bb9f737d4eeb00862c459313.jpg',
      'https://i.pinimg.com/564x/35/2d/ce/352dce5b645c7758d98e65238c598084.jpg',
      'https://i.pinimg.com/564x/f6/e7/c9/f6e7c961ffa46e73db0d9c2e4972d028.jpg',
    ],
    description:
        'An elegant house in the heart of Paris. This stunning modern residence offers a harmonious blend of sleek design and comfort. With four spacious bedrooms and three luxurious bathrooms, it provides an ideal living space for those who appreciate contemporary aesthetics. The house features high-end finishes, state-of-the-art appliances, and large windows that flood the interiors with natural light. Enjoy the vibrant city life while residing in this black modern house, where sophistication meets urban living.',
    price: 900000.0,
    bedrooms: 4,
    bathrooms: 3,
    latitude: 34.05928178035644,
    longitude: -118.65149194577016,
  ),
  modelHouse(
    id: 7,
    title: 'Rustic Cabin',
    location: 'Mountain Valley, Colorado',
    imageAsset: 'images/rustic-cabin.jpg',
    imageUrl: [
      'https://i.pinimg.com/564x/d7/ed/23/d7ed23e4bb9f737d4eeb00862c459313.jpg',
      'https://i.pinimg.com/564x/35/2d/ce/352dce5b645c7758d98e65238c598084.jpg',
      'https://i.pinimg.com/564x/06/72/5e/06725e88e7c79f7c85eae35ec2f013c6.jpg',
    ],
    description:
        'An elegant house in the heart of Paris. This stunning modern residence offers a harmonious blend of sleek design and comfort. With four spacious bedrooms and three luxurious bathrooms, it provides an ideal living space for those who appreciate contemporary aesthetics. The house features high-end finishes, state-of-the-art appliances, and large windows that flood the interiors with natural light. Enjoy the vibrant city life while residing in this black modern house, where sophistication meets urban living.',
    price: 600000.0,
    bedrooms: 3,
    bathrooms: 2,
    latitude: 38.06832179431152,
    longitude: -105.44201037450725,
  ),
  modelHouse(
    id: 8,
    title: 'Mediterranean Villa',
    location: 'Cliffside, Santorini',
    imageAsset: 'images/mediterranean-villa.jpg',
    imageUrl: [
      'https://i.pinimg.com/564x/d7/ed/23/d7ed23e4bb9f737d4eeb00862c459313.jpg',
      'https://i.pinimg.com/564x/35/2d/ce/352dce5b645c7758d98e65238c598084.jpg',
      'https://i.pinimg.com/564x/c6/3d/c3/c63dc3424395b579046623bfe7017e94.jpg',
    ],
    description:
        'An elegant house in the heart of Paris. This stunning modern residence offers a harmonious blend of sleek design and comfort. With four spacious bedrooms and three luxurious bathrooms, it provides an ideal living space for those who appreciate contemporary aesthetics. The house features high-end finishes, state-of-the-art appliances, and large windows that flood the interiors with natural light. Enjoy the vibrant city life while residing in this black modern house, where sophistication meets urban living.',
    price: 1200000.0,
    bedrooms: 6,
    bathrooms: 4,
    latitude: 36.4258089976032,
    longitude: 25.42847718314864,
  ),
  modelHouse(
    id: 9,
    title: 'Urban Loft',
    location: 'City Center, New York',
    imageAsset: 'images/urban-loft.jpg',
    imageUrl: [
      'https://i.pinimg.com/564x/d7/ed/23/d7ed23e4bb9f737d4eeb00862c459313.jpg',
      'https://i.pinimg.com/564x/35/2d/ce/352dce5b645c7758d98e65238c598084.jpg',
      'https://i.pinimg.com/564x/9a/36/17/9a3617cfc4bf27e09137f97e1bfe3aea.jpg',
    ],
    description:
        'An elegant house in the heart of Paris. This stunning modern residence offers a harmonious blend of sleek design and comfort. With four spacious bedrooms and three luxurious bathrooms, it provides an ideal living space for those who appreciate contemporary aesthetics. The house features high-end finishes, state-of-the-art appliances, and large windows that flood the interiors with natural light. Enjoy the vibrant city life while residing in this black modern house, where sophistication meets urban living.',
    price: 850000.0,
    bedrooms: 3,
    bathrooms: 2,
    latitude: 40.76407458863402,
    longitude: -73.97941864551969,
  ),
  modelHouse(
    id: 10,
    title: 'Scandinavian Retreat',
    location: 'Fjordside, Norway',
    imageAsset: 'images/scandinavia-retreat.jpg',
    imageUrl: [
      'https://i.pinimg.com/564x/d7/ed/23/d7ed23e4bb9f737d4eeb00862c459313.jpg',
      'https://i.pinimg.com/564x/35/2d/ce/352dce5b645c7758d98e65238c598084.jpg',
      'https://i.pinimg.com/564x/fe/2b/d8/fe2bd8db85a4a3d53794f6beaa06ec55.jpg',
    ],
    description:
        'An elegant house in the heart of Paris. This stunning modern residence offers a harmonious blend of sleek design and comfort. With four spacious bedrooms and three luxurious bathrooms, it provides an ideal living space for those who appreciate contemporary aesthetics. The house features high-end finishes, state-of-the-art appliances, and large windows that flood the interiors with natural light. Enjoy the vibrant city life while residing in this black modern house, where sophistication meets urban living.',
    price: 750000.0,
    bedrooms: 4,
    bathrooms: 3,
    latitude: 60.521666590227056,
    longitude: 5.321272106065348,
  ),
  modelHouse(
    id: 11,
    title: 'Tropical Paradise',
    location: 'Beachfront, Bali',
    imageAsset: 'images/tropical-paradise.jpg',
    imageUrl: [
      'https://i.pinimg.com/564x/d7/ed/23/d7ed23e4bb9f737d4eeb00862c459313.jpg',
      'https://i.pinimg.com/564x/35/2d/ce/352dce5b645c7758d98e65238c598084.jpg',
      'https://i.pinimg.com/564x/5a/a6/80/5aa68086d2499893271920fb19e70944.jpg',
    ],
    description:
        'An elegant house in the heart of Paris. This stunning modern residence offers a harmonious blend of sleek design and comfort. With four spacious bedrooms and three luxurious bathrooms, it provides an ideal living space for those who appreciate contemporary aesthetics. The house features high-end finishes, state-of-the-art appliances, and large windows that flood the interiors with natural light. Enjoy the vibrant city life while residing in this black modern house, where sophistication meets urban living.',
    price: 1100000.0,
    bedrooms: 5,
    bathrooms: 4,
    latitude: -8.064627492443636,
    longitude: 114.6367760175408,
  ),
  modelHouse(
    id: 12,
    title: 'Mountain View Chalet',
    location: 'Alpine Heights, Switzerland',
    imageAsset: 'images/mountain-view-chalet.jpg',
    imageUrl: [
      'https://i.pinimg.com/564x/d7/ed/23/d7ed23e4bb9f737d4eeb00862c459313.jpg',
      'https://i.pinimg.com/564x/35/2d/ce/352dce5b645c7758d98e65238c598084.jpg',
      'https://i.pinimg.com/564x/1f/f4/df/1ff4dfdd02f236807910f2f7196bf0e2.jpg',
    ],
    description:
        'An elegant house in the heart of Paris. This stunning modern residence offers a harmonious blend of sleek design and comfort. With four spacious bedrooms and three luxurious bathrooms, it provides an ideal living space for those who appreciate contemporary aesthetics. The house features high-end finishes, state-of-the-art appliances, and large windows that flood the interiors with natural light. Enjoy the vibrant city life while residing in this black modern house, where sophistication meets urban living.',
    price: 950000.0,
    bedrooms: 4,
    bathrooms: 3,
    latitude: -8.09437320589151,
    longitude: 114.64463280609777,
  ),
  modelHouse(
    id: 13,
    title: 'Elegant Mansion',
    location: 'Luxury District, Dubai',
    imageAsset: 'images/elegant-mansion.jpg',
    imageUrl: [
      'https://i.pinimg.com/564x/d7/ed/23/d7ed23e4bb9f737d4eeb00862c459313.jpg',
      'https://i.pinimg.com/564x/35/2d/ce/352dce5b645c7758d98e65238c598084.jpg',
      'https://i.pinimg.com/564x/83/b6/0e/83b60ea510da52f07a174a1c43580042.jpg',
    ],
    description:
        'An elegant house in the heart of Paris. This stunning modern residence offers a harmonious blend of sleek design and comfort. With four spacious bedrooms and three luxurious bathrooms, it provides an ideal living space for those who appreciate contemporary aesthetics. The house features high-end finishes, state-of-the-art appliances, and large windows that flood the interiors with natural light. Enjoy the vibrant city life while residing in this black modern house, where sophistication meets urban living.',
    price: 1500000.0,
    bedrooms: 7,
    bathrooms: 5,
    latitude: 25.18832091657259,
    longitude: 55.27158373862626,
  ),
];
