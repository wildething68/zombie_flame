import 'package:flame/components.dart';
import 'package:flame/game.dart';
import 'package:zombie_flame/assets.dart';
import 'package:zombie_flame/components/world.dart';
import 'components/components.dart';

class ZombieGame extends FlameGame {
  ZombieGame() : _world = ZombieWorld() {
    cameraComponent = CameraComponent(world: _world);
    images.prefix = "";
  }
  late final CameraComponent cameraComponent;
  final World _world;

  @override
  Future<void> onLoad() async {
    await images.loadAll([
      Assets.assets_characters_Adventurer_Poses_adventurer_action1_png,
      Assets.assets_town_tile_0000_png,
    ]);
    cameraComponent.viewfinder.anchor = Anchor.topLeft;
    add(_world);
    add(cameraComponent);
  }
}
