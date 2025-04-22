import 'package:flutter/material.dart';

class TikTokProfilePage extends StatelessWidget {
  const TikTokProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Stack(
          children: [
            SingleChildScrollView(
              child: Column(
                children: [
                  const SizedBox(height: 20),
                  Center(
                    child: Column(
                      children: [
                        const Text(
                          'adddriffai',
                          style: TextStyle(color: Colors.white, fontSize: 16),
                        ),
                        const SizedBox(height: 10),
                        const CircleAvatar(
                          radius: 45,
                          backgroundImage: AssetImage('assets/images/prof2.png'),
                          backgroundColor: Colors.white12,
                        ),
                        const SizedBox(height: 10),
                        const Text(
                          '@adrfai',
                          style: TextStyle(color: Colors.white, fontSize: 18),
                        ),
                        const SizedBox(height: 10),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            _ProfileStat(title: '100', subtitle: 'Following'),
                            SizedBox(width: 15),
                            _ProfileStat(title: '555.5K', subtitle: 'Followers'),
                            SizedBox(width: 15),
                            _ProfileStat(title: '10.3M', subtitle: 'Likes'),
                          ],
                        ),
                        const SizedBox(height: 10),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            _profileButton('Edit profile'),
                            const SizedBox(width: 10),
                            _profileButton('Share profile'),
                            const SizedBox(width: 10),
                            _iconButton(),
                          ],
                        ),
                        const SizedBox(height: 10),
                        Container(
                        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                        decoration: BoxDecoration(
                          color: Colors.grey.withOpacity(0.2),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: const Text(
                          '📝 Add bio',
                        ),
                      ),

                      ],
                    ),
                  ),
                  const SizedBox(height: 20),
                  const Divider(color: Colors.white24),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: const [
                      Icon(Icons.grid_on, color: Colors.white),
                      Icon(Icons.lock_outline, color: Colors.white38),
                      Icon(Icons.repeat, color: Colors.white38),
                      Icon(Icons.favorite_border, color: Colors.white38),
                      Icon(Icons.bookmark_border, color: Colors.white38),
                    ],
                  ),
                  const SizedBox(height: 10),
                  GridView.builder(
                    padding: const EdgeInsets.all(8),
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: 9,
                    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3,
                      crossAxisSpacing: 5,
                      mainAxisSpacing: 5,
                      childAspectRatio: 0.75,
                    ),
                    itemBuilder: (context, index) {
                      return Stack(
                        children: [
                          Container(
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage('assets/images/thumb${index + 1}.jpg'),
                              fit: BoxFit.cover,
                            ),
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),

                          const Positioned(
                            bottom: 5,
                            left: 5,
                            child: Row(
                              children: [
                                Icon(Icons.play_arrow, color: Colors.white, size: 16),
                                SizedBox(width: 4),
                                Text(
                                  '5.1M',
                                  style: TextStyle(color: Colors.white, fontSize: 12),
                                ),
                              ],
                            ),
                          ),
                        ],
                      );
                    },
                  ),
                ],
              ),
            ),
            const Positioned(
              top: 10,
              left: 10,
              child: Icon(Icons.arrow_back, color: Colors.white),
            ),
            const Positioned(
              top: 10,
              right: 10,
              child: Icon(Icons.menu, color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}

class _ProfileStat extends StatelessWidget {
  final String title;
  final String subtitle;

  const _ProfileStat({required this.title, required this.subtitle});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(title, style: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
        Text(subtitle, style: const TextStyle(color: Colors.grey, fontSize: 12)),
      ],
    );
  }
}

Widget _profileButton(String text) {
  return ElevatedButton(
    onPressed: () {},
    style: ElevatedButton.styleFrom(
      backgroundColor: Colors.grey[800],
      foregroundColor: Colors.white,
    ),
    child: Text(text),
  );
}

Widget _iconButton() {
  return ElevatedButton(
    onPressed: () {},
    style: ElevatedButton.styleFrom(
      backgroundColor: Colors.grey[800],
      foregroundColor: Colors.white,
    ),
    child: const Icon(Icons.person_add_alt, size: 16),
  );
}
