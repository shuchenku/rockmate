import 'package:hive/hive.dart';
import 'package:rockmate/core/domain/entities/route_entity.dart';

class RouteEntityAdapter extends TypeAdapter<RouteEntity> {
  @override
  final int typeId = 0;

  @override
  RouteEntity read(BinaryReader reader) {
    return RouteEntity(
      id: reader.readString(),
      name: reader.readString(),
      grade: reader.readString(),
      type: reader.readString(),
      rating: reader.readDouble(),
      location: reader.readString(),
      imageUrl: reader.readString(),
    );
  }

  @override
  void write(BinaryWriter writer, RouteEntity obj) {
    writer.writeString(obj.id);
    writer.writeString(obj.name);
    writer.writeString(obj.grade);
    writer.writeString(obj.type);
    writer.writeDouble(obj.rating);
    writer.writeString(obj.location);
    writer.writeString(obj.imageUrl ?? '');
  }
}
