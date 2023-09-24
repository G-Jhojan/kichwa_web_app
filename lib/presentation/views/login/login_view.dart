import 'package:flutter/material.dart';
import 'package:kichwa_web_app/config/providers/login_form_provider.dart';
import 'package:kichwa_web_app/config/router/router.dart';
import 'package:kichwa_web_app/config/ui/buttons/custom_outlined_button.dart';
import 'package:kichwa_web_app/config/ui/buttons/link_text.dart';
import 'package:kichwa_web_app/config/ui/inputs/custom_inputs.dart';
import 'package:provider/provider.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
  return ChangeNotifierProvider(
        create: (context) => LoginFormProvider(),
        child: Builder(builder: (context) {

          final loginFormProvider = Provider.of<LoginFormProvider>(context, listen: false);

          return Container(
            margin: const EdgeInsets.only(top: 100),
            padding: const EdgeInsets.symmetric(horizontal: 20),
            color: Colors.black,
            child: Center(
                child: ConstrainedBox(
              constraints: const BoxConstraints(maxWidth: 370),
              child: Form(
                  key: loginFormProvider.formKey,
                  child: Column(
                children: [
                  //email
                  TextFormField(
                      style: const TextStyle(color: Colors.white),
                      decoration: CustomInputsDecoration().authInputDecoration(
                        hint: 'Ingrese su correo Electrónico',
                        label: 'Correo',
                        icon: Icons.email_outlined,
                      )),

                  const SizedBox(
                    height: 20,
                  ),

                  //PASSWORD
                  TextFormField(
                      validator: (value) {
                        if (value == null || value.isEmpty)
                          return 'Ingrese su Contaseña';
                        if (value.length < 6)
                          return 'La contraseña debe ser de 6 caracteres';
                        return null; //significa  que el campo es valido
                      },
                      obscureText: true,
                      style: const TextStyle(color: Colors.white),
                      decoration: CustomInputsDecoration().authInputDecoration(
                        hint: '*********',
                        label: 'Contaseña',
                        icon: Icons.lock_outline,
                      )),

                  const SizedBox(
                    height: 30,
                  ),

                  CustomOutlinedButton(
                    onPressed: () {
                      loginFormProvider.validateForm();
                    },
                    text: 'Ingresar',
                    //color: Colors.red,
                    //isFilled: true,
                  ),

                  const SizedBox(
                    height: 10,
                  ),

                  LinkText(
                    text: 'Crear Nueva Cuenta',
                    onPressed: () {
                      Navigator.pushNamed(context, Flurorouter.registerRoute);
                    },
                  )
                ],
              )),
            )),
          );
        }));
  }
}
