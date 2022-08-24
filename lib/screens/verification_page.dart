import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

class VerificationPage extends StatefulWidget {
  const VerificationPage({Key? key}) : super(key: key);

  @override
  State<VerificationPage> createState() => _VerificationPageState();
}

class _VerificationPageState extends State<VerificationPage> {
  String dropdownValue = 'One';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(0, 205, 188, 1),
      body:
          Column(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        Container(
          margin: const EdgeInsets.symmetric(
            horizontal: 30,
            vertical: 0,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              const SizedBox(
                height: 150,
              ),
              Text(
                'One step to start the Journey!',
                style: GoogleFonts.poppins(
                  textStyle: const TextStyle(
                    fontSize: 36,
                    fontWeight: FontWeight.w700,
                    color: Color.fromRGBO(255, 255, 255, 1),
                  ),
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: 45,
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(11),
                  color: Colors.white,
                  boxShadow: const <BoxShadow>[
                    BoxShadow(
                        color: Color.fromRGBO(0, 0, 0, .25),
                        spreadRadius: 0,
                        blurRadius: 4,
                        offset: Offset(0, 4))
                  ],
                ),
                height: 44,
                child: DropdownButton<String>(
                  
                  hint: Padding(
                    padding: const EdgeInsets.fromLTRB(22, 0, 0, 0),
                    child: Text(
                      'Select the hospital',
                      style: GoogleFonts.poppins(
                        color: const Color.fromRGBO(175, 174, 190, 1),
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  // value: dropdownValue,
                  icon: const Icon(
                    Icons.keyboard_arrow_down,
                    color: Color.fromRGBO(0, 205, 188, 1),
                    size: 40,
                  ),
                  isExpanded: true,
                  underline: Container(),
                  onChanged: (String? newValue) {
                    setState(() {
                      dropdownValue = newValue!;
                    });
                  },
                  items: <String>['One', 'Two', 'Free', 'Four']
                      .map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Container(
                        alignment: Alignment.center,
                        child: Text(value),
                      ),
                    );
                  }).toList(),
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Insert your child\'s ID',
                  style: GoogleFonts.poppins(
                    textStyle: const TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                      color: Color.fromRGBO(255, 255, 255, 1),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              const IDInput(),
              const SizedBox(
                height: 25,
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Do you face any problem ? Contact us',
                  style: GoogleFonts.poppins(
                    textStyle: const TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w400,
                      color: Color.fromRGBO(255, 255, 255, 1),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        Container(
          height: 260,
          child: Stack(
            alignment: Alignment.bottomCenter,
            children: [
              Container(
                height: 65,
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20000000),
                        topRight: Radius.circular(20000000))),
              ),
              Positioned(
                child: Image.asset(
                  'images/nizar.png',
                  height: 260,
                ),
                top: -10,
              ),
            ],
          ),
        )
      ]),
    );
  }
}

class IDInput extends StatefulWidget {
  const IDInput({Key? key}) : super(key: key);

  @override
  State<IDInput> createState() => _IDInputState();
}

class _IDInputState extends State<IDInput> {
  List<Widget> _generateInputs() {
    List<Widget> widgets = [];

    for (int i = 0; i < 5; i++) {
      widgets.add(SizedBox(
        width: 51,
        height: 51,
        child: Container(
          decoration: const BoxDecoration(boxShadow: <BoxShadow>[
            BoxShadow(
                color: Color.fromRGBO(0, 0, 0, .25),
                spreadRadius: 0,
                blurRadius: 4,
                offset: Offset(0, 4)),
          ]),
          child: TextFormField(
            maxLength: 1,
            cursorColor: const Color.fromRGBO(0, 205, 188, 1),
            textAlign: TextAlign.center,
            keyboardType: TextInputType.number,
            inputFormatters: <TextInputFormatter>[
              FilteringTextInputFormatter.digitsOnly,
            ],
            decoration: InputDecoration(
              counterText: "",
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10.0),
                borderSide: const BorderSide(
                  width: 0,
                  style: BorderStyle.none,
                ),
              ),
              filled: true,
              fillColor: Colors.white,
            ),
            onChanged: (val) {},
          ),
        ),
      ));
      widgets.add(const SizedBox(
        width: 15,
      ));
    }
    widgets.removeLast();

    return widgets;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Form(
        child: Row(
          children: _generateInputs(),
        ),
      ),
    );
  }
}
