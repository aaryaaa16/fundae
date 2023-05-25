import 'package:flutter/material.dart';
import 'package:fundae/portfolio.dart';
import 'package:fundae/detailPage.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "FUNDAE",
        ),
        centerTitle: true,
      ),
      extendBodyBehindAppBar: true,
      body: ListView.builder(
        itemCount: company.length,
        itemBuilder: (context, index) {
          return Column(
            children: [
              Card(
                clipBehavior: Clip.antiAlias,
                child: Column(
                  children: [
                    ListTile(
                      title: Text(company[index]['name']),
                      subtitle: Text(
                        company[index]['description'],
                        style: TextStyle(
                            color: Colors.white.withOpacity(0.6)
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Container(
                        height: 70,
                        width: 350,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const SizedBox(height: 5),
                                Text(
                                  'Valuation',
                                  style: TextStyle(
                                    fontSize: 15,
                                    color: Colors.white.withOpacity(0.6)
                                  ),
                                ),
                                const SizedBox(height: 10),
                                Text(
                                  company[index]['valuation'],
                                  style: const TextStyle(
                                    fontSize: 20
                                  ),
                                )
                              ],
                            ),
                            const VerticalDivider(),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const SizedBox(height: 5),
                                Text(
                                  'Target',
                                  style: TextStyle(
                                      fontSize: 15,
                                      color: Colors.white.withOpacity(0.6)
                                  ),
                                ),
                                const SizedBox(height: 10),
                                Text(
                                  company[index]['target'],
                                  style: const TextStyle(
                                      fontSize: 20
                                  ),
                                )
                              ],
                            ),
                            const VerticalDivider(),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const SizedBox(height: 5),
                                Text(
                                  'Investors',
                                  style: TextStyle(
                                      fontSize: 15,
                                      color: Colors.white.withOpacity(0.6)
                                  ),
                                ),
                                const SizedBox(height: 10),
                                Text(
                                  company[index]['investors'],
                                  style: const TextStyle(
                                      fontSize: 20
                                  ),
                                )
                              ],
                            ),
                          ],
                        ),
                      )
                    ),
                    ButtonBar(
                      alignment: MainAxisAlignment.start,
                      children: [
                        ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => DetailPage(index))
                            );
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.grey[350],
                          ),
                          child: const Text(
                              'Primary',
                            style: TextStyle(
                              color: Colors.black
                            ),
                          ),
                        ),
                        ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.indigo[100],
                          ),
                          child: const Text(
                              'IND',
                            style: TextStyle(
                              color: Colors.black
                            ),
                          ),
                        ),
                      ],
                    ),
                    Container(
                      height: 200,
                      width: 300,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          image: DecorationImage(
                              image: AssetImage(company[index]['logo']),
                              fit: BoxFit.cover
                          )
                      ),
                    ),
                    const SizedBox(height: 15),
                    SizedBox(
                      height: 45,
                      width: 110,
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(

                          backgroundColor: Colors.lightGreen[200],
                        ),
                        child: const Text(
                          'Invest',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 17
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 15)
                  ],
                ),
              ),
              const SizedBox(height: 10)
            ],
          );
        },
      )
    );
  }
}
