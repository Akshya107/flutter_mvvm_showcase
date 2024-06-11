import 'package:json_annotation/json_annotation.dart';

part 'jokes_model.g.dart';

@JsonSerializable()
class JokesModel {
  late String type;
  late String setup;
  late String punchline;
  late double id;

  JokesModel();

  factory JokesModel.fromJson(Map<String, dynamic> json) =>
      _$JokesModelFromJson(json);

  Map<String, dynamic> toJson() => _$JokesModelToJson(this);
}
