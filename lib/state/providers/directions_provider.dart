import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:travel_routes/models/direction.dart';

import '../../repositories/maps_repository.dart';

part 'directions_provider.g.dart';

@riverpod
Future<Direction> directions(
  DirectionsRef ref,
  String origin,
  String destination,
) async {
  final mapsRepository = ref.watch(mapsRepositoryProvider);
  return mapsRepository.getDirections(origin, destination);
}
