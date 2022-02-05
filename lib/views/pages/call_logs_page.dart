import 'package:flutter/material.dart';
import 'package:mecall/views/widgets/numeric_pad.dart';
import 'package:mecall/views/widgets/signle_call_item.dart';

class CallLogsPage extends StatefulWidget {
  const CallLogsPage({
    Key? key,
  }) : super(key: key);

  @override
  _CallLogsPageState createState() => _CallLogsPageState();
}

class _CallLogsPageState extends State<CallLogsPage> {
  final _controller = ScrollController();
  bool _isNumericPad = false;
  @override
  void initState() {
    super.initState();
    _controller.addListener(() {
      if (_controller.position.hasPixels) {
        _isNumericPad = false;
      }
    });
  }

  FloatingActionButtonLocation _location() {
    if (_isNumericPad) {
      return FloatingActionButtonLocation.centerFloat;
    }

    return FloatingActionButtonLocation.endFloat;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            _isNumericPad = true;
          });
        },
        child: Icon(
          _isNumericPad ? Icons.call_rounded : Icons.dialpad_rounded,
        ),
      ),
      floatingActionButtonLocation: _location(),
      body: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          GestureDetector(
            onVerticalDragStart: (details) {
              if (_isNumericPad) {
                setState(() {
                  _isNumericPad = false;
                });
              }
            },
            onTap: () {
              if (_isNumericPad) {
                setState(() {
                  _isNumericPad = false;
                });
              }
            },
            child: ListView.builder(
              itemCount: 20,
              controller: _controller,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SingleCallItem(id: index.toString()),
                );
              },
            ),
          ),
          AnimatedPositioned(
            child: numericPad(context: context),
            duration: const Duration(milliseconds: 300),
            curve: Curves.easeInOut,
            bottom:
                _isNumericPad ? 0 : -MediaQuery.of(context).size.height * 0.4,
          ),
        ],
      ),
    );
  }
}

// lets remove animated positioned 