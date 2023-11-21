package ngin.util;

/**
  Mathematical helper utility functions.
**/
class NGMath 
{
    /**
        Lerp a single value from a to b by t. 

        Heaps has its own version of Lerp (that works on vectors) in h3d.Vector.

        @param a The start value.
        @param b The end value.
        @param t The percentange - 0 to 1. 0.5 == 50%.
     **/
    static public function lerp(a: Float,b: Float,t: Float)
    {
        return (1-t) * a + t * b;
    }
}
