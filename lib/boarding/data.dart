import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:onboarding_app/view/login/log_in.dart';

class OnboardingScreen extends StatefulWidget {
  @override
  _OnboardingScreenState createState() => _OnboardingScreenState();
}

class CardItem {
  final String urlImage;
  final String title;
  final String subtitle;

  const CardItem({
    required this.urlImage,
    required this.title,
    required this.subtitle,
  });
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  List<CardItem> items = [
    const CardItem(
      urlImage: 'assets/thai.jpg',
      title: 'Ihre Apotheke in der Hosentasche',
      subtitle:
          'Wir helfen mit Beratung, Arzneimittel \n  Bextellung und bei der Organisation und\n Planung Ihrer medizinischen Bedurfnisse. ',
    ),
    const CardItem(
      urlImage: 'assets/thai.jpg',
      title: 'Profitieren Sie von der Digitalisierung \n Ihrer Gesundheit',
      subtitle:
          'Wir sind als erste und grobte e-rezpt-fahige \n Gesundheisplattfrom fur Deutschland immer \n am Puls der Zeit',
    ),
    const CardItem(
      urlImage: 'assets/thai.jpg',
      title: 'Wir haben an alles gedacht- damit \n Sie es nicht mussen :)',
      subtitle:
          'Wir bieten diskreten und vartrauensvollen \n Service - insebseondere fur Menschen mit \n langerfrstugen gesundheitlichen Themen.',
    ),
  ];

  final int _numPages = 3;
  final PageController _pageController = PageController(initialPage: 0);
  int _currentPage = 0;

  List<Widget> _buildPageIndicator() {
    List<Widget> list = [];
    for (int i = 0; i < _numPages; i++) {
      list.add(i == _currentPage ? _indicator(true) : _indicator(false));
    }
    return list;
  }

  Widget _indicator(bool isActive) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 150),
      margin: const EdgeInsets.symmetric(horizontal: 3.0),
      height: isActive ? 10.0 : 6.0,
      width: isActive ? 20.0 : 6.0,
      decoration: BoxDecoration(
        color:
            isActive ? Colors.blue : const Color.fromARGB(255, 195, 195, 195),
        borderRadius: const BorderRadius.all(Radius.circular(6)),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnnotatedRegion<SystemUiOverlayStyle>(
        value: SystemUiOverlayStyle.light,
        child: Container(
          decoration: const BoxDecoration(),
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 0.0),
            child: Column(
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Padding(
                      padding: EdgeInsets.fromLTRB(0, 30, 0, 0),
                      child: Text(
                        'Ihre Apotheken',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            height: 1.2,
                            letterSpacing: 1.0),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 600.0,
                  child: PageView(
                    physics: const ClampingScrollPhysics(),
                    controller: _pageController,
                    onPageChanged: (int page) {
                      setState(() {
                        _currentPage = page;
                      });
                    },
                    children: <Widget>[
                      for (var item in items)
                        Padding(
                          padding: const EdgeInsets.all(40.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Center(
                                child: Image(
                                  image: AssetImage(
                                    item.urlImage,
                                  ),
                                  height: 300,
                                  width: 400,
                                ),
                              ),
                              Center(
                                child: Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(0, 20, 0, 10),
                                  child: Text(
                                    item.title,
                                    textAlign: TextAlign.center,
                                    style: const TextStyle(
                                        color: Colors.black,
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                        height: 1.2,
                                        letterSpacing: 1.0),
                                  ),
                                ),
                              ),
                              const SizedBox(height: 15.0),
                              Center(
                                child: Text(
                                  item.subtitle,
                                  textAlign: TextAlign.center,
                                  style: const TextStyle(
                                      color: Color.fromARGB(255, 105, 105, 105),
                                      fontSize: 14,
                                      fontWeight: FontWeight.w200,
                                      height: 1.2,
                                      letterSpacing: 1.0),
                                ),
                              ),
                            ],
                          ),
                        ),
                    ],
                  ),
                ),
                _currentPage != _numPages - 1
                    ? Expanded(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Container(
                                  child: TextButton(
                                    onPressed: () => print('  UBERSPRINGEN'),
                                    child: const Text(
                                      'UBERSPRINGEN',
                                      style: TextStyle(
                                          color: Colors.blue,
                                          fontSize: 14.0,
                                          fontWeight: FontWeight.bold,
                                          height: 1.2,
                                          letterSpacing: 1.0),
                                    ),
                                  ),
                                ),
                                Row(
                                  children: _buildPageIndicator(),
                                ),
                                TextButton(
                                  onPressed: () {
                                    _pageController.nextPage(
                                      duration:
                                          const Duration(milliseconds: 500),
                                      curve: Curves.ease,
                                    );
                                  },
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    mainAxisSize: MainAxisSize.min,
                                    children: const <Widget>[
                                      SizedBox(width: 10.0),
                                      Icon(
                                        Icons.arrow_forward_ios,
                                        color: Colors.blue,
                                        size: 20.0,
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      )
                    : const Text(''),
                SizedBox(
                  height: 20,
                  width: MediaQuery.of(context).size.width,
                )
              ],
            ),
          ),
        ),
      ),
      bottomSheet: _currentPage == _numPages - 1
          ? Container(
              height: 70,
              width: double.infinity,
              color: Colors.white,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    child: TextButton(
                      onPressed: () => print('  UBERSPRINGEN'),
                      child: const Text(
                        'UBERSPRINGEN',
                        style: TextStyle(
                            color: Colors.blue,
                            fontSize: 14.0,
                            fontWeight: FontWeight.bold,
                            height: 1.2,
                            letterSpacing: 1.0),
                      ),
                    ),
                  ),
                  Row(
                    children: _buildPageIndicator(),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const LogIn()));
                    },
                    child: const Center(
                      child: Icon(
                        Icons.arrow_forward_ios,
                        color: Colors.blue,
                      ),
                    ),
                  ),
                ],
              ))
          : const Text(''),
    );
  }
}
