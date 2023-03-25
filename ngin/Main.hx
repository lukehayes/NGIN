package ngin;

import hxd.Window;
import hxd.Math;
import ecs.component.Component;
import ecs.component.PositionComponent;
import ecs.component.DrawComponent;

class Main extends hxd.App {

    var bmp : h2d.Bitmap;
    var g : h2d.Graphics;

    var entities : Map<Int, Map<String, Component>>;


    override function init() {
        var tile = h2d.Tile.fromColor(0xE211E9, 100, 100);
        bmp = new h2d.Bitmap(tile, s2d);
        bmp.x = s2d.width * 0.5;
        bmp.y = s2d.height * 0.5;
        g = new h2d.Graphics(s2d);

        this.entities = [
            1 => [
                    "Pos"  => new PositionComponent(100,100),
                    "Draw" => new DrawComponent(20,20, 0x00FFFF)
                 ],
            2 => [
                    "Pos"  => new PositionComponent(400,300),
                    "Draw" => new DrawComponent(20,20, 0x330AAF)
                 ],
            3 => [
                    "Pos"  => new PositionComponent(100,300),
                    "Draw" => new DrawComponent(20,20, 0x11AA11)
                 ]
        ];

        var colors = [
            0x888888,
            0x4a4a4a,
            0xCCCCCC
        ];


        for(i in 4...10000)
        {
            var e = new Map<String, Component>();
            e["Pos"]  = new PositionComponent(hxd.Rand.create().random(600), hxd.Rand.create().random(600));
            e["Draw"] = new DrawComponent(5,5, colors[hxd.Rand.create().random(3)]);

            this.entities[i] = e;
        }
    }

    public function moveEntity(dt:Float) : Void
    {
        for(entity in this.entities)
        {
            var pos  = cast(entity["Pos"], PositionComponent);
            pos.x += 1 * pos.speed * dt;
            pos.y += 1 * pos.speed * dt;

            if(pos.x <= 0 || pos.x > Window.getInstance().width)
            {
                pos.speed = -pos.speed;
            }

            if(pos.y <= 0 || pos.y > Window.getInstance().height)
            {
                pos.speed = -pos.speed;
            }


        }
    }

    public function drawEntity() : Void
    {
        g.beginFill(0xFF99D748);
        for(entity in this.entities)
        {
            var pos  = cast(entity["Pos"], PositionComponent);
            var draw = cast(entity["Draw"], DrawComponent);
            g.setColor(draw.color);
            g.drawRect(pos.x,pos.y, draw.w, draw.h);
        }
        g.endFill();
    }


    override function update(dt:Float) {

        bmp.rotation += 0.1;

        moveEntity(dt);


        g.clear();
        drawEntity();
        g.beginFill(0xFF99D748);
        g.drawCircle(bmp.rotation * 10.0,400,100);
        g.endFill();
    }
    static function main() {
        new Main();
    }
}
