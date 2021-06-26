import 'package:flutter/material.dart';

import 'detail_sepatu.dart';

void main() {
  runApp(MaterialApp(
    title: 'Haipbiss',
    home: MyApp(),
  ));
}

List<Shoes> data = const <Shoes>[
  const Shoes(
      id: 1,
      merk: 'Adidas',
      nama: 'YEEZT Boost 350 v2 “BRED”',
      deskripsi:
          'The Yeezy Boost 350 V2 Bred brings a classic colorway to its minimalist construction. The shoes upper is built with Primeknit, finished in black and highlighted by the SPLY-350 branding on the side wall. More red marks the heel pull-loop, while rope laces secure the fit. Underfoot, a full-length Boost midsole wrapped in a black rubber cage provides cushioning. A rubber outsole with cutouts provides traction.',
      foto:
          'https://www.2020yeezys.com/wp-content/uploads/2021/03/adidas-yeezy-boost-350-v2-bred-cp9652.png'),
  const Shoes(
      id: 2,
      merk: 'Adidas',
      nama: 'YEEZT Boost 350 v2 “ZEBRA”',
      deskripsi:
          'The Yeezy Boost 350 V2 Zebra released on February 25, 2017, combining an upper white / core black Primeknit with a red SPLY 350 branding and a full-length translucent midsole boost. On November 16, 2018, another restock of the Zebra arrived, with more pairs hitting the marketplace and building on Kanye commitment to make Yeezy more available to anyone who wished to acquire them.',
      foto:
          'https://apollo-singapore.akamaized.net/v1/files/esh692lrpadk-ID/image;s=850x0'),
  const Shoes(
      id: 3,
      merk: 'Nike',
      nama: 'Airmax 97 “BLACK/WHITE” women',
      deskripsi:
          'The Air Max 97 ‘Black White’ dresses the signature curves of its nylon upper in black, along with its lining, tongue, and small Swoosh. Contrasting white appears on the midsole and rubber outsole, while the visible full-length Air unit is completely clear.',
      foto:
          'https://www.sneakerfiles.com/wp-content/uploads/2017/03/nike-air-max-97-lx-black-white-1.jpg'),
  const Shoes(
      id: 4,
      merk: 'Nike',
      nama: 'Air Jordan 1 High “HYPER ROYAL”',
      deskripsi:
          'The Air Jordan 1 Retro High OG Hyper Royal brings a weathered look to the basketball classic. The shoes upper features a white leather base, overlaid by suede that sports a faded blue aesthetic. Light Smoke Grey complements the Swoosh and padded collar, while underfoot, a white Air midsole is included for cushioning. Further Light Smoke Grey emerges on the concentric rubber outsole.',
      foto:
          'https://sneakernews.com/wp-content/uploads/2020/11/air-jordan-1-retro-high-og-hyper-royal-light-smoke-grey-white-555088-402-5.jpg?w=1140'),
  const Shoes(
      id: 5,
      merk: 'Nike',
      nama: 'Air Jordan 1 Mid “UNIVERSITY GOLD”',
      deskripsi:
          'The pair is making use of seldom seen color blocking. The bright yellow pigmented hits are being dressed atop the toe box, the eye stay, the ankle flaps, and even the branding both by way of the Swoosh and tongue tab. Adjacent, white covers the forefoot more widespread, blocked little as it transitions from the mid-panel to the toe cap. Black sees a similar utilization as it primarily leads atop the entire lace unit as well as the lining and collar.',
      foto:
          'https://media.karousell.com/media/photos/products/2021/2/19/air_jordan_1_mid_university_go_1613754224_410f1df0_progressive.jpg'),
  const Shoes(
      id: 6,
      merk: 'Nike',
      nama: 'Air Jordan 1 High “SATIN SNAKE“',
      deskripsi:
          'Jordan Brand added luxe materials to a classic silhouette with the release of the Jordan 1 Retro High Satin Snake Chicago (W). This release combines Jumpman’s ongoing Satin 1 concept with the colorway that started it all.',
      foto:
          'https://sneakernews.com/wp-content/uploads/2020/04/air-jordan-1-satin-snake-CD0461-601-release-date-1.jpg'),
  const Shoes(
      id: 7,
      merk: 'Nike',
      nama: 'Air Jordan 1 High “UNIVERSITY BLUE',
      deskripsi:
          'Paying tribute to Michael Jordans college alma mater, the Air Jordan 1 Retro High OG University Blue features a University of North Carolina look. Built entirely with leather, the shoes upper appears in a mix of white and University Blue, contrasted by black on the Swoosh, collar, laces and Wings logo. Perforations on the toe box provide breathability, while underfoot, the Air midsole gives way to a concentric outsole with a brighter shade of blue.',
      foto:
          'https://cdn.shopify.com/s/files/1/1183/2814/products/1ce01a85.jpg?v=1615896819'),
  const Shoes(
      id: 8,
      merk: 'Nike',
      nama: 'Air Force 1 Low Shadow',
      deskripsi:
          'The Nike Air Force 1 Shadow puts a playful twist on the classic b-ball design. Featuring a layered approach, with 2 times the branding and an exaggerated midsole, the shoe highlights the AF-1 styling and doubles the fun',
      foto:
          'https://i.ytimg.com/vi/3XZQhzZZkRk/maxresdefault.jpg'),
  
];

class MyApp extends StatelessWidget {
  @override

  Widget build(BuildContext context) {
    final title = "Haipbiss";
    return Scaffold(
        appBar: AppBar(
          title: Text(title),
          centerTitle: true,
          backgroundColor: Colors.black,
        ),
        body: new GridView.count(
                primary: false,
                crossAxisCount: 2,
                padding: const EdgeInsets.only(top: 10, bottom: 10),
                children: List.generate(8, (index) {
                  return Container(
                    child: ShoesCard(choice: data[index], item: data[index]),
                  );
                }),
              )
      );
  }
}

class Shoes {
  final int id;
  final String merk;
  final String nama;
  final String deskripsi;
  final String foto;
  const Shoes(
      {this.id, this.merk, this.nama, this.deskripsi, this.foto});
}

class ShoesCard extends StatelessWidget {
  const ShoesCard(
      {Key key,
      this.choice,
      this.onTap,
      @required this.item,
      this.selected: false})
      : super(key: key);
  final Shoes choice;
  final VoidCallback onTap;
  final Shoes item;
  final bool selected;

  @override

  Widget build(BuildContext context) {
    TextStyle textStyle = Theme.of(context).textTheme.display1;
    if (selected)
      textStyle = textStyle.copyWith(color: Colors.lightGreenAccent[400]);
    return FlatButton(
      onPressed: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) =>
                    ShoesReadPage(index: data.indexOf(choice))));
      },
      child: Card(
          semanticContainer: true,
          elevation: 2,
          color: Colors.white,
          child: Column(
            children: <Widget>[
              new Container(
                child: Image.network(choice.foto)),
               new Container(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(choice.merk,
                        style: Theme.of(context).textTheme.subtitle2),
                    Text(choice.nama,
                      style:
                          TextStyle(color: Colors.black.withOpacity(0.5))),
                  ],
                ),
              )
            ],
            crossAxisAlignment: CrossAxisAlignment.start,
          )),
    );
  }
}