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
  final List<ReviewModel> reviews;

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
    required this.reviews,
  });
}

class ReviewModel {
  final String name;
  final double rating;
  final String review;

  ReviewModel({
    required this.name,
    required this.rating,
    required this.review,
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
      "https://images.pexels.com/photos/1571460/pexels-photo-1571460.jpeg?auto=compress&cs=tinysrgb&w=600",
      "https://images.pexels.com/photos/1643383/pexels-photo-1643383.jpeg?auto=compress&cs=tinysrgb&w=600",
      "https://images.pexels.com/photos/2062426/pexels-photo-2062426.jpeg?auto=compress&cs=tinysrgb&w=600",
      "https://images.pexels.com/photos/2251247/pexels-photo-2251247.jpeg?auto=compress&cs=tinysrgb&w=600",
      "https://images.pexels.com/photos/5825576/pexels-photo-5825576.jpeg?auto=compress&cs=tinysrgb&w=600",
      "https://images.pexels.com/photos/3653849/pexels-photo-3653849.jpeg?auto=compress&cs=tinysrgb&w=600",
      "https://images.pexels.com/photos/6775268/pexels-photo-6775268.jpeg?auto=compress&cs=tinysrgb&w=600",
      "https://images.pexels.com/photos/5825567/pexels-photo-5825567.jpeg?auto=compress&cs=tinysrgb&w=600",
      "https://images.pexels.com/photos/6480707/pexels-photo-6480707.jpeg?auto=compress&cs=tinysrgb&w=600",
    ],
    yearlyRent: 2500000,
    reviews: [
      ReviewModel(
        name: "Alice Smith",
        rating: 4.5,
        review: "A beautiful house with a great garden. Had a wonderful stay!",
      ),
      ReviewModel(
        name: "Bob Johnson",
        rating: 4.0,
        review:
            "Spacious and well-furnished, but a bit far from the city center.",
      ),
      ReviewModel(
        name: "Clara Wilson",
        rating: 5.0,
        review: "Absolutely loved it! Perfect for a family getaway.",
      ),
    ],
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
      "https://images.pexels.com/photos/2635038/pexels-photo-2635038.jpeg?auto=compress&cs=tinysrgb&w=600",
      "https://images.pexels.com/photos/2724749/pexels-photo-2724749.jpeg?auto=compress&cs=tinysrgb&w=600",
      "https://images.pexels.com/photos/1148955/pexels-photo-1148955.jpeg?auto=compress&cs=tinysrgb&w=600",
      "https://images.pexels.com/photos/3315286/pexels-photo-3315286.jpeg?auto=compress&cs=tinysrgb&w=600",
      "https://images.pexels.com/photos/2565222/pexels-photo-2565222.jpeg?auto=compress&cs=tinysrgb&w=600",
      "https://images.pexels.com/photos/1579739/pexels-photo-1579739.jpeg?auto=compress&cs=tinysrgb&w=600",
    ],
    yearlyRent: 3000000,
    reviews: [
      ReviewModel(
        name: "Alice Smith",
        rating: 4.5,
        review: "A beautiful house with a great garden. Had a wonderful stay!",
      ),
      ReviewModel(
        name: "Bob Johnson",
        rating: 4.0,
        review:
            "Spacious and well-furnished, but a bit far from the city center.",
      ),
      ReviewModel(
        name: "Clara Wilson",
        rating: 5.0,
        review: "Absolutely loved it! Perfect for a family getaway.",
      ),
    ],
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
      "https://images.pexels.com/photos/1080696/pexels-photo-1080696.jpeg?auto=compress&cs=tinysrgb&w=600",
      "https://images.pexels.com/photos/259962/pexels-photo-259962.jpeg?auto=compress&cs=tinysrgb&w=600",
      "https://images.pexels.com/photos/9874619/pexels-photo-9874619.jpeg?auto=compress&cs=tinysrgb&w=600",
      "https://images.pexels.com/photos/3932930/pexels-photo-3932930.jpeg?auto=compress&cs=tinysrgb&w=600",
      "https://images.pexels.com/photos/25391836/pexels-photo-25391836/free-photo-of-interior-of-a-bedroom.jpeg?auto=compress&cs=tinysrgb&w=600",
      "https://images.pexels.com/photos/3209045/pexels-photo-3209045.jpeg?auto=compress&cs=tinysrgb&w=600",
    ],
    yearlyRent: 1800000,
    reviews: [
      ReviewModel(
        name: "David Brown",
        rating: 3.8,
        review: "Nice place, but could use some maintenance in a few areas.",
      ),
      ReviewModel(
        name: "Emma Green",
        rating: 4.2,
        review: "Very cozy and comfortable. Would recommend!",
      ),
      ReviewModel(
        name: "Frank White",
        rating: 4.7,
        review: "Great location and wonderful amenities. Will visit again.",
      ),
    ],
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
      "https://images.pexels.com/photos/271816/pexels-photo-271816.jpeg?auto=compress&cs=tinysrgb&w=600",
      "https://images.pexels.com/photos/276724/pexels-photo-276724.jpeg?auto=compress&cs=tinysrgb&w=600",
      "https://images.pexels.com/photos/6920451/pexels-photo-6920451.jpeg?auto=compress&cs=tinysrgb&w=600",
      "https://images.pexels.com/photos/6970048/pexels-photo-6970048.jpeg?auto=compress&cs=tinysrgb&w=600",
      "https://images.pexels.com/photos/6920454/pexels-photo-6920454.jpeg?auto=compress&cs=tinysrgb&w=600",
    ],
    yearlyRent: 1200000,
    reviews: [
      ReviewModel(
        name: "Grace Black",
        rating: 4.1,
        review: "Enjoyed the stay but had some noise issues at night.",
      ),
      ReviewModel(
        name: "Henry Blue",
        rating: 4.9,
        review: "Fantastic experience. Best place we've ever stayed!",
      ),
    ],
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
      "https://images.pexels.com/photos/271624/pexels-photo-271624.jpeg?auto=compress&cs=tinysrgb&w=600",
      "https://images.pexels.com/photos/6920446/pexels-photo-6920446.jpeg?auto=compress&cs=tinysrgb&w=600",
      "https://images.pexels.com/photos/7118797/pexels-photo-7118797.jpeg?auto=compress&cs=tinysrgb&w=600",
      "https://images.pexels.com/photos/6920447/pexels-photo-6920447.jpeg?auto=compress&cs=tinysrgb&w=600",
    ],
    yearlyRent: 5000000,
    reviews: [
      ReviewModel(
        name: "Ivy Scott",
        rating: 3.5,
        review: "The view was great, but the service was a bit slow.",
      ),
      ReviewModel(
        name: "Jack Taylor",
        rating: 4.3,
        review: "Loved the atmosphere and the interior design. Very modern!",
      ),
      ReviewModel(
        name: "Kathy Morgan",
        rating: 4.8,
        review: "Highly recommended! The staff was incredibly helpful.",
      ),
    ],
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
      "https://images.pexels.com/photos/534151/pexels-photo-534151.jpeg?auto=compress&cs=tinysrgb&w=600",
      "https://images.pexels.com/photos/3049121/pexels-photo-3049121.jpeg?auto=compress&cs=tinysrgb&w=600",
      "https://images.pexels.com/photos/4819304/pexels-photo-4819304.jpeg?auto=compress&cs=tinysrgb&w=600",
      "https://images.pexels.com/photos/7118796/pexels-photo-7118796.jpeg?auto=compress&cs=tinysrgb&w=600",
    ],
    yearlyRent: 2800000,
    reviews: [
      ReviewModel(
        name: "Liam Harris",
        rating: 3.9,
        review: "Decent stay, but the breakfast options were limited.",
      ),
      ReviewModel(
        name: "Mia Thomas",
        rating: 4.6,
        review: "The place was clean and well-kept. Had a pleasant time.",
      ),
      ReviewModel(
        name: "Noah Walker",
        rating: 4.4,
        review: "Good value for money. Everything was as advertised.",
      ),
    ],
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
      "https://images.pexels.com/photos/1571463/pexels-photo-1571463.jpeg?auto=compress&cs=tinysrgb&w=600",
      "https://images.pexels.com/photos/1457842/pexels-photo-1457842.jpeg?auto=compress&cs=tinysrgb&w=600",
      "https://images.pexels.com/photos/1454805/pexels-photo-1454805.jpeg?auto=compress&cs=tinysrgb&w=600",
      "https://images.pexels.com/photos/10388450/pexels-photo-10388450.jpeg?auto=compress&cs=tinysrgb&w=600",
      "https://images.pexels.com/photos/10251886/pexels-photo-10251886.jpeg?auto=compress&cs=tinysrgb&w=600",
    ],
    yearlyRent: 1500000,
    reviews: [
      ReviewModel(
        name: "Olivia Turner",
        rating: 5.0,
        review: "Simply perfect! Can't wait to come back.",
      ),
      ReviewModel(
        name: "Paul Adams",
        rating: 4.2,
        review: "Comfortable stay but experienced some check-in delays.",
      ),
    ],
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
      "https://images.pexels.com/photos/2826787/pexels-photo-2826787.jpeg?auto=compress&cs=tinysrgb&w=600",
      "https://images.pexels.com/photos/2121121/pexels-photo-2121121.jpeg?auto=compress&cs=tinysrgb&w=600",
      "https://images.pexels.com/photos/25311423/pexels-photo-25311423/free-photo-of-view-of-a-window-in-a-building-with-a-turkish-flag-and-rugs-on-the-walls.jpeg?auto=compress&cs=tinysrgb&w=600",
      "https://images.pexels.com/photos/10418903/pexels-photo-10418903.jpeg?auto=compress&cs=tinysrgb&w=600",
    ],
    yearlyRent: 1600000,
    reviews: [
      ReviewModel(
        name: "Quinn Carter",
        rating: 4.5,
        review: "Wonderful views and friendly staff. Highly recommend!",
      ),
      ReviewModel(
        name: "Rachel Foster",
        rating: 3.7,
        review:
            "The room was nice, but we had issues with the Wi-Fi connection.",
      ),
    ],
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
      "https://images.pexels.com/photos/1457847/pexels-photo-1457847.jpeg?auto=compress&cs=tinysrgb&w=600",
      "https://images.pexels.com/photos/2988860/pexels-photo-2988860.jpeg?auto=compress&cs=tinysrgb&w=600",
      "https://images.pexels.com/photos/534172/pexels-photo-534172.jpeg?auto=compress&cs=tinysrgb&w=600",
      "https://images.pexels.com/photos/922796/pexels-photo-922796.jpeg?auto=compress&cs=tinysrgb&w=600",
      "https://images.pexels.com/photos/827528/pexels-photo-827528.jpeg?auto=compress&cs=tinysrgb&w=600",
      "https://images.pexels.com/photos/25313617/pexels-photo-25313617/free-photo-of-room-of-vintage-house.jpeg?auto=compress&cs=tinysrgb&w=600",
    ],
    yearlyRent: 2200000,
    reviews: [
      ReviewModel(
        name: "Sam Brooks",
        rating: 4.9,
        review: "Top-notch service and fantastic ambiance. A true luxury stay.",
      ),
      ReviewModel(
        name: "Tina Bell",
        rating: 4.0,
        review: "Good for a short stay, but lacked some amenities.",
      ),
    ],
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
      "https://images.pexels.com/photos/280232/pexels-photo-280232.jpeg?auto=compress&cs=tinysrgb&w=600",
      "https://images.pexels.com/photos/1454806/pexels-photo-1454806.jpeg?auto=compress&cs=tinysrgb&w=600",
      "https://images.pexels.com/photos/2249055/pexels-photo-2249055.jpeg?auto=compress&cs=tinysrgb&w=600",
      "https://images.pexels.com/photos/210552/pexels-photo-210552.jpeg?auto=compress&cs=tinysrgb&w=600",
      "https://images.pexels.com/photos/3551216/pexels-photo-3551216.jpeg?auto=compress&cs=tinysrgb&w=600",
    ],
    yearlyRent: 3500000,
    reviews: [
      ReviewModel(
        name: "Uma Patel",
        rating: 4.6,
        review: "Loved the decor and the staff was very accommodating.",
      ),
    ],
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
      "https://images.pexels.com/photos/667838/pexels-photo-667838.jpeg?auto=compress&cs=tinysrgb&w=600",
      "https://images.pexels.com/photos/2724748/pexels-photo-2724748.jpeg?auto=compress&cs=tinysrgb&w=600",
      "https://images.pexels.com/photos/3554424/pexels-photo-3554424.jpeg?auto=compress&cs=tinysrgb&w=600",
      "https://images.pexels.com/photos/2506990/pexels-photo-2506990.jpeg?auto=compress&cs=tinysrgb&w=600",
      "https://images.pexels.com/photos/2134224/pexels-photo-2134224.jpeg?auto=compress&cs=tinysrgb&w=600",
    ],
    yearlyRent: 1900000,
    reviews: [
      ReviewModel(
        name: "Victor Lane",
        rating: 3.8,
        review:
            "Nice place, but the air conditioning was not working properly.",
      ),
      ReviewModel(
        name: "Wendy Clark",
        rating: 4.7,
        review: "Amazing food and great location. Would visit again.",
      ),
    ],
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
      "https://images.pexels.com/photos/1648771/pexels-photo-1648771.jpeg?auto=compress&cs=tinysrgb&w=600",
      "https://images.pexels.com/photos/1571468/pexels-photo-1571468.jpeg?auto=compress&cs=tinysrgb&w=600",
      "https://images.pexels.com/photos/2995012/pexels-photo-2995012.jpeg?auto=compress&cs=tinysrgb&w=600",
      "https://images.pexels.com/photos/260046/pexels-photo-260046.jpeg?auto=compress&cs=tinysrgb&w=600",
      "https://images.pexels.com/photos/262048/pexels-photo-262048.jpeg?auto=compress&cs=tinysrgb&w=600",
    ],
    yearlyRent: 2100000,
    reviews: [
      ReviewModel(
        name: "Xander Lee",
        rating: 4.3,
        review: "Good overall experience but can improve on cleanliness.",
      ),
      ReviewModel(
        name: "Yara Kim",
        rating: 5.0,
        review: "Exceeded all expectations. Everything was perfect!",
      ),
      ReviewModel(
        name: "Zach Morris",
        rating: 4.1,
        review: "Pleasant stay with some room for improvement.",
      ),
    ],
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
      "https://images.pexels.com/photos/3797991/pexels-photo-3797991.jpeg?auto=compress&cs=tinysrgb&w=600",
      "https://images.pexels.com/photos/259580/pexels-photo-259580.jpeg?auto=compress&cs=tinysrgb&w=600",
      "https://images.pexels.com/photos/189333/pexels-photo-189333.jpeg?auto=compress&cs=tinysrgb&w=600",
      "https://images.pexels.com/photos/1125130/pexels-photo-1125130.jpeg?auto=compress&cs=tinysrgb&w=600",
      "https://images.pexels.com/photos/2227832/pexels-photo-2227832.jpeg?auto=compress&cs=tinysrgb&w=600",
      "https://images.pexels.com/photos/271795/pexels-photo-271795.jpeg?auto=compress&cs=tinysrgb&w=600",
    ],
    yearlyRent: 1400000,
    reviews: [
      ReviewModel(
        name: "Amanda Fox",
        rating: 3.6,
        review: "The room was okay, but the staff was not very attentive.",
      ),
      ReviewModel(
        name: "Brian King",
        rating: 4.4,
        review: "Loved the location and the room was spacious and clean.",
      ),
      ReviewModel(
        name: "Chloe Reed",
        rating: 4.8,
        review: "Fantastic stay! The pool area was especially nice.",
      ),
      ReviewModel(
        name: "Daniel Evans",
        rating: 3.9,
        review: "Overall a good stay, but the parking situation was difficult.",
      ),
    ],
  ),
  HouseModel(
    id: 14,
    image:
        "https://images.pexels.com/photos/5824522/pexels-photo-5824522.jpeg?auto=compress&cs=tinysrgb&w=600",
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
      "https://images.pexels.com/photos/276514/pexels-photo-276514.jpeg?auto=compress&cs=tinysrgb&w=600",
      "https://images.pexels.com/photos/279607/pexels-photo-279607.jpeg?auto=compress&cs=tinysrgb&w=600",
      "https://images.pexels.com/photos/2079249/pexels-photo-2079249.jpeg?auto=compress&cs=tinysrgb&w=600",
      "https://images.pexels.com/photos/1457844/pexels-photo-1457844.jpeg?auto=compress&cs=tinysrgb&w=600",
      "https://images.pexels.com/photos/2440471/pexels-photo-2440471.jpeg?auto=compress&cs=tinysrgb&w=600",
      "https://images.pexels.com/photos/1034584/pexels-photo-1034584.jpeg?auto=compress&cs=tinysrgb&w=600",
      "https://images.pexels.com/photos/265004/pexels-photo-265004.jpeg?auto=compress&cs=tinysrgb&w=600",
    ],
    yearlyRent: 1700000,
    reviews: [
      ReviewModel(
        name: "Evelyn Wood",
        rating: 5.0,
        review: "Best vacation ever! The resort was beyond beautiful.",
      ),
      ReviewModel(
        name: "Felix Graham",
        rating: 4.0,
        review: "Nice place for the price, but can be a bit noisy at night.",
      ),
    ],
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
      "https://images.pexels.com/photos/1040893/pexels-photo-1040893.jpeg?auto=compress&cs=tinysrgb&w=600",
      "https://images.pexels.com/photos/210265/pexels-photo-210265.jpeg?auto=compress&cs=tinysrgb&w=600",
      "https://images.pexels.com/photos/279648/pexels-photo-279648.jpeg?auto=compress&cs=tinysrgb&w=600",
      "https://images.pexels.com/photos/275484/pexels-photo-275484.jpeg?auto=compress&cs=tinysrgb&w=600",
      "https://images.pexels.com/photos/342800/pexels-photo-342800.jpeg?auto=compress&cs=tinysrgb&w=600",
      "https://images.pexels.com/photos/279648/pexels-photo-279648.jpeg?auto=compress&cs=tinysrgb&w=600",
      "https://images.pexels.com/photos/447592/pexels-photo-447592.jpeg?auto=compress&cs=tinysrgb&w=600",
    ],
    yearlyRent: 2400000,
    reviews: [
      ReviewModel(
        name: "Georgia Brooks",
        rating: 4.7,
        review: "The service was impeccable, and the spa was amazing!",
      ),
      ReviewModel(
        name: "Hugo White",
        rating: 4.1,
        review: "The breakfast was fantastic, but the rooms need updating.",
      ),
      ReviewModel(
        name: "Isla Jordan",
        rating: 4.5,
        review: "Great location for exploring the city. Very convenient.",
      ),
      ReviewModel(
        name: "Jacob Martin",
        rating: 4.3,
        review: "Clean and comfortable with friendly staff. Enjoyed our stay.",
      ),
      ReviewModel(
        name: "Keira Knight",
        rating: 4.2,
        review: "The ambiance was lovely, but the Wi-Fi was inconsistent.",
      ),
      ReviewModel(
        name: "Leo Parker",
        rating: 4.9,
        review: "Superb service and facilities. Truly a luxurious experience.",
      ),
    ],
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
