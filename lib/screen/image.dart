import 'dart:ui';

import 'package:flutter/material.dart';

class ShowImage extends StatelessWidget {
  var imageurl;
   ShowImage({Key? key, this.imageurl}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Stack(
        children: [
          Container(
            
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: NetworkImage(
                        imageurl),
                    fit: BoxFit.cover)),
            child: BackdropFilter(
              filter: ImageFilter.blur(
                sigmaX: 15,
                sigmaY: 15,
              ),
              child: Container(
                color: Colors.black.withOpacity(0.2),
              ),
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: FractionallySizedBox(
              heightFactor: 0.55,
              child: FractionallySizedBox(
                    widthFactor: 0.8,
                    child:   Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(32),
                                image: DecorationImage(
                                    image: NetworkImage(
                                        imageurl),
                                    fit: BoxFit.cover),
                              ),
                            ),
                          ),
            ),
          ),
              
        ],
      ),
    );
  }
}
