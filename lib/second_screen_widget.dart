import 'package:flutter/material.dart';

class TypeGoods {
  final String text;
  final IconData icon;

  TypeGoods({required this.text, required this.icon});
}

List<TypeGoods> goods = [
  TypeGoods(
    icon: Icons.phone_iphone,
    text: 'Phones',
  ),
  TypeGoods(
    icon: Icons.computer,
    text: 'Computer',
  ),
  TypeGoods(
    icon: Icons.monitor_heart,
    text: 'Health',
  ),
  TypeGoods(
    icon: Icons.book_online,
    text: 'Books',
  ),
  TypeGoods(
    icon: Icons.phone_iphone,
    text: 'Phones',
  ),
  TypeGoods(
    icon: Icons.computer,
    text: 'Computer',
  ),
  TypeGoods(
    icon: Icons.monitor_heart,
    text: 'Health',
  ),
  TypeGoods(
    icon: Icons.book_online,
    text: 'Books',
  ),
  TypeGoods(
    icon: Icons.phone_iphone,
    text: 'Phones',
  ),
  TypeGoods(
    icon: Icons.computer,
    text: 'Computer',
  ),
  TypeGoods(
    icon: Icons.monitor_heart,
    text: 'Health',
  ),
  TypeGoods(
    icon: Icons.book_online,
    text: 'Books',
  ),
];

class MyButton extends StatefulWidget {
  final IconData icon;
  final String text;

  const MyButton({Key? key, required this.icon, required this.text})
      : super(key: key);

  @override
  State<MyButton> createState() => _MyButtonState();
}

class _MyButtonState extends State<MyButton> {
  bool press = false;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const SizedBox(
          width: 23,
        ),
        Column(
          children: [
            ElevatedButton(
              onPressed: () {
                setState(() {
                  press = !press;
                });
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: press ? const Color(0xFFFF6E4E) : Colors.white,
                foregroundColor: const Color(0xFFFF6E4E),
                fixedSize: const Size(71, 71),
                shape: const CircleBorder(),
              ),
              child: Icon(
                widget.icon,
                size: 32,
                color: press ? Colors.white : Colors.grey,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(widget.text),
          ],
        ),
      ],
    );
  }
}

class SecondScreenWidget extends StatelessWidget {
  const SecondScreenWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFE5E5E5),
      //drawerScrimColor: Colors.white,
      // appBar: AppBar(
      //   title: const Text('Second page'),
      // ),
      body: SafeArea(
        bottom: false,
        child: Column(
          children: [
            Row(
              children: [
                const Expanded(
                    child: SizedBox(
                  width: 10,
                )),
                Row(
                  children: const [
                    Icon(
                      Icons.place_outlined,
                      color: Color(0xFFFF6E4E),
                    ),
                    Text('Zihuatanejo, Gro'),
                    Icon(Icons.expand_more),
                  ],
                ),
                const Expanded(
                    child: SizedBox(
                  width: 10,
                )),
                const Icon(Icons.filter_alt_outlined)
              ],
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: const [
                SizedBox(width: 17),
                Text(
                  'Select Category',
                  style: TextStyle(
                    color: Color(0xFF010035),
                    fontSize: 25,
                    fontWeight: FontWeight.w700,
                    fontFamily: 'Mark Pro',
                  ),
                ),
                Expanded(child: SizedBox(width: 17)),
                Text(
                  'view all',
                  style: TextStyle(
                    color: Color(0xFFFF6E4E),
                    fontSize: 15,
                    fontWeight: FontWeight.w400,
                    fontFamily: 'Mark Pro',
                  ),
                ),
                SizedBox(width: 33),
              ],
            ),
            const SizedBox(height: 13),
            SizedBox(
                height: 100,
                width: MediaQuery.of(context).size.width,
                child: ListView(
                  padding: const EdgeInsets.only(left: 5),
                  scrollDirection: Axis.horizontal,
                  children: goods
                      .map((e) => MyButton(icon: e.icon, text: e.text))
                      .toList(),
                )),
            const SizedBox(
              height: 25,
            ),
            Row(
              children: [
                Container(
                  margin: const EdgeInsets.only(left: 32),
                  width: 300,
                  height: 34,
                  child: TextField(
                    maxLines: 1,
                    decoration: InputDecoration(
                      contentPadding: const EdgeInsets.all(0),
                      hintStyle: const TextStyle(fontSize: 12),
                      hintText: 'Search',
                      prefixIcon: const Icon(
                        Icons.search,
                        color: Color(0xFFFF6E4E),
                      ),
                      filled: true,
                      fillColor: Colors.white,
                      border: OutlineInputBorder(
                        borderSide: const BorderSide(style: BorderStyle.none),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: const BorderSide(style: BorderStyle.none),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: const BorderSide(style: BorderStyle.none),
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 11,
                ),
                SizedBox(
                  width: 34,
                  height: 34,
                  child: FloatingActionButton(
                      backgroundColor: const Color(0xFFFF6E4E),
                      onPressed: () {},
                      child: const Icon(
                        Icons.ac_unit,
                        size: 15,
                        color: Colors.white,
                      )),
                )
              ],
            ),
            const SizedBox(
              height: 24,
            ),
            Row(
              children: const [
                SizedBox(
                  width: 17,
                ),
                Text('Hot sales',
                    style: TextStyle(
                        fontSize: 25,
                        color: Color(0xFF010035),
                        fontWeight: FontWeight.w700)),
                Expanded(
                    child: SizedBox(
                  width: 10,
                )),
                Text(
                  'see more',
                  style: TextStyle(fontSize: 15, color: Color(0xFFFF6E4E)),
                ),
                SizedBox(
                  width: 33,
                )
              ],
            ),
            SizedBox(
                width: 378,
                height: 182,
                child: Card(
                  shape: const OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  color: const Color(0xFF101010),
                  child: Container(),
                )),
            const SizedBox(
              height: 12,
            ),
            Row(
              children: const [
                SizedBox(
                  width: 17,
                ),
                Text('Best Seller',
                    style: TextStyle(
                        fontSize: 25,
                        color: Color(0xFF010035),
                        fontWeight: FontWeight.w700)),
                Expanded(
                    child: SizedBox(
                  width: 10,
                )),
                Text(
                  'see more',
                  style: TextStyle(fontSize: 15, color: Color(0xFFFF6E4E)),
                ),
                SizedBox(
                  width: 33,
                )
              ],
            ),
            Expanded(child: Container()),
            Container(
              decoration: const BoxDecoration(
                  color: Color(0xFF010035),
                  borderRadius: BorderRadius.all(Radius.circular(30))),
              height: 72,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: const [
                  Icon(
                    Icons.access_alarm,
                    color: Colors.white,
                  ),
                  Icon(Icons.access_alarm,
                    color: Colors.white,),
                  Icon(Icons.access_alarm,
                    color: Colors.white,),
                  Icon(Icons.access_alarm,
                    color: Colors.white,)
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
