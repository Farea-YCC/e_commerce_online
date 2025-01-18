
import 'package:shopping/core/imports/imports.dart';

class JoinApp extends StatefulWidget {
  const JoinApp({super.key});

  @override
  State<JoinApp> createState() => _JoinAppState();
}

class _JoinAppState extends State<JoinApp> {
  final List<Map<String, String>> pageInfos = const [
    {
      "title": "Fresh Food",
      "body": "Get freshly picked groceries delivered to your doorstep.",
      "img": "assets/images/slider3.png",
    },
    {
      "title": "Fast Delivery",
      "body": "We guarantee speedy and safe delivery every time.",
      "img": "assets/images/slider2.png",
    },
    {
      "title": "Easy Payment",
      "body": "Multiple payment options for your convenience.",
      "img": "assets/images/on3.png",
    },
  ];

  bool showJoinPage = false;

  PageViewModel _buildPageModel(
      Map<String, String> item, BuildContext context) {
    return PageViewModel(
      title: item['title']!,
      body: item['body']!,
      image: Image.asset(
        item['img']!,
        height: 250,
        fit: BoxFit.contain,
      ),
      decoration: PageDecoration(
        titleTextStyle: Theme.of(context).textTheme.headlineSmall!,
        bodyTextStyle: Theme.of(context).textTheme.bodySmall!,
        imagePadding: const EdgeInsets.all(20),
        pageColor: AppTheme.kcontentColor,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: showJoinPage
          ? SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(
                Icons.shopping_cart,
                size: 100.0,
                color: AppTheme.kprimaryColor,
              ),
              const SizedBox(height: 20),
              const Text(
                "Welcome to MyCart",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 40),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () =>
                      Navigator.pushNamed(context, '/LoginPage'),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: AppTheme.kprimaryColor,
                    padding: const EdgeInsets.symmetric(vertical: 15),
                  ),
                  child: const Text(
                    "Login",
                    style: TextStyle(fontSize: 16),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              SizedBox(
                width: double.infinity,
                child: OutlinedButton(
                  onPressed: () =>
                      Navigator.pushNamed(context, '/SignUpPage'),
                  style: OutlinedButton.styleFrom(
                    side: const BorderSide(color: AppTheme.kprimaryColor),
                    padding: const EdgeInsets.symmetric(vertical: 15),
                  ),
                  child: const Text(
                    "Sign Up",
                    style: TextStyle(
                      fontSize: 16,
                      color: AppTheme.kprimaryColor,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      )
          : IntroductionScreen(
        pages:
        pageInfos.map((item) => _buildPageModel(item, context)).toList(),
        onDone: () {
          setState(() {
            showJoinPage = true;
          });
        },
        onSkip: () {
          setState(() {
            showJoinPage = true;
          });
        },
        showSkipButton: true,
        skip: const Text("Skip"),
        next: const Icon(Icons.navigate_next_outlined,
            color: AppTheme.kprimaryColor),
        done: const Text(
          "Done",
          style: TextStyle(
              fontWeight: FontWeight.bold, color: AppTheme.kprimaryColor),
        ),
        dotsDecorator: const DotsDecorator(
          activeColor: AppTheme.kprimaryColor,
          size: Size(10, 10),
          activeSize: Size(22, 10),
          activeShape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(25)),
          ),
        ),
      ),
    );
  }
}
