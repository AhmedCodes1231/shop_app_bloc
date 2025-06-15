import 'package:flutter/material.dart';
import 'package:shop_app_bloc/core/constansts/app_color.dart';
import 'package:shop_app_bloc/core/constansts/app_image.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnboardingScreen extends StatefulWidget {
  @override
  _OnboardingScreenState createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final PageController _controller = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _controller,
        children: [
          //الصور والكلام المراد عرضه 
          buildOnboardingPage(
            imagePath: AppImages.imageOnboarding1, // غيّر للمسار الصحيح
            description: 'Empowering Artisans,\nFarmers & Micro Business',
          ),
          buildOnboardingPage(
            imagePath: AppImages.imageOnboarding2,
             description: 'Connecting NGOs,\nSocial Enterprises with Communities'
             ),
             buildOnboardingPage(
              imagePath:AppImages.imageOnboarding3 , 
              description: ' Donate, Invest & Support \ninfrastructure projects'
              ),
          // تضيف صفحات ثانية بنفس الشكل
        ],
      ),
      bottomSheet: Container(
        padding: EdgeInsets.all(16),
        height: 100,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SmoothPageIndicator(
              controller: _controller,
              count: 3,
              effect: WormEffect(
                activeDotColor: AppColor.splash,
              ),
            ),
            //المؤشر ليعرض 3 الصفحات
            ElevatedButton(
              onPressed: () {
                _controller.nextPage(
                  duration: Duration(milliseconds: 500),
                  curve: Curves.easeInOut,
                );
              },
              child: Text('Next'),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildOnboardingPage({required String imagePath, required String description}) {
    return Padding(
      padding: const EdgeInsets.all(32.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(imagePath, height: 250),
          SizedBox(height: 32),
          Text(
            description,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w500,
              color: Colors.grey[800],
            ),
          ),
        ],
      ),
    );
  }
}