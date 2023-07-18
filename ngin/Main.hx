package ngin;

import hxd.Window;
import hxd.Math;
import h2d.Bitmap;
import h3d.scene.*;

import Random;


class Main extends hxd.App {


    function new() 
    {
        super();
    }

    override function init() 
    {
    }

    override function update(dt:Float) 
    {
        trace(hxd.Timer.fps());
    }

    static function main() {

        new Main();

        // Preload all assets (like images);
        hxd.Res.initEmbed();
    }
}
