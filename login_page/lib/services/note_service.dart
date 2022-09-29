import 'dart:convert';

import 'package:login_page/constants.dart';
import 'package:login_page/model/note_model.dart';
import 'package:http/http.dart' as http;

class NoteService{
  NoteService._();
  static final instance = NoteService._();

  Future<List<NoteModel>> getTodos() async {
    final url = Uri.https(baseUrl, todoPath);
    http.Response response = await http.get(url);
    final List<dynamic> jsonList = jsonDecode(utf8.decode(response.bodyBytes));
    return jsonList.map((e) => NoteModel.fromJson(e)).toList();
  }
}