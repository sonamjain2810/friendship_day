import 'package:cached_network_image/cached_network_image.dart';
import 'package:facebook_app_events/facebook_app_events.dart';
import 'package:flutter/material.dart';
import 'utils/SizeConfig.dart';
import 'ImageDetailPage.dart';

class ImagesList extends StatefulWidget {
  @override
  _ImagesListState createState() => _ImagesListState();
}

class _ImagesListState extends State<ImagesList> {
  static final facebookAppEvents = FacebookAppEvents();

  var data = [
    "http://www.andiwiniosapps.in/friendship_message/friendship_images/k1.PNG",
    "http://www.andiwiniosapps.in/friendship_message/friendship_images/k2.PNG",
    "http://www.andiwiniosapps.in/friendship_message/friendship_images/k3.PNG",
    "http://www.andiwiniosapps.in/friendship_message/friendship_images/k4.PNG",
    "http://www.andiwiniosapps.in/friendship_message/friendship_images/k5.PNG",
    "http://www.andiwiniosapps.in/friendship_message/friendship_images/k6.PNG",
    "http://www.andiwiniosapps.in/friendship_message/friendship_images/k7.PNG",
    "http://www.andiwiniosapps.in/friendship_message/friendship_images/k8.PNG",
    "http://www.andiwiniosapps.in/friendship_message/friendship_images/k9.PNG",
    "http://www.andiwiniosapps.in/friendship_message/friendship_images/k10.PNG",
    "http://www.andiwiniosapps.in/friendship_message/friendship_images/k11.PNG",
    "http://www.andiwiniosapps.in/friendship_message/friendship_images/k12.PNG",
    "http://www.andiwiniosapps.in/friendship_message/friendship_images/k13.PNG",
    "http://www.andiwiniosapps.in/friendship_message/friendship_images/k14.PNG",
    "http://www.andiwiniosapps.in/friendship_message/friendship_images/k15.PNG",
    "http://www.andiwiniosapps.in/friendship_message/friendship_images/k16.PNG",
    "http://www.andiwiniosapps.in/friendship_message/friendship_images/k17.PNG",
    "http://www.andiwiniosapps.in/friendship_message/friendship_images/k18.PNG",
    "http://www.andiwiniosapps.in/friendship_message/friendship_images/k19.PNG",
    "http://www.andiwiniosapps.in/friendship_message/friendship_images/k20.PNG",
    "http://www.andiwiniosapps.in/friendship_message/friendship_images/k21.PNG",
    "http://www.andiwiniosapps.in/friendship_message/friendship_images/k22.PNG",
    "http://www.andiwiniosapps.in/friendship_message/friendship_images/k23.PNG",
    "http://www.andiwiniosapps.in/friendship_message/friendship_images/k24.PNG",
    "http://www.andiwiniosapps.in/friendship_message/friendship_images/k25.PNG",
    "http://www.andiwiniosapps.in/friendship_message/friendship_images/k26.PNG",
    "http://www.andiwiniosapps.in/friendship_message/friendship_images/k27.PNG",
    "http://www.andiwiniosapps.in/friendship_message/friendship_images/k28.PNG",
    "http://www.andiwiniosapps.in/friendship_message/friendship_images/k29.PNG",
    "http://www.andiwiniosapps.in/friendship_message/friendship_images/k30.PNG",
    "http://www.andiwiniosapps.in/friendship_message/friendship_images/k31.PNG",
    "http://www.andiwiniosapps.in/friendship_message/friendship_images/k32.PNG",
    "http://www.andiwiniosapps.in/friendship_message/friendship_images/k33.PNG",
    "http://www.andiwiniosapps.in/friendship_message/friendship_images/k36.PNG",
    "http://www.andiwiniosapps.in/friendship_message/friendship_images/k37.PNG",
    "http://www.andiwiniosapps.in/friendship_message/friendship_images/k38.PNG",
    "http://www.andiwiniosapps.in/friendship_message/friendship_images/k39.PNG"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Images",
          style: Theme.of(context).appBarTheme.textTheme.headline1,
        ),
      ),
      body: SafeArea(
        child: data != null
            ? GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2),
                itemBuilder: (context, index) {
                  return GestureDetector(
                      child: Padding(
                        padding:
                            EdgeInsets.all(1.93 * SizeConfig.widthMultiplier),
                        child: ListTile(
                          title: CachedNetworkImage(
                            imageUrl: data[index],
                            placeholder: (context, url) =>
                                const CircularProgressIndicator(),
                            errorWidget: (context, url, error) =>
                                const Icon(Icons.error),
                            fadeOutDuration: const Duration(seconds: 1),
                            fadeInDuration: const Duration(seconds: 3),
                          ),
                        ),
                      ),
                      onTap: () {
                        print("Click on Image Grid item $index");
                        Navigator.push(
                            context,
                            new MaterialPageRoute(
                                builder: (context) =>
                                    ImageDetailPage(data[index], index)));

                        facebookAppEvents.logEvent(
                          name: "Image List",
                          parameters: {
                            'clicked_on_jpeg_image_index': '$index',
                          },
                        );
                      });
                },
                itemCount: data.length,
              )
            : Center(
                child: CircularProgressIndicator(),
              ),
      ),
    );
  }
}
