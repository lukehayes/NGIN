package test;

import hxd.Window;
import hxd.Math;
import h2d.Bitmap;
import h3d.scene.*;

import Random;


class MainTest extends hxd.App {

    var c : Float = 0.0;
    var obj : Mesh;
    var objs : Array<Mesh> = [];
    var sx = null;
    var sy = null;
    var sz = null;

    var light = null;
    var txt = null;
    var cb = null;

    function new() 
    {
        super();
        trace('Main Constructed');
    }

    override function init() 
    {

        var texture = h3d.mat.Texture.fromColor(0xFFFFFFFF);
        
        var primitive = new h3d.prim.Cube(20.0, 20.0, 1.0);
        primitive.translate(-0.5, -0.5, -0.5);
        //this.obj = new Mesh(primitive, null, s3d);

        var n = 10;

        for(i in 1...100)
        {
            var rx = Random.float(-n, n);
            var ry = Random.float(-n, n);
            var rz = Random.float(-n, n);

            var primitive = new h3d.prim.Cube();
            primitive.addNormals();
            primitive.addUVs();
            primitive.translate(rx, ry, rz);

            var texture = hxd.Res.cats.toby.toTexture();
            var material = h3d.mat.Material.create(texture);
            material.color = new h3d.Vector(1,1,1,1);

            var mesh = new Mesh(primitive, material, s3d);
            mesh.rotate(rx, ry, rz);
            this.objs.push(mesh);
        }

        this.light = new h3d.scene.fwd.DirLight(new h3d.Vector(0,0,0), s3d);
        this.light.enableSpecular = true;

        this.cb = new h2d.CheckBox(s2d);
            cb.text = "CHECK BOX";
            cb.enable = true;

        this.sx = new h2d.Slider(1000,30,s2d);
            sx.x = 100;
            sx.backgroundColor = 0xFF00FFFF;

        this.sy = new h2d.Slider(1000,30,s2d);
            sy.y = 100;
            sy.y = 150;
            sy.backgroundColor = 0xFF00FFFF;

        this.sz = new h2d.Slider(1000,30,s2d);
            sz.x = 100;
            sz.y = 100;
            sz.backgroundColor = 0xFF00FFFF;

        this.txt = new h2d.Text(hxd.res.DefaultFont.get(), s2d);
        this.txt.text = "Text Example";
        this.txt.y = 300;
    }

    override function update(dt:Float) 
    {
        //trace(hxd.Timer.fps());
        this.c += 0.001;

        var sx = this.sx.value * 100.0;
        var sy = this.sy.value * 100.0;
        var sz = this.sz.value * 100.0;

        var matrix = new h3d.Matrix();
        matrix.setPosition(new h3d.Vector(-50.0 + sx,sy,sz));

        if(this.cb.selected)
        {
            this.light.enableSpecular = true;
        }else
        {
            this.light.enableSpecular = false;
        }

        var lightMatrix = new h3d.Matrix();
        this.light.rotate(Math.sin(c) / 100.0, Math.cos(c) / 100.0, Math.sin(c) / 100.0);
        
        s3d.camera.setTransform(matrix);
    }

    static function main() {

        new MainTest();

        // Preload all assets (like images);
        hxd.Res.initEmbed();
    }
}
