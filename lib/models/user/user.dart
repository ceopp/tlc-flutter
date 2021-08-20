
// class User {
//   final int? id;
//   final String name;
//   final String? photo;
//   final String description;
//   final UserInfo userInfo;

//   const User({
//     this.id,
//     this.name = '',
//     this.photo,
//     this.description = '',
//     this.userInfo = const UserInfo(),
//   });

//   String get getLastName {
//     try {
//       return name.split(' ')[1];
//     } catch (e) {
//       return '';
//     }
//   }

//   String get getFirstName {
//     try {
//       return name.split(' ')[0];
//     } catch (e) {
//       return '';
//     }
//   }

//   factory User.mock() {
//     return User(
//       id: 1,
//       name: 'Имя Фамилия',
//       photo:
//           'https://im.kommersant.ru/Issues.photo/CORP/2017/11/29/KMO_111307_19184_1_t218_164950.jpg',
//       description:
//           // ignore: lines_longer_than_80_chars
//           'Организовывает мероприятие «Битва горнолыжников против сноубордистов»',
//       userInfo: UserInfo.mock(),
//     );
//   }

//   factory User.fromJson(Map<String, dynamic> json) {
//     return User(
//       id: json['id'],
//       name: json['name'],
//       photo: json['photo'],
//       description: json['description'],
//     );
//   }
// }

// class UserListing {
//   final String? nextUrl;
//   final List<User> results;

//   const UserListing({
//     required this.results,
//     this.nextUrl,
//   });

//   factory UserListing.fromJson(Map<String, dynamic> json) {
//     return UserListing(
//       nextUrl: json['next'],
//       results:
//           (json['results'] as List).map<User>((e) => User.fromJson(e)).toList(),
//     );
//   }
//   factory UserListing.mocck() {
//     return UserListing(
//       nextUrl: null,
//       results: [
//         User.mock(),
//         User.mock(),
//         User.mock(),
//         User.mock(),
//         User.mock(),
//         User.mock(),
//         User.mock(),
//         User.mock(),
//         User.mock(),
//         User.mock(),
//         User.mock(),
//       ],
//     );
//   }
// }

// class UserInfo {
//   final num age;
//   final String city;
//   final String profession;
//   final num rating;
//   final num organizedCount;
//   final num visitedCount;
//   final String instagram;
//   final List<ActionModel> recentActions;
//   final Plan plan;
//   final num bonus;
//   final num ballanse;

//   const UserInfo({
//     this.age = 0,
//     this.city = '',
//     this.profession = '',
//     this.rating = 0,
//     this.organizedCount = 0,
//     this.visitedCount = 0,
//     this.instagram = '',
//     this.recentActions = const [],
//     this.plan = const Plan(type: PlanType.normal),
//     this.bonus = 0,
//     this.ballanse = 0,
//   });

//   String get getMainInfo {
//     var result = '';
//     if (age != 0) {
//       if ((age > 14) | (age < 11)) {
//         if ((age % 10 < 5) & (age % 10 != 0)) {
//           if (age % 10 == 1) {
//             result += '$age год';
//           } else {
//             result += '$age года';
//           }
//         } else {
//           result += '$age лет';
//         }
//       } else {
//         result += '$age лет';
//       }
//     }

//     if (city != '') {
//       result += ', $city';
//     }
//     if (profession != '') {
//       result += ', $profession';
//     }
//     return result;
//   }

//   factory UserInfo.mock() {
//     return UserInfo(
//       age: 21,
//       city: 'г. Краснодар',
//       profession: 'Организатор',
//       rating: 3.5,
//       organizedCount: 0,
//       visitedCount: 0,
//       instagram: 'www.instagram.com/murmur',
//       recentActions: [ActionModel.mock(), ActionModel.mock()],
//       plan: Plan.mock(PlanType.pro),
//       bonus: 510,
//       ballanse: 56,
//     );
//   }
// }
