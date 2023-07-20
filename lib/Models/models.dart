class Travel{

  String? location;
  String? city;
  String? image;
  String? distance;
  String? temp;
  String? rating;
  String? discription;
  String? price;


  Travel({
    required this.location,
    required this.city,
    required this.image,
    required this.distance,
    required this.temp,
    required this.rating,
    required this.discription,
    required this.price
  });
}

List<Travel> travel_list=[
  
 Travel(location: "USA",
 city: "mahdi", 
 image: "assets/images/t.jpg", 
 distance: "75", 
 temp: "40", 
 rating: "4.6", 
 discription: "man mahdi ramazani hastam az bnd sarkhun", 
 price: "48"
 ),
 Travel(location: "USA2",
 city: "New Yourk2", 
 image: "assets/images/n.jpg", 
 distance: "80", 
 temp: "60", 
 rating: "4.52", 
 discription: "man mahdi ramazani hastam az bnd sarkhun333", 
 price: "78"
 ),

 Travel(location: "USA3",
 city: "New Yourk4", 
 image: "assets/images/t.jpg", 
 distance: "30", 
 temp: "16", 
 rating: "9.36", 
 discription: "man mahdi ramazani hastam az bnd sarkhun4444", 
 price: "11"
 ),

 Travel(location: "USA556565",
 city: "New Yourk464565", 
 image: "assets/images/n.jpg", 
 distance: "369", 
 temp: "123", 
 rating: "4.987", 
 discription: "man mahdi ramazani hastam az bnd sarkhun44444", 
 price: "223"
 ),

 Travel(location: "USA77",
 city: "New Yourk80000", 
 image: "assets/images/n.jpg", 
 distance: "369", 
 temp: "123", 
 rating: "4.987", 
 discription: "man mahdi ramazani hastam az bnd sarkhun44444", 
 price: "223"
 ),
 
 ];
