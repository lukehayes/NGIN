package ngin.gfx;

import h2d.Tile;
import h2d.Bitmap;

class NGSprite extends h2d.Bitmap
{
    var w : Int;
    var h : Int;
    var tileSize: Int = 16;

    /**
     * Constructor.
     *
     * @param scene  The scene to be drawn to.
     * @param x      The sprites x position.
     * @param y      The sprites y position.
     * @param color  The color of the sprite.
     * @param width  The width of the sprite.
     * @param height The height of the sprite.
     * @param file   The path of the image to render.
     */
    public function new(scene: h2d.Scene,x:Float, y:Float, color:Int = 0xFF00FF, w:Int = 1, h:Int = 1, file : String)
    {
        var sprite_file = file + ".png";
        var tile = hxd.Res.loader.load(sprite_file).toTile();
        super(tile, scene);
        //tile.scaleToSize(this.tileSize * w, this.tileSize * h);
        this.x = x;
        this.y = y;
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
                0xFF0011,
                this.w,
                this.h
        );
    }
}
