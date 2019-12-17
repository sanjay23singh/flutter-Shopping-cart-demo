import 'package:flutter/foundation.dart';
class Press with ChangeNotifier{

  void change(Map<String,Object>map)
  {
      map['isFav']=!map['isFav'];
      notifyListeners();
  }
}