class OnBoarding {
  final String title;
  final String image;

  OnBoarding({
    required this.title,
    required this.image,
  });
}

List<OnBoarding> onboardingContents = [
  OnBoarding(
    title: 'Welcome to\n Monumental habits',
    image: 'assets/images/photo1.png',
  ),
  OnBoarding(
    title: 'Create new habits easily',
    image: 'assets/images/photo2.png',
  ),
  OnBoarding(
    title: 'Keep track of your progress',
    image: 'assets/images/photo3.png',
  ),
  OnBoarding(
    title: 'Join a supportive community',
    image: 'assets/images/photo4.png',
  ),
];