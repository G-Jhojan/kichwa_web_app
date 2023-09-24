import 'package:flutter/material.dart';
import 'package:kichwa_web_app/config/router/router.dart';
import 'package:kichwa_web_app/config/ui/buttons/custom_outlined_button.dart';
import 'package:kichwa_web_app/config/ui/buttons/link_text.dart';
import 'package:kichwa_web_app/config/ui/inputs/custom_inputs.dart';

class RegisterView extends StatelessWidget {
  const RegisterView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 100),
      padding: const EdgeInsets.symmetric(horizontal: 20),
      color: Colors.black,
      child: Center(
          child: ConstrainedBox(
        constraints: const BoxConstraints(maxWidth: 370),
        child: Form(
            child: Column(
          children: [
            //email
            TextFormField(
                style: const TextStyle(color: Colors.white),
                decoration: CustomInputsDecoration().authInputDecoration(
                  hint: 'Ingrese su Nombre',
                  label: 'Nombre',
                  icon: Icons.person_outline_sharp,
                )),

            const SizedBox(
              height: 20,
            ),

            TextFormField(
                style: const TextStyle(color: Colors.white),
                decoration: CustomInputsDecoration().authInputDecoration(
                  hint: 'Ingrese su Apellido',
                  label: 'Apellido',
                  icon: Icons.person_pin,
                )),

            const SizedBox(
              height: 20,
            ),

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
                obscureText: true,
                style: const TextStyle(color: Colors.white),
                decoration: CustomInputsDecoration().authInputDecoration(
                  hint: 'Mínimo 6 caracteres',
                  label: 'Contraseña',
                  icon: Icons.lock_outline,
                )),

            const SizedBox(
              height: 30,
            ),
            CustomOutlinedButton(
              onPressed: () {},
              text: 'Crear Cuenta',
              //color: Colors.red,
              //isFilled: true,
            ),
            const SizedBox(
              height: 10,
            ),

            LinkText(
              text: 'Regresar al Login',
              onPressed: () {
                Navigator.pushNamed(context, Flurorouter.loginRoute);
              },
            )
          ],
        )),
      )),
    );
  }
}
