package game;

import ngin.gfx.NGSprite;
import ngin.gfx.NGBitmap;
import ngin.util.NGHelper;

/**
  Main entry point for the game.
**/
class Main extends hxd.App {

    var c : Float = 0.0;

    var fpsText : h2d.Text;

    var sprite : NGSprite;

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

        for(i in 0...10)
        {
            var rx = Std.random(800);
            var ry = Std.random(600);
            this.sprite = new NGSprite(s2d, rx,ry, "debug32");
        }
    }

    override function update(dt:Float) 
    {
        #if debug
            this.fpsText.text =  Std.string(hxd.Timer.fps());
        #end

        this.c += 0.1;

        NGHelper.getKeyInput(this.sprite, dt);
    }


    static function main() {

        new Main();

        // Preload all assets (like images);
        hxd.Res.initEmbed();
    }
}
