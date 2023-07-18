package ngin;

import hxd.Window;
import hxd.Math;
import h2d.Bitmap;
import h3d.scene.*;

import Random;


class Main extends hxd.App {

    var c : Float = 0.0;
    var obj : Mesh;
    var objs : Array<Mesh> = [];

    function new() 
    {
        super();
        trace('Main Constructed');
    }

    override function init() 
    {

        var texture = h3d.mat.Texture.fromColor(0xFFFFFFFF);
        
        var primitive = new h3d.prim.Cube();
        primitive.translate(-0.5, -0.5, -0.5);
        this.obj = new Mesh(primitive, null, s3d);

        var n = 5;

        for(i in 1...10)
        {
            var rx = Random.float(-n, n);
            var ry = Random.float(-n, n);
            var rz = Random.float(-n, n);
            trace(rx,ry,rz);
            var primitive = new h3d.prim.Cube();
            primitive.translate(rx, ry, rz);
            this.objs.push(new Mesh(primitive, null, s3d));
        }
    }

    override function update(dt:Float) 
    {
        //trace(hxd.Timer.fps());
        this.c += 0.1;

        var matrix = new h3d.Matrix();
        matrix.setPosition(new h3d.Vector(0,0, -Math.sin(c) * 100));
        s3d.camera.setTransform(matrix);
    }

    static function main() {

        new Main();

        // Preload all assets (like images);
        hxd.Res.initEmbed();
    }
}
