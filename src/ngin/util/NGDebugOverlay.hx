package ngin.util;

/**
  Wrapper for UI when in debug mode.
*/
class NGDebugOverlay
{
    var fpsText : h2d.Text;

    public function new(?parent: h2d.Object)
    {
        #if debug
            this.fpsText = new h2d.Text(hxd.res.DefaultFont.get(), parent);
            this.fpsText.scaleX = 3;
            this.fpsText.scaleY = 3;
        #end
    }

    public function update(dt: Float)
    {
        trace("Updating...");

        #if debug
            this.fpsText.text =  Std.string(hxd.Timer.fps());
        #end
    }
}
