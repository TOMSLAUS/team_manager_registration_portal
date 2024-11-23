import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:team_manager_registration/Constants/Constants.dart';
import 'EventSignupScreen.dart';

/// The home screen
class HomeScreen extends StatelessWidget {
  /// Constructs a [HomeScreen]
  HomeScreen({super.key});

  final TextEditingController eventIdController = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  // Regular expression to match a valid UUID
  final RegExp uuidRegExp = RegExp(
    r'^[0-9a-fA-F]{8}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{12}$',
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Constants.secondaryColor.withOpacity(0.05), // Light background
      body: Center(
        child: Container(
          padding: const EdgeInsets.all(24),
          margin: const EdgeInsets.symmetric(horizontal: 16),
          decoration: BoxDecoration(
            color: Colors.white, // Main container background
            borderRadius: BorderRadius.circular(16),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.1),
                blurRadius: 8,
                offset: const Offset(0, 4),
              ),
            ],
          ),
          child: Form(
            key: _formKey,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                // Title Text
                Text(
                  'Enter Event Details',
                  style: Constants.titleMediumTextStyle.copyWith(
                    fontSize: 22,
                    color: Constants.primaryColor,
                  ),
                ),
                const SizedBox(height: 24),
                // Event ID Input Field
                TextFormField(
                  controller: eventIdController,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter an Event ID';
                    } else if (!uuidRegExp.hasMatch(value)) {
                      return 'Please enter a valid UUID';
                    }
                    return null;
                  },
                  style: Constants.titleMediumTextStyle.copyWith(
                    color: Constants.secondaryColor,
                  ),
                  decoration: InputDecoration(
                    labelText: 'Event ID (UUID)',
                    labelStyle: Constants.titleMediumTextStyle.copyWith(
                      color: Constants.secondaryColor.withOpacity(0.7),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: BorderSide(
                        color: Constants.primaryColor.withOpacity(0.5),
                        width: 1.5,
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: BorderSide(
                        color: Constants.primaryColor,
                        width: 2.0,
                      ),
                    ),
                    errorBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: BorderSide(
                        color: Constants.errorColor,
                        width: 1.5,
                      ),
                    ),
                    focusedErrorBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: BorderSide(
                        color: Constants.errorColor,
                        width: 2.0,
                      ),
                    ),
                    fillColor: Constants.secondaryColor.withOpacity(0.1),
                    filled: true,
                    contentPadding: const EdgeInsets.symmetric(
                      vertical: 18,
                      horizontal: 20,
                    ),
                    hintText: 'Enter Event ID (UUID)',
                    hintStyle: Constants.titleMediumTextStyle.copyWith(
                      color: Constants.secondaryColor.withOpacity(0.5),
                    ),
                  ),
                  cursorColor: Constants.primaryColor,
                ),
                const SizedBox(height: 24),
                // Submit Button
                ElevatedButton(
                  onPressed: () {
                    if (_formKey.currentState?.validate() ?? false) {
                      // If the form is valid, navigate to the next screen
                      context.goNamed(
                        EventSignupScreen.route,
                        pathParameters: {'id': eventIdController.text},
                      );
                    }
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Constants.primaryColor,
                    padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 32),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    elevation: 5,
                  ),
                  child: Text(
                    'Go to the Details Screen',
                    style: Constants.primaryButtonTextStyle,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
