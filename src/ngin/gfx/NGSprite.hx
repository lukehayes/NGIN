package ngin.gfx;

import h2d.Tile;
import h2d.Bitmap;

/**
  Class for holding a single tile or sprite. Best used for static images.
**/
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
     * @param parent  The scene to be drawn to.
     * @param x      The sprites x position.
     * @param y      The sprites y position.
     * @param file   The path of the image to render.
     * @param width  The width of the sprite.
     * @param height The height of the sprite.
     * @param color  The color of the sprite.
     */
    public function new(?parent:h2d.Object, x:Float = 10, y:Float = 10, ?file:String, ?w:Int, ?h:Int, color: Int = 0xFF00FF)
    {
        if(file == null)
        {
            super(h2d.Tile.fromColor(color, w,h), parent);
        }else 
        {
            var sprite_file = file + ".png";
            this.tile = hxd.Res.loader.load(sprite_file).toTile();
            super(this.tile, parent);
        }

        // TODO The default sizing could probably be written better but works for now.
        // ----
        if(w == null || h == null)
        {
            this.width  = this.tile.width;
            this.height  = this.tile.height;
        }else
        {
            tile.setSize(this.tileSize * w, this.tileSize * h);
            super(this.tile, parent);
        }

        this.x = x;
        this.y = y;

        // The parent class Drawable holds the property color which is a
        // h3d.Vector. Here we convert it from an int to a h3d.Vector.
        // --------------------------------------------------------------
        // FIXME Line below makes things invisible. Fix later.
        //this.color = h3d.Vector.fromColor(color);
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
