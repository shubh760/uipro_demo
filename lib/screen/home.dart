import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vayus_assignment/screen/image.dart';

import '../controllers/controller.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _controller = Get.find<Controller>();
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width ,
              decoration: BoxDecoration(
                image: DecorationImage(image: AssetImage('assets/meme_template_pointing.jpg'),fit: BoxFit.cover)
              ),
              child:  Padding(
                padding: const EdgeInsets.only(right: 30,
                bottom: 80),
                child: Center(
        child: ElevatedButton(onPressed: () async {await _controller.loadingdata(); 
          await Get.to(ShowImage(imageurl: _controller.photoModal[0].image,));
        },
        child: const Text('Fetch Data')),
      ),
              ),
            )
          ],
        )
      ),
    );
  }
}
