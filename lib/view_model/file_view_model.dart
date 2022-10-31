import 'package:flutter/material.dart';
import 'package:iranian_pooshesh/models/file.dart';
import 'package:iranian_pooshesh/repository/file_repository.dart';

import '../data/response/api_response.dart';

class FileViewModel extends ChangeNotifier {
  final _myFilesRepository = FileRepository();

  ApiResponse<List<MyFile>> myFilesList = ApiResponse.loading();

  setMyFilesList(ApiResponse<List<MyFile>> response) {
    myFilesList = response;
    notifyListeners();
  }

  Future<void> fetchMyFilesListApi() async {
    await _myFilesRepository.getMyFiles().then((value) {
      setMyFilesList(ApiResponse.completed(value));
    }).onError((error, stackTrace) =>
        setMyFilesList(ApiResponse.error(error.toString())));
  }
}
