package ngin.gfx;

import h2d.Tile;
import h2d.Bitmap;
import h2d.Scene;

class NGSprite extends h2d.Bitmap
{
    var w : Int;
    var h : Int;

    /**
     * Constructor.
     *
     * @param scene  The scene to be drawn to.
     * @param color  The color of the sprite.
     * @param width  The width of the sprite.
     * @param height The height of the sprite.
     */
    public function new(scene: h2d.Scene, color:Int = 0xFF00FF, w:Int = 16, h:Int = 16)
    {
        var tile = Tile.fromColor(0xFF00FF, w,h);
        super(tile, scene);
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
        return Tile.fromColor(
                0xFFFF33,
                this.w,
                this.h
        );
    }
}
