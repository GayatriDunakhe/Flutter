import 'package:flutter/material.dart';

import 'Services/Functions.dart';
import 'Services/Model/ImageModel.dart';
import 'Services/Widgets/ImageContainer.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Image Gallary using api',
      home:  MyHomePage(title: 'Image Gallary'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  List imgList = [];
  
  bool isLoading = false;

  @override
  void initState() {
    getImgList();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Text("Abstract Images", style: cstmTextStyle(fc: Colors.black),),
            isLoading
            ? Center(
              child: Container(
                margin: EdgeInsets.all(10.0),
                padding: EdgeInsets.all(200.0),
                height: 500,
                width: 500,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  gradient: LinearGradient(
                    colors: [
                      Colors.purple,
                      Colors.pinkAccent.shade200,
                    ],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                  ),
                ),
                child: CircularProgressIndicator(),
              ),
            )
            : GridView.builder(
              padding: EdgeInsets.all(20.0),
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2, mainAxisSpacing: 20.0, crossAxisSpacing: 20.0),
              itemBuilder: (BuildContext c, int index){
                return ImageContainer(
                  imageModel: imgList[index],
                );
              },
              itemCount: imgList.length,
            ),
          ],
        ),
      ),
    );
  }

  void getImgList() {
    ImageModel imgModel = ImageModel(
      imgId: "1",
      imgUrl: "https://static.vecteezy.com/packs/media/vectors/term-bg-1-666de2d9.jpg",
      imgLikes: "14",
    );

    ImageModel imgModel2 = ImageModel(
      imgId: "2",
      imgUrl: "https://media.istockphoto.com/vectors/gradient-blob-abstract-background-vector-id1282505760?k=20&m=1282505760&s=612x612&w=0&h=REKlz8PanglihiT_Z4_MY3eJhAMRe4F8zfPp0rVzccg=",
      imgLikes: "40",
    );

    ImageModel imgModel3 = ImageModel(
      imgId: "3",
      imgUrl: "https://images.unsplash.com/photo-1633596683562-4a47eb4983c5?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTh8fHJlbmRlcnN8ZW58MHx8MHx8&w=1000&q=80",
      imgLikes: "47",
    );

    ImageModel imgModel4 = ImageModel(
      imgId: "4",
      imgUrl: "https://media.istockphoto.com/photos/multi-colored-fingerprint-picture-id1384541738?b=1&k=20&m=1384541738&s=170667a&w=0&h=Az8TOQClvPmQY_9OF0Pfr6GFcKa5BNoU-xWVCPhjZkg=",
      imgLikes: "90",
    );

    ImageModel imgModel5 = ImageModel(
      imgId: "5",
      imgUrl: "https://media.istockphoto.com/photos/blue-geometric-shape-abstract-technology-background-picture-id906577952?b=1&k=20&m=906577952&s=170667a&w=0&h=TwHPNpkDatPku2D6Ej3x6vcl-77wsc5E0fbqmXm7pho=",
      imgLikes: "20",
    );

    ImageModel imgModel6 = ImageModel(
      imgId: "6",
      imgUrl: "https://static.vecteezy.com/system/resources/thumbnails/003/097/762/small/colorful-gradient-wavy-abstract-background-free-vector.jpg",
      imgLikes: "56",
    );

    imgList.add(imgModel);
    imgList.add(imgModel2);
    imgList.add(imgModel3);
    imgList.add(imgModel4);
    imgList.add(imgModel5);
    imgList.add(imgModel6);
    //print(imgList);

  }
}
