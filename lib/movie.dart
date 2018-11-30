class Movie {
  final String timestamp;
  final String name;
  final Url url;
  Movie({this.timestamp, this.name, this.url});

}

class Url {
  final String small;
  final String large;
  final String medium;
  Url({
    this.small,
    this.large,
    this.medium,
  });

}