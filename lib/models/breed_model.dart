import 'dart:convert';
import 'dart:developer';

import 'package:http/http.dart' as http;

class BreedModel {
  final String facts;

  BreedModel({required this.facts});

  static final List<BreedModel> data = [
    BreedModel(
        facts:
            "When a cat chases its prey, it keeps its head level. Dogs and humans bob their heads up and down."),
    BreedModel(
        facts:
            "Unlike dogs, cats do not have a sweet tooth. Scientists believe this is due to a mutation in a key taste receptor."),
    BreedModel(facts: "The technical term for a cat’s hairball is a “bezoar."),
    BreedModel(facts: "A group of cats is called a “clowder."),
    BreedModel(
        facts:
            "A cat can’t climb head first down a tree because every claw on a cat’s paw points the same way. To get down from a tree, a cat must back down."),
    BreedModel(
        facts:
            "Cats make about 100 different sounds. Dogs make only about 10."),
    BreedModel(
        facts: "Every year, nearly four million cats are eaten in Asia."),
    BreedModel(
        facts:
            "There are more than 500 million domestic cats in the world, with approximately 40 recognized breeds."),
    BreedModel(facts: "Approximately 24 cat skins can make a coat."),
    BreedModel(
        facts:
            "While it is commonly thought that the ancient Egyptians were the first to domesticate cats, the oldest known pet cat was recently found in a 9,500-year-old grave on the Mediterranean island of Cyprus. This grave predates early Egyptian art depicting cats by 4,000 years or more."),
  ];
}
