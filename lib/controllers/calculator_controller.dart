import 'package:floor_calculator/helpers/parse_helper.dart';
import 'package:floor_calculator/models/floor_model.dart';
import 'package:floor_calculator/models/result_model.dart';
import 'package:floor_calculator/models/room_model.dart';

class CalculatorController {
  final _room = RoomModel();
  final _floor = FloorModel();

  get precoSalvar => null;

  void setRoomWidth(String value) {
    _room.width = ParseHelper.toDouble(value);
  }
  void setRoomLength(String value) {
    _room.length = ParseHelper.toDouble(value);
  }
  void setFloorWidth(String value) {
    _floor.width = ParseHelper.toDouble(value);
  }
  void setFloorLength(String value) {
    _floor.length = ParseHelper.toDouble(value);
  }
  void savePrice(String value){
    _floor.price = ParseHelper.toDouble(value); 
  }

  ResultModel calculate() {
    final result = new ResultModel();
      result.piecesByWidth = (_room.width / _floor.width).ceil();
      result.piecesByLength = (_room.length / _floor.length).ceil();
      result.areaFloor = _floor.length * _floor.width;
      result.totalPrice = _floor.price;
      return result;
  }
}