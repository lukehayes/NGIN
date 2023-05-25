package ngin;

import hxd.Window;
import hxd.Math;
import h2d.Bitmap;

import ngin.gfx.NGSprite;

class Main extends hxd.App {

    var bmp : h2d.Bitmap;
    var spr : NGSprite;
    var c   : Float;

    function new() 
    {
        super();
        trace('Main Constructed');
    }

    override function init() 
    {
        this.spr = new NGSprite(0xFF00FF, 100,100,s2d);
        c = 0.0;
        spr.x = 300;
        spr.y = 300;
    }

    override function update(dt:Float) 
    {
        //trace(hxd.Timer.fps());
        this.c += 0.1;
        spr.x = spr.x + Math.cos(this.c);
        spr.y = spr.y + Math.sin(this.c);
    }

    static function main() {

        new Main();

        // Preload all assets (like images);
        hxd.Res.initEmbed();
    }
}
