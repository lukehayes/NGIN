package ngin.gfx;

import h2d.Tile;
import h2d.Bitmap;
import h2d.Scene;

class NGSprite extends h2d.Bitmap
{
    var w : Int;
    var h : Int;

    public function new(color:Int, w:Int, h:Int, scene:h2d.Scene)
    {
        super(null, scene);
        this.w = w;
        this.h = h;
    }

    /**
      * Get the underlying tile instance.
      * 
      * @return h2d.Tile
      */
    public function get() : h2d.Tile
    {
        trace(this.w);
        trace(this.h);

        return Tile.fromColor(
                0xFFFF33,
                this.w,
                this.h
        );
    }
}
