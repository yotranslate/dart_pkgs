class Translation {
  String detectedSourceLanguage;
  String text;
  String audioUrl;

  Translation({
    this.detectedSourceLanguage,
    this.text,
    this.audioUrl,
  });

  factory Translation.fromJson(Map<String, dynamic> json) {
    if (json == null) return null;

    return Translation(
      detectedSourceLanguage: json['detectedSourceLanguage'],
      text: json['text'],
      audioUrl: json['audioUrl'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'detectedSourceLanguage': detectedSourceLanguage,
      'text': text,
      'audioUrl': audioUrl,
    };
  }
}
