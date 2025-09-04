class OnBoarding {
  final String title;
  final String description;
  final String image;

  OnBoarding({
    required this.title,
    required this.description,
    required this.image,
  });
}

List<OnBoarding> onboardingContents = [
  OnBoarding(
    title: 'Welcome to\nMonumental Habits',
    description: 'Start building life-changing habits today.',
    image: 'assets/images/photo1.png',
  ),
  OnBoarding(
    title: 'Create new habits easily',
    description: 'Set reminders and track your goals effortlessly.',
    image: 'assets/images/photo2.png',
  ),
  OnBoarding(
    title: 'Keep track of your progress',
    description: 'See your journey and celebrate small wins.',
    image: 'assets/images/photo3.png',
  ),
  OnBoarding(
    title: 'Join a supportive community',
    description: 'Stay motivated with people sharing your journey.',
    image: 'assets/images/photo4.png',
  ),
];
