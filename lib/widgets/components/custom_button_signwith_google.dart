import 'package:shopping/core/imports/imports.dart';
class CustomButtonSignWithGoogle extends StatelessWidget {
  final void Function()? onPressed;
  const CustomButtonSignWithGoogle({
    super.key,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      height: 55,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      color: AppTheme.kprimaryColor, // Primary color for the button.
      //textColor: kcontentColor, // Text color for the button.
      onPressed: onPressed,
      child: SizedBox(
        width: double.infinity, // Button takes the full width of the container.
        child: SizedBox(
          height: 50,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center, // Center content horizontally.
            children: [
              const Text(
                "Sign in with Google    ",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Image.asset(
                "assets/images/4.png", // Path to the Google icon.
                width: 20,
                color:AppTheme.kcontentColor, // Sets the icon color to white.
              )
            ],
          ),
        ),
      ),
    );
  }
}
