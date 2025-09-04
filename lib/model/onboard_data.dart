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
    title: 'Welcome to\nHydroMate',
    description: 'Your smart companion to stay hydrated every day.',
    image: 'assets/images/photo1.png',
  ),
  OnBoarding(
    title: 'Set Water Reminders',
    description:
        'Get timely alerts to drink water and build a healthy routine.',
    image: 'assets/images/photo2.png',
  ),
  OnBoarding(
    title: 'Track Your Hydration',
    description: 'Log every sip and see how close you are to your daily goal.',
    image: 'assets/images/photo3.png',
  ),
  OnBoarding(
    title: 'Stay Refreshed, Stay Healthy',
    description: 'Hydration keeps you energized, focused, and at your best.',
    image: 'assets/images/photo4.png',
  ),
];
