import 'package:flutter/material.dart';

class DetailPage extends StatelessWidget {
  // const DetailPage({Key? key}) : super(key: key);

  final int index;

  const DetailPage(this.index, {super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Stack(
            children: [
              Column(
                children: [
                  Container(
                    height: 250,
                    width: double.infinity,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/fun1.png'),
                        fit: BoxFit.fill
                      )
                    ),
                  ),
                  const Text(
                    'Ola',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 40
                    ),
                  ),
                  const Text(
                    'BUSINESS OVERVIEW'
                  ),
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text(
                          'Location'
                        ),
                        Text(
                          'Cork, Ireland'
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                            'Social Media'
                        ),
                        Row(
                          children: const [
                            Icon(
                              Icons.facebook
                            ),
                            Icon(
                                Icons.facebook
                            ),
                            Icon(
                                Icons.facebook
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text(
                            'Website'
                        ),
                        Text(
                            'https://www.olacabs.com/'
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text(
                            'Company Number'
                        ),
                        Text(
                            '685489'
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text(
                            'Incorporation Date'
                        ),
                        Text(
                            '7 Jan 2021'
                        )
                      ],
                    ),
                  ),
                  SizedBox(height: 20),
                  const Text(
                      'INVESTMENT SUMMARY'
                  ),
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text(
                            'Type'
                        ),
                        Text(
                            'Equity'
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text(
                            'Valuation (Pre-money)'
                        ),
                        Text(
                          '80Lac'
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text(
                            'Equity offered'
                        ),
                        Text(
                            '11.11%'
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text(
                            'Share Price'
                        ),
                        Text(
                            'Rs.20.52'
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text(
                            'Tax relief'
                        ),
                        Text(
                            'EIS'
                        )
                      ],
                    ),
                  ),
                ],
              ),
              Positioned(
                left: 30,
                top: 200,
                child: Container(
                  height: 100,
                  width: 100,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/start1.png'),
                      fit: BoxFit.fill
                    )
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
