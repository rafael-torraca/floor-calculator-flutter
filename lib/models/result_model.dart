class ResultModel {
  double areaFloor;
  int piecesByWidth;
  int piecesByLength;
  double priceWithFooter;
  double priceWithoutFooter;

  ResultModel({
    this.areaFloor,
    this.piecesByWidth,
    this.piecesByLength,
    this.priceWithFooter,
    this.priceWithoutFooter,
  });

  int get amountPieces => piecesByWidth * piecesByLength;
  int get amountFloor => piecesByWidth + piecesByLength;
  int get amountPiecesAndFooter => amountPieces + amountFloor;
  double get areaWithoutFooter => amountPieces * areaFloor;
  double get areaWithFooter => amountPiecesAndFooter * areaFloor;
}
