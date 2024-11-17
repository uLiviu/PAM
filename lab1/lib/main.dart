import 'package:flutter/material.dart';

void main() {
  runApp(FlutterApp());
}

class FlutterApp extends StatelessWidget {
  final ValueNotifier<bool> _dark = ValueNotifier<bool>(true);
  final ValueNotifier<double> _widthFactor = ValueNotifier<double>(1.0);

  FlutterApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: ValueListenableBuilder<bool>(
            valueListenable: _dark,
            builder: (context, color, child) {
              return ValueListenableBuilder<double>(
                valueListenable: _widthFactor,
                builder: (context, factor, child) {
                  return Scaffold(
                      backgroundColor:
                          _dark.value ? Colors.black : Colors.white,
                      body: Center(
                          child: SizedBox(
                        width: MediaQuery.of(context).size.width *
                            _widthFactor.value,
                        child: Container(
                          child: const V3(),
                        ),
                      )));
                },
              );
            }));
  }
}

class V3 extends StatelessWidget {
  const V3({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 500,
          height: 797,
          clipBehavior: Clip.antiAlias,
          decoration: const BoxDecoration(color: Color(0xFFD1D9E6)),
          child: Stack(
            children: [
              Positioned(
                left: 15,
                top: 735,
                child: Container(
                  width: 379,
                  height: 50,
                  decoration: ShapeDecoration(
                    color: const Color(0xFF246AFE),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 25,
                top: 217,
                child: Container(
                  width: 175,
                  height: 50,
                  decoration: ShapeDecoration(
                    color: const Color(0xFF246AFE),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 213,
                top: 217,
                child: Container(
                  width: 175,
                  height: 50,
                  decoration: ShapeDecoration(
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 30,
                top: 555,
                child: Column(
                  children: [
                    const Text(
                      'Height',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 15,
                        fontFamily: 'Poppins',
                        height: 0,
                      ),
                    ),
                    const SizedBox(height: 10),
                    Container(
                      height: 50,
                      width: 200,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: TextFormField(),
                    )
                  ],
                ),
              ),
              const Positioned(
                left: 126,
                top: 630,
                child: Text(
                  '20.4',
                  style: TextStyle(
                    color: Color(0xFF246AFE),
                    fontSize: 67,
                    fontFamily: 'Poppins',
                    height: 0,
                  ),
                ),
              ),
              const Positioned(
                  left: 110,
                  top: 700,
                  child: Text(
                    'Underweight',
                    style: TextStyle(
                      color: Color(0xFF246AFE),
                      fontSize: 30,
                      fontFamily: 'Poppins',
                      height: 0,
                    ),
                  )),
              const Positioned(
                left: 177,
                top: 750,
                child: Text(
                  'Lets Go',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                    fontFamily: 'Poppins',
                    height: 0,
                  ),
                ),
              ),
              const Positioned(
                left: 94,
                top: 231,
                child: Text(
                  'Male',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                    fontFamily: 'Poppins',
                    height: 0,
                  ),
                ),
              ),
              const Positioned(
                left: 272,
                top: 231,
                child: Text(
                  'Female',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0xFF246AFE),
                    fontSize: 15,
                    fontFamily: 'Poppins',
                    height: 0,
                  ),
                ),
              ),
              Positioned(
                left: 25,
                top: 308,
                child: Container(
                  width: 175,
                  height: 220,
                  decoration: ShapeDecoration(
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 212,
                top: 308,
                child: Container(
                  width: 175,
                  height: 220,
                  decoration: ShapeDecoration(
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
              ),
              const Positioned(
                left: 85,
                top: 323,
                child: Text(
                  'Weight',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0xFF8C8C8C),
                    fontSize: 15,
                    fontFamily: 'Poppins',
                    height: 0,
                  ),
                ),
              ),
              const Positioned(
                left: 284,
                top: 322,
                child: Text(
                  'Age',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0xFF8C8C8C),
                    fontSize: 15,
                    fontFamily: 'Poppins',
                    height: 0,
                  ),
                ),
              ),
              const Positioned(
                left: 79,
                top: 356,
                child: Text(
                  '70',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 64,
                    fontFamily: 'Poppins',
                    height: 0,
                  ),
                ),
              ),
              const Positioned(
                left: 261,
                top: 357,
                child: Text(
                  '23',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 64,
                    fontFamily: 'Poppins',
                    height: 0,
                  ),
                ),
              ),
              Positioned(
                left: 48,
                top: 469,
                child: Container(
                  width: 42,
                  height: 42,
                  decoration: ShapeDecoration(
                    color: const Color(0xFF246AFE),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 235,
                top: 469,
                child: Container(
                  width: 42,
                  height: 42,
                  decoration: ShapeDecoration(
                    color: const Color(0xFF246AFE),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 135,
                top: 469,
                child: Container(
                  width: 42,
                  height: 42,
                  decoration: ShapeDecoration(
                    color: const Color(0xFF246AFE),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 322,
                top: 469,
                child: Container(
                  width: 42,
                  height: 42,
                  decoration: ShapeDecoration(
                    color: const Color(0xFF246AFE),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 134,
                top: 468,
                child: IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.add),
                  iconSize: 24,
                  color: Colors.white,
                ),
              ),
              Positioned(
                left: 320,
                top: 468,
                child: IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.add),
                  iconSize: 24,
                  color: Colors.white,
                ),
              ),
              Positioned(
                left: 45,
                top: 468,
                child: IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.remove),
                  iconSize: 24,
                  color: Colors.white,
                ),
              ),
              Positioned(
                left: 232,
                top: 468,
                child: IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.remove),
                  iconSize: 24,
                  color: Colors.white,
                ),
              ),
              const Positioned(
                left: 25,
                top: 132,
                child: Text(
                  'BMI Calculator',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 24,
                    fontFamily: 'Poppins',
                    height: 0,
                    letterSpacing: 1.44,
                  ),
                ),
              ),
              const Positioned(
                left: 25,
                top: 109,
                child: Text(
                  'Welcome 😊',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                    fontFamily: 'Poppins',
                    height: 0,
                  ),
                ),
              ),
              Positioned(
                left: 229,
                top: 37,
                child: Container(
                  width: 24,
                  height: 24,
                  padding: const EdgeInsets.only(
                    top: 3.04,
                    left: 3,
                    right: 3.04,
                    bottom: 3,
                  ),
                  clipBehavior: Clip.antiAlias,
                  decoration: const BoxDecoration(),
                  child: const Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [],
                  ),
                ),
              ),
              Positioned(
                left: 58,
                top: 231,
                child: Container(
                  width: 24,
                  height: 24,
                  padding: const EdgeInsets.all(4),
                  clipBehavior: Clip.antiAlias,
                  decoration: const BoxDecoration(
                    color: Color(0xFF246AFE),
                  ),
                  child: const Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [],
                  ),
                ),
              ),
              Positioned(
                left: 250,
                top: 230,
                child: Container(
                  width: 24,
                  height: 24,
                  padding: const EdgeInsets.only(
                    top: 4,
                    left: 6.50,
                    right: 6.50,
                    bottom: 3,
                  ),
                  clipBehavior: Clip.antiAlias,
                  decoration: const BoxDecoration(),
                  child: const Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                  ),
                ),
              ),
              Positioned(
                left: 25,
                top: 300,
                child: SizedBox(
                  height: 70,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: double.infinity,
                        height: 10,
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              decoration:
                                  const BoxDecoration(color: Colors.red),
                              child: const Text(
                                'Height',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 14,
                                  fontFamily: 'Cera Pro',
                                  height: 0.11,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        // width: double.infinity,
                        height: 50,
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              width: double.infinity,
                              height: 50,
                              padding: const EdgeInsets.all(17),
                              clipBehavior: Clip.antiAlias,
                              decoration: ShapeDecoration(
                                color: Colors.white,
                                shape: RoundedRectangleBorder(
                                  side: const BorderSide(
                                      width: 1, color: Color(0xFFE0E1E7)),
                                  borderRadius: BorderRadius.circular(8),
                                ),
                              ),
                              child: const Row(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Expanded(
                                    child: SizedBox(
                                      child: Text(
                                        'Height',
                                        style: TextStyle(
                                          color: Color(0xFFBDBDBD),
                                          fontSize: 16,
                                          fontFamily: 'Cera Pro',
                                          height: 0.13,
                                          letterSpacing: -0.50,
                                        ),
                                      ),
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
                ),
              ),
              const Positioned(
                left: 151,
                top: 665,
                child: Text(
                  '20.4',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0xFF246AFE),
                    fontSize: 67,
                    fontFamily: 'Poppins',
                    height: 0,
                  ),
                ),
              ),
              const Positioned(
                left: 126,
                top: 443,
                child: Text(
                  'Underweight',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0xFF246AFE),
                    fontSize: 30,
                    fontFamily: 'Poppins',
                    height: 0,
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
