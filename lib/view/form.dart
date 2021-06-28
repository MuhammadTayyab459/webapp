import 'package:flutter/material.dart';
import 'package:form_field_validator/form_field_validator.dart';

class Textfrm extends StatefulWidget {
  const Textfrm({Key? key}) : super(key: key);

  @override
  _TextfrmState createState() => _TextfrmState();
}

//GlobalKey<FormState> formkey = GlobalKey<FormState>();

class _TextfrmState extends State<Textfrm> {
  var _firstnamekey = GlobalKey<FormState>();
  final passwordValidator = MultiValidator([
    RequiredValidator(errorText: 'password is required'),
    MinLengthValidator(8, errorText: 'password must be at least 8 digits long'),
    PatternValidator(r'(?=.*?[#?!@$%^&*-])',
        errorText: 'passwords must have at least one special character')
  ]);
  String? password;

  Widget build(BuildContext context) {
    @override
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Container(
        height: h,
        width: w,
        decoration: BoxDecoration(
          color: Colors.white,
          image: DecorationImage(
              image: AssetImage("assets/images/background.jpg"),
              fit: BoxFit.cover),
        ),
        child: Center(
          child: Container(
            height: h * 0.95,
            width: w * 0.4,
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(20)),
            child: Padding(
              padding: const EdgeInsets.only(left: 40.0, right: 10),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Form(
                      key: _firstnamekey,
                      autovalidate: true,
                      child: Padding(
                        padding: const EdgeInsets.only(top: 28.0),
                        child: Center(
                          child: Text(
                            "Create Your Account",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 32, color: Colors.blue[900]),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Text(
                      " First Name*",
                      textAlign: TextAlign.center,
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 10),
                    Padding(
                      padding: const EdgeInsets.only(right: 48.0),
                      child: TextFormField(
                        autovalidate: true,

                        validator: (value) {
                          if (value!.isEmpty) return '  This Field is Required';
                        },
                        onSaved: (value) {},
                        // validator: RequiredValidator(
                        //     errorText: "this field is mandatory"),
                        decoration: InputDecoration(
                            prefixIcon: Icon(
                              Icons.person,
                              color: Colors.blue,
                            ),
                            border: OutlineInputBorder(),
                            hintText: 'Enter your First Name',
                            fillColor: Colors.grey),
                        cursorColor: Colors.blue,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      " Last Name*",
                      textAlign: TextAlign.center,
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 10),
                    Padding(
                      padding: const EdgeInsets.only(right: 48.0),
                      child: TextFormField(
                        autovalidate: true,
                        validator: RequiredValidator(
                            errorText: "This Field is Required"),
                        decoration: InputDecoration(
                            prefixIcon: Icon(
                              Icons.person,
                              color: Colors.blue,
                            ),
                            border: OutlineInputBorder(),
                            hintText: 'Enter your Last Name',
                            fillColor: Colors.grey),
                        cursorColor: Colors.blue,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      " Email Address*",
                      textAlign: TextAlign.center,
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 10),
                    Padding(
                      padding: const EdgeInsets.only(right: 48.0),
                      child: TextFormField(
                        autovalidate: true,
                        validator: MultiValidator([
                          RequiredValidator(errorText: " Field is Mandotory"),
                          EmailValidator(errorText: " Enter Correct email")
                        ]),
                        decoration: InputDecoration(
                            prefixIcon: Icon(
                              Icons.email,
                              color: Colors.blue,
                            ),
                            border: OutlineInputBorder(),
                            hintText: 'Enter your Email Address',
                            fillColor: Colors.grey),
                        cursorColor: Colors.blue,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      " Password*",
                      textAlign: TextAlign.center,
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 10),
                    Padding(
                      padding: const EdgeInsets.only(right: 48.0),
                      child: TextFormField(
                        autovalidate: true,
                        onChanged: (val) => password = val,
                        // assign the the multi validator to the TextFormField validator
                        validator: passwordValidator,
                        obscureText: true,
                        decoration: InputDecoration(
                            prefixIcon: Icon(
                              Icons.password,
                              color: Colors.blue,
                            ),
                            border: OutlineInputBorder(),
                            hintText: 'Enter Password',
                            fillColor: Colors.grey),
                        cursorColor: Colors.blue,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      " Re-Type Password*",
                      textAlign: TextAlign.center,
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 10),
                    Padding(
                      padding: const EdgeInsets.only(right: 48.0),
                      child: TextFormField(
                        autovalidate: true,
                        validator: (value) {
                          if (value != password)
                            return ' Password does not Match';
                        },
                        obscureText: true,
                        decoration: InputDecoration(
                            prefixIcon: Icon(
                              Icons.password,
                              color: Colors.blue,
                            ),
                            border: OutlineInputBorder(),
                            hintText: 'Enter Password Again',
                            fillColor: Colors.grey),
                        cursorColor: Colors.blue,
                      ),
                    ),
                    SizedBox(
                      height: 50,
                    ),
                    Center(
                      child: OutlineButton(
                        borderSide: BorderSide.none,
                        // style: ButtonStyle(),
                        onPressed: () => validator(),
                        //: Colors.blue,
                        child: Text(
                          "Create Account",
                          style: TextStyle(
                            fontSize: 32,
                            color: Colors.blue,
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  validator() {}
}
