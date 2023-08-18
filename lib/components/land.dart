import 'package:flame/components.dart';

abstract class Land extends SpriteComponent {
  Land({super.position, super.sprite}):super(size: Vector2.all(64), anchor: Anchor.center);

}

class GreenLand extends Land {
  GreenLand({super.position, super.sprite});
}
