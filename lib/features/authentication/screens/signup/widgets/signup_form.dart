import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:t_store/features/authentication/screens/signup/widgets/terms_and_conditions_checkbox.dart';
import 'package:t_store/utils/constants/sizes.dart';
import 'package:t_store/utils/constants/text_strings.dart';

class TSignUpForm extends StatelessWidget {
  const TSignUpForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          // First & Last Name
          Row(
            children: [
              Expanded(
                child: TextFormField(
                  expands: false,
                  decoration: const InputDecoration(
                    labelText: TTexts.firstName,
                    prefixIcon: Icon(Iconsax.user),
                  ),
                ),
              ),
              const SizedBox(width: TSizes.spaceBtwInputFields),
              Expanded(
                child: TextFormField(
                  expands: false,
                  decoration: const InputDecoration(
                    labelText: TTexts.lastName,
                    prefixIcon: Icon(Iconsax.user),
                  ),
                ),
              ),
            ],
          ),

          const SizedBox(height: TSizes.spaceBtwInputFields),

          // Username
          TextFormField(
            expands: false,
            decoration: const InputDecoration(
              labelText: TTexts.username,
              prefixIcon: Icon(Iconsax.user_edit),
            ),
          ),

          const SizedBox(height: TSizes.spaceBtwInputFields),

          // Email
          TextFormField(
            expands: false,
            decoration: const InputDecoration(
              labelText: TTexts.email,
              prefixIcon: Icon(Iconsax.direct),
            ),
          ),

          const SizedBox(height: TSizes.spaceBtwInputFields),

          // Phone Number
          TextFormField(
            expands: false,
            decoration: const InputDecoration(
              labelText: TTexts.phoneNo,
              prefixIcon: Icon(Iconsax.call),
            ),
          ),

          const SizedBox(height: TSizes.spaceBtwInputFields),

          // Password
          TextFormField(
            expands: false,
            decoration: const InputDecoration(
              labelText: TTexts.password,
              prefixIcon: Icon(Iconsax.password_check),
              suffixIcon: Icon(Iconsax.eye_slash),
            ),
          ),

          const SizedBox(height: TSizes.spaceBtwInputFields),

          // Terms & Conditions Checkbox
          TTermsAndConditionsCheckbox(),

          const SizedBox(height: TSizes.spaceBtwInputFields),

          // Sign Up Button
          SizedBox(width: double.infinity, child: ElevatedButton(onPressed: () {}, child: Text(TTexts.createAccount))),
        ],
      ),
    );
  }
}
