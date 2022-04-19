import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class QuickEntries {
  final String title;
  final IconData icon;
  final Color color;
  final Color iconcolor;

  const QuickEntries({
    required this.title,
    required this.icon,
    required this.color,
    required this.iconcolor,
  });
}

List<QuickEntries> quickentries = [
  const QuickEntries(
      title: 'Erneut bestellen ',
      icon: Icons.shopping_cart,
      color: Color.fromARGB(83, 255, 227, 166),
      iconcolor: Color.fromARGB(255, 211, 151, 39)),
  const QuickEntries(
      title: 'Meine Merkliste',
      icon: Icons.star,
      color: Color.fromARGB(48, 109, 252, 113),
      iconcolor: Color.fromARGB(255, 30, 109, 8)),
  const QuickEntries(
      title: 'Ausgaben-\nAufstellung ',
      icon: Icons.assignment,
      color: Color.fromARGB(85, 151, 255, 213),
      iconcolor: Color.fromARGB(255, 27, 199, 159)),
  const QuickEntries(
    title: 'Impftermin-\nReservierung ',
    icon: Icons.vaccines,
    color: Color.fromARGB(58, 255, 114, 104),
    iconcolor: Color.fromARGB(255, 244, 67, 54),
  ),
];

class CardItem {
  final String title;
  final String subtitle;
  final String price;

  const CardItem({
    required this.title,
    required this.subtitle,
    required this.price,
  });
}

List<CardItem> items = [
  const CardItem(
      title: 'PROSPAN Hustensaf \nlorem ipsum ',
      subtitle: '500',
      price: '38,99'),
  const CardItem(
      title: 'PROSPAN Hustensaf \nlorem ipsum ',
      subtitle: '500',
      price: '38,99'),
  const CardItem(
      title: 'PROSPAN Hustensaf \nlorem ipsum ',
      subtitle: '500',
      price: '38,99'),
  const CardItem(
      title: 'PROSPAN Hustensaf \nlorem ipsum ',
      subtitle: '500',
      price: '38,99'),
  const CardItem(
      title: 'PROSPAN Hustensaf \nlorem ipsum ',
      subtitle: '500',
      price: '38,99'),
  const CardItem(
      title: 'PROSPAN Hustensaf \nlorem ipsum ',
      subtitle: '500',
      price: '38,99'),
];

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color.fromARGB(255, 239, 238, 238),
        appBar: AppBar(
            backgroundColor: Colors.white,
            elevation: 0,
            automaticallyImplyLeading: false,
            leading: Container(),
            title: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Icon(
                  Icons.autofps_select,
                  color: Colors.red,
                  size: 35,
                ),
                Text('Ihre Apotheken',
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 22, 44, 73),
                        height: 1.2,
                        letterSpacing: 1.0)),
              ],
            ),
            bottom: const PreferredSize(
                preferredSize: Size.fromHeight(56),
                child: Padding(
                  padding: EdgeInsets.fromLTRB(20, 0, 20, 15),
                  child: TextField(
                      decoration: InputDecoration(
                          suffixIcon: Icon(Icons.search),
                          fillColor: Color.fromARGB(112, 219, 218, 218),
                          border: InputBorder.none,
                          filled: true,
                          labelText: 'Medikament oder Symptom suchen')),
                ))),
        body: ListView(
          children: [
            Column(
              children: [
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    DecoratedBox(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10)),
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(20, 20, 20, 15),
                        child: SizedBox(
                            width: 430,
                            child: Stack(
                              children: [
                                Column(
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        const Padding(
                                          padding: EdgeInsets.all(10),
                                          child: Icon(
                                            Icons.autofps_select,
                                            color: Colors.red,
                                            size: 35,
                                          ),
                                        ),
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            const Text(
                                                'Apotheke am Markt Plochingen',
                                                style: TextStyle(
                                                    fontWeight: FontWeight.w900,
                                                    height: 1.2,
                                                    letterSpacing: 1.0,
                                                    fontSize: 16)),
                                            Row(
                                              children: [
                                                Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Padding(
                                                      padding: const EdgeInsets
                                                          .fromLTRB(0, 8, 0, 0),
                                                      child: RichText(
                                                          text: const TextSpan(
                                                        style: TextStyle(),
                                                        children: <TextSpan>[
                                                          TextSpan(
                                                            text: 'GEOFFNET ',
                                                            style: TextStyle(
                                                                fontWeight:
                                                                    FontWeight
                                                                        .bold,
                                                                color: Colors
                                                                    .green,
                                                                height: 1.2,
                                                                letterSpacing:
                                                                    1.0,
                                                                fontSize: 14),
                                                          ),
                                                          TextSpan(
                                                            text:
                                                                'von 07:00 bis 13:00 Uhr und',
                                                            style: TextStyle(
                                                              height: 1.2,
                                                              letterSpacing:
                                                                  1.0,
                                                              fontSize: 14,
                                                              color:
                                                                  Colors.grey,
                                                            ),
                                                          ),
                                                        ],
                                                      )),
                                                    ),
                                                    Row(
                                                      children: const [
                                                        Text(
                                                          '14:00 bis 20:00 Uhr',
                                                          style: TextStyle(
                                                            height: 1.2,
                                                            letterSpacing: 1.0,
                                                            fontSize: 14,
                                                            color: Colors.grey,
                                                          ),
                                                        ),
                                                        Padding(
                                                          padding: EdgeInsets
                                                              .fromLTRB(
                                                                  10, 0, 10, 0),
                                                          child: Icon(
                                                            Icons.credit_card,
                                                            size: 25,
                                                            color: Colors.grey,
                                                          ),
                                                        ),
                                                        Icon(
                                                          Icons.delivery_dining,
                                                          size: 25,
                                                          color: Colors.grey,
                                                        )
                                                      ],
                                                    )
                                                  ],
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                        const Padding(
                                          padding: EdgeInsets.only(left: 10),
                                          child: Icon(
                                            Icons.arrow_forward_ios,
                                            size: 25,
                                            color: Colors.grey,
                                          ),
                                        ),
                                      ],
                                    ),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        DecoratedBox(
                                          decoration: BoxDecoration(
                                              color: const Color.fromARGB(
                                                  167, 212, 236, 255),
                                              borderRadius:
                                                  BorderRadius.circular(10)),
                                          child: Padding(
                                            padding: const EdgeInsets.fromLTRB(
                                                0, 3, 0, 3),
                                            child: SizedBox(
                                              width: 180,
                                              height: 30,
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  Container(
                                                    width: 25,
                                                    height: 25,
                                                    decoration: BoxDecoration(
                                                        color: const Color
                                                                .fromARGB(
                                                            255, 198, 229, 254),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(25)),
                                                    child: const Icon(
                                                      Icons.phone,
                                                      size: 14,
                                                      color: Color.fromARGB(
                                                          255, 112, 191, 255),
                                                    ),
                                                  ),
                                                  const Padding(
                                                    padding: EdgeInsets.only(
                                                        left: 5.0),
                                                    child: Text(
                                                      'Anruf',
                                                      style: TextStyle(
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          height: 1.2,
                                                          letterSpacing: 1.0,
                                                          fontSize: 14),
                                                    ),
                                                  )
                                                ],
                                              ),
                                            ),
                                          ),
                                        ),
                                        const SizedBox(
                                          width: 10,
                                        ),
                                        DecoratedBox(
                                          decoration: BoxDecoration(
                                              color: const Color.fromARGB(
                                                  167, 255, 231, 180),
                                              borderRadius:
                                                  BorderRadius.circular(10)),
                                          child: Padding(
                                            padding: const EdgeInsets.fromLTRB(
                                                0, 3, 0, 3),
                                            child: SizedBox(
                                              width: 180,
                                              height: 30,
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  Container(
                                                    width: 25,
                                                    height: 25,
                                                    decoration: BoxDecoration(
                                                        color: const Color
                                                                .fromARGB(
                                                            193, 252, 209, 115),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(25)),
                                                    child: const Icon(
                                                      Icons.send,
                                                      size: 14,
                                                      color: Color.fromARGB(
                                                          255, 237, 178, 60),
                                                    ),
                                                  ),
                                                  const Padding(
                                                    padding: EdgeInsets.only(
                                                        left: 5.0),
                                                    child: Text(
                                                      'Route',
                                                      style: TextStyle(
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          height: 1.2,
                                                          letterSpacing: 1.0,
                                                          fontSize: 14),
                                                    ),
                                                  )
                                                ],
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    )
                                  ],
                                )
                              ],
                            )),
                      ),
                    )
                  ],
                ),
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    DecoratedBox(
                      decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 220, 238, 254),
                          borderRadius: BorderRadius.circular(10)),
                      child: Padding(
                        padding: const EdgeInsets.all(20),
                        child: SizedBox(
                          width: 430,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Padding(
                                padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
                                child: Text(
                                  'Losen Sie Ihre Rexepte ein',
                                  style: TextStyle(
                                      color: Colors.blue,
                                      fontWeight: FontWeight.w900,
                                      height: 1.2,
                                      letterSpacing: 1.0,
                                      fontSize: 16),
                                ),
                              ),
                              const Padding(
                                padding: EdgeInsets.only(bottom: 20),
                                child: Text(
                                  'Laden Sie Ihre Rezepte oder E-Rezepte\nhoch oder machen Sie Fotos davon.',
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w700,
                                    height: 1.2,
                                    letterSpacing: 1.0,
                                  ),
                                ),
                              ),
                              Row(
                                children: [
                                  DecoratedBox(
                                    decoration: BoxDecoration(
                                        color: Colors.blue,
                                        borderRadius:
                                            BorderRadius.circular(10)),
                                    child: Padding(
                                      padding: const EdgeInsets.fromLTRB(
                                          10, 5, 10, 5),
                                      child: SizedBox(
                                        child: Row(
                                          children: [
                                            TextButton(
                                              onPressed: () {},
                                              child: const Text(
                                                'Hochladen',
                                                style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.w700,
                                                  height: 1.2,
                                                  letterSpacing: 1.0,
                                                ),
                                              ),
                                            ),
                                            const Icon(
                                              Icons.arrow_forward_ios,
                                              size: 12,
                                              color: Colors.white,
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 50,
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    )
                  ],
                ),
                const Padding(
                  padding: EdgeInsets.all(20),
                  child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Schnelleinstiege',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          height: 1.2,
                          letterSpacing: 1.0,
                        ),
                      )),
                ),
                Wrap(
                  children: [
                    for (var entry in quickentries)
                      Container(
                        margin: const EdgeInsets.fromLTRB(0, 0, 10, 10),
                        child: GestureDetector(
                          child: DecoratedBox(
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Padding(
                              padding:
                                  const EdgeInsets.fromLTRB(15, 20, 15, 20),
                              child: SizedBox(
                                width: 200,
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Text(entry.title,
                                        style: const TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.bold,
                                          height: 1.2,
                                          letterSpacing: 1.0,
                                        )),
                                    Container(
                                      padding: const EdgeInsets.all(3),
                                      width: 35,
                                      height: 35,
                                      decoration: BoxDecoration(
                                          color: entry.color,
                                          borderRadius:
                                              BorderRadius.circular(25)),
                                      child: Icon(
                                        entry.icon,
                                        size: 25,
                                        color: entry.iconcolor,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                  ],
                ),
                Row(
                  children: const [
                    Padding(
                      padding: EdgeInsets.fromLTRB(20, 20, 0, 20),
                      child: Text(
                        'Aktuelle Angebote',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          height: 1.2,
                          letterSpacing: 1.0,
                        ),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 200,
                  child: ListView.separated(
                    padding: const EdgeInsets.all(16),
                    scrollDirection: Axis.horizontal,
                    itemCount: 6,
                    separatorBuilder: (context, _) => const SizedBox(width: 12),
                    itemBuilder: (context, index) =>
                        buildCard(item: items[index]),
                  ),
                ),
                Row(
                  children: const [
                    Padding(
                      padding: EdgeInsets.fromLTRB(20, 20, 0, 20),
                      child: Text('Produkte des Monats'),
                    )
                  ],
                ),
                SizedBox(
                  height: 200,
                  child: ListView.separated(
                    padding: const EdgeInsets.all(16),
                    scrollDirection: Axis.horizontal,
                    itemCount: 6,
                    separatorBuilder: (context, _) => const SizedBox(width: 12),
                    itemBuilder: (context, index) =>
                        buildCard(item: items[index]),
                  ),
                ),
                const SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    DecoratedBox(
                      decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 255, 255, 255),
                          borderRadius: BorderRadius.circular(20)),
                      child: Padding(
                        padding: const EdgeInsets.all(20),
                        child: SizedBox(
                          width: 430,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Padding(
                                padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
                                child: Text(
                                  'Rechtliche Hinweise',
                                  style: TextStyle(
                                      color: Color.fromARGB(255, 0, 0, 0),
                                      fontWeight: FontWeight.w900,
                                      height: 1.2,
                                      letterSpacing: 1.0,
                                      fontSize: 14),
                                ),
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: const [
                                  Padding(
                                    padding: EdgeInsets.only(bottom: 10),
                                    child: Text(
                                      'Informationen zu Preise und Verfungbarkeit & \nAuflosung der Fussnoten',
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                        height: 1.2,
                                        letterSpacing: 1.0,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(bottom: 10),
                                    child: Icon(Icons.arrow_forward_ios),
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }

  Widget buildCard({
    required CardItem item,
  }) =>
      Container(
          width: 200,
          height: 200,
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(20)),
          child: Column(
            children: [
              Expanded(
                  child: Column(
                children: const [],
              )),
              Text(item.title),
              Text(item.subtitle),
              Text(item.price)
            ],
          ));
}
