package ecs;

import ecs.System;

import hxd.Window;
import ecs.component.Component;
import ecs.component.PositionComponent;
import ecs.component.DrawComponent;

/**
  General system for testing all components. Will remove in future.
  **/
class GeneralSystem extends System
{
    public function new(count : Int = 3) 
    {
        this.initEntities(count);
    }

    public function moveSystem(dt:Float) : Void
    {
        for(entity in entities)
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


   public function drawSystem(g:h2d.Graphics) : Void
    {
        g.beginFill(0xFF99D748);
        for(entity in entities)
        {
            var pos  = cast(entity["Pos"], PositionComponent);
            var draw = cast(entity["Draw"], DrawComponent);
            g.setColor(draw.color);
            g.drawRect(pos.x,pos.y, draw.w, draw.h);
        }
        g.endFill();
    }



    public function update(dt:Float)
    {
    }
}
