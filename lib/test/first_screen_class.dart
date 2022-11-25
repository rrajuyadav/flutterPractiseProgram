import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'loginpage_1.dart';


class FirstScreenClass extends StatelessWidget {
  const FirstScreenClass({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/res_pic_2.png"), fit: BoxFit.fill)),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Column(
          children: [
            Expanded(
              child: Column(children: [

                const Padding(
                  padding:  EdgeInsets.only(top: 250),
                  child:  Text(
                    " Welcome to Golden Restaurant",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      letterSpacing: 1.5,
                      shadows: [
                        Shadow(
                            color: Color(0xffeedf40),
                            offset: Offset(1, 2),
                            blurRadius: 10),
                      ],
                      fontSize: 30,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),

                Padding(
                  padding:  const EdgeInsets.only(top: 50),
                  child: Stack(children: const [
                    Image(
                      image: AssetImage("assets/res_pic_4.png"),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 150, left: 68),
                      child: Text(
                        "MultiCuisine Food Court",
                        style: TextStyle(color: Colors.yellow, fontSize: 13),
                      ),
                    ),
                  ]),
                ),

                const Padding(
                  padding:  EdgeInsets.only(top: 50,bottom: 30),
                  child:  Text("Click here to Place Order",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.w500,
                        color: Colors.white,
                        letterSpacing: 1.3,
                      )),
                ),

                Container(
                  decoration:const BoxDecoration(
                    color: Colors.white,
borderRadius: BorderRadius.all(Radius.circular(25))

                  ),
                  child: TextButton(
                    onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (ctx)=>const LoginPageOne()));},

                    child: RichText(
                        text: const TextSpan(text: " Next  ", style: TextStyle(fontSize: 20,color: Colors.blueGrey,fontWeight: FontWeight.w600), children: [
                      WidgetSpan(
                        child: Icon(Icons.arrow_forward,color: Colors.blueGrey,),
                      ),
                    ])),
                  ),
                )
              ]),
            ),
          ],
        ),
      ),
    );
  }
}
