import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
 import 'package:url_launcher/url_launcher.dart';

import 'MyText.dart';
class CV_English extends StatelessWidget {

  var background = Color(0xff202026);
  var card_background = Color(0xff31313a);
  static  var skill_color = Color(0xfff19104);
  static  var title_white = Color(0xffe0e0e2);
  static  var element_background = Color(0xff25252b);
  var height ;
  var icon_size = 20.0;
  var sized_box_width = 15.0;
  var name_style = TextStyle(color: title_white,fontSize: 25.0,fontFamily: 'Far');
  var developer_style = TextStyle(color: skill_color,fontSize: 15.0,fontFamily: 'IranSans',fontWeight: FontWeight.w300);
  var contact_me_style = TextStyle(fontSize: 15.0,color: title_white,fontFamily: 'IranSans',fontWeight: FontWeight.w300);
  var contact_me_style_hover = TextStyle(fontSize: 15.0,color: skill_color,fontFamily: 'IranSans',fontWeight: FontWeight.w300);
  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;

    /*
    Row: social network icons
     */
    Widget RectBackground(var wid,var height){
      return Container(
        width: wid,
        height: height,
        decoration: BoxDecoration(
            color: element_background,
            borderRadius: BorderRadius.all(Radius.circular(6.0))
        ),
      );
    }
    var row_social = Container(
      margin: const EdgeInsets.only(top: 20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          InkWell(
            onTap:(){ _launchURL('https://github.com/zeinabtareek?tab=repositories');},
            child: Image.network('https://github.githubassets.com/images/modules/logos_page/GitHub-Mark.png',
              width: icon_size,height: icon_size,),
          ),
          SizedBox(width: sized_box_width,),
          InkWell(onTap:(){
            _launchURL('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ7NTh0uoUveiAxqtzkPh-dxQglSi_9iDwB9WLhHwrFlg&s');

          },
            child: Image.asset('assets/images/linkedin.jpg',
              width: icon_size,
              height: icon_size,
            ),
          ),
          SizedBox(width: sized_box_width,),
          Image.network('https://upload.wikimedia.org/wikipedia/commons/thumb/2/28/Instagram_logo.png/240px-Instagram_logo.png',width: icon_size,height: icon_size,),
          SizedBox(width: sized_box_width,
          ),

        ],
      ),
    );


    Widget Text_Icon(var text,var icon){
      return Row(
        children: <Widget>[
          Image.network(icon,width: 25.0,height: 25.0,color: Colors.white,),
          SizedBox(width: 8.0,)
          ,MyText(text,contact_me_style ,contact_me_style_hover)
        ],
      );
    }

    var circle_container_border = Container(
      width: 150.0,
      height: 150.0,
      decoration: BoxDecoration(
        color: card_background,
        borderRadius: BorderRadius.all(const Radius.circular(70.0)),

      ),
    );
    var circle_container_img = Container(
      width: 144.0,
      height: 154.0,
      decoration: const BoxDecoration(
        image:  DecorationImage(
          image:  NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ7NTh0uoUveiAxqtzkPh-dxQglSi_9iDwB9WLhHwrFlg&s'),
          fit: BoxFit.contain,
        ),
        borderRadius: BorderRadius.all(Radius.circular(77.0)),

      ),
    );

    var circle_container_right = Container(
      width: 144.0,
      height: 164.0,
      decoration: BoxDecoration(
        color: Color(0xff26f27a27),
        borderRadius: BorderRadius.all(const Radius.circular(67.0)),

      ),
    );
    var col=  Column(
      children: <Widget>[
        ClipPath(
          clipper: ImageBackground(),
          child: Container(

              height: (height/2)-45,
              decoration:  BoxDecoration(
                //color: Colors.white,
                  borderRadius: BorderRadius.all(const Radius.circular(5.0)),
                  image:  DecorationImage(image:  NetworkImage(''),fit: BoxFit.cover)
              )
          ),
        ),
        Container(
          margin: const EdgeInsets.only(top:75.0),
          //  width: 200.0,

          child: Text('Zeinab Tarek',style: name_style,),

        ),
        Container(
            margin: const EdgeInsets.only(top:10.0),
            //  width: 200.0,
            child: Text('Flutter Developer',style:developer_style)
        ),
        row_social,

        //divider
        // Container(
        //   margin: const EdgeInsets.only(top: 35.0,left: 5.0),
        //   height: 0.5,
        //   width: MediaQuery.of(context).size.width,
        //   //color: Colors.white,
        //   decoration: BoxDecoration(
        //       gradient: LinearGradient(
        //           begin: FractionalOffset.topLeft,
        //           end: FractionalOffset.topRight,
        //           colors: [card_background,title_white]
        //       )
        //   ),
        // ),
        //bottom section
        Container(
          margin: const EdgeInsets.only(top: 35.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[

              Container(
                padding: const EdgeInsets.only(right: 60.0),

                child: InkWell(
                    onTap: (){
                  _launchURL('https://alvo.chat/3bP');

                },
                    child: Text_Icon('Contact me','https://1.bp.blogspot.com/-vzbIlZMkd6Q/X2jH2YDpa4I/AAAAAAAAS8E/WzBJZxCbDjIT5BIdqlzgJgmWAvli_ZZSQCLcBGAsYHQ/s2048/%25D9%2588%25D8%25A7%25D8%25AA%25D8%25B3%2B%25D8%25A7%25D8%25A8.png')),
              ),
              Container(
                  padding: const EdgeInsets.only(left: 60.0),
                  child: InkWell(
                    onTap: (){
                      _launchURL('https://publuu.com/flip-book/30845/96159');

                    },
                    child: Text_Icon('Download resume','https://cdn.iconscout.com/icon/premium/png-512-thumb/pdf-extension-509633.png'),

                  )
              ),
            ],
          ),
        )

      ],
    );
    return Container(
      //color: background,
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      decoration: const BoxDecoration(
          image: DecorationImage(
              image: NetworkImage('https://efdesign.hk/wp-content/uploads/2020/04/OGA3ET0.jpg'),
              fit: BoxFit.cover
          )
      ),
      child: Stack(
        children: <Widget>[
          Center(
            child: Container(
              margin: const EdgeInsets.only(left: 30.0,bottom: 20.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5.0),
                color: Color(0xff242429),
              ),
              height: height-80,
              width: 480.0,
            ),
          ),
          Center(
              child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5.0),
                    color: card_background,
                  ),
                  height: height-80,
                  width: 480.0,

                  child: Stack(
                    children: <Widget>[
                      col,
                      Container(
                        margin: const EdgeInsets.only(bottom: 20.0),
                        child: Center(

                          child: Stack(
                            children: <Widget>[
                              Container(
                                margin: const EdgeInsets.only(left: 15.0,top: 10.0),
                                child: circle_container_right,
                              ),
                              circle_container_border,

                              Container(
                                margin: const EdgeInsets.all(3.0),
                                child: circle_container_img,
                              )
                            ],
                          )
                        ),

                      ) ],
                  )

              )
          ),
        ],
      ),
    );
  }
}

 _launchURL(var url)  async {
  if (  await canLaunch(url) != null) {
     await  launch(url);
  } else {
    throw 'Could not launch $url';
  }
 }
class ImageBackground extends  CustomClipper<Path>{
  @override
  Path getClip(Size size) {
    // TODO: implement getClip
    final Path path = Path();

    path.lineTo(0.0, 0.0);
    path.lineTo(0.0, size.height-35.0);
    path.lineTo(size.width/2, size.height);
    path.lineTo(size.width, size.height-35.0);
    path.lineTo(size.width, 0.0);
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    // TODO: implement shouldReclip

    return true;
  }

}
