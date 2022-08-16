import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'home.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 10,vertical: 5),
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Column(
            children: [
              Stack(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height / 2,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                        image: DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(
                        "https://cdn.decoist.com/wp-content/uploads/2014/10/18.36.54-House-by-Daniel-Libeskind.jpg",
                      ),
                    )),
                  ),
                  Positioned(
                    top: 12,
                    left: MediaQuery.of(context).size.width/5,
                    child: Row(
                      children: [
                        Icon(Icons.home,color: Colors.red,size: 30, ),
                        SizedBox(width: 10,),
                        Text("ZOZ House",style: GoogleFonts.coustard(
                            color: Colors.green.shade400
                            ,
                            fontWeight: FontWeight.bold,
                            fontSize: 35
                        )
                        ),
                      ],
                    ),
                  )
                ],
              ),
              SizedBox(height: 16,),
              Container(
                child: Text("Discover dream house from smartphone",textAlign: TextAlign.center,style: GoogleFonts.workSans(
                  fontSize: 26,
                  fontWeight: FontWeight.bold
                ),),
              ),
              Container(
                margin: EdgeInsets.all(12),
                child: Text("The no.1App for searching and finding the most suitable house with you",textAlign: TextAlign.center,style: GoogleFonts.workSans(
                    fontSize: 18,
                    fontWeight: FontWeight.w400,
                    color: Colors.grey
                ),),

              ),
              InkWell(
                onTap: (){
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (_)=>Home()));
                },
                child: Container(
                  margin: EdgeInsets.all(22),
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height/10,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: Colors.black
                  ),
                  child: Center(
                    child: Text("Register Now",style: GoogleFonts.workSans(
                      color: Colors.white,
                      fontSize: 22,
                      fontWeight: FontWeight.bold
                    ),),
                  ),

                ),
              ),
              Container(
                child:Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Already have an account?",style: GoogleFonts.workSans(
                        color: Colors.grey.shade600,
                        fontSize: 16,
                        fontWeight: FontWeight.w400
                    ),),
                    Text("Login",style: GoogleFonts.workSans(
                        color: Colors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.w600
                    ),),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
