import 'dart:convert';

import '../Model/ImageModel.dart';
import '../String.dart';
import 'package:http/http.dart' as http;

fetchImageApi() async {

  List<ImageModel> imgmodel = [];

  try{
    var url = Uri.parse(getImgApi());

    var res = await http.get(url);

    if(res.statusCode == 200){
      var jsonData = jsonDecode(res.body);

      for(var items in jsonData){
        var id = items["id"].toString();
        var url = items["urls"]["thumb"].toString();
        var like = items["likes"].toString();
//        print(like);

        ImageModel model = ImageModel(
          imgId: id,
          imgUrl: url,
          imgLikes: like,
        );

        imgmodel.add(model);
      }
      return imgmodel;
    }
    else{
      print("Error occure in api");
      return imgmodel;
    }
  }
  catch(e){
    print("Exception $e");
    return imgmodel;
  }
}