import 'package:equatable/equatable.dart';

class WallpapersModel extends Equatable {
  final id;
  final wallpaperImg;

  final thumbnailImg;
  final godCategory;

  WallpapersModel(
      {this.id, this.wallpaperImg, this.thumbnailImg, this.godCategory});

  @override
  List<Object> get props => [
        id,
        wallpaperImg,
        thumbnailImg,
        godCategory,
      ];

  factory WallpapersModel.fromJson({Map<String, dynamic> json}) {
    final godCategoryFromJson = json['category']['category'];
    final godMainImage = json['src'][0]['url'];

    final godThumbnailImage = json['src'][0]['formats']['small']['url'];
    return WallpapersModel(
      id: json['id'],
      godCategory: godCategoryFromJson,
      wallpaperImg: godMainImage,
      thumbnailImg: godThumbnailImage,
    );
  }
}
