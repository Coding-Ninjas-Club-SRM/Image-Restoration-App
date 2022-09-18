import "package:flutter/material.dart";

// class Page extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Column(children : <Widget>[GradientAppBar("Custom Gradient App Bar"), Container()],);
//   }
// }


class Button1 extends StatelessWidget {
  const Button1({ required this.name, required this.icon, required this.color,});

  final String name;
  final Icon icon;
  final Color color;


  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width*0.847,
      height: MediaQuery.of(context).size.height*0.0825,
      child: ElevatedButton(
        onPressed: () {},
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(color),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30.0),
            ),
          ),
        ),
        child: Row(
          children:  [
            SizedBox(width: MediaQuery.of(context).size.width*0.123,),
            icon,
            SizedBox(width: MediaQuery.of(context).size.width*0.05,),
            Text(name,style: const TextStyle(fontSize: 20),),
          ],
        ),
      ),
    );
  }
}

class Button2 extends StatelessWidget {
  const Button2({required this.name, required this.icon});

  final String name;
  final Icon icon;


  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.847,
      height: MediaQuery.of(context).size.height * 0.0825,
      decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(Radius.circular(30)),
          border: Border.all(
            color: const Color(0xFF733BA9),
            width: 5,
          )),
      child: ElevatedButton(
        onPressed: () {},
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(Colors.black.withOpacity(0)),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30.0),
            ),
          ),
        ),
        child: Row(
          children: [
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.123,
            ),
            icon,
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.05,
            ),
            Text(
              name,
              style: const TextStyle(fontSize: 20),
            ),
          ],
        ),
      ),
    );
  }
}