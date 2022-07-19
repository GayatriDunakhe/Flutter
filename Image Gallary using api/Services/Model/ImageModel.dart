class ImageModel{
  var imgId;
  var imgUrl;
  var imgLikes;

  ImageModel({this.imgId, this.imgUrl, this.imgLikes});

  String getImgId() => this.imgId;
  String getImgUrl() => this.imgUrl;
  String getImgLikes() => this.imgLikes;
}