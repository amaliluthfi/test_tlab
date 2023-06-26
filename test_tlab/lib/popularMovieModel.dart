// // To parse this JSON data, do
// //
// //     final popularMovie = popularMovieFromJson(jsonString);
//
// import 'dart:convert';
//
// PopularMovie popularMovieFromJson(String str) => PopularMovie.fromJson(json.decode(str));
//
// String popularMovieToJson(PopularMovie data) => json.encode(data.toJson());
//
// class PopularMovie {
//   List<Item>>? items;
//   String? errorMessage;
//
//   PopularMovie({
//     this.items,
//     this.errorMessage,
//   });
//
//
// class Item {
//   String? id;
//   String? rank;
//   String? rankUpDown;
//   String? title;
//   String? fullTitle;
//   String? year;
//   String? image;
//   String? crew;
//   String? imDbRating;
//   String? imDbRatingCount;
//
//   Item({
//     this.id,
//     this.rank,
//     this.rankUpDown,
//     this.title,
//     this.fullTitle,
//     this.year,
//     this.image,
//     this.crew,
//     this.imDbRating,
//     this.imDbRatingCount,
//   });
//
