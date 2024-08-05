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
        "A beautiful dream house with spacious rooms and modern amenities.",
    ownerName: "John Doe",
    ownerContact: "+91 9876543210",
    images: [
      "https://images.pexels.com/photos/1115804/pexels-photo-1115804.jpeg?auto=compress&cs=tinysrgb&w=600",
      "https://images.pexels.com/photos/1115804/pexels-photo-1115805.jpeg?auto=compress&cs=tinysrgb&w=600",
    ],
    yearlyRent: 2500000000, // Assuming rent is in local currency
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
        "Enjoy breathtaking sunsets from this luxurious villa with a private pool.",
    ownerName: "Jane Smith",
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
        "A stylish apartment in the heart of the city with modern fittings.",
    ownerName: "Alice Johnson",
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
    description: "A charming cottage perfect for a small family or couple.",
    ownerName: "Robert Brown",
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
        "An extravagant mansion with top-notch facilities and security.",
    ownerName: "Emily White",
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
        "A peaceful house surrounded by lush orchards, perfect for nature lovers.",
    ownerName: "Michael Green",
    ownerContact: "+91 9087654321",
    images: [
      "https://images.pexels.com/photos/10457501/pexels-photo-10457501.jpeg?auto=compress&cs=tinysrgb&w=600",
      "https://images.pexels.com/photos/10457501/pexels-photo-10457502.jpeg?auto=compress&cs=tinysrgb&w=600",
    ],
    yearlyRent: 2700000000,
  ),
  HouseModel(
    id: 7,
    image:
        "https://images.pexels.com/photos/259987/pexels-photo-259987.jpeg?auto=compress&cs=tinysrgb&w=600",
    title: "Harmony Estate",
    address: "Jl. Harmony No. 15",
    distance: 2.9,
    bedrooms: 5,
    bathrooms: 4,
    description:
        "An estate offering luxury and tranquility with a beautiful garden and pool.",
    ownerName: "Sophia Black",
    ownerContact: "+91 9098765432",
    images: [
      "https://images.pexels.com/photos/259987/pexels-photo-259987.jpeg?auto=compress&cs=tinysrgb&w=600",
      "https://images.pexels.com/photos/259987/pexels-photo-259988.jpeg?auto=compress&cs=tinysrgb&w=600",
    ],
    yearlyRent: 3200000000,
  ),
  HouseModel(
    id: 8,
    image:
        "https://images.pexels.com/photos/709767/pexels-photo-709767.png?auto=compress&cs=tinysrgb&w=600",
    title: "Luxury Mansion",
    address: "Jl. Sudirman No. 99",
    distance: 5.0,
    bedrooms: 6,
    bathrooms: 5,
    description:
        "An extravagant mansion with top-notch facilities and security.",
    ownerName: "Emily White",
    ownerContact: "+91 9023456789",
    images: [
      "https://images.pexels.com/photos/709767/pexels-photo-709767.png?auto=compress&cs=tinysrgb&w=600",
      "https://images.pexels.com/photos/709767/pexels-photo-709768.png?auto=compress&cs=tinysrgb&w=600",
    ],
    yearlyRent: 5000000000,
  ),
  HouseModel(
    id: 9,
    image:
        "https://images.pexels.com/photos/1209672/pexels-photo-1209672.jpeg?auto=compress&cs=tinysrgb&w=600",
    title: "Cozy Loft",
    address: "Jl. Cozy No. 25",
    distance: 1.2,
    bedrooms: 2,
    bathrooms: 1,
    description: "A modern loft with a chic design and excellent city views.",
    ownerName: "Daniel Brown",
    ownerContact: "+91 9056781234",
    images: [
      "https://images.pexels.com/photos/1209672/pexels-photo-1209672.jpeg?auto=compress&cs=tinysrgb&w=600",
      "https://images.pexels.com/photos/1209672/pexels-photo-1209673.jpeg?auto=compress&cs=tinysrgb&w=600",
    ],
    yearlyRent: 1200000000,
  ),
  HouseModel(
    id: 10,
    image:
        "https://images.pexels.com/photos/1643382/pexels-photo-1643382.jpeg?auto=compress&cs=tinysrgb&w=600",
    title: "Seaside Villa",
    address: "Jl. Seaside No. 40",
    distance: 6.0,
    bedrooms: 4,
    bathrooms: 4,
    description:
        "A luxurious villa with stunning sea views and private beach access.",
    ownerName: "Olivia Smith",
    ownerContact: "+91 9034567890",
    images: [
      "https://images.pexels.com/photos/1643382/pexels-photo-1643382.jpeg?auto=compress&cs=tinysrgb&w=600",
      "https://images.pexels.com/photos/1643382/pexels-photo-1643383.jpeg?auto=compress&cs=tinysrgb&w=600",
    ],
    yearlyRent: 4500000000,
  ),
  HouseModel(
    id: 11,
    image:
        "https://images.pexels.com/photos/10457501/pexels-photo-10457501.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
    title: "Mountain Retreat",
    address: "Jl. Mountain No. 30",
    distance: 8.0,
    bedrooms: 3,
    bathrooms: 2,
    description:
        "A secluded retreat in the mountains offering peace and relaxation.",
    ownerName: "James Williams",
    ownerContact: "+91 9045678901",
    images: [
      "https://images.pexels.com/photos/1485770/pexels-photo-1485770.jpeg?auto=compress&cs=tinysrgb&w=600",
      "https://images.pexels.com/photos/1485770/pexels-photo-1485771.jpeg?auto=compress&cs=tinysrgb&w=600",
    ],
    yearlyRent: 2000000000,
  ),
];

List<HouseModel> homeList = [
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
        "A beautiful dream house with spacious rooms and modern amenities.",
    ownerName: "John Doe",
    ownerContact: "+91 9876543210",
    images: [
      "https://images.pexels.com/photos/1115804/pexels-photo-1115804.jpeg?auto=compress&cs=tinysrgb&w=600",
      "https://images.pexels.com/photos/1115804/pexels-photo-1115805.jpeg?auto=compress&cs=tinysrgb&w=600",
    ],
    yearlyRent: 2500000000, // Assuming rent is in local currency
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
        "Enjoy breathtaking sunsets from this luxurious villa with a private pool.",
    ownerName: "Jane Smith",
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
        "A stylish apartment in the heart of the city with modern fittings.",
    ownerName: "Alice Johnson",
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
    description: "A charming cottage perfect for a small family or couple.",
    ownerName: "Robert Brown",
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
        "An extravagant mansion with top-notch facilities and security.",
    ownerName: "Emily White",
    ownerContact: "+91 9023456789",
    images: [
      "https://images.pexels.com/photos/709767/pexels-photo-709767.png?auto=compress&cs=tinysrgb&w=600",
      "https://images.pexels.com/photos/709767/pexels-photo-709768.png?auto=compress&cs=tinysrgb&w=600",
    ],
    yearlyRent: 5000000000,
  ),
];

List<HouseModel> bestForYouList = [
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
        "A peaceful house surrounded by lush orchards, perfect for nature lovers.",
    ownerName: "Michael Green",
    ownerContact: "+91 9087654321",
    images: [
      "https://images.pexels.com/photos/10457501/pexels-photo-10457501.jpeg?auto=compress&cs=tinysrgb&w=600",
      "https://images.pexels.com/photos/10457501/pexels-photo-10457502.jpeg?auto=compress&cs=tinysrgb&w=600",
    ],
    yearlyRent: 2700000000,
  ),
  HouseModel(
    id: 7,
    image:
        "https://images.pexels.com/photos/259987/pexels-photo-259987.jpeg?auto=compress&cs=tinysrgb&w=600",
    title: "Harmony Estate",
    address: "Jl. Harmony No. 15",
    distance: 2.9,
    bedrooms: 5,
    bathrooms: 4,
    description:
        "An estate offering luxury and tranquility with a beautiful garden and pool.",
    ownerName: "Sophia Black",
    ownerContact: "+91 9098765432",
    images: [
      "https://images.pexels.com/photos/259987/pexels-photo-259987.jpeg?auto=compress&cs=tinysrgb&w=600",
      "https://images.pexels.com/photos/259987/pexels-photo-259988.jpeg?auto=compress&cs=tinysrgb&w=600",
    ],
    yearlyRent: 3200000000,
  ),
  HouseModel(
    id: 8,
    image:
        "https://images.pexels.com/photos/709767/pexels-photo-709767.png?auto=compress&cs=tinysrgb&w=600",
    title: "Luxury Mansion",
    address: "Jl. Sudirman No. 99",
    distance: 5.0,
    bedrooms: 6,
    bathrooms: 5,
    description:
        "An extravagant mansion with top-notch facilities and security.",
    ownerName: "Emily White",
    ownerContact: "+91 9023456789",
    images: [
      "https://images.pexels.com/photos/709767/pexels-photo-709767.png?auto=compress&cs=tinysrgb&w=600",
      "https://images.pexels.com/photos/709767/pexels-photo-709768.png?auto=compress&cs=tinysrgb&w=600",
    ],
    yearlyRent: 5000000000,
  ),
  HouseModel(
    id: 9,
    image:
        "https://images.pexels.com/photos/1209672/pexels-photo-1209672.jpeg?auto=compress&cs=tinysrgb&w=600",
    title: "Cozy Loft",
    address: "Jl. Cozy No. 25",
    distance: 1.2,
    bedrooms: 2,
    bathrooms: 1,
    description: "A modern loft with a chic design and excellent city views.",
    ownerName: "Daniel Brown",
    ownerContact: "+91 9056781234",
    images: [
      "https://images.pexels.com/photos/1209672/pexels-photo-1209672.jpeg?auto=compress&cs=tinysrgb&w=600",
      "https://images.pexels.com/photos/1209672/pexels-photo-1209673.jpeg?auto=compress&cs=tinysrgb&w=600",
    ],
    yearlyRent: 1200000000,
  ),
  HouseModel(
    id: 10,
    image:
        "https://images.pexels.com/photos/1643382/pexels-photo-1643382.jpeg?auto=compress&cs=tinysrgb&w=600",
    title: "Seaside Villa",
    address: "Jl. Seaside No. 40",
    distance: 6.0,
    bedrooms: 4,
    bathrooms: 4,
    description:
        "A luxurious villa with stunning sea views and private beach access.",
    ownerName: "Olivia Smith",
    ownerContact: "+91 9034567890",
    images: [
      "https://images.pexels.com/photos/1643382/pexels-photo-1643382.jpeg?auto=compress&cs=tinysrgb&w=600",
      "https://images.pexels.com/photos/1643382/pexels-photo-1643383.jpeg?auto=compress&cs=tinysrgb&w=600",
    ],
    yearlyRent: 4500000000,
  ),
  HouseModel(
    id: 11,
    image:
        "https://images.pexels.com/photos/10457501/pexels-photo-10457501.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
    title: "Mountain Retreat",
    address: "Jl. Mountain No. 30",
    distance: 8.0,
    bedrooms: 3,
    bathrooms: 2,
    description:
        "A secluded retreat in the mountains offering peace and relaxation.",
    ownerName: "James Williams",
    ownerContact: "+91 9045678901",
    images: [
      "https://images.pexels.com/photos/1485770/pexels-photo-1485770.jpeg?auto=compress&cs=tinysrgb&w=600",
      "https://images.pexels.com/photos/1485770/pexels-photo-1485771.jpeg?auto=compress&cs=tinysrgb&w=600",
    ],
    yearlyRent: 2000000000,
  ),
];
