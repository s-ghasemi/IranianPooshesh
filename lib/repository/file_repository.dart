import 'package:iranian_pooshesh/models/file.dart';

import '../data/network/network_api_services.dart';
import '../res/app_url.dart';

class FileRepository {
  final NetworkApiServices _apiServices = NetworkApiServices();

  Future<List<MyFile>> getMyFiles() async {
    try {
      dynamic response =
          await _apiServices.getGetMyFilesApiResponse(AppUrl.myFiles);
      final List<MyFile> myFilesList = [];
      response['results'].forEach((item) {
        myFilesList.add(MyFile.fromJson(item));
      });
      return myFilesList;
    } catch (e) {
      rethrow;
    }
  }
}
