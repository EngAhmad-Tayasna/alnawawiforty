 class Hadith {
  String? key;
  String? nameHadith;
  String? textHadith;
  String? explanationHadith;
  String? translateNarrator;
  String? audioHadith;
  bool? bol = false;

  Hadith({
    this.key,
    this.nameHadith,
    this.textHadith,
    this.explanationHadith,
    this.translateNarrator,
    this.audioHadith,
  });

  Map<String , dynamic> toMap() => {
    "key" : key,
    "nameHadith" : nameHadith,
    "textHadith" : textHadith,
    "explanationHadith" : explanationHadith,
    "translateNarrator" : translateNarrator,
    "audioHadith" : audioHadith
  };

  factory Hadith.fromMap(Map<String , dynamic> json) =>  Hadith(
    key: json['key'],
    nameHadith : json['nameHadith'],
    textHadith : json['textHadith'],
    explanationHadith : json['explanationHadith'],
    translateNarrator : json['translateNarrator'],
    audioHadith : json['audioHadith']
  );
}
