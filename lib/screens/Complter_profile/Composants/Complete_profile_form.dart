import 'package:country_picker/country_picker.dart';
import 'package:flutter/material.dart';
import 'package:vs/components/CustomSurffixIcon.dart';
import 'package:vs/components/default_button.dart';
import 'package:vs/components/form_error.dart';
import 'package:vs/conts/string.dart';
import 'package:vs/size_config.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

import '../../../Verification/send_otp.dart';

class CompleteProfileForm extends StatefulWidget {
  const CompleteProfileForm({Key? key, required this.email}) : super(key: key);

  final String email;

  @override
  State<CompleteProfileForm> createState() => _CompleteProfileFormState();
}

class _CompleteProfileFormState extends State<CompleteProfileForm> {
  List<String> errors = [];
  final _formKey = GlobalKey<FormState>();
  String? name;
  String? phoneNumber;
  final _nameController = TextEditingController();
  final _phoneNumberController = TextEditingController();
  Country country = Country(
    phoneCode: "212",
    countryCode: "MAR",
    e164Sc: 0,
    geographic: true,
    level: 1,
    name: "Maroc",
    example: "Maroc",
    displayName: "Maroc",
    displayNameNoCountryCode: "MAR",
    e164Key: "",
  );

  void addError({String? error}) {
    if (!errors.contains(error)) {
      setState(() {
        errors.add(error!);
      });
    }
  }

  void removeError({String? error}) {
    if (errors.contains(error)) {
      setState(() {
        errors.remove(error);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          buildPhoneNumberFormField(),
          SizedBox(height: getProportionateScreenHeight(30)),
          buildNameFormField(),
          FormError(errors: errors),
          SizedBox(height: getProportionateScreenHeight(40)),
          DefaultButton(
            text: "Continuer",
            press: () async {
              if (_formKey.currentState!.validate()) {
                _formKey.currentState!.save();
                await saveUserInfoToFirestore();
              }
            },
          ),
        ],
      ),
    );
  }


 Future<void> saveUserInfoToFirestore() async {
    try {
      CollectionReference collRef = FirebaseFirestore.instance.collection('Users');
      DocumentSnapshot docSnapshot = await collRef.doc(widget.email).get();

      if (docSnapshot.exists) {
        // Si l'utilisateur existe déjà, mettez à jour ses informations avec les nouvelles valeurs.
        await collRef.doc(widget.email).update({
          'nom': _nameController.text,
          'telephone': _phoneNumberController.text,
          // Autres champs utilisateur...
        });
      } else {
        // Si l'utilisateur est nouveau, créez une nouvelle entrée dans la base de données avec toutes les informations.
        Map<String, dynamic> userData = {
          'email': widget.email,
          'nom': _nameController.text,
          'telephone': _phoneNumberController.text,
          // Autres champs utilisateur...
        };
        await collRef.doc(widget.email).set(userData);
      }

      // Une fois l'enregistrement réussi, affichez un SnackBar pour informer l'utilisateur que ses informations ont été enregistrées avec succès.
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text("Informations enregistrées avec succès."),
          backgroundColor: Colors.green,
        ),
      );

      // Naviguez vers la page suivante (par exemple, l'écran OTP) comme vous l'avez fait auparavant.
      Navigator.pushNamed(context, MyApp.routeName);
    } catch (e) {
      // Si une erreur se produit lors de l'enregistrement, affichez un message d'erreur à l'utilisateur à l'aide d'un SnackBar.
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text("Erreur lors de l'enregistrement des informations de l'utilisateur."),
          backgroundColor: Colors.red,
        ),
      );
      // Vous pouvez également afficher une boîte de dialogue ou une notification pour informer l'utilisateur de l'erreur.
    }
  }
  TextFormField buildNameFormField() {
    return TextFormField(
      controller: _nameController,
      onSaved: (newValue) => name = newValue,
      onChanged: (value) {
        if (value.isNotEmpty) {
          removeError(error: kAddressNullError);
        }
      },
      validator: (value) {
        if (value!.isEmpty) {
          addError(error: kAddressNullError);
          return "";
        }
        return null;
      },
      decoration: InputDecoration(
        labelText: "Name",
        hintText: "Entrer votre Nom",
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: CustomSurffixIcon(svgIcon: "assets/icons/location2.svg"),
      ),
    );
  }

  TextFormField buildPhoneNumberFormField() {
    return TextFormField(
      controller: _phoneNumberController,
      keyboardType: TextInputType.phone,
      onSaved: (newValue) => phoneNumber = newValue,
      onChanged: (value) {
        if (value.isNotEmpty) {
          removeError(error: kPhoneNumberNullError);
        }
      },
      validator: (value) {
        if (value!.isEmpty) {
          addError(error: kPhoneNumberNullError);
          return "";
        }
        return null;
      },
      decoration: InputDecoration(
        labelText: "Numéro de téléphone",
        hintText: "Entrer le numéro de téléphone",
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: CustomSurffixIcon(svgIcon: "assets/icons/smartphone.svg"),
        prefixIcon: Container(
          padding: const EdgeInsets.all(13.0),
          child: InkWell(
            onTap: () {
              showCountryPicker(
                context: context,
                countryListTheme: CountryListThemeData(
                  bottomSheetHeight: 500,
                ),
                onSelect: (value) {
                  setState(() {
                    country = value;
                  });
                },
              );
            },
            child: Text(
              "${country.flagEmoji} +${country.phoneCode}",
              style: TextStyle(
                fontSize: 18,
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
