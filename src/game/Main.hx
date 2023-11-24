package game;

import ngin.gfx.NGSprite;
import ngin.gfx.NGBitmap;
import ngin.util.NGHelper;
import ngin.util.NGVector2;

/**
  Main entry point for the game.
**/
class Main extends hxd.App {

    var c : Float = 0.0;

    var sprite : NGSprite;

    function new()
    {
        super();
    }

    override function init()
    {
        
        var overlay = new ngin.util.NGDebugOverlay(s2d);

        this.sprite = new NGSprite(s2d, 0,0, 0xFF00FF, "pixelstar");
    }

    override function render(e: h3d.Engine)
    {
        trace("Rendering From Main...");
    }

    override function update(dt:Float)
    {

        trace("Updating From Main...");

        this.c += 0.1;

        NGHelper.getKeyInput(this.sprite, dt);
    }


    static function main() {

        new Main();

        // Preload all assets (like images);
        hxd.Res.initEmbed();
    }
}
