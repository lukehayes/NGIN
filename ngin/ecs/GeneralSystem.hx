package ecs;

import ecs.System;

import hxd.Window;
import ecs.component.Component;
import ecs.component.TransformComponent;
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
            var tf  = cast(entity["Transform"], TransformComponent);
            tf.x += 1 * tf.speed * dt;
            tf.y += 1 * tf.speed * dt;

            if(tf.x <= 0 || tf.x > Window.getInstance().width)
            {
                tf.speed = -tf.speed;
            }

            if(tf.y <= 0 || tf.y > Window.getInstance().height)
            {
                tf.speed = -tf.speed;
            }

        }
    }


   public function drawSystem(g:h2d.Graphics) : Void
    {
        g.beginFill(0xFF99D748);
        for(entity in entities)
        {
            var tf  = cast(entity["Transform"], TransformComponent);
            g.setColor(tf.color);
            g.drawRect(tf.x, tf.y, tf.w, tf.h);
        }
        g.endFill();
    }



    public function update(dt:Float)
    {
    }
}
