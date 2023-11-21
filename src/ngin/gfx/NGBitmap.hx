package ngin.gfx;

import h2d.Bitmap;

/**
  NGBitmap is a helper class that inherits from h2d.Bitmap for ease.
  This class is meant for quick and simple drawing to test ideas.
**/
class NGBitmap extends h2d.Bitmap
{
    public function new(color:Int, x: Int = 0, y: Int = 0, width: Int = 10, height: Int = 10, ?parent:h2d.Object)
    {
        super(h2d.Tile.fromColor(color, width, height), parent);
        this.x = x;
        this.y = y;
    }
}

