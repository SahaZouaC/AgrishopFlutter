import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/payment_page.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import '../model/cart_model.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor:  Colors.transparent,
        elevation: 0,
        iconTheme: const IconThemeData(color: Colors.black),
      ),
      body: Consumer<CartModel>(builder: (context, value, child) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: Text(
          "My Cart",
          style: GoogleFonts.notoSerif(
            fontSize: 36,
            fontWeight: FontWeight.bold,
          ),
        ),
        ),
          // list of cart Tools
        Expanded(
          child: ListView.builder(
            itemCount: value.cartTools.length,
            padding: const EdgeInsets.all(12),
          itemBuilder: (context, index){
          return Padding(
            padding: const EdgeInsets.all(12.0),
            child: Container(
              decoration: BoxDecoration(
              color: Colors.grey[200],
              borderRadius: BorderRadius.circular(8),
              ),
              child: ListTile(
                leading: Image.asset(
                value.cartTools[index][2],
                height: 36,
                ),
              title: Text(
              value.cartTools[index][0]),
              subtitle: Text( value.cartTools[index][1] + 'Cfa' ),
              trailing: IconButton(
                icon: const Icon(Icons.clear_rounded),
                onPressed: () =>
                Provider.of<CartModel>(context, listen: false)
                .removeToolsFromCart(index),
                ),
              ),
              ),
          );
        }
        ),
        ),

        // total price + pay now
        Padding(
          padding: const EdgeInsets.all(36.0),
          child: Container(
            decoration: BoxDecoration(
            color: Colors.green,
            borderRadius: BorderRadius.circular(8),
            ),
            padding: const EdgeInsets.all(24),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // price
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Total Price",
                  style: TextStyle(color: Colors.green[100]),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    value.calculateTotal() + 'cfa',
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      ),
                    ),
                ],
              ),
          //pay now
GestureDetector(
  onTap: () {
    // Navigate to payment page
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => PaymentPage()),
    );
  },
  child: Container(
    decoration: BoxDecoration(
      border: Border.all(color: Colors.green.shade100),
      borderRadius: BorderRadius.circular(12),
    ),
    padding: const EdgeInsets.all(12),
    child: Row(
      children: const [
        Text(
          "Pay Now",
          style: TextStyle(color: Colors.white),
        ),
        Icon(
          Icons.arrow_forward_ios,
          size: 16,
          color: Colors.white,
        )
      ],
    ),
  ),
)
              ],
            ),
          ),
        )

      ]
      );
      },
      ),
    );
  }
}