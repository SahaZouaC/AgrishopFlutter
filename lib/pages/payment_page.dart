import 'package:flutter/material.dart';
class PaymentPage extends StatefulWidget {
  PaymentPage({Key? key}) : super(key: key);

  final List<String> images = [
    'lib/images/tractor.jpg',
    'lib/images/tractor.jpg',
    'lib/images/tractor.jpg',
  ];

  @override
  _PaymentPageState createState() => _PaymentPageState();
}

class _PaymentPageState extends State<PaymentPage> {
  String? _selectedPaymentMethod;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: const Text('Payment'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              SizedBox(
                height: 200,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: widget.images.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding:
                          const EdgeInsets.symmetric(horizontal: 8.0),
                      child: Container(
                        width:
                            MediaQuery.of(context).size.width * 0.8,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.deepPurple,
                            width: 5,
                          ),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child:
                              Image.asset(
                                widget.images[index],
                                fit:
                                    BoxFit.cover,
                              ),
                        ),
                      ),
                    );
                  },
                ),
              ),
              const SizedBox(height: 10),
              const Text(
                'Choose your payment method',
                style: TextStyle(color: Colors.deepPurple),
              ),
              const SizedBox(height: 10),
              ListTile(
                title:
                    const Text('Orange Money'),
                leading:
                    Radio<String>(
                      value:
                        'Orange Money',
                      groupValue:
                        _selectedPaymentMethod,
                      onChanged:
                        (String? value) {
                          setState(() {
                            _selectedPaymentMethod = value;
                          });
                        },
                      activeColor:
                        Colors.deepPurple,
                    ),
              ),
              ListTile(
                title:
                    const Text('MTN Money'),
                leading:
                    Radio<String>(
                      value:
                        'MTN Money',
                      groupValue:
                        _selectedPaymentMethod,
                      onChanged:
                        (String? value) {
                          setState(() {
                            _selectedPaymentMethod = value;
                          });
                        },
                      activeColor:
                        Colors.deepPurple,
                    ),
              ),
              const SizedBox(height: 10),
              TextField(
                decoration:
                    InputDecoration(border:
                      OutlineInputBorder(),
                      labelText:
                        'Phone Number',
                    ),
                keyboardType:
                    TextInputType.phone,
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed:
                    () {},
                child:
                    const Text('Submit Payment'),
                style:
                    ElevatedButton.styleFrom(primary:
                      Colors.deepPurple),
              )
            ],
          ),
        ),
      ),
    );
  }
}