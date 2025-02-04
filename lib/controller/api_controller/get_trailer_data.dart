import 'dart:developer';
import 'package:netflix/model/trailer.dart';
import 'package:netflix/services/tmdb_api_call.dart';

class TrailerData {
  ApiCall apiCall = ApiCall();

  Future<Trailer?> _fetchMovieData(id) async {
    final result = await apiCall.trailer(id);
    try{
       if (result.isNotEmpty) {
      Trailer trailerDetails = Trailer(
        key: result[3]['key'],
        site: result[4]['site'],
      );
      // print(result[3]['key']);
      // print(result[4]['site']);
      return trailerDetails;
    }
    }catch(e){
        log('somthing went wrong');
        print('e');
    }
  
    return null;
  }

  Future<Trailer?> fetchMovieData(id) async {
    final result = await _fetchMovieData(id);
    if (result != null) {
      // print(result.key);
      // print(result.site);
      return result;
    }

    return null;
  }
}
