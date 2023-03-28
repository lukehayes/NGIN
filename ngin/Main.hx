package ngin;

import hxd.Window;
import hxd.Math;

import ecs.System;
import ecs.GeneralSystem;

class Main extends hxd.App {

    var g : h2d.Graphics;
    var genSys : GeneralSystem;

    override function init() {
        g = new h2d.Graphics(s2d);
        genSys = new GeneralSystem();
        genSys.initEntities(100);
    }

    override function update(dt:Float) {

        trace(hxd.Timer.fps());

        genSys.moveSystem(dt);

        g.clear();
            genSys.drawSystem(g);
        g.endFill();
    }

    static function main() {
        new Main();
    }
}
