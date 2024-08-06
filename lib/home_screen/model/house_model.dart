class HouseModel {
  final int id;
  final String image;
  final String title;
  final String address;
  final double distance;
  final int bedrooms;
  final int bathrooms;
  final String description;
  final String ownerName;
  final String ownerContact;
  final List<String> images;
  final double yearlyRent;
  final String ownerProfileImage;

  HouseModel({
    required this.id,
    required this.image,
    required this.title,
    required this.address,
    required this.distance,
    required this.bedrooms,
    required this.bathrooms,
    required this.description,
    required this.ownerName,
    required this.ownerContact,
    required this.images,
    required this.yearlyRent,
    required this.ownerProfileImage,
  });
}

List<HouseModel> allHouseList = [
  HouseModel(
    id: 1,
    image:
        "https://images.pexels.com/photos/1115804/pexels-photo-1115804.jpeg?auto=compress&cs=tinysrgb&w=600",
    title: "Dreamsville House",
    address: "Jl. Sultan Iskandar Muda",
    distance: 1.8,
    bedrooms: 4,
    bathrooms: 3,
    description:
        "Dreamsville House offers a serene retreat from city life. This four-bedroom home features modern architecture and spacious interiors with abundant natural light. Enjoy a high-ceiling living room with a fireplace, an open kitchen with high-end appliances, and a lush garden for relaxation. Located in a quiet neighborhood with easy access to local amenities and public transport.",
    ownerName: "John Doe",
    ownerProfileImage:
        "https://images.pexels.com/photos/614810/pexels-photo-614810.jpeg?auto=compress&cs=tinysrgb&w=600",
    ownerContact: "+91 9876543210",
    images: [
      "https://images.pexels.com/photos/1115804/pexels-photo-1115804.jpeg?auto=compress&cs=tinysrgb&w=600",
      "https://images.pexels.com/photos/1115804/pexels-photo-1115805.jpeg?auto=compress&cs=tinysrgb&w=600",
    ],
    yearlyRent: 2500000000,
  ),
  HouseModel(
    id: 2,
    image:
        "https://images.pexels.com/photos/24380940/pexels-photo-24380940/free-photo-of-interior-design-of-bedroom.jpeg?auto=compress&cs=tinysrgb&w=600",
    title: "Sunset Villa",
    address: "Jl. Sunset Road No. 10",
    distance: 3.2,
    bedrooms: 5,
    bathrooms: 4,
    description:
        "Sunset Villa is a luxurious property nestled in the hills, offering breathtaking views and modern luxury. The spacious bedrooms each come with an en-suite bathroom and private balcony. Enjoy the open-concept living space with a grand dining area, an infinity pool, and beautifully landscaped gardens. Ideal for those seeking an exclusive living experience with a touch of elegance.",
    ownerName: "Jane Smith",
    ownerProfileImage:
        "https://images.pexels.com/photos/1681010/pexels-photo-1681010.jpeg?auto=compress&cs=tinysrgb&w=600",
    ownerContact: "+91 9123456789",
    images: [
      "https://images.pexels.com/photos/24380940/pexels-photo-24380940/free-photo-of-interior-design-of-bedroom.jpeg?auto=compress&cs=tinysrgb&w=600",
      "https://images.pexels.com/photos/24380940/pexels-photo-24380941.jpeg?auto=compress&cs=tinysrgb&w=600",
    ],
    yearlyRent: 3000000000,
  ),
  HouseModel(
    id: 3,
    image:
        "https://images.pexels.com/photos/2029668/pexels-photo-2029668.jpeg?auto=compress&cs=tinysrgb&w=600",
    title: "Modern Apartment",
    address: "Jl. Pangeran Diponegoro No. 5",
    distance: 2.4,
    bedrooms: 3,
    bathrooms: 2,
    description:
        "This contemporary apartment is located in the city center, offering a stylish urban lifestyle. The apartment features three bedrooms, two bathrooms, and an open-plan living area with floor-to-ceiling windows. Enjoy amenities such as a gym, swimming pool, and community lounge. Perfect for those who want easy access to shopping, dining, and entertainment.",
    ownerName: "Alice Johnson",
    ownerProfileImage:
        "https://images.pexels.com/photos/1065084/pexels-photo-1065084.jpeg?auto=compress&cs=tinysrgb&w=600",
    ownerContact: "+91 9001234567",
    images: [
      "https://images.pexels.com/photos/2029668/pexels-photo-2029668.jpeg?auto=compress&cs=tinysrgb&w=600",
      "https://images.pexels.com/photos/2029668/pexels-photo-2029669.jpeg?auto=compress&cs=tinysrgb&w=600",
    ],
    yearlyRent: 1800000000,
  ),
  HouseModel(
    id: 4,
    image:
        "https://images.pexels.com/photos/751546/pexels-photo-751546.jpeg?auto=compress&cs=tinysrgb&w=600",
    title: "Cozy Cottage",
    address: "Jl. Merdeka No. 8",
    distance: 4.5,
    bedrooms: 2,
    bathrooms: 1,
    description:
        "The Cozy Cottage is a charming two-bedroom home offering a warm and inviting atmosphere. Features include a traditional fireplace, hardwood floors, and a garden with a patio. Ideal for a small family or couple, this cottage provides a peaceful retreat close to shops, schools, and public transport.",
    ownerName: "Robert Brown",
    ownerProfileImage:
        "https://images.pexels.com/photos/834863/pexels-photo-834863.jpeg?auto=compress&cs=tinysrgb&w=600",
    ownerContact: "+91 9012345678",
    images: [
      "https://images.pexels.com/photos/751546/pexels-photo-751546.jpeg?auto=compress&cs=tinysrgb&w=600",
      "https://images.pexels.com/photos/751546/pexels-photo-751547.jpeg?auto=compress&cs=tinysrgb&w=600",
    ],
    yearlyRent: 1200000000,
  ),
  HouseModel(
    id: 5,
    image:
        "https://images.pexels.com/photos/709767/pexels-photo-709767.png?auto=compress&cs=tinysrgb&w=600",
    title: "Luxury Mansion",
    address: "Jl. Sudirman No. 99",
    distance: 5.0,
    bedrooms: 6,
    bathrooms: 5,
    description:
        "This opulent mansion in a gated community offers six grand bedrooms, each with a private en-suite bathroom. The home features marble floors, chandeliers, and a large ballroom. Enjoy outdoor amenities like a swimming pool, tennis court, and landscaped gardens. Perfect for those seeking ultimate luxury and security.",
    ownerName: "Emily White",
    ownerProfileImage:
        "https://images.pexels.com/photos/1181519/pexels-photo-1181519.jpeg?auto=compress&cs=tinysrgb&w=600",
    ownerContact: "+91 9023456789",
    images: [
      "https://images.pexels.com/photos/709767/pexels-photo-709767.png?auto=compress&cs=tinysrgb&w=600",
      "https://images.pexels.com/photos/709767/pexels-photo-709768.png?auto=compress&cs=tinysrgb&w=600",
    ],
    yearlyRent: 5000000000,
  ),
  HouseModel(
    id: 6,
    image:
        "https://images.pexels.com/photos/18098285/pexels-photo-18098285/free-photo-of-beautiful-house-with-large-windows-and-shingles-roof.jpeg?auto=compress&cs=tinysrgb&w=600",
    title: "Orchard House",
    address: "Jl. Taman Sari No. 20",
    distance: 3.5,
    bedrooms: 4,
    bathrooms: 3,
    description:
        "Orchard House is a spacious four-bedroom residence surrounded by lush orchards. The home features an open-plan living area, a modern kitchen, and large windows with views of the garden. Enjoy a private balcony, a large garden with fruit trees, and a relaxing outdoor space.",
    ownerName: "David Green",
    ownerProfileImage:
        "https://images.pexels.com/photos/846741/pexels-photo-846741.jpeg?auto=compress&cs=tinysrgb&w=600",
    ownerContact: "+91 9034567890",
    images: [
      "https://images.pexels.com/photos/18098285/pexels-photo-18098285/free-photo-of-beautiful-house-with-large-windows-and-shingles-roof.jpeg?auto=compress&cs=tinysrgb&w=600",
      "https://images.pexels.com/photos/18098285/pexels-photo-18098286.jpeg?auto=compress&cs=tinysrgb&w=600",
    ],
    yearlyRent: 2800000000,
  ),
  HouseModel(
    id: 7,
    image:
        "https://images.pexels.com/photos/1209672/pexels-photo-1209672.jpeg?auto=compress&cs=tinysrgb&w=600",
    title: "Seaside Bungalow",
    address: "Jl. Pantai Indah No. 15",
    distance: 6.0,
    bedrooms: 3,
    bathrooms: 2,
    description:
        "Seaside Bungalow is a charming coastal retreat just steps from the beach. This three-bedroom home features a bright open-plan living area, a spacious deck, and stunning ocean views. Ideal for outdoor dining and enjoying the beach lifestyle.",
    ownerName: "Olivia Brown",
    ownerProfileImage:
        "https://images.pexels.com/photos/1587009/pexels-photo-1587009.jpeg?auto=compress&cs=tinysrgb&w=600",
    ownerContact: "+91 9045678901",
    images: [
      "https://images.pexels.com/photos/1209672/pexels-photo-1209672.jpeg?auto=compress&cs=tinysrgb&w=600",
      "https://images.pexels.com/photos/1209672/pexels-photo-1209673.jpeg?auto=compress&cs=tinysrgb&w=600",
    ],
    yearlyRent: 1500000000,
  ),
  HouseModel(
    id: 8,
    image:
        "https://images.pexels.com/photos/7475602/pexels-photo-7475602.jpeg?auto=compress&cs=tinysrgb&w=600",
    title: "City Loft",
    address: "Jl. Kebon Kacang No. 12",
    distance: 2.0,
    bedrooms: 2,
    bathrooms: 1,
    description:
        "The City Loft is a modern two-bedroom apartment in the heart of the city. Features include high ceilings, exposed brick walls, and large windows. Enjoy an open-concept living space with a stylish kitchen and easy access to vibrant city life.",
    ownerName: "Michael Clark",
    ownerProfileImage:
        "https://images.pexels.com/photos/1212984/pexels-photo-1212984.jpeg?auto=compress&cs=tinysrgb&w=600",
    ownerContact: "+91 9056789012",
    images: [
      "https://images.pexels.com/photos/7475602/pexels-photo-7475602.jpeg?auto=compress&cs=tinysrgb&w=600",
      "https://images.pexels.com/photos/7475602/pexels-photo-7475603.jpeg?auto=compress&cs=tinysrgb&w=600",
    ],
    yearlyRent: 1600000000,
  ),
  HouseModel(
    id: 9,
    image:
        "https://images.pexels.com/photos/212185/pexels-photo-212185.jpeg?auto=compress&cs=tinysrgb&w=600",
    title: "Country Retreat",
    address: "Jl. Desa No. 40",
    distance: 7.0,
    bedrooms: 3,
    bathrooms: 2,
    description:
        "Country Retreat offers a peaceful escape with its rustic charm and large property. Enjoy three bedrooms, a cozy living room with a fireplace, and a spacious garden. Ideal for those seeking tranquility and a connection to nature while still being within reach of city amenities.",
    ownerName: "Emma Davis",
    ownerProfileImage:
        "https://images.pexels.com/photos/1181686/pexels-photo-1181686.jpeg?auto=compress&cs=tinysrgb&w=600",
    ownerContact: "+91 9067890123",
    images: [
      "https://images.pexels.com/photos/1797055/pexels-photo-1797055.jpeg?auto=compress&cs=tinysrgb&w=600",
      "https://images.pexels.com/photos/1797055/pexels-photo-1797056.jpeg?auto=compress&cs=tinysrgb&w=600",
    ],
    yearlyRent: 2200000000,
  ),
  HouseModel(
    id: 10,
    image:
        "https://images.pexels.com/photos/10254026/pexels-photo-10254026.jpeg?auto=compress&cs=tinysrgb&w=600",
    title: "Elegant Estate",
    address: "Jl. Kuningan No. 22",
    distance: 4.8,
    bedrooms: 5,
    bathrooms: 4,
    description:
        "Elegant Estate is a beautifully designed home featuring five spacious bedrooms and four bathrooms. The property includes a grand entrance hall, a gourmet kitchen, and a large living area with a fireplace. The estate also boasts a private garden and a swimming pool, perfect for hosting gatherings and enjoying the outdoors.",
    ownerName: "Sophia Lee",
    ownerProfileImage:
        "https://images.pexels.com/photos/762020/pexels-photo-762020.jpeg?auto=compress&cs=tinysrgb&w=600",
    ownerContact: "+91 9078901234",
    images: [
      "https://images.pexels.com/photos/10254026/pexels-photo-10254026.jpeg?auto=compress&cs=tinysrgb&w=600",
      "https://images.pexels.com/photos/10254026/pexels-photo-10254027.jpeg?auto=compress&cs=tinysrgb&w=600",
    ],
    yearlyRent: 3500000000,
  ),
  HouseModel(
    id: 11,
    image:
        "https://images.pexels.com/photos/3225519/pexels-photo-3225519.jpeg?auto=compress&cs=tinysrgb&w=600",
    title: "Urban Chic",
    address: "Jl. Thamrin No. 18",
    distance: 2.7,
    bedrooms: 3,
    bathrooms: 2,
    description:
        "Urban Chic is a stylish apartment located in the heart of the city. With three bedrooms and two bathrooms, it features a modern design with high-quality finishes. The open-plan living area includes a contemporary kitchen and large windows that offer city views. The building provides amenities like a rooftop terrace and a fitness center.",
    ownerName: "Lucas Brown",
    ownerProfileImage:
        "https://images.pexels.com/photos/1121796/pexels-photo-1121796.jpeg?auto=compress&cs=tinysrgb&w=600",
    ownerContact: "+91 9089012345",
    images: [
      "https://images.pexels.com/photos/3225519/pexels-photo-3225519.jpeg?auto=compress&cs=tinysrgb&w=600",
      "https://images.pexels.com/photos/3225519/pexels-photo-3225520.jpeg?auto=compress&cs=tinysrgb&w=600",
    ],
    yearlyRent: 1900000000,
  ),
  HouseModel(
    id: 12,
    image:
        "https://images.pexels.com/photos/979190/pexels-photo-979190.jpeg?auto=compress&cs=tinysrgb&w=600",
    title: "Suburban Sanctuary",
    address: "Jl. Cilandak No. 14",
    distance: 6.2,
    bedrooms: 4,
    bathrooms: 3,
    description:
        "Suburban Sanctuary offers a serene living environment with four bedrooms and three bathrooms. The home features an open-concept living space, a modern kitchen, and a large backyard perfect for families. Located in a friendly neighborhood with excellent schools and parks nearby.",
    ownerName: "Ella Turner",
    ownerProfileImage:
        "https://images.pexels.com/photos/774095/pexels-photo-774095.jpeg?auto=compress&cs=tinysrgb&w=600",
    ownerContact: "+91 9098765432",
    images: [
      "https://images.pexels.com/photos/706306/pexels-photo-706306.jpeg?auto=compress&cs=tinysrgb&w=600",
      "https://images.pexels.com/photos/706306/pexels-photo-706307.jpeg?auto=compress&cs=tinysrgb&w=600",
    ],
    yearlyRent: 2100000000,
  ),
  HouseModel(
    id: 13,
    image:
        "https://images.pexels.com/photos/731577/pexels-photo-731577.jpeg?auto=compress&cs=tinysrgb&w=600",
    title: "Charming Chalet",
    address: "Jl. Kebayoran No. 25",
    distance: 5.3,
    bedrooms: 2,
    bathrooms: 1,
    description:
        "Charming Chalet is a cozy and well-maintained home with two bedrooms and one bathroom. It features a charming design with wood accents, a welcoming living area, and a small garden. Ideal for a couple or small family looking for a comfortable and quaint home.",
    ownerName: "Liam Harris",
    ownerProfileImage:
        "https://images.pexels.com/photos/428333/pexels-photo-428333.jpeg?auto=compress&cs=tinysrgb&w=600",
    ownerContact: "+91 9109876543",
    images: [
      "https://images.pexels.com/photos/1855634/pexels-photo-1855634.jpeg?auto=compress&cs=tinysrgb&w=600",
      "https://images.pexels.com/photos/1855634/pexels-photo-1855635.jpeg?auto=compress&cs=tinysrgb&w=600",
    ],
    yearlyRent: 1400000000,
  ),
  HouseModel(
    id: 14,
    image:
        "https://images.pexels.com/photos/4797980/pexels-photo-4797980.jpeg?auto=compress&cs=tinysrgb&w=600",
    title: "Elegant Loft",
    address: "Jl. Pusat Kota No. 30",
    distance: 1.5,
    bedrooms: 2,
    bathrooms: 2,
    description:
        "Elegant Loft is a sophisticated apartment in a prime city location. Featuring two bedrooms and two bathrooms, this loft has a modern design with high ceilings and large windows. Enjoy a spacious open-plan living area, a sleek kitchen, and easy access to all urban conveniences.",
    ownerName: "Mia Martinez",
    ownerProfileImage:
        "https://images.pexels.com/photos/1197132/pexels-photo-1197132.jpeg?auto=compress&cs=tinysrgb&w=600",
    ownerContact: "+91 9112345678",
    images: [
      "https://images.pexels.com/photos/4797980/pexels-photo-4797980.jpeg?auto=compress&cs=tinysrgb&w=600",
      "https://images.pexels.com/photos/4797980/pexels-photo-4797981.jpeg?auto=compress&cs=tinysrgb&w=600",
    ],
    yearlyRent: 1700000000,
  ),
  HouseModel(
    id: 15,
    image:
        "https://images.pexels.com/photos/3775452/pexels-photo-3775452.jpeg?auto=compress&cs=tinysrgb&w=600",
    title: "Mountain View Home",
    address: "Jl. Gunung No. 60",
    distance: 8.0,
    bedrooms: 4,
    bathrooms: 3,
    description:
        "Mountain View Home offers breathtaking views of the surrounding mountains. This four-bedroom residence features large windows, an open living space, and a modern kitchen. Enjoy the tranquility of nature with a large deck and landscaped garden. Perfect for those who appreciate both comfort and stunning natural surroundings.",
    ownerName: "Ava Wilson",
    ownerProfileImage:
        "https://images.pexels.com/photos/1090387/pexels-photo-1090387.jpeg?auto=compress&cs=tinysrgb&w=600",
    ownerContact: "+91 9123456789",
    images: [
      "https://images.pexels.com/photos/3775452/pexels-photo-3775452.jpeg?auto=compress&cs=tinysrgb&w=600",
      "https://images.pexels.com/photos/3775452/pexels-photo-3775453.jpeg?auto=compress&cs=tinysrgb&w=600",
    ],
    yearlyRent: 2400000000,
  ),
];

List<HouseModel> homeList = [
  allHouseList[0],
  allHouseList[1],
  allHouseList[2],
  allHouseList[3],
  allHouseList[4],
  allHouseList[5],
  allHouseList[6],
];

List<HouseModel> bestForYouList = [
  allHouseList[7],
  allHouseList[8],
  allHouseList[9],
  allHouseList[10],
  allHouseList[11],
  allHouseList[12],
  allHouseList[13],
  allHouseList[14],
];
