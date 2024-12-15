import 'package:flutter/material.dart';
import 'package:roots_pure/Sign_in_page/login_page.dart';
import '../ApiService/loginapi.dart';
import '../Models/forget_password_model.dart';

class ChangePassword extends StatefulWidget {
  const ChangePassword({super.key});

  @override
  State<ChangePassword> createState() => _ChangePasswordState();
}

class _ChangePasswordState extends State<ChangePassword> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  bool _isPasswordVisible = false; // Toggle visibility of password
  final ApiService _apiService = ApiService();
  bool _isLoading = false;
  String _message = '';

  void _resetPassword() async {
    setState(() {
      _isLoading = true;
      _message = '';
    });

    final String email = _emailController.text.trim();
    final String newPassword = _passwordController.text.trim();

    if (email.isEmpty || newPassword.isEmpty) {
      setState(() {
        _isLoading = false;
        _message = 'Please enter both email and password.';
      });
      return;
    }

    // Call the API to reset the password
    final ForgetPassword_Model? result =
        await _apiService.changePassword(email, newPassword);

    setState(() {
      _isLoading = false;
      if (result != null && result.status == 'success') {
        _message = 'Password changed successfully. Please login again.';
        // Navigate to Sign In page after success
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => const SignInPage()),
        );
      } else {
        _message = result?.message ?? 'An error occurred. Please try again.';
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: const Color(0xff1c3a60),
        title: Center(
          child: Text(
            "Change Password",
            style: TextStyle(
                fontWeight: FontWeight.w900, fontSize: 22, color: Colors.white),
          ),
        ),
      ),
      body: Container(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Text(
                    "Change Your Password",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                ),
              ],
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  "assets/images/changepassword.png",
                  height: 220,
                  width: 220,
                )
              ],
            ),
            SizedBox(height: 22,),
            Text(
              "Your New Password Must Be Different \n from Previously Used Password",
              style: TextStyle(color: Colors.grey, fontWeight: FontWeight.bold, fontSize: 17),

            ),
            SizedBox(height: 30),
            Form(
              key: _formKey,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: TextFormField(
                      controller: _emailController,
                      decoration: InputDecoration(
                        hintText: "Enter Email Address",
                        hintStyle: TextStyle(color: Colors.grey.shade500),
                        prefixIcon: Icon(Icons.person_outline_outlined),
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter your email address';
                        }
                        return null;
                      },
                    ),
                  ),
                  SizedBox(height: 20),
                  SizedBox(
                    height: 65,
                    child: Padding(
                      padding:
                          const EdgeInsets.only(left: 25, right: 25, top: 10),
                      child: TextFormField(
                        keyboardType: TextInputType.text,
                        controller: _passwordController,
                        obscureText: !_isPasswordVisible, // Toggle visibility
                        decoration: InputDecoration(
                          hintText: "Enter New Password",
                          hintStyle: TextStyle(color: Colors.grey.shade500),
                          prefixIcon: Icon(
                            Icons.lock_open_rounded,
                            color: Color(0xff8d8d8d),
                          ),
                          suffixIcon: IconButton(
                            icon: Icon(
                              _isPasswordVisible
                                  ? Icons.visibility_off
                                  : Icons.visibility,
                              color: Color(0xff8d8d8d),
                            ),
                            onPressed: () {
                              setState(() {
                                _isPasswordVisible = !_isPasswordVisible;
                              });
                            },
                          ),
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter your password';
                          }
                          return null;
                        },
                      ),
                    ),
                  ),
                  SizedBox(height: 40),
                  Container(
                    child: SizedBox(
                      height: 50,
                      width: 342,
                      child: ElevatedButton(
                        onPressed: () {
                          if (_formKey.currentState!.validate()) {
                            _resetPassword();
                          }
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Color(0xff1c3a60),
                          maximumSize: Size(double.infinity, 50),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                        ),
                        child: _isLoading
                            ? CircularProgressIndicator()
                            : Text(
                                "Reset Password",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold),
                              ),
                      ),
                    ),
                  ),
                  if (_message.isNotEmpty)
                    Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child: Text(
                        _message,
                        style: TextStyle(
                          color: _message.contains('success')
                              ? Colors.green
                              : Colors.red,
                        ),
                      ),
                    ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
