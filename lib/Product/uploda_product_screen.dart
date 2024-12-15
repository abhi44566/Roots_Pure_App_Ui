import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../ApiService/loginapi.dart';
import '../Models/upload_product_model.dart';
import 'dart:io';

class UploadProductPage extends StatefulWidget {
  final ApiService apiService;

  UploadProductPage({required this.apiService, required product});

  @override
  _UploadProductPageState createState() => _UploadProductPageState();
}

class _UploadProductPageState extends State<UploadProductPage> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _descriptionController = TextEditingController();
  final TextEditingController _priceController = TextEditingController();

  final _apiService = ApiService();
  // File? _selectedImage;
  bool _isLoading = false;
  String imageUrl = '';
  final ImagePicker _picker = ImagePicker();

  Future _pickImage() async {
    final XFile? pickedFile =
        await _picker.pickImage(source: ImageSource.gallery);

    if (pickedFile != null) {
      // setState(() {
      //   _selectedImage = File(pickedFile.path);
      // });
      var uploadResult = await _apiService.uploadImage(pickedFile.path);
      setState(() {
        imageUrl = uploadResult;
      });
    }
  }

  void _uploadProduct() async {
    if (_formKey.currentState!.validate()) {
      if (imageUrl == '') {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text("Please select an image")),
        );
        return;
      }

      setState(() {
        _isLoading = true;
      });

      Product product = Product(
        name: _nameController.text,
        description: _descriptionController.text,
        price: int.tryParse(_priceController.text),
        imageUrl: imageUrl,

      );
    print(product.name);
    print(product.description);
    print(product.price);
    print(product.imageUrl);
      final response =
          await widget.apiService.uploadProduct(product);

      setState(() {
        _isLoading = false;
      });

      if (response != null && response.status == "success") {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text("Product uploaded successfully!")),
        );
      } else {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text("Failed to upload product.")),
        );
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    print(imageUrl);
    return Scaffold(
      appBar: AppBar(
        title: Padding(
          padding: const EdgeInsets.only(left: 60),
          child: Text(
            "Upload Products",
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
      body: Padding(
        padding: const EdgeInsets.all(25),
        child: Form(
          key: _formKey,
          child: SingleChildScrollView(
            child: Column(
              children: [
                TextFormField(
                  controller: _nameController,
                  decoration: InputDecoration(
                    hintText: "Enter Product Name",
                    hintStyle: TextStyle(color: Colors.grey.shade500),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Please enter a product name";
                    }
                    return null;
                  },
                ),
                SizedBox(
                  height: 20,
                ),
                TextFormField(
                  controller: _descriptionController,
                  decoration: InputDecoration(
                    hintText: "Enter products",
                    hintStyle: TextStyle(color: Colors.grey.shade500),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Please enter a description";
                    }
                    return null;
                  },
                ),
                SizedBox(
                  height: 20,
                ),
                TextFormField(
                  controller: _priceController,
                  decoration: InputDecoration(
                    hintText: "Price",
                    hintStyle: TextStyle(color: Colors.grey.shade500),
                  ),
                  keyboardType: TextInputType.number,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Please enter a price";
                    }
                    if (int.tryParse(value) == null) {
                      return "Please enter a valid price";
                    }
                    return null;
                  },
                ),
                SizedBox(height: 10),
                // _selectedImage == null
                //     ? Text("No image selected.")
                //     : Image.file(
                //         _selectedImage!,
                //         height: 150,
                //         width: 150,
                //         fit: BoxFit.cover,
                //       ),
                imageUrl == ''
                ?Text("No image selected.")
                : Image.network(
                  imageUrl,
                  height: 150,
                  width: 150,
                  fit: BoxFit.cover,
                ),

                SizedBox(height: 10),
                ElevatedButton(
                  onPressed: _pickImage,
                  child: Text("Select Image"),
                ),
                SizedBox(height: 20),
                _isLoading
                    ? CircularProgressIndicator()
                    : ElevatedButton(
                        onPressed: _uploadProduct,
                        child: Text("Upload Product"),
                      ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
