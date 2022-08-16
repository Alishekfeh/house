import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'app_bar_row.dart';
import 'detail_page.dart';

class HomeScreenIcon extends StatelessWidget {
  const HomeScreenIcon({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List dataHouse = [
      {
        "image":
            "https://image.architonic.com/prj2-3/20006586/dia-dittel-architekten-modern-house-architonic-dittelarchitekten-wohnhaus-hofgut-04-08-arcit18.jpg",
        "price": "\$2.999",
        "name": "Dia Dittel Modern House",
        "place": "Melbourne, Australia",
        "beds": "4",
        "baths": "6",
        "size": "500",
      },
      {
        "image":
        "https://www.architecturalrecord.com/ext/resources/Issues/2021/02-February/Golden-Valley-Midcentury-Modern-House-01-B.jpg?height=635&t=1611944303&width=1200",
        "price": "\$700",
        "name": "Wood White Modern House",
        "place": "Perth, Australia",
        "beds": "6",
        "baths": "3",
        "size": "240",
      },
      {
        "image":
        "http://cdn.home-designing.com/wp-content/uploads/2017/05/wood-white-and-charcoal-modern-exterior-paint-themes.jpg",
        "price": "\$450",
        "name": "Golden Valley House",
        "place": "Sydney, Australia",
        "beds": "2",
        "baths": "5",
        "size": "150",
      },
    ];
    return Container(
      padding: EdgeInsets.all(15),
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            AppBarRpw(),
            TextField(
              decoration: InputDecoration(
                prefixIcon: Icon(
                  Icons.search,
                  color: Colors.grey.shade600,
                ),
                hintText: "Search for dream house",
                hintStyle: GoogleFonts.manrope(color: Colors.grey.shade600),
                border: OutlineInputBorder(borderSide: BorderSide.none),
                enabledBorder: OutlineInputBorder(borderSide: BorderSide.none),
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 90,
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(15),
              ),
              child: Container(
                padding: EdgeInsets.only(left: 20, top: 6),
                child: Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "GET Your 10%\n CASHBACK",
                          style: GoogleFonts.workSans(
                              color: Colors.white, fontSize: 20),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          "Expired 20 Dec 2022",
                          style: GoogleFonts.workSans(
                              color: Colors.white60, fontSize: 18),
                        )
                      ],
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 35, bottom: 2),
                      child: Image.network(
                        "https://www.pngmart.com/files/16/Modern-House-PNG-Clipart.png",
                        fit: BoxFit.cover,
                      ),
                    ),

                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            //List
            ListView.builder(
                shrinkWrap: true,
                itemCount: dataHouse.length,
                physics: BouncingScrollPhysics(),
                scrollDirection: Axis.vertical,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (_) => DetailPage(dataHouse[index])));
                    },
                    child:Container(
                      width: MediaQuery.of(context).size.width,
                      height: 220,
                      child: Column(
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width,
                            height: 150,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                image: DecorationImage(
                                    image: NetworkImage("${dataHouse[index]['image']}"),
                                    fit: BoxFit.cover
                                )
                            ),
                            child: Container(
                              margin: EdgeInsets.only(
                                  right: 200,
                                  bottom: 100,
                                  left: 10,
                                  top: 10
                              ),
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(10)
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text("${dataHouse[index]['price']}",style: GoogleFonts.montserrat(color: Colors.black,fontWeight: FontWeight.w700),),
                                  Text("/month",style: GoogleFonts.montserrat(color: Colors.black,fontWeight: FontWeight.w400),),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(height: 10,),
                          Row(
                            children: [
                              Text("${dataHouse[index]['name']}",style: GoogleFonts.montserrat(fontWeight: FontWeight.w700,color: Colors.black,fontSize: 16),)
                            ],
                          ),
                          Row(
                            children: [
                              Icon(Icons.location_on_outlined,size: 15,color: Colors.grey.shade500,),
                              SizedBox(width: 5,),
                              Text("${dataHouse[index]['place']}",style: GoogleFonts.montserrat(fontWeight: FontWeight.w500,color: Colors.grey.shade500,fontSize: 16),)
                            ],
                          ),
                        ],
                      ),
                    ),
                  );
                })
          ],
        ),
      ),
    );
  }
}
