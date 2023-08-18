import 'package:flame/components.dart';
import 'package:zombie_flame/components/land.dart';
import 'package:zombie_flame/zombie_game.dart';

import '../assets.dart';

class ZombieWorld extends World with HasGameRef<ZombieGame> {
  ZombieWorld({super.children});
  final List<Land> land = [];

  @override
  Future<void> onLoad() async {
    final image = game.images.fromCache(Assets.assets_town_tile_0000_png);
    land.add(GreenLand(position: Vector2.all(50), sprite: Sprite(image)));
    add(land.last);
  }
}
