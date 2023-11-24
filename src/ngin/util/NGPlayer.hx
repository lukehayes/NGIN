package ngin.util;

import ngin.gfx.NGSprite;

/**
  A simple player class with basic movement for debugging.
**/
class NGPlayer extends NGSprite
{
    public function new(parent: h2d.Object, x:Int, y:Int,file: String)
    {
        super(parent, x,y,0xFFFFFF,0.5,file);
    }

    public function update(dt:Float)
    {
        ngin.util.NGHelper.getKeyInput(this,dt);
    }
}
