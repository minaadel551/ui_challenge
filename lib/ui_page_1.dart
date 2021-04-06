import 'package:flutter/material.dart';

class UIPage1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double screenHeight =MediaQuery.of(context).size.height;
    return Scaffold(
      body:  Stack(
        children: [
          // image
          Container(
            height: screenHeight*0.55,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('images/moon.jfif'),
                    fit: BoxFit.cover
                )
            ),
            //  child: Image.asset('images/moon.jfif')
          ),
          // 2 icons and profile
          Scaffold(
            backgroundColor: Colors.transparent,
            appBar: AppBar(
              backgroundColor: Colors.transparent,
              elevation: 0,
              title: Text('Profile'),
              centerTitle: true,
              leading: Icon(Icons.menu),
              actions: [
                Icon(Icons.settings),
                SizedBox(width: 10,)
              ],
            ),
          ),

          // line paint to cut photo
          CustomPaint(
            painter:ProfileCardPainter(),
            child:Container(),
          ),

          // personal image
          Positioned(
            top: screenHeight*0.35,
            left: 15,
            child: CircleAvatar(
              backgroundImage: AssetImage('images/mina.jpg'),
              radius: 40,
            ),
          ),


          Positioned(
            top: screenHeight*0.5,
            left: 25,right: 10,
            child:   Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Mina Adel',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25),),
                Row(
                  children: [
                    Icon(Icons.location_on_outlined),
                    Text(' El Haram , Giza.')
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10,bottom: 12),
                  child: Text(' About Me',style: TextStyle(fontWeight: FontWeight.w400,fontSize: 20),),
                ),
                Text(' ----------------------------------- \n'
                    ' ----------------------------------- \n'
                    ' ----------------------------------- \n'
                    ' ----------------------------------- \n'
                    ' ----------------------------------- ',
                  style: TextStyle(letterSpacing: 5,color: Colors.grey),
                ),
              ],
            ),
          ),
          Positioned(
            bottom: 15, right: 0, left: 0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                buttonColumn(header:'Followers' ,num:'2318' ),
                buttonColumn(header:'Following' ,num: '368'),
                buttonColumn(header:'Friends' ,num: '715'),

              ],
            ),
          )
        ],

      ),
    );
  }

  buttonColumn({String header, String num}){
    return  Column(
        children: [
        Text(header),
    SizedBox(height: 5,),
    Text(num,style: TextStyle(fontSize: 17),),
    ]
    );
  }
}


class ProfileCardPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Path path = Path();
    Paint paint =Paint();
    paint.color=Colors.white;
    path.lineTo(0,size.height*0.4);
    path.lineTo(size.width,size.height*0.55);
    path.lineTo(size.width,size.height);
    path.lineTo(0,size.height);
    canvas.drawPath(path, paint);
  }
  @override
  bool shouldRepaint(ProfileCardPainter oldDelegate) => false ;
}


