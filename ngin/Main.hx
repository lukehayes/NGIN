package ngin;

import hxd.Window;
import hxd.Math;
import ecs.component.Component;
import ecs.component.PositionComponent;
import ecs.component.DrawComponent;

class Main extends hxd.App {

    var bmp : h2d.Bitmap;
    var g : h2d.Graphics;
    
    // FIXME Change this to a hash map!
    var entities : List<List<Component>>;


    override function init() {
        var tile = h2d.Tile.fromColor(0xE211E9, 100, 100);
        bmp = new h2d.Bitmap(tile, s2d);
        bmp.x = s2d.width * 0.5;
        bmp.y = s2d.height * 0.5;
        g = new h2d.Graphics(s2d);
        

        Window.getInstance().title = "app.hl";
        
        this.entities = new List();
        
        for(i in 0...10)
        {
            var e1 = new List<Component>();
            e1.add(new PositionComponent(Math.random(400), Math.random(400)));
            this.entities.add(e1);
        }
        
        
    }
    override function update(dt:Float) {


        bmp.rotation += 0.1;
        
        this.entities.first().add(new ColorComponent());
        
        g.clear();
        g.beginFill(0xFF99D748);
        g.drawCircle(bmp.rotation * 10.0,400,100);
            
            for (entity in this.entities)
            {
                for(comp in entity)
                {
                    var c = cast(comp, PositionComponent);

                    comp.update(hxd.Timer.dt);
                    
                    g.setColor(cast(Math.random(2255)));
                    g.drawRect(c.position.x, c.position.y, 10,10);
                    
                }
            }


        g.endFill();
    }
    static function main() {
        new Main();
    }
}
