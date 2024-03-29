import '../helpers/parse_helper.dart';
import '../models/floor_model.dart';
import '../models/result_model.dart';
import '../models/room_model.dart';

class CalculatorController {
  final _room = RoomModel();
  final _floor = FloorModel();

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

  void setPriceSave(String value) {
    _floor.preco = ParseHelper.toDouble(value);
  }

  ResultModel calculate() {
    return ResultModel(
      piecesByWidth: (_room.width / _floor.width).ceil(),
      piecesByLength: (_room.length / _floor.length).ceil(),
      areaFloor: _floor.length * _floor.width,
      precoTotal: _floor.preco,      
    );
  }
}
