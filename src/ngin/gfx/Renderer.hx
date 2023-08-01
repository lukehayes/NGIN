package ngin.gfx;

/**
* Renderer acts as a helper/wrapper for heaps rendering functions.
*
* @since 0.0.1
*/
class Renderer extends h2d.Graphics
{
    public function new(scene: h2d.Scene)
    {
        super(scene);
    }

    /**
     * Draw a single pixel. This function just calls Graphics.drawRect()
     * with a width and height of 1.
     *
     * @param x The x position of the pixel.
     * @param y The y position of the pixel.
     *
     * @param color The color of the pixel.
     * @param alpha The aloha of the pixel.
    */
    public function drawPixel(x:Int, y: Int, color : Int = 0xFF00FF, alpha : Float = 1.0)
    {
        this.beginFill(color, alpha);
        this.drawRect(x,y,1,1);
        this.endFill();
    }
}
