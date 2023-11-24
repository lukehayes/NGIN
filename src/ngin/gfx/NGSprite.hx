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
    var tileSize: Int = 32;

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
    public function new(?parent:h2d.Object, x:Float = 0, y:Float = 0, color:Int = 0xFF00FF, scale:Int = 1, ?file:String)
    {
        if(file == null)
        {
            this.tile   = h2d.Tile.fromColor(color, tileSize,tileSize);
            this.width  = this.tile.width;
            this.height = this.tile.height;
            super(tile,parent);
        }else
        {
            var sprite_file = file + ".png";
            this.tile = hxd.Res.loader.load(sprite_file).toTile();
            super(this.tile, parent);
        }

        this.x = x;
        this.y = y;
        this.width  = this.tile.width  * scale;
        this.height = this.tile.height * scale;

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
