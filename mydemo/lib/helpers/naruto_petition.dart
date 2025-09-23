import 'package:dio/dio.dart';
import 'package:mydemo/model/naruto_character.dart';
class NarutoPetition {
  static const url="https://dattebayo-api.onrender.com";
  final _dio=Dio();

  Future<List<NarutoCharacter>> getCharacters() async{
    final response = await _dio.get("$url/characters");
    final data = response.data["characters"];
    List<NarutoCharacter> pj = [];
    for (int i=0;i< data.length;i++){
      pj.add(
        NarutoCharacter.fromJsonMap(data[i])
        );
    }
    return pj;
  }

}