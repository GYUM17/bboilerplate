import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Color(0xff182949),
          title: const Text(
            'SODA',
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
          centerTitle: false,
          leading: Builder(
            builder: (context) {
              return IconButton(
                icon: const Icon(Icons.menu, color: Colors.white),
                onPressed: () {
                  Scaffold.of(context).openDrawer();
                },
              );
            },
          ),
          actions: [
            Theme(data: ThemeData(useMaterial3: false), child: MySwitch()),
          ],
        ),
        drawer: Mydrawer(),
        body: Column(
          children: [
            Padding(padding: const EdgeInsets.all(20.0), child: MyTextfield()),
            RadioExample(),
            Padding(
              padding: const EdgeInsets.only(left: 8.0, top: 20),
              child: ListTile(
                title: Text(
                  '버튼을 눌러 날짜를 선택해주세요.',
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 14,
                    letterSpacing: 1.25,
                  ),
                ),
                trailing: MyTextButton(),
              ),
            ),
          ],
        ),

        floatingActionButton: MyFAB(),
        bottomNavigationBar: SizedBox(
          height: 70,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Divider(
                thickness: 2,
                color: Colors.black,
                indent: 13,
                endIndent: 14,
              ),
              Center(
                child: Container(
                  margin: EdgeInsets.fromLTRB(0, 15, 0, 15),
                  child: Text('Copyright 2022 SODA All rights reserved.'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class MyFAB extends StatelessWidget {
  const MyFAB({super.key});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () => showDialog<String>(
        context: context,
        builder: (BuildContext context) => AlertDialog(
          shape: Border.all(style: BorderStyle.none),
          backgroundColor: Colors.white,
          content: Padding(
            padding: const EdgeInsets.all(15.0),
            child: const Text('+ 버튼을 누르셨습니다.'),
          ),
          actions: <Widget>[
            TextButton(
              onPressed: () => Navigator.pop(context, 'OK'),
              child: const Text(
                '확인',
                style: TextStyle(color: Color(0xff182949)),
              ),
            ),
          ],
        ),
      ),
      backgroundColor: Color(0xff182949),
      shape: CircleBorder(side: BorderSide()),
      child: Icon(Icons.add, color: Colors.white),
    );
  }
}

class MyTextButton extends StatefulWidget {
  const MyTextButton({super.key});

  @override
  State<MyTextButton> createState() => _MyTextButtonState();
}

class _MyTextButtonState extends State<MyTextButton> {
  DateTime? selectedDate;

  Future<void> _selectDate() async {
    final DateTime? pickedDate = await showDatePicker(
      context: context,
      initialDate: DateTime(2025, 7, 12),
      firstDate: DateTime(2001),
      lastDate: DateTime(2030),
    );

    setState(() {
      selectedDate = pickedDate;
    });
  }

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: OutlinedButton.styleFrom(
        side: BorderSide(color: Color.fromRGBO(0, 0, 0, 0.12)),
        backgroundColor: Colors.white,
        elevation: 0,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
        padding: EdgeInsets.only(bottom: 6, top: 6, left: 10, right: 10),
      ),
      onPressed: _selectDate,
      child: Text(
        'SELECT DATE',
        style: GoogleFonts.roboto(
          textStyle: TextStyle(color: Color(0xff4B6EB1)),
          fontWeight: FontWeight.w500,
          fontSize: 14,
          letterSpacing: 1.25,
        ),
      ),
    );
  }
}

class MyTextfield extends StatefulWidget {
  const MyTextfield({super.key});

  @override
  State<MyTextfield> createState() => _MyTextfieldState();
}

class _MyTextfieldState extends State<MyTextfield> {
  @override
  Widget build(BuildContext context) {
    return TextField(
      onTapOutside: (event) => FocusManager.instance.primaryFocus?.unfocus(),
      decoration: InputDecoration(
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(width: 1),
          borderRadius: BorderRadius.zero,
        ),
        border: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.zero,
        ),
        hint: Text(
          'Name',
          style: TextStyle(fontWeight: FontWeight.w400, letterSpacing: 0.15),
        ),
        filled: true,
        fillColor: Color.fromRGBO(33, 33, 33, 0.08),
      ),
    );
  }
}

class Mydrawer extends StatefulWidget {
  const Mydrawer({super.key});

  @override
  State<Mydrawer> createState() => _Mydrawer();
}

class _Mydrawer extends State<Mydrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.white,
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          const DrawerHeader(
            decoration: BoxDecoration(color: Color(0xff182949)),
            child: Text(
              'SODA',
              style: TextStyle(
                fontFamily: 'Roboto',
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
          ),
          ListTile(
            leading: const Icon(Icons.favorite, color: Color(0xff7B7A7A)),
            title: const Text(
              'Icon : favorite',
              style: TextStyle(
                fontSize: 14,
                color: Color.fromRGBO(0, 0, 0, 0.6),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class MySwitch extends StatefulWidget {
  const MySwitch({super.key});

  @override
  State<MySwitch> createState() => _MySwitch();
}

class _MySwitch extends State<MySwitch> {
  bool light = false;
  @override
  Widget build(BuildContext context) {
    return Switch(
      inactiveTrackColor: Color(0xff979797),
      activeTrackColor: Color(0xff4B6EB1),
      value: light,
      inactiveThumbColor: Colors.white,
      activeColor: Colors.white,

      onChanged: (bool value) {
        if (value) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              duration:
                  Durations.extralong1 +
                  Durations.extralong1 +
                  Durations.extralong1,
              content: const Text('switch를 ON 하였습니다.'),
              action: SnackBarAction(
                label: 'OK',
                onPressed: () {
                  // Code to execute.
                },
              ),
            ),
          );
        }
        setState(() {
          light = value;
        });
      },
    );
  }
}

enum SingingCharacter { male, female }

class RadioExample extends StatefulWidget {
  const RadioExample({super.key});

  @override
  State<RadioExample> createState() => _RadioExampleState();
}

class _RadioExampleState extends State<RadioExample> {
  bool isChecked = false;
  bool isChecked2 = false;

  SingingCharacter? _character = SingingCharacter.male;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        children: [
          Row(
            children: [
              Row(
                children: [
                  Radio<SingingCharacter>(
                    activeColor: Color(0xff4B6EB1),
                    value: SingingCharacter.male,
                    groupValue: _character,
                    onChanged: (SingingCharacter? value) {
                      setState(() {
                        _character = value;
                      });
                    },
                  ),
                  Text(
                    'Male',
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      letterSpacing: 1.0,
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(left: 40.0),
                child: Row(
                  children: [
                    Radio<SingingCharacter>(
                      activeColor: Color(0xff4B6EB1),
                      value: SingingCharacter.female,
                      groupValue: _character,
                      onChanged: (SingingCharacter? value) {
                        setState(() {
                          _character = value;
                        });
                      },
                    ),
                    Text(
                      'Female',
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        letterSpacing: 1.0,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Row(
            children: [
              Row(
                children: [
                  Checkbox(
                    fillColor: WidgetStateProperty.resolveWith<Color>((
                      Set<WidgetState> states,
                    ) {
                      if (states.contains(WidgetState.selected)) {
                        return Color(0xff4B6EB1);
                      }
                      return Colors.white;
                    }),
                    value: isChecked,
                    onChanged: (bool? value) {
                      setState(() {
                        isChecked = value!;
                      });
                    },
                  ),
                  Text(
                    'Designer',
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      letterSpacing: 1.0,
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(left: 9.0),
                child: Row(
                  children: [
                    Checkbox(
                      fillColor: WidgetStateProperty.resolveWith<Color>((
                        Set<WidgetState> states,
                      ) {
                        if (states.contains(WidgetState.selected)) {
                          return Color(0xff4B6EB1);
                        }
                        return Colors.white;
                      }),
                      value: isChecked2,
                      onChanged: (bool? value) {
                        setState(() {
                          isChecked2 = value!;
                        });
                      },
                    ),
                    Text(
                      'Developer',
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        letterSpacing: 1.0,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class MyDatePicker extends StatefulWidget {
  const MyDatePicker({super.key});

  @override
  State<MyDatePicker> createState() => _MyDatePicker();
}

class _MyDatePicker extends State<MyDatePicker> {
  DateTime? selectedDate;

  Future<void> _selectDate() async {
    final DateTime? pickedDate = await showDatePicker(
      context: context,
      initialDate: DateTime(2021, 7, 25),
      firstDate: DateTime(2021),
      lastDate: DateTime(2022),
    );

    setState(() {
      selectedDate = pickedDate;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      spacing: 20,
      children: <Widget>[
        Text(
          selectedDate != null
              ? '${selectedDate!.day}/${selectedDate!.month}/${selectedDate!.year}'
              : 'No date selected',
        ),
        OutlinedButton(
          onPressed: _selectDate,
          child: const Text('Select Date'),
        ),
      ],
    );
  }
}
