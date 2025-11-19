import 'package:flutter/material.dart';

import '../main.dart';

class OnboardingScreen extends StatefulWidget {
  final ThemeProvider themeProvider;
  const OnboardingScreen({Key? key, required this.themeProvider}) : super(key: key);

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final PageController _pageController = PageController();
  int _currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: widget.themeProvider,
      builder: (context, child) {
        final isDark = widget.themeProvider.isDarkMode;
        final bgColor = isDark ? Colors.black : Colors.white;
        final textColor = isDark ? Colors.white : Colors.black;
        final secondaryTextColor = isDark ? Colors.white70 : Colors.black54;
        final cardColor = isDark ? const Color(0xFF1A1A1A) : const Color(0xFFF5F5F5);

        return Scaffold(
          backgroundColor: bgColor,
          body: Stack(
            children: [
              PageView(
                controller: _pageController,
                onPageChanged: (index) {
                  setState(() {
                    _currentPage = index;
                  });
                },
                children: [
                  // First Onboarding Page
                  Container(
                    color: bgColor,
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 40, right: 20),
                          child: Align(
                            alignment: Alignment.topRight,
                            child: IconButton(
                              onPressed: () {
                                widget.themeProvider.toggleTheme();
                              },
                              icon: Icon(
                                isDark ? Icons.light_mode : Icons.dark_mode,
                                color: textColor,
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          child: Stack(
                            children: [
                          Container(
                            height:250,
                          width: 500,
                          margin: const EdgeInsets.all(40),
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage('assets/images/onboard2.jpg'),
                              fit: BoxFit.cover,
                            ),
                            // gradient: const LinearGradient(
                            //   begin: Alignment.topLeft,
                            //   end: Alignment.bottomRight,
                            //   colors: [
                            //     Color(0xFF1E3A8A),
                            //     Color(0xFF3B82F6),
                            //     Color(0xFF60A5FA),
                            //   ],
                            // ),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          // child:  Center(
                          //   child: Image.asset('assets/images/onboard2.jpg')
                          // ),
                        ),
                        Positioned(
                          bottom: 100,
                          child: Container(
                                  padding: const EdgeInsets.all(40),
                                  child: Column(
                                  children: [
                                    Text(
                                      'Get Started',
                                      style: TextStyle(
                                        fontSize: 28,
                                        fontWeight: FontWeight.bold,
                                        color: textColor,
                                      ),
                                    ),
                                    const SizedBox(height: 16),
                                  Text(
                                  'Begin your journey with us and explore amazing features',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                  fontSize: 16,
                                  color: secondaryTextColor,
                                  ),
                                  ),
                                  ],
                                  ),
                                  ),
                        ),
                            ],
                          )
                        )
                      ],
                    ),
                  ),
                  // Second Onboarding Page
                  Container(
                    color: bgColor,
                    child: Stack(
                      children: [
                        Positioned(
                          top: 40,
                          right: 20,
                          child: IconButton(
                            onPressed: () {
                              widget.themeProvider.toggleTheme();
                            },
                            icon: Icon(
                              isDark ? Icons.light_mode : Icons.dark_mode,
                              color: textColor,
                            ),
                          ),
                        ),
                        Positioned(
                          top: 60,
                          left: 30,
                          child: Container(
                            width: 300,
                            height: 300,
                            decoration: const BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage('assets/images/onboard.jpg'),
                                fit: BoxFit.cover,
                              ),
                              shape: BoxShape.circle,
                              gradient: LinearGradient(
                                colors: [
                                  Color(0xFF1E3A8A),
                                  Color(0xFF3B82F6),
                                ],
                              ),
                            ),
                            // child:  Center(
                            //     child: Image.asset('assets/images/onboard.jpg')
                            // ),
                          ),
                        ),
                        Center(
                          child: Padding(
                            padding: const EdgeInsets.all(50),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const SizedBox(height: 250),
                                Text(
                                  'Discover Features',
                                  style: TextStyle(
                                    fontSize: 28,
                                    fontWeight: FontWeight.bold,
                                    color: textColor,
                                  ),
                                ),
                                const SizedBox(height: 16),
                                Text(
                                  'Unlock powerful tools designed to make your life easier',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontSize: 16,
                                    color: secondaryTextColor,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  // Third Onboarding Page
                  Container(
                    color: bgColor,
                    child: Stack(
                      children: [
                        Positioned(
                          top: 40,
                          right: 20,
                          child: IconButton(
                            onPressed: () {
                              widget.themeProvider.toggleTheme();
                            },
                            icon: Icon(
                              isDark ? Icons.light_mode : Icons.dark_mode,
                              color: textColor,
                            ),
                          ),
                        ),
                        Positioned(
                          top: 80,
                          right: 120,
                          child: ClipPath(
                            clipper: IrregularClipper(),
                            child: Container(
                              width: 250,
                              height: 300,
                              decoration: const BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage('assets/images/onboard1.jpg'),
                                  fit: BoxFit.cover,
                                ),
                                gradient: LinearGradient(
                                  begin: Alignment.topLeft,
                                  end: Alignment.bottomRight,
                                  colors: [
                                    Color(0xFF1E3A8A),
                                    Color(0xFF3B82F6),
                                    Color(0xFF60A5FA),
                                  ],
                                ),
                              ),
                              // child: Center(
                              //     child: Image.asset('assets/images/onboard1.jpg')
                              // ),
                            ),
                          ),
                        ),
                        Positioned(
                          bottom: 150,
                          left: 40,
                          right: 40,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Ready to Go!',
                                style: TextStyle(
                                  fontSize: 28,
                                  fontWeight: FontWeight.bold,
                                  color: textColor,
                                ),
                              ),
                              const SizedBox(height: 16),
                              Text(
                                'You\'re all set to start your amazing experience',
                                style: TextStyle(
                                  fontSize: 16,
                                  color: secondaryTextColor,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              // Page indicators and navigation
              Positioned(
                bottom: 50,
                left: 0,
                right: 0,
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: List.generate(
                        3,
                             (index) => Container(
                          margin: const EdgeInsets.symmetric(horizontal: 4),
                          width: _currentPage == index ? 24 : 8,
                          height: 8,
                          decoration: BoxDecoration(
                            gradient: _currentPage == index
                                ? const LinearGradient(
                              colors: [
                                Color(0xFF1E3A8A),
                                Color(0xFF3B82F6),
                              ],
                            )
                                : null,
                            color: _currentPage != index
                                ? (isDark ? Colors.white24 : Colors.grey.withOpacity(0.3))
                                : null,
                            borderRadius: BorderRadius.circular(4),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 30),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 40),
                      child: Container(
                        decoration: BoxDecoration(
                          gradient: const LinearGradient(
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                            colors: [
                              Color(0xFF1E3A8A),
                              Color(0xFF3B82F6),
                              Color(0xFF60A5FA),
                            ],
                          ),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: ElevatedButton(
                          onPressed: () {
                            if (_currentPage < 2) {
                              _pageController.nextPage(
                                duration: const Duration(milliseconds: 300),
                                curve: Curves.easeInOut,
                              );
                            } else {
                              // Navigate to Home Screen (placeholder)
                              showDialog(
                                context: context,
                                builder: (context) => AlertDialog(
                                  backgroundColor: isDark ? const Color(0xFF1A1A1A) : Colors.white,
                                  title: Text('Ready!', style: TextStyle(color: textColor)),
                                  content: Text('Navigation to Home Screen', style: TextStyle(color: secondaryTextColor)),
                                  actions: [
                                    TextButton(
                                      onPressed: () => Navigator.pop(context),
                                      child: const Text('OK', style: TextStyle(color: Color(0xFF3B82F6))),
                                    ),
                                  ],
                                ),
                              );
                            }
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.transparent,
                            shadowColor: Colors.transparent,
                            padding: const EdgeInsets.symmetric(vertical: 16),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12),
                            ),
                            minimumSize: const Size(double.infinity, 50),
                          ),
                          child: Text(
                            _currentPage < 2 ? 'Next' : 'Get Started',
                            style: const TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}

// Custom clipper for irregular shape
class IrregularClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.moveTo(0, size.height * 0.2);
    path.quadraticBezierTo(
      size.width * 0.3,
      0,
      size.width * 0.6,
      size.height * 0.15,
    );
    path.quadraticBezierTo(
      size.width * 0.8,
      size.height * 0.25,
      size.width,
      size.height * 0.3,
    );
    path.lineTo(size.width, size.height * 0.8);
    path.quadraticBezierTo(
      size.width * 0.7,
      size.height,
      size.width * 0.4,
      size.height * 0.85,
    );
    path.quadraticBezierTo(
      size.width * 0.2,
      size.height * 0.75,
      0,
      size.height * 0.6,
    );
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}