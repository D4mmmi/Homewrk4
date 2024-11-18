import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  final List<Map<String, dynamic>> categories = [
    {
      'name': 'Games',
      'color': Colors.red,
      'imageUrl': 'https://cdn.vectorstock.com/i/500p/70/77/funny-rabbit-head-for-your-work-logo-mascot-vector-41327077.jpg',
    },
    {
      'name': 'Business',
      'color': Colors.blue,
      'imageUrl': 'https://image.spreadshirtmedia.com/image-server/v1/products/T1459A839PA3861PT28D1039891820W10000H6000/views/1,width=1200,height=630,appearanceId=839,backgroundColor=F2F2F2/funny-shoe-company-parody-logo-you-do-it-sticker.jpg',
    },
    {
      'name': 'Public',
      'color': Colors.green,
      'imageUrl': 'https://www.thecustomtshirtco.com/wp-content/uploads/2018/01/TBC201700990A.svg',
    },
    {
      'name': 'Study',
      'color': Colors.purple,
      'imageUrl': 'https://w7.pngwing.com/pngs/310/448/png-transparent-study-skills-education-learning-computer-icons-sc-logo-angle-hat-teacher-thumbnail.png',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Categories'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, // Number of columns
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
          ),
          itemCount: categories.length,
          itemBuilder: (context, index) {
            final category = categories[index];
            return GestureDetector(
              onTap: () {
                // Navigate to the specific chat board screen
                Navigator.pushNamed(
                  context,
                  '/chat',
                  arguments: category['name'],
                );
              },
              child: Container(
                decoration: BoxDecoration(
                  color: category['color'],
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.network(
                      category['imageUrl'],
                      height: 60,
                      width: 60,
                      errorBuilder: (context, error, stackTrace) {
                        return Icon(
                          Icons.error,
                          color: Colors.white,
                          size: 60,
                        ); // Fallback for broken images
                      },
                    ),
                    SizedBox(height: 10),
                    Text(
                      category['name'],
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
