import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: RegistrationPage(),
  ));
}

class RegistrationPage extends StatefulWidget {
  @override
  _RegistrationPageState createState() => _RegistrationPageState();
}

class _RegistrationPageState extends State<RegistrationPage> {
  final _formKey = GlobalKey<FormState>();
  bool _hidePass = true;

  final _nameController = TextEditingController();
  final _phoneController = TextEditingController();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _confirmPasswordController = TextEditingController();

  final _nameFocus = FocusNode();
  final _phoneFocus = FocusNode();
  final _emailFocus = FocusNode();
  final _passFocus = FocusNode();
  final _confirmPassFocus = FocusNode();

  @override
  void dispose() {
    _nameController.dispose();
    _phoneController.dispose();
    _emailController.dispose();
    _passwordController.dispose();
    _confirmPasswordController.dispose();

    _nameFocus.dispose();
    _phoneFocus.dispose();
    _emailFocus.dispose();
    _passFocus.dispose();
    _confirmPassFocus.dispose();

    super.dispose();
  }

  void _fieldFocusChange(
      BuildContext context, FocusNode currentFocus, FocusNode nextFocus) {
    currentFocus.unfocus();
    FocusScope.of(context).requestFocus(nextFocus);
  }

  void _submitForm() {
    if (_formKey.currentState!.validate()) {
      _formKey.currentState!.save();

      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => UserInfoPage(
            name: _nameController.text,
            phone: _phoneController.text,
            email: _emailController.text,
          ),
        ),
      );
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('Form is not valid! Please review and correct.'),
          backgroundColor: Colors.red,
        ),
      );
    }
  }

  Widget _buildTextField({
    required TextEditingController controller,
    required FocusNode focusNode,
    required FocusNode nextFocus,
    required String label,
    required String hint,
    required IconData prefixIcon,
    required TextInputType keyboardType,
    required String? Function(String?) validator,
  }) {
    return TextFormField(
      controller: controller,
      focusNode: focusNode,
      textInputAction: TextInputAction.next,
      onFieldSubmitted: (_) => _fieldFocusChange(context, focusNode, nextFocus),
      decoration: InputDecoration(
        labelText: label,
        hintText: hint,
        prefixIcon: Icon(prefixIcon),
        suffixIcon: GestureDetector(
          onTap: () => controller.clear(),
          child: Icon(Icons.delete_outline, color: Colors.red),
        ),
        border: OutlineInputBorder(),
      ),
      keyboardType: keyboardType,
      validator: validator,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Register Form'),
        centerTitle: true,
      ),
      body: Form(
        key: _formKey,
        child: ListView(
          padding: EdgeInsets.all(16.0),
          children: [
            _buildTextField(
              controller: _nameController,
              focusNode: _nameFocus,
              nextFocus: _phoneFocus,
              label: 'Full Name',
              hint: 'What do people call you?',
              prefixIcon: Icons.person,
              keyboardType: TextInputType.name,
              validator: (value) =>
                  value!.isEmpty ? 'Please enter your name' : null,
            ),
            SizedBox(height: 16.0),
            _buildTextField(
              controller: _phoneController,
              focusNode: _phoneFocus,
              nextFocus: _emailFocus,
              label: 'Phone Number',
              hint: 'Where can we reach you?',
              prefixIcon: Icons.call,
              keyboardType: TextInputType.phone,
              validator: (value) => value!.length != 12
                  ? 'Enter a valid 12-digit phone number'
                  : null,
            ),
            SizedBox(height: 16.0),
            _buildTextField(
              controller: _emailController,
              focusNode: _emailFocus,
              nextFocus: _passFocus,
              label: 'Email Address',
              hint: 'Where can we email you?',
              prefixIcon: Icons.email,
              keyboardType: TextInputType.emailAddress,
              validator: (value) =>
                  !value!.contains('@') ? 'Enter a valid email' : null,
            ),
            SizedBox(height: 16.0),
            TextFormField(
              controller: _passwordController,
              focusNode: _passFocus,
              textInputAction: TextInputAction.next,
              onFieldSubmitted: (_) =>
                  _fieldFocusChange(context, _passFocus, _confirmPassFocus),
              obscureText: _hidePass,
              decoration: InputDecoration(
                labelText: 'Password',
                hintText: 'Enter your password',
                suffixIcon: GestureDetector(
                  onTap: () {
                    setState(() {
                      _hidePass = !_hidePass;
                    });
                  },
                  child:
                      Icon(_hidePass ? Icons.visibility : Icons.visibility_off),
                ),
                prefixIcon: Icon(Icons.security),
                border: OutlineInputBorder(),
              ),
              validator: (value) => value!.length < 8
                  ? 'Password must be at least 8 characters'
                  : null,
            ),
            SizedBox(height: 16.0),
            TextFormField(
              controller: _confirmPasswordController,
              focusNode: _confirmPassFocus,
              textInputAction: TextInputAction.done,
              obscureText: _hidePass,
              decoration: InputDecoration(
                labelText: 'Confirm Password',
                hintText: 'Re-enter your password',
                prefixIcon: Icon(Icons.security),
                border: OutlineInputBorder(),
              ),
              validator: (value) => value != _passwordController.text
                  ? 'Passwords do not match'
                  : null,
            ),
            SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: _submitForm,
              style: ElevatedButton.styleFrom(backgroundColor: Colors.green),
              child: Text(
                'Submit form',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// Страница с информацией о пользователе
class UserInfoPage extends StatelessWidget {
  final String name;
  final String phone;
  final String email;

  UserInfoPage({required this.name, required this.phone, required this.email});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('User Info')),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Welcome, $name!',
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
              SizedBox(height: 10),
              Text('Phone: $phone', style: TextStyle(fontSize: 18)),
              SizedBox(height: 10),
              Text('Email: $email', style: TextStyle(fontSize: 18)),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text('Back'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
