package ngin.util;

/**
  A concrete Vector2 class that is a child of the heaps h3d.Vector class.
**/
class NGVector2 extends h3d.Vector
{
    public function new(x: Float = 0, y:Float = 0)
    {
        super(x,y,0,1);
    }
}
