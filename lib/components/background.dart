
import 'package:bird_game/game/assets.dart';
import 'package:bird_game/game/flappy_bird_game.dart';
import 'package:flame/components.dart';
import 'package:flame/flame.dart';

class Background extends SpriteComponent with HasGameRef<FlappyBirdGame>{
  Background();
  
  @override
  Future<void> onLoad() async{
   final backgorund = await Flame.images.load(Assets.backgorund);
   size = gameRef.size;
   sprite = Sprite(backgorund);
  }
}