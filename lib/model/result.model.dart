class ResultModel {
  ResultModel({
    this.name,
    this.url,
  });

  // Nome deo Pokemon
  String? name;

  // URL de pesquisa dos atributos desse Pokemon
  String? url;

  factory ResultModel.fromJson(Map<String, dynamic> json) {
    return ResultModel(
      name: json["name"],
      url: json["url"],
    );
  }
}
