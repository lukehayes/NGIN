package ngin.gfx;

class NGSprite extends h2d.Bitmap
{
    /**
     * Color of the tile **/
    //public var color : Int;

    /**
     * Width of the tile **/
    public var w : Int;

    /**
     * Height of the tile **/
    public var h : Int;

    public var instance : h2d.Tile;


    public function new(scene: h2d.Scene)
    {
        super(h2d.Tile.fromColor(0x0000FF,100,100), scene);
        //this.instance = h2d.Tile.fromColor(0x0000FF, 10,10);
    }
}
