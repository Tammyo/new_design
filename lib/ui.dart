import 'package:flutter/material.dart';

class AppUi extends StatelessWidget {
  const AppUi({super.key});

  @override
  Widget build(BuildContext context) {
    String image1 = 'image/img1.jpeg';
    String image2 = 'image/cardLogo.png';
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 244, 243, 249),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color.fromARGB(255, 244, 243, 249),
        leading: const Icon(Icons.menu_open),
        actions: [
          CircleAvatar(
            child: ClipOval(
              child: Image.asset(
                image1,
                fit: BoxFit.cover,
                width: 40,
                height: 40,
              ),
            ),
          ),
          SizedBox(width: 15)
        ],
      ),
      body: Column(
        children: [
          Flexible(
            flex: 5,
            child: ListView(
              children: [
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Container(
                        height: 170,
                        width: 320,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(27),
                          gradient: LinearGradient(
                            colors: [
                              const Color.fromARGB(255, 34, 34, 34)
                                  .withOpacity(0.9),
                              Colors.black,
                            ],
                            stops: [0.2, 0.8],
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                          ),
                        ),
                        margin:
                            const EdgeInsets.only(top: 5, left: 40, right: 20),
                        padding: const EdgeInsets.only(
                            top: 16, bottom: 8, left: 30, right: 30),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Row(
                              children: [
                                Text(
                                  'money bank ',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  '| Universal bank',
                                  style: TextStyle(
                                      color: Color.fromARGB(255, 186, 186, 186),
                                      fontWeight: FontWeight.w500),
                                )
                              ],
                            ),
                            const SizedBox(height: 24),
                            const Text(
                              r'$ 55.676',
                              style: TextStyle(
                                  color: Color.fromARGB(255, 255, 255, 255),
                                  fontSize: 24,
                                  fontWeight: FontWeight.bold),
                            ),
                            const SizedBox(height: 12),
                            Text(
                              '2345   5677   2345   6765',
                              style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.white.withOpacity(0.9)),
                            ),
                            Align(
                              alignment: Alignment.centerRight,
                              child: Image.asset(
                                image2,
                                width: 45,
                              ),
                            )
                          ],
                        ),
                      ),
                      Container(
                          width: 250,
                          height: 165,
                          margin: const EdgeInsets.only(right: 45),
                          decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 31, 31, 242),
                            borderRadius: BorderRadius.circular(27),
                          ))
                    ],
                  ),
                ),
                const SizedBox(height: 32),
                const Align(
                  alignment: Alignment.center,
                  child: Text(
                    'SEND MONEY TO',
                    style: TextStyle(fontWeight: FontWeight.w600),
                  ),
                ),
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Flexible(
                        flex: 2,
                        child: Align(
                          alignment: Alignment.centerRight,
                          child: IconButton(
                            icon: const Padding(
                              padding: EdgeInsets.all(5),
                              child: Icon(Icons.add),
                            ),
                            iconSize: 20,
                            onPressed: () {},
                            style: ButtonStyle(
                              shape: MaterialStateProperty.all(
                                RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20),
                                  side: const BorderSide(
                                      color: Colors.black, width: 2),
                                ),
                              ),
                            ),
                          ),
                        )),
                    const SizedBox(width: 8),
                    Flexible(
                        flex: 8,
                        child: Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Row(
                                children: List.generate(5, (index) {
                              return Row(
                                children: [
                                  Container(
                                      margin: const EdgeInsets.only(right: 1),
                                      padding: const EdgeInsets.only(
                                          top: 17,
                                          bottom: 17,
                                          right: 25,
                                          left: 25),
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(15),
                                      ),
                                      child: Column(children: [
                                        Container(
                                          width: 55,
                                          height: 55,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(20),
                                          ),
                                          child: ClipRRect(
                                            borderRadius:
                                                BorderRadius.circular(20),
                                            child: Image.asset(
                                              image1,
                                              fit: BoxFit.cover,
                                              width: 55,
                                              height: 55,
                                            ),
                                          ),
                                        ),

                                        // CircleAvatar(
                                        //   child: ClipOval(
                                        // child: Image.asset(
                                        //   image1,
                                        //   fit: BoxFit.cover,
                                        //   width: 55,
                                        //   height: 55,
                                        // ),
                                        //   ),
                                        // ),
                                        const SizedBox(height: 5),
                                        const Text('Victor')
                                      ])),
                                  const SizedBox(width: 24),
                                ],
                              );
                            })),
                          ),
                        ))
                  ],
                ),
              ],
            ),
          ),
          Flexible(
            flex: 4,
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                height: 380,
                width: double.infinity,
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(50),
                        topRight: Radius.circular(50))),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Flexible(
                        flex: 1,
                        child: Column(
                          children: [
                            const SizedBox(height: 20),
                            Align(
                              alignment: Alignment.center,
                              child: Container(
                                width: 80,
                                height: 6,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color:
                                      const Color.fromARGB(255, 208, 208, 208),
                                ),
                              ),
                            ),
                          ],
                        )),
                    Flexible(
                      flex: 7,
                      child: ListView(
                        children: [
                          const Padding(
                            padding: EdgeInsets.only(left: 20, top: 35),
                            child: Text(
                              'PENDING TRANSACTIONS',
                              style: TextStyle(fontWeight: FontWeight.w700),
                            ),
                          ),
                          const SizedBox(height: 9),
                          listShow(
                              const Color.fromARGB(255, 248, 224, 232),
                              Colors.black,
                              'Driver',
                              'Wizzair',
                              '25/11/2024',
                              r'$-300'),
                          const Padding(
                            padding:
                                EdgeInsets.only(left: 20, top: 5, right: 20),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Divider(),
                                SizedBox(height: 16),
                                Text(
                                  'COMPLETED TRANSACTIONS',
                                  style: TextStyle(fontWeight: FontWeight.w700),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(height: 9),
                          listShow(Colors.black, Colors.white, 'Uber', 'Uber',
                              '1/40/2025', r'$200'),
                          const SizedBox(height: 9),
                          listShow(Colors.black, Colors.white, 'Uber', 'Uber',
                              '1/40/2027', r'$600')
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget listShow(
      Color bkColor, textColor, String text, title1, subTitle, amountText) {
    return ListTile(
      leading: Container(
        width: 55,
        decoration: BoxDecoration(
            color: bkColor, borderRadius: BorderRadius.circular(20)),
        child: Center(
            child: Text(
          text,
          style: TextStyle(color: textColor, fontWeight: FontWeight.w600),
        )),
      ),
      title: Text(
        title1,
        style: const TextStyle(fontWeight: FontWeight.w500),
      ),
      subtitle: Text(
        subTitle,
        style: const TextStyle(
            color: Color.fromARGB(255, 171, 171, 171),
            fontWeight: FontWeight.w600),
      ),
      trailing: Text(
        amountText,
        style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w800),
      ),
    );
  }
}
