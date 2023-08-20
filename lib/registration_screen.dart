import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:intl/intl.dart';
import 'package:second_video_raw_material/app_utils.dart';
import 'package:second_video_raw_material/login_screen.dart';
import 'package:second_video_raw_material/widgets/input_field_widget.dart';
import 'package:second_video_raw_material/widgets/primary_Button.dart';

class HomeownerDataPage extends StatefulWidget {
  const HomeownerDataPage({super.key});

  @override
  _HomeownerDataPageState createState() => _HomeownerDataPageState();
}

class _HomeownerDataPageState extends State<HomeownerDataPage> {
  TextEditingController birthDate = TextEditingController();
  TextEditingController phoneNumber = TextEditingController();
  TextEditingController userName = TextEditingController();
  TextEditingController userEmail = TextEditingController();

  String? birthDateController;
  String? genderSelected = "male";
  bool isLoading = false;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    // userName.text = "asdkna";
    // userEmail.text = "Email";
    // phoneNumber.text = "0302";
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF5145C1),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0),
          child: ListView(
            children: <Widget>[
              // const SizedBox(height: 20,),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.06,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  const Center(
                    child: Text(
                      "Jack", // JACK
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 28.0,
                          fontFamily: 'Montserrat',
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  const SizedBox(
                    height: 8.0,
                  ),
                  const Center(
                    child: Text(
                      "of all trades", // of all trades
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 28.0,
                          fontFamily: 'Montserrat',
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.03,
                  ),
                  const Center(
                    child: Text(
                      "Please enter your information",
                      // Please enter your information
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 14.0,
                          fontFamily: 'Montserrat',
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  const SizedBox(
                    height: 50.0,
                  ),
                  InputField(
                    text: "Enter your name", // Enter your name
                    icon: Icons.person,
                    controller: userName,
                  ),
                  const SizedBox(
                    height: 25.0,
                  ),
                  InputField(
                    text: "Enter your email", // Enter your email
                    icon: Icons.email,
                    controller: userEmail,
                  ),
                  const SizedBox(
                    height: 25.0,
                  ),
                  InputField(
                    text: "Enter your number", // Enter your number
                    icon: Icons.phone,
                    controller: phoneNumber,
                    type: TextInputType.phone,
                  ),
                  const SizedBox(
                    height: 25.0,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 16.0, right: 20),
                    child: TextFormField(
                      keyboardType: TextInputType.datetime,
                      style: const TextStyle(
                        color: colorWhite,
                        fontFamily: 'Montserrat',
                      ),
                      textAlign: TextAlign.center,
                      cursorColor: colorWhite,
                      controller: birthDate,
                      decoration: const InputDecoration(
                        isDense: true,
                        prefixIcon: Icon(
                          FontAwesomeIcons.calendar,
                          color: Colors.white,
                          size: 25.0,
                        ),
                        focusColor: Colors.white,
                        hintText: "Enter your date of birth",
                        // Enter your date of birth
                        hintStyle: TextStyle(
                          color: colorGrey,
                          fontSize: 14,
                          fontFamily: 'Montserrat',
                        ),
                        focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: colorWhite)),
                        border: UnderlineInputBorder(
                            borderSide: BorderSide(color: colorGrey)),
                        contentPadding: EdgeInsets.only(top: 15.0),
                      ),
                      onTap: () async {
                        DateTime date = DateTime(1900);
                        FocusScope.of(context).requestFocus(FocusNode());

                        date = (await showDatePicker(
                            context: context,
                            initialDate: DateTime.now(),
                            firstDate: DateTime(1900),
                            lastDate: DateTime(2100)))!;
                        String dateFormatter = date.toIso8601String();
                        DateTime dt = DateTime.parse(dateFormatter);
                        var formatter = DateFormat('dd-MMMM-yyyy');
                        birthDateController = formatter.format(dt);
                        birthDate.text = birthDateController!;
                      },
                    ),
                  ),
                  const SizedBox(
                    height: 25.0,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 22.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        const SizedBox(
                          height: 10.0,
                        ),
                        const Text(
                          "GENDER", // GENDER
                          style: TextStyle(
                              color: Colors.white,
                              letterSpacing: 1,
                              fontSize: 14.0,
                              fontFamily: 'Montserrat',
                              fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(
                          height: 10.0,
                        ),
                        Row(
                          children: <Widget>[
                            Flexible(
                              fit: FlexFit.loose,
                              child: RadioListTile(
                                contentPadding: EdgeInsets.zero,
                                groupValue: genderSelected,
                                activeColor: colorWhite,
                                title: const Text(
                                  'MALE',
                                  style: TextStyle(
                                      fontSize: 14,
                                      color: colorWhite,
                                      fontFamily: 'Montserrat',
                                      fontWeight: FontWeight.bold),
                                ),
                                value: 'male',
                                onChanged: (val) {
                                  setState(() {
                                    genderSelected = val.toString();
                                  });
                                  print(genderSelected);
                                },
                              ),
                            ),
                            Flexible(
                              fit: FlexFit.loose,
                              child: RadioListTile(
                                groupValue: genderSelected,
                                activeColor: colorWhite,
                                title: const Text(
                                  'FEMALE',
                                  style: TextStyle(
                                      fontSize: 14,
                                      color: colorWhite,
                                      fontFamily: 'Montserrat',
                                      fontWeight: FontWeight.bold),
                                ),
                                value: 'female',
                                onChanged: (val) {
                                  setState(() {
                                    genderSelected = val.toString();
                                  });
                                  print(genderSelected);
                                },
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  PrimaryButton(
                    text: "Sign Up",
                    textColor: colorPrimary,
                    onPressed: () async {
                      if(validate()){

                      }
                    },
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: <Widget>[
                      const Text(
                        "Already have an account!! ",
                        // already have an account
                        style: TextStyle(
                            fontFamily: 'Montserrat', color: Colors.white),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => LoginScreen()));
                        },
                        child: const Text(
                          "Sign In", // Sign In
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Montserrat',
                            color: Colors.white,
                            fontSize: 15,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  bool validate() {
    String name = userName.text;
    String email = userEmail.text;
    String dateOfBirth = birthDate.text;
    String genderUser = genderSelected!;
    String phone = phoneNumber.text;

    if (name.isEmpty) {
      showScaffold(context, 'PLease enter your name');
      return false;
    }
    if (email.isEmpty) {
      showScaffold(context, 'PLease enter your email');
      return false;
    }
    if (phone.isEmpty) {
      showScaffold(context, 'PLease enter your phone number');
      return false;
    }
    if (dateOfBirth.isEmpty) {
      showScaffold(context, 'PLease enter your date of birth');
      return false;
    }
    if (genderUser.isEmpty) {
      showScaffold(context, 'PLease select your Gender');
      return false;
    }
    return true;
  }
}
