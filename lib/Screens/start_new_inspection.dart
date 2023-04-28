import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:site_audit/Screens/inspection_elements.dart';
import '../constants/colors.dart';
import '../view_model/textfeild/inputdecor.dart';
import '../widgets/button/elevatebtn.dart';
import '../widgets/button/txtbtn.dart';
import '../widgets/iconbutton.dart';

class StartNewInspection extends StatefulWidget {
  const StartNewInspection({Key? key}) : super(key: key);

  @override
  State<StartNewInspection> createState() => _StartNewInspectionState();
}

class _StartNewInspectionState extends State<StartNewInspection> {
  final formKey = GlobalKey<FormState>();
  final RegExp emailRegex = RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$');
  final _nameRegex = RegExp(r'^[a-z A-Z]+$');
  final _houseRegex = RegExp(r'^[a-zA-Z0-9!@#\$&*~/]*$');
  String _name = '';
  final RegExp postalCodeRegex = RegExp(r'^\d{5}$');

  TextEditingController emailController = TextEditingController();
  TextEditingController clientNameController = TextEditingController();
  TextEditingController projectNameController = TextEditingController();
  TextEditingController builderNameController = TextEditingController();
  TextEditingController houseNumberController = TextEditingController();
  TextEditingController postCodeController = TextEditingController();
  DateTime _selectedDate = DateTime.now();

// Validate the date input in the form
  String? validateDate(String? value) {
    if (value == null || value.isEmpty) {
      return 'Please enter a report date';
    }
    return null;
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          appBar: AppBar(
            backgroundColor: tDarkGrey,
            title: Text(
              "New Inspection",
              style: Theme.of(context).textTheme.headline1,
            ),
            leading: IconButtons(
              icon: Icons.arrow_back,
              size: 24,
              color: tWhiteColor,
              onPressed: () {
                Navigator.pop(context);
              },
            ),
            actions: [
              IconButtons(
                icon: Icons.more_vert,
                size: 24,
                color: tWhiteColor,
                onPressed: () {},
              ),
            ],
          ),
          body: SingleChildScrollView(
            child: Padding(
              padding:
                  const EdgeInsets.only(top: 32.0, left: 16.0, right: 16.0),
              child: Form(
                key: formKey,
                child: Column(
                  children: [
                    TextFormField(
                      controller: clientNameController,
                      onSaved: (value) {
                        _name = value!.trim();
                      },
                      validator: (value) {
                        if (value!.isEmpty || !_nameRegex.hasMatch(value)) {
                          return "Please enter a client name";
                        } else {
                          return null;
                        }
                      },
                      decoration: InputDecoration(
                        fillColor: tGreenLight,
                        filled: true,
                        focusedErrorBorder: UnderlineInputBorder(
                          borderSide: BorderSide.none,
                        ),
                        errorBorder:
                            UnderlineInputBorder(borderSide: BorderSide.none),
                        hintText: "Enter Client Name",
                        labelText: "Add Client Name",
                        prefixIcon: SvgPicture.asset(
                          "assets/uedit.svg",
                          height: 10,
                          width: 10,
                          fit: BoxFit.scaleDown,
                        ),
                        prefixIconColor: tDarkGrey,
                        labelStyle: TextStyle(color: tDarkGrey),
                        errorStyle: TextStyle(height: 0, color: tDarkGrey),
                        hintStyle: TextStyle(color: tDarkGrey),
                        enabledBorder: myinputborder(),
                        focusedBorder: myfocusborder(),
                      ),
                    ),
                    SizedBox(
                      height: 24,
                    ),
                    TextFormField(
                      controller: projectNameController,
                      validator: (value) {
                        if (value!.isEmpty || !_nameRegex.hasMatch(value)) {
                          return "Please enter a project name";
                        } else {
                          return null;
                        }
                      },
                      onSaved: (value) {
                        _name = value!.trim();
                      },
                      decoration: InputDecoration(
                        fillColor: tGreenLight,
                        filled: true,
                        focusedErrorBorder: UnderlineInputBorder(
                          borderSide: BorderSide.none,
                        ),
                        errorBorder:
                            UnderlineInputBorder(borderSide: BorderSide.none),
                        hintText: "Enter Project Name",
                        labelText: "Add Project Name",
                        prefixIcon: SvgPicture.asset(
                          "assets/folderadd.svg",
                          height: 10,
                          width: 10,
                          fit: BoxFit.scaleDown,
                        ),
                        prefixIconColor: tDarkGrey,
                        labelStyle: TextStyle(color: tDarkGrey),
                        hintStyle: TextStyle(color: tDarkGrey),
                        errorStyle: TextStyle(height: 0, color: tDarkGrey),
                        enabledBorder: myinputborder(),
                        focusedBorder: myfocusborder(),
                      ),
                    ),
                    SizedBox(
                      height: 24,
                    ),
                    TextFormField(
                      controller: builderNameController,
                      validator: (value) {
                        if (value!.isEmpty || !_nameRegex.hasMatch(value)) {
                          return "Please enter a Developer/Builder Name";
                        } else {
                          return null;
                        }
                      },
                      onSaved: (value) {
                        _name = value!.trim();
                      },
                      decoration: InputDecoration(
                        fillColor: tGreenLight,
                        filled: true,
                        focusedErrorBorder: UnderlineInputBorder(
                          borderSide: BorderSide.none,
                        ),
                        errorBorder:
                            UnderlineInputBorder(borderSide: BorderSide.none),
                        hintText: "Enter Developer/Builder Name",
                        labelText: "Add Developer/Builder Name",
                        prefixIcon: SvgPicture.asset(
                          "assets/saveadd.svg",
                          height: 10,
                          width: 10,
                          fit: BoxFit.scaleDown,
                        ),
                        prefixIconColor: tDarkGrey,
                        labelStyle: TextStyle(color: tDarkGrey),
                        errorStyle: TextStyle(height: 0, color: tDarkGrey),
                        hintStyle: TextStyle(color: tDarkGrey),
                        enabledBorder: myinputborder(),
                        focusedBorder: myfocusborder(),
                      ),
                    ),
                    SizedBox(
                      height: 24,
                    ),
                    TextFormField(
                      controller: emailController,
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "Please enter an email";
                        } else if (!emailRegex.hasMatch(value)) {
                          return "Please enter a correct email";
                        }
                      },
                      onSaved: (value) {
                        _name = value!.trim();
                      },
                      decoration: InputDecoration(
                        fillColor: tGreenLight,
                        filled: true,
                        focusedErrorBorder: UnderlineInputBorder(
                          borderSide: BorderSide.none,
                        ),
                        errorBorder:
                            UnderlineInputBorder(borderSide: BorderSide.none),
                        hintText: "Enter Your Email",
                        labelText: "Email",
                        prefixIcon: SvgPicture.asset(
                          "assets/sms.svg",
                          height: 10,
                          width: 10,
                          fit: BoxFit.scaleDown,
                        ),
                        prefixIconColor: tDarkGrey,
                        labelStyle: TextStyle(color: tDarkGrey),
                        errorStyle: TextStyle(height: 0, color: tDarkGrey),
                        hintStyle: TextStyle(color: tDarkGrey),
                        enabledBorder: myinputborder(),
                        focusedBorder: myfocusborder(),
                      ),
                    ),
                    SizedBox(
                      height: 24,
                    ),
                    TextFormField(
                      controller: houseNumberController,
                      validator: (value) {
                        if (value!.isEmpty || !_houseRegex.hasMatch(value)) {
                          return "Please enter a house number";
                        } else {
                          return null;
                        }
                      },
                      onSaved: (value) {
                        _name = value!.trim();
                      },
                      decoration: InputDecoration(
                        fillColor: tGreenLight,
                        filled: true,
                        focusedErrorBorder: UnderlineInputBorder(
                          borderSide: BorderSide.none,
                        ),
                        errorBorder:
                            UnderlineInputBorder(borderSide: BorderSide.none),
                        hintText: "Enter House/Plot Number",
                        labelText: "House/Plot Number",
                        prefixIcon: SvgPicture.asset(
                          "assets/house.svg",
                          height: 10,
                          width: 10,
                          fit: BoxFit.scaleDown,
                        ),
                        prefixIconColor: tDarkGrey,
                        errorStyle: TextStyle(height: 0, color: tDarkGrey),
                        labelStyle: TextStyle(color: tDarkGrey),
                        hintStyle: TextStyle(color: tDarkGrey),
                        enabledBorder: myinputborder(),
                        focusedBorder: myfocusborder(),
                      ),
                    ),
                    SizedBox(
                      height: 24,
                    ),
                    TextFormField(
                      controller: postCodeController,
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "PLease enter a post code";
                        } else if (!postalCodeRegex.hasMatch(value)) {
                          return "Please enter a 5 digit postcode (xxxxx)";
                        }
                      },
                      onSaved: (value) {
                        _name = value!.trim();
                      },
                      decoration: InputDecoration(
                        fillColor: tGreenLight,
                        filled: true,
                        focusedErrorBorder: UnderlineInputBorder(
                          borderSide: BorderSide.none,
                        ),
                        errorBorder:
                            UnderlineInputBorder(borderSide: BorderSide.none),
                        hintText: "Enter PostCode",
                        labelText: "PostCode",
                        prefixIcon: SvgPicture.asset(
                          "assets/calladd.svg",
                          height: 10,
                          width: 10,
                          fit: BoxFit.scaleDown,
                        ),
                        prefixIconColor: tDarkGrey,
                        errorStyle: TextStyle(height: 0, color: tDarkGrey),
                        labelStyle: TextStyle(color: tDarkGrey),
                        hintStyle: TextStyle(color: tDarkGrey),
                        enabledBorder: myinputborder(),
                        focusedBorder: myfocusborder(),
                      ),
                    ),
                    SizedBox(
                      height: 24,
                    ),
                    TextFormField(
                      controller: TextEditingController(
                          text:
                              '${_selectedDate.day}/${_selectedDate.month}/${_selectedDate.year}'),
                      readOnly: true,
                      validator: validateDate,
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: tGreenLight,
                        focusedErrorBorder: UnderlineInputBorder(
                          borderSide: BorderSide.none,
                        ),
                        errorBorder:
                            UnderlineInputBorder(borderSide: BorderSide.none),
                        hintText: "Enter Date of Report",
                        labelText: "Date of Report",
                        prefixIcon: SvgPicture.asset(
                          "assets/documenttext.svg",
                          height: 10,
                          width: 10,
                          fit: BoxFit.scaleDown,
                        ),
                        prefixIconColor: tDarkGrey,
                        errorStyle: TextStyle(height: 0, color: Colors.black),
                        labelStyle: TextStyle(color: tDarkGrey),
                        hintStyle: TextStyle(color: tDarkGrey),
                        enabledBorder: myinputborder(),
                        focusedBorder: myfocusborder(),
                      ),
                      onTap: () async {
                        DateTime? pickedDate = await showDatePicker(
                          context: context,
                          initialDate: _selectedDate,
                          firstDate: DateTime(1900),
                          lastDate: DateTime(2100),
                          locale: const Locale(
                              "en", "US"), // set locale as per requirement
                        );
                        if (pickedDate != null && pickedDate != _selectedDate) {
                          setState(() {
                            _selectedDate = pickedDate;
                          });
                        }
                      },
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 24.0, right: 16.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          TxtBttn(
                              txtbtntext: "Cancel",
                              txtfntsize: 14,
                              txtbtncolorfrgrund: tDarkGrey,
                              txtbtncolorborder: tDarkGrey,
                              txtbtnpadding: 15,
                              txtbtnradius: 100,
                              txtbtn_onpressed: () {}),
                          SizedBox(
                            width: 10,
                          ),
                          ElevateBtn(
                            elevatetext: "Next",
                            elevatefntsize: 14,
                            elevatebtnradius: 100,
                            elevatebtnpadding: 15,
                            elevatebtncolorbggrund: tDarkGrey,
                            elevatebtncolorborder: tDarkGrey,
                            elevatebtncolorfrgrund: tWhiteColor,
                            elevatebtn_onpressed: () {
                              if (formKey.currentState!.validate()) {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            InspectionElments()));
                              }
                            },
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          )),
    );
  }
}
