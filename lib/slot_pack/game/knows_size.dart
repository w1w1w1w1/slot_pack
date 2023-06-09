library slot_package;

import 'package:flame/components.dart';

// Adding this mixin to any class derived from BaseComponent will make sure that
// the components gets access to current gameSize. Do not try to access gameSize
// before your components is added to the game instance.
mixin KnowsSize on Component {
  late Vector2 gameSize;

  void onResize(Vector2 newGameSize) {
    gameSize = newGameSize;
  }
}
