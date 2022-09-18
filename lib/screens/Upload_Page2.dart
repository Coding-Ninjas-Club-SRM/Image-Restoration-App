import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../constants.dart';

class UploadPage2 extends StatefulWidget {
  const UploadPage2({Key? key}) : super(key: key);

  @override
  State<UploadPage2> createState() => _UploadPage2State();
}

class _UploadPage2State extends State<UploadPage2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "Image Optimiser",
          style: TextStyle(fontFamily: 'Poppins', fontSize: 24),
        ),
        elevation: 0,
        flexibleSpace: Container(
          decoration: const BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Color(0xFF000000),
                    Color(0xFF263853),
                    Color(0xFF577499)
                  ])),
        ),
      ),
      body: Column(
        children: [
          SizedBox(height: MediaQuery.of(context).size.height * 0.0575),
          Center(
            child: Container(
              width: MediaQuery.of(context).size.width * 0.847,
              height: MediaQuery.of(context).size.height * 0.415,
              // padding: const EdgeInsets.only(top: 117.0),
              decoration: BoxDecoration(
                  borderRadius: const BorderRadius.all(Radius.circular(30)),
                  border: Border.all(
                    color: const Color(0xFF733BA9),
                    width: 3,
                  )),
              child: const Center(
                child: Text(
                  'Improved image',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
          SizedBox(height: MediaQuery.of(context).size.height * 0.04),
          const Center(
            child: Button1(
              color: Color(0xFF21334F),
              icon: Icon(Icons.download),
              name: 'Save To Gallery',
            ),
          ),
          SizedBox(height: MediaQuery.of(context).size.height * 0.02375),
          const Center(
            child: Button2(icon:Icon(Icons.repeat), name: 'Take another',),
          ),
        ],
      ),
    );
  }
}
