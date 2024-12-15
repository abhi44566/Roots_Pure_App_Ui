import 'package:flutter/material.dart';
import 'package:roots_pure/ApiService/loginapi.dart';
import 'package:roots_pure/Models/product_model.dart';
import 'package:roots_pure/Product/uploda_product_screen.dart';

class ProductNew extends StatefulWidget {
  const ProductNew({super.key});

  @override
  State<ProductNew> createState() => _ProductState();
}

class _ProductState extends State<ProductNew> {
  final _ApiService = ApiService();
  List<dynamic> ProdData = [];

  Future Productlist() async {
    try {
      Product_Model productList = await _ApiService.ProductApi();
      if (productList.status == "success") {
        setState(() {
          ProdData = productList.products!;
        });
      }
    } catch (e) {
      print(e.toString());
    }
  }

  @override
  void initState() {
    super.initState();
    Productlist();


  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Padding(
          padding: const EdgeInsets.only(left: 60),
          child: Text(
            "Products",
            style: TextStyle(color: Colors.white),
          ),
        ),
        backgroundColor: Color(0xff1c3a60),
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Column(
        children: [
          // Row for the "Add Product" button
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Row(
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => UploadProductPage(
                              apiService: _ApiService, product: null,
                            ),
                          ),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xff1c3a60),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                        padding: EdgeInsets.symmetric(vertical: 12, horizontal: 24),
                        elevation: 5,
                        side: BorderSide(
                          color: Color(0xff1c3a60),
                          width: 2,
                        ),
                      ),
                      child: Row(
                        children: [

                          Image.asset("assets/Medicens_icons/add.png",height: 20, width: 20,),
                        SizedBox(width: 3,),
                          Text(
                            " Add",
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),

          // ListView for the product cards
          Expanded(
            child: ListView.builder(
              itemCount: ProdData.length,
              itemBuilder: (context, index) {
                var product = ProdData[index];

                return SizedBox(
                  height: 180,
                  width: double.infinity,
                  child: Card(
                    color: Colors.grey.shade100,
                    elevation: 1,
                    margin: EdgeInsets.all(12),
                    child: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          // Image on the left side
                          Image.network(
                            product.imageUrl ?? '',
                            errorBuilder: (context, error, stackTrace) {
                              return Icon(Icons.broken_image, size: 50);
                            },
                            height: 80,
                            width: 80,
                            fit: BoxFit.cover,
                          ),
                          SizedBox(width: 12),
                          // Product details
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  product.name,
                                  style: TextStyle(
                                    color: Color(0xff1c3a60),
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16,
                                  ),
                                ),
                                SizedBox(height: 4),
                                Text(
                                  'Price: ₹${product.price}',
                                  style: TextStyle(color: Colors.grey.shade700),
                                ),
                                Text(
                                  'Description: ${product.description}',
                                  style: TextStyle(color: Colors.grey.shade700),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
