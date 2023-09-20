import 'package:flutter/material.dart';
import 'package:kichwa_web_app/config/ui/buttons/link_text.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
      margin: const EdgeInsets.only(top:100),
      padding: const EdgeInsets.symmetric(horizontal:20),
      color: Colors.black,
      child:  Center(
        child: ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 370),
          child: Form(
            child: Column(
              children: [
                //email
                TextFormField(
                  style: const TextStyle(color: Colors.white),
                  decoration: buildInputDecoration(
                    hint: 'Ingrese su correo Electrónico',
                    label: 'Email',
                    icon: Icons.email_outlined,
                   )
                  ),

                const SizedBox(height: 20,),
                 //PASSWORD
                TextFormField(
                  obscureText: true,
                  style: const TextStyle(color: Colors.white),
                  decoration: buildInputDecoration(
                    hint: '*********',
                    label: 'Password',
                    icon: Icons.lock_outline,
                   )
                  ),

                  const SizedBox(height: 40,),

                  LinkText(text: 'Nueva Cuenta')

              ],
            )
            )
          ,)
      ),
    );
  }

  InputDecoration buildInputDecoration({
    required String hint,
    required String label,
    required IconData icon,
  }) {
    return  InputDecoration(
                  enabled: true,
                  focusedBorder:  const OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white),
                  ),
                  border: const OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey),
                  ),

                  enabledBorder:  const UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey),
                  ),
                  hintText: hint,
                  labelText: label,
                  prefixIcon: Icon(icon, color: Colors.white.withOpacity(0.3)),
                  hintStyle: const TextStyle(color: Colors.grey),
                  labelStyle: const TextStyle(color: Colors.grey),
                );
  }
}
