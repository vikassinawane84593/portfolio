
import 'package:flutter/material.dart';
import 'package:introduction/Services/url_launcher_service.dart';

Widget projectCard(String title, String description, String url,
      String giturl) {
    return Container(
      width: 300,
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: const Color(0xFF1E293B),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [

          Text(
            title,
            style: const TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),

          const SizedBox(height: 10),

          Text(
            description,
            style: const TextStyle(color: Colors.white70),
          ),

          const SizedBox(height: 20),

          Row(
            children: [
              ElevatedButton(
                onPressed: () => launchUrle(url),
                child: const Text("View Project"),
              ),

              const SizedBox(width: 10),

              OutlinedButton(
                onPressed: () => launchUrle(giturl),
                child: const Text("GitHub"),
              ),
            ],
          )
        ],
      ),
    );
  }

