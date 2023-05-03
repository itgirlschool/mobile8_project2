class SearchRecommendedModel {
  final String imageRec;
  final String nameRec;
  final String infoRec;

/*
  String imageRec;
  String? nameRec;
  String? infoRec; */

  SearchRecommendedModel(
      {required this.imageRec, this.nameRec = '', this.infoRec = ''});
}
