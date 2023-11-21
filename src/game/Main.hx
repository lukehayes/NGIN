package game;

import ngin.gfx.NGSprite;


/**
  Main entry point for the game.
**/
class Main extends hxd.App {

    var c : Float = 0.0;

    var txt : h2d.Text;

    var sprite : NGSprite;

    function new() 
    {
        super();
    }

    override function init() 
    {
        #if debug
            this.txt = new h2d.Text(hxd.res.DefaultFont.get(), s2d);
            this.txt.scaleX = 3;
            this.txt.scaleY = 3;
        #end

        this.sprite = new NGSprite(s2d, 300,100, "pixelstar");
    }

    override function update(dt:Float) 
    {
        #if debug
            this.txt.text =  Std.string(hxd.Timer.fps());
        #end

        this.c += 0.1;
    }

    static function main() {

        new Main();

        // Preload all assets (like images);
        hxd.Res.initEmbed();
    }
}
