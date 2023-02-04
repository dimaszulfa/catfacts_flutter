class BreedModel {
  String breed;
  String country;
  String origin;
  String coat;
  String pattern;
  BreedModel(
      {required this.breed,
      required this.country,
      required this.origin,
      required this.coat,
      required this.pattern});

  static List<BreedModel> data = [
    BreedModel(
        breed: "Abyssinian",
        country: "Ethiopia",
        origin: "Natural/Standard",
        coat: "Short",
        pattern: "Ticked"),
    BreedModel(
        breed: "Aegean",
        country: "Greece",
        origin: "Natural/Standard",
        coat: "Semi-long",
        pattern: "Bi- or tri-colored"),
    BreedModel(
        breed: "American Curl",
        country: "United States",
        origin: "Mutation",
        coat: "Short/Long",
        pattern: "All"),
    BreedModel(
        breed: "American Bobtail",
        country: "United States",
        origin: "Mutation",
        coat: "Short/Long",
        pattern: "All"),
    BreedModel(
        breed: "United States",
        country: "United States",
        origin: "Natural",
        coat: "Short",
        pattern: "All but colorpoint"),
  ];
}
