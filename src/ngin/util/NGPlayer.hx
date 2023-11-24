package ngin.util;

import ngin.gfx.NGSprite;

/**
  A simple player class with basic movement for debugging.
**/
class NGPlayer
{
    var sprite : NGSprite;

    public function new(parent: h2d.Object, x:Int, y:Int,file: String)
    {
        this.sprite = new NGSprite(parent, x,y, file);
        trace("Instance of NGPlayer Created");
    }
}
