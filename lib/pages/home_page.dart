import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/model/cart_model.dart';
import 'package:flutter_application_1/pages/cart_page.dart';
import 'package:flutter_application_1/pages/map_page.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:provider/provider.dart';
import '../components/agri_type_tile.dart';

class HomePage extends StatefulWidget {
  HomePage({super.key});

  final user = FirebaseAuth.instance.currentUser;

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final TextEditingController _searchController = TextEditingController();
  String _searchText = '';

  //sign User out method
  void signUserOut() {
    FirebaseAuth.instance.signOut();
  }

  @override
  Widget build(BuildContext context) {
    double offsetY = -28.2;
    return Scaffold(
      appBar: AppBar(
        actions: [IconButton(onPressed: signUserOut, icon: Icon(Icons.logout))],
        backgroundColor: Colors.deepPurple,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () =>
            Navigator.push(context, MaterialPageRoute(builder: (context) {
          return const CartPage();
        })),
        backgroundColor: Colors.black,
        child: Icon(
          Icons.shopping_bag,
        ),
      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 28),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24.0),
              child: TextField(
                controller: _searchController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.deepPurple,
                    ),
                  ),
                  labelText: 'Search',
                ),
                onChanged: (value) {
                  setState(() {
                    _searchText = value;
                  });
                },
              ),
            ),
            //good morning
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 24.0),
              child: Text("Good Morning,"),
            ),
            const SizedBox(height: 4),
            // Let's order order many cakes
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24.0),
              child: Text(
                "Let's order efficient tools for you",
                style: GoogleFonts.notoSerif(
                  fontSize: 26,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(height: 14),
            //divider
            const Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24.0),
              child: Divider(),
            ),
            const SizedBox(height: 4),
            //Available Cakes
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 24.0),
              child: Text("Available Tools", style: TextStyle(fontSize: 16)),
            ),
            Expanded(
                child: Consumer<CartModel>(builder: (context, value, child) {
              return GridView.builder(
                itemCount: value.agriItems.length,
                padding: EdgeInsets.all(12),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 1 / 1.3,
                ),
                itemBuilder: (context, index) {
                  if (_searchText.isEmpty ||
                      value.agriItems[index][0]
                          .toLowerCase()
                          .contains(_searchText.toLowerCase())) {
                    return AgriTypeTile(
                      agriName: value.agriItems[index][0],
                      agriPrice: value.agriItems[index][1],
                      imagePath: value.agriItems[index][2],
                      color: value.agriItems[index][3],
                      onPressed: () {
                        // add the product to the cart
                        Provider.of<CartModel>(context, listen: false)
                            .addToolsCart(index);

                        // navigate to the map page
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => MapPage(
                              location: LatLng(3.86667,
                                  11.51667), // replace with the actual product location
                            ),
                          ),
                        );
                      },
                    );
                  } else {
                    return Container();
                  }
                },
              );
            }))
          ],
        ),
      ),
    );
  }
}
