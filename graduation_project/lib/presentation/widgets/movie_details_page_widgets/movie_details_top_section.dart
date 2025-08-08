import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:graduation_project/core/constants.dart';
import 'package:graduation_project/models/search_model/results.dart';

class MovieDetailsTopSection extends StatelessWidget {
  const MovieDetailsTopSection({super.key, required this.movie});

  final Results? movie;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        // Backdrop image
        CachedNetworkImage(
          imageUrl: "$baseImage${movie?.backdropPath}",
          width: double.infinity,
          height: 200,
          fit: BoxFit.cover,
          placeholder: (context, url) => const Center(
            child: CircularProgressIndicator(color: Color(0xFF67686d)),
          ),
          errorWidget: (context, url, error) =>
              const Icon(Icons.error, color: Color(0xFF67686d)),
        ),

        // Poster image and Rating box
        Positioned(
          bottom: 10,
          left: 16,
          right: 16,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              // Poster image
              ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: CachedNetworkImage(
                  width: 100,
                  height: 150,
                  fit: BoxFit.cover,
                  imageUrl: "$baseImage${movie?.posterPath}",
                  placeholder: (context, url) => const Center(
                    child: CircularProgressIndicator(color: Color(0xFF67686d)),
                  ),
                  errorWidget: (context, url, error) =>
                      const Icon(Icons.error, color: Color(0xFF67686d)),
                ),
              ),
              const SizedBox(width: 12),

              // Movie title and rating
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '${movie?.title}',
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                    const SizedBox(height: 8),
                    Container(
                      width: 80,
                      padding: const EdgeInsets.symmetric(
                        horizontal: 8,
                        vertical: 4,
                      ),
                      decoration: BoxDecoration(
                        color: const Color(0xFF242a32),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Row(
                        children: [
                          const Icon(
                            Icons.star,
                            size: 16,
                            color: Color(0xFFf38304),
                          ),
                          const SizedBox(width: 4),
                          Text(
                            '${movie?.voteAverage}',
                            style: const TextStyle(
                              color: Color(0xFFf38304),
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
