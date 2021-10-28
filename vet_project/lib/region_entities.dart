// {
//   regions: 
//     [
//       {
//         name: "region1", 
//         count: 25
//        }, 
//        {
//          name: "region2", 
//          count: 11
//        }
//     ]
// };



// class RegionEntities {
//   Regions regions;

//   RegionEntities({
//     required this.regions
//   });

//   factory RegionEntities.fromJson(Map<String, dynamic> json) {
//     return RegionEntities(regions: json['regions'] as dynamic);
//   }

// }

// class Regions {
//     List<Region> regions; 

//     Regions({
//       required this.regions
//     });

//     factory Regions.fromJson(Map<String, dynamic> json) {
//       return Regions(
//         regions: (json['regions'] as List<dynamic>)
//         .map((dynamic e) => Region.fromJson(e as Map<String, dynamic>))
//         .toList(),
//       );
//     }
// }

//     [
//       {
//         name: "region1", 
//         count: 25
//        }, 
//        {
//          name: "region2", 
//          count: 11
//        }
//     ]



class Region {
  String name;
  int count;
  
  Region(
    this.name, this.count
  );

  // Region.fromJson(Map<String, dynamic> json) {

  //   name = json['name'];
  //   count = json['count'];
  // }
}