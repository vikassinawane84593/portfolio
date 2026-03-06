
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(const MyIntroSite());
}

class MyIntroSite extends StatelessWidget {
  const MyIntroSite({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: IntroPage(),
    );
  }
}

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  final String githubUrl = "https://github.com/vikassinawane84593";
  final String linkedInUrl =
      "https://www.linkedin.com/in/vikas-sonawane-28bab2326/";

  final String musicappurl =
      "https://drive.google.com/file/d/1eiPrtZwjf2e4rar90XZC4IDOvLZMA6C3/view";
  final String musicgithub =
      "https://github.com/vikassinawane84593/musiclibrary";

  final String shoesgithub =
      "https://github.com/vikassinawane84593/ShoesShopingApp";
  final String shoesappurl =
      "https://drive.google.com/file/d/1BmPlEg25kf-FBpq1d2QeIk0GEQlvI7it/view";

  final String wetherappurl =
      "https://drive.google.com/file/d/1uIh-bX0u1j6kop0MKmvSfC7sihpgEdXQ/view";
  final String wethergithub =
      "https://github.com/vikassinawane84593/weatherapp";

  final String instaUrl =
      "https://www.instagram.com/vikas_sonawane0/";

  final String email = "vikassonawane215@gmail.com";
  final String phone = "+91 8459360064";

  Future<void> _launchUrl(String url) async {
    final Uri uri = Uri.parse(url);
    await launchUrl(uri, mode: LaunchMode.externalApplication);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding:
            const EdgeInsets.symmetric(horizontal: 40, vertical: 100),
            child: Column(
              children: [

                const Text(
                  "Hi, I'm Vikas Sonawane",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 42,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),

                const SizedBox(height: 20),

                const Text(
                  "Flutter Developer | Entrepreneur",
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.grey,
                  ),
                ),

                const SizedBox(height: 40),

                const Text(
                  "I build scalable Flutter applications with clean UI and proper architecture.",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.grey,
                  ),
                ),

                const SizedBox(height: 60),

                const Divider(color: Colors.grey),

                const SizedBox(height: 30),

                const Text(
                  "Contact Me",
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),

                const SizedBox(height: 30),

                Text(
                  "📧 $email",
                  style:
                  const TextStyle(color: Colors.grey, fontSize: 18),
                ),

                const SizedBox(height: 10),

                Text(
                  "📱 $phone",
                  style:
                  const TextStyle(color: Colors.grey, fontSize: 18),
                ),

                const SizedBox(height: 30),

                ElevatedButton(
                  onPressed: () => _launchUrl(githubUrl),
                  child: const Text("GitHub"),
                ),

                const SizedBox(height: 10),

                ElevatedButton(
                  onPressed: () => _launchUrl(linkedInUrl),
                  child: const Text("LinkedIn"),
                ),

                const SizedBox(height: 10),

                ElevatedButton(
                  onPressed: () => _launchUrl(instaUrl),
                  child: const Text("Instagram"),
                ),

                const SizedBox(height: 60),

                const Divider(color: Colors.grey),

                const SizedBox(height: 30),

                const Text(
                  "Projects",
                  style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),

                const SizedBox(height: 10),

                const Text(
                  "Here are some of the Flutter projects I have built.",
                  style: TextStyle(
                    color: Colors.white70,
                    fontSize: 16,
                  ),
                ),

                const SizedBox(height: 50),

                Wrap(
                  spacing: 30,
                  runSpacing: 30,
                  alignment: WrapAlignment.center,
                  children: [
                    projectCard(
                      "Weather App",
                      "Shows real-time weather using API.",
                      wetherappurl,
                      wethergithub,
                    ),
                    projectCard(
                      "Shoes App",
                      "Shopping UI with product details.",
                      shoesappurl,
                      shoesgithub,
                    ),
                    projectCard(
                      "Music Library",
                      "Displays songs from API.",
                      musicappurl,
                      musicgithub,
                    ),

                  ],
                ),
                SizedBox(height: 50,),

                ElevatedButton(onPressed: (){
                  _launchUrl('https://drive.google.com/file/d/1KCrCUMgIpIyqT_rEZLVNmPkWYJSeuWg2/view?usp=drivesdk');
                }, child: Text('Download Resume',style: TextStyle(),))
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget projectCard(
      String title, String description, String url, String giturl) {
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
                onPressed: () => _launchUrl(url),
                child: const Text("View Project"),
              ),

              const SizedBox(width: 10),

              OutlinedButton(
                onPressed: () => _launchUrl(giturl),
                child: const Text("GitHub"),
              ),
            ],
          )
        ],
      ),
    );
  }
}
