class Oyun {
  String _oyunAdi;
  String _oyunHakkinda;
  String _oyunanis;
  String _oyunKucukResmi;
  String _oyunBuyukResmi;

  Oyun(this._oyunAdi, this._oyunHakkinda, this._oyunanis, this._oyunKucukResmi,
      this._oyunBuyukResmi);

  String get oyunBuyukResmi => _oyunBuyukResmi;

  set oyunBuyukResmi(String value) {
    _oyunBuyukResmi = value;
  }

  String get oyunKucukResmi => _oyunKucukResmi;

  set oyunKucukResmi(String value) {
    _oyunKucukResmi = value;
  }

  String get oyunanis => _oyunanis;

  set oyunanis(String value) {
    _oyunanis = value;
  }

  String get oyunHakkinda => _oyunHakkinda;

  set oyunHakkinda(String value) {
    _oyunHakkinda = value;
  }

  String get oyunAdi => _oyunAdi;

  set oyunAdi(String value) {
    _oyunAdi = value;
  }
}
