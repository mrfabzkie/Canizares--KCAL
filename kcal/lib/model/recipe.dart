import 'package:flutter/material.dart';

class RecipeCard {
  final String imageUrl;
  final String duration;
  final String serve;
  final String title;
  final String description;

  RecipeCard({
    required this.imageUrl,
    required this.duration,
    required this.serve,
    required this.title,
    required this.description,
  });
}

final RecipeList = [
  RecipeCard(
    imageUrl: 'assets/images/liempo.jpg',
    duration: ' 1 hr',
    serve: ' 5 Serve',
    title: 'Pork Liempo',
    description: 'pork shoulder in cut of meat pork',
  ),
  RecipeCard(
    imageUrl: 'assets/images/torta.jpg',
    duration: ' 30 min',
    serve: ' 8 Serve',
    title: 'Tortang Talong',
    description: ' also known as eggplant omelette',
  ),
  RecipeCard(
    imageUrl: 'assets/images/eggs.jpg',
    duration: '10',
    serve: '3 Serve',
    title: 'Scramble Egg',
    description:
        ' eggs whose whites and yolks are stirred together while cooking.',
  ),
  RecipeCard(
    imageUrl: 'assets/images/fish_fillet.jpg',
    duration: '50 min',
    serve: '9 Serve',
    title: 'Fish Fillet',
    description: ' fish which has been cut or sliced away from the bone',
  ),
  RecipeCard(
    imageUrl: 'assets/images/utan.jpg',
    duration: '20 min',
    serve: '10 Serve',
    title: 'Utan',
    description:
        'soup prepared using vegetables and leaf vegetables as primary ingredients.',
  ),
];
