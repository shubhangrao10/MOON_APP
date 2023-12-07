
import 'package:flutter/material.dart';

import 'package:moon_app/widgets/custom_dialogue_button.dart';

class HomePage extends StatelessWidget{
  late double _deviceHeight,_deviceWidth;

  HomePage({Key? key}): super(key : key);

  @override
  Widget build(BuildContext context) {
    _deviceHeight = MediaQuery.of(context).size.height;
    _deviceWidth = MediaQuery.of(context).size.width;

    return Scaffold(

      body: Container(
        height: _deviceHeight,
        width: _deviceWidth,
        padding: EdgeInsets.symmetric(horizontal: _deviceWidth * 0.05),
        child: Stack(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _pageTitle(),
                _bookRideWidget(),
              ],
            ),
            Align(
              alignment: Alignment.centerRight,
              child: _astroImageWidget(),
            ),
          ],
        ),
      ),

    );
  }

    Widget _pageTitle() {
      return const Text(" GO TO MOON ", style: TextStyle(
        color: Colors.white12,
        fontSize: 70,
        fontWeight: FontWeight.w800,
      ),
      );
    }

    Widget _astroImageWidget() {
      return Container(
        height: _deviceHeight * 0.50,
        width: _deviceWidth * 0.65,
        decoration: const BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.fill,
            image: AssetImage("assets/images/astro_moon.png"),
          ),
        ),
      );
    }

    Widget  _bookRideWidget(){
    return Container(
      height: _deviceHeight*0.25,
      child:Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _destinationDropDownWidget(),
          _travellersInformationWidget(),
          _rideButton(),
           ],
        ),
     );
  }

  Widget _destinationDropDownWidget() {
    return CustomDropDownButtonClass(
      values: const[
        'JAMES WEBB STATION',
        'PRENEURE STATION',
      ],
      width: _deviceWidth,
    );
  }
    Widget _travellersInformationWidget(){
   return Row(
     mainAxisAlignment: MainAxisAlignment.spaceBetween,
     mainAxisSize: MainAxisSize.min,
     crossAxisAlignment: CrossAxisAlignment.start,

     children: [
       CustomDropDownButtonClass(
         values: ['1' , '2' , '3' , '4'],
         width: _deviceWidth*0.45,
       ),
       CustomDropDownButtonClass(
         values: ['ECONOMY','BUSINESS','FIRST','PRIVATE'],
         width: _deviceWidth*0.40,
          ),
       ],
    );
  }

Widget _rideButton(){
    return Container(
      margin: EdgeInsets.only(bottom:_deviceHeight*0.01),
      width:_deviceWidth,
      decoration: BoxDecoration(
        color:Colors.white12,
        borderRadius: BorderRadius.circular(10),
      ),

      child:MaterialButton(
        onPressed: (){},
        child: const Text(
          "BOOK RIDE",
          style: TextStyle(
            color: Colors.black,
          ),
        ),
      ),
    );
}


  }

