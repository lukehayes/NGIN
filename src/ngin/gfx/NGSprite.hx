package ngin.gfx;

import h2d.Tile;
import h2d.Bitmap;

class NGSprite extends h2d.Bitmap
{
    /** Width of the NGSprite. */
    var w : Int;

    /** Height of the NGSprite. */
    var h : Int;

    /** Size of the NGSprite tile. */
    var tileSize: Int = 16;

    /**
     * Constructor.
     *
     * @param scene  The scene to be drawn to.
     * @param x      The sprites x position.
     * @param y      The sprites y position.
     * @param file   The path of the image to render.
     * @param width  The width of the sprite.
     * @param height The height of the sprite.
     * @param color  The color of the sprite.
     */
    public function new(scene:h2d.Scene, x:Float = 10, y:Float = 10, file:String = "", w:Int = 10, h:Int = 10, color: Int = 0xFF00FF)
    {
        if(file == "")
        {
            this.tile = Tile.fromColor(color, w,h);
        }else
        {
            var sprite_file = file + ".png";
            this.tile = hxd.Res.loader.load(sprite_file).toTile();
        }

        super(this.tile, scene);

        //tile.scaleToSize(this.tileSize * w, this.tileSize * h);
        this.x = x;
        this.y = y;
        this.width  = w;
        this.height = h;

        // The parent class Drawable holds the property color which is a
        // h3d.Vector. Here we convert it from an int to a h3d.Vector.
        this.color = h3d.Vector.fromColor(color);
    }

    /**
      * Get the underlying tile instance.
      *
      * @return h2d.Tile.
      */
    public function getTile() : h2d.Tile
    {
        return Tile.fromColor(
                this.color.toColor(),
                this.w,
                this.h
        );
    }
}
