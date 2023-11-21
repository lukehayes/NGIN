package game;

import ngin.gfx.NGSprite;
import ngin.gfx.NGBitmap;
import ngin.util.Helper;

/**
  Main entry point for the game.
**/
class Main extends hxd.App {

    var c : Float = 0.0;

    var fpsText : h2d.Text;

    var sprite : NGSprite;

    var bmp : NGBitmap;

    function new() 
    {
        super();
    }

    override function init() 
    {
        #if debug
            this.fpsText = new h2d.Text(hxd.res.DefaultFont.get(), s2d);
            this.fpsText.scaleX = 3;
            this.fpsText.scaleY = 3;
        #end

        this.sprite = new NGSprite(s2d, 300,100, "pixelstar");
        this.bmp = new NGBitmap(0x00FF00, s2d);

        var bmp2 = new NGBitmap(0x00FF00,100,100,200,200, s2d);
        bmp2.x = 100;
        bmp2.x = 100;
    }

    override function update(dt:Float) 
    {
        #if debug
            this.fpsText.text =  Std.string(hxd.Timer.fps());
        #end
        this.c += 0.1;

        Helper.getKeyInput(this.bmp, dt);
    }


    static function main() {

        new Main();

        // Preload all assets (like images);
        hxd.Res.initEmbed();
    }
}
