import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:graduation_project/core/constants.dart';
import 'package:graduation_project/models/search_model/results.dart';

class ImageContainer extends StatelessWidget {
  const ImageContainer({super.key, required this.movie});

  final Results? movie;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: Colors.transparent,
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(16),
        child: CachedNetworkImage(
          imageUrl: "$baseImage${movie?.posterPath}",
    
          fit: BoxFit.cover,
          placeholder: (context, url) => const Center(
            child: CircularProgressIndicator(color: Color(0xFF67686d)),
          ),
          errorWidget: (context, url, error) =>
              const Icon(Icons.error, color: Color(0xFF67686d)),
        ),
      ),
    );
  }
}
