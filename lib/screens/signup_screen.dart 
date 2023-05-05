import 'package:flutter/material.dart';
import 'user_data.dart';
import 'user_repository.dart';
import 'for_registration_screen.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({Key? key}) : super(key: key);

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  String? name;
  String? surname;
  String? email;

  bool yoga = false;
  bool running = false;
  bool scateboarding = false;
  bool hockey = false;
  bool tennis = false;

  bool termsAccept = false;

  final GlobalKey<FormState> _formStateKey = GlobalKey();
  final UserRepository _userRepository = UserRepository();

  @override
  Widget build(BuildContextcontext) {
    return Scaffold(
      body: ListView(
        children: [
          const SizedBox(
            height: 24,
          ),

          //КНОПКА ВОЗВРАТА НА ЭКРАН РЕГИСТРАЦИИ
          IconButton(
            icon: Icon(Icons.arrow_back),
            iconSize: 24.0,
            color: Colors.purple,
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Registration(),
                ),
              );
            },
          ),
          const SizedBox(
            height: 24,
          ),

          //ФОРМА РЕГИСТРАЦИИ
          Form(
            key: _formStateKey,
            child: Column(
              children: [
                //ВВЕДИТЕ ИМЯ
                TextFormField(
                    decoration: const InputDecoration(
                      hintText: 'Введите имя',
                    ),
                    onChanged: (String value) {
                      name = value;
                    },
                    validator: (String? name) {
                      if (name != null && name!.isNotEmpty) {
                        return null;
                      } else {
                        return 'Впишите свое имя';
                      }
                    }),

                //ВВЕДИТЕ ФАМИЛИЮ
                TextFormField(
                  decoration: const InputDecoration(
                    hintText: 'Введите фамилию',
                  ),
                  onChanged: (String value) {
                    surname = value;
                  },
                  validator: (String? surname) {
                    if (surname != null && surname!.isNotEmpty) {
                      return null;
                    } else {
                      return 'Впишите свою фамилию';
                    }
                  },
                ),

                //ВВЕДИТЕ EMAIL
                TextFormField(
                  decoration: const InputDecoration(
                    hintText: 'email',
                  ),
                  onChanged: (String value) {
                    email = value;
                  },
                  validator: (String? email) {
                    if (email != null && email!.isNotEmpty) {
                      return null;
                    } else {
                      return 'Заполните поле email';
                    }
                  },
                ),

                const SizedBox(
                  height: 24,
                ),

                //ВИДЫ СПОРТА
                Row(
                  children: [
                    const SizedBox(
                      width: 10,
                    ),
                    Flexible(
                      flex: 30,
                      child: Text('ВЫБЕРИТЕ \nВИД СПОРТА', style: TextStyle(fontWeight: FontWeight.w500),),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Flexible(
                      flex: 50,
                      child: Column(
                        children: [
                          //ЙОГА
                          CheckboxListTile(
                            value: yoga,
                            onChanged: (bool? value) {
                              setState(
                                () {
                                  yoga = value ?? false;
                                },
                              );
                            },
                            title: Text('йога'),
                          ),

                          //БЕГ
                          CheckboxListTile(
                            value: running,
                            onChanged: (bool? value) {
                              setState(
                                () {
                                  running = value ?? false;
                                },
                              );
                            },
                            title: Text('бег'),
                          ),

                          //СКЕЙТБОРДИНГ
                          CheckboxListTile(
                            value: scateboarding,
                            onChanged: (bool? value) {
                              setState(
                                () {
                                  scateboarding = value ?? false;
                                },
                              );
                            },
                            title: Text('скейтбординг'),
                          ),

                          //ХОККЕЙ
                          CheckboxListTile(
                            value: hockey,
                            onChanged: (bool? value) {
                              setState(
                                () {
                                  hockey = value ?? false;
                                },
                              );
                            },
                            title: Text('хоккей'),
                          ),

                          //ТЕННИС
                          CheckboxListTile(
                            value: tennis,
                            onChanged: (bool? value) {
                              setState(
                                () {
                                  tennis = value ?? false;
                                },
                              );
                            },
                            title: Text('теннис'),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 40,
          ),

          //ПРИНИМАЮ УСЛОВИЯ
          CheckboxListTile(
            value: termsAccept,
            onChanged: (bool? value) {
              setState(
                () {
                  termsAccept = value ?? false;
                },
              );
            },
            title: Text('Я принимаю условия'),
          ),

          const SizedBox(
            height: 50,
          ),

          //КНОПКА ЗАРЕГИСТРИРОВАТЬСЯ
          InkWell(
            onTap: () async {
              final isFormValid =
                  _formStateKey.currentState?.validate() ?? false;
              if (isFormValid &&
                  name != null &&
                  surname != null &&
                  email != null) {
                await _userRepository.saveUserData(
                  UserData(
                    name: name!,
                    surname: surname!,
                    email: email!,
                  ),
                );
                if (mounted) {
                  Navigator.pop(context);
                }
              }
              ;
            },
            child: Container(
              height: 64,
              width: 150,
              decoration: BoxDecoration(
                gradient: const LinearGradient(
                  colors: [
                    Color(0xff771dad),
                    Color(0xffb12ee2),
                  ],
                ),
                borderRadius: BorderRadius.circular(50),
              ),
              child: Center(
                child: const Text(
                  'Зарегистрироваться',
                  style: TextStyle(
                      fontWeight: FontWeight.w600, color: Colors.white),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 80,
          ),
        ],
      ),
    );
  }
}
