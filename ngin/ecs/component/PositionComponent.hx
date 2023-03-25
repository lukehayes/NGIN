package ecs.component;

import ecs.component.Component;
import h3d.Vector;

class PositionComponent extends Component
{
    public var x : Float;
    public var y : Float;
    public var speed : Float;

    public function new(x:Float, y:Float) 
    {
        this.x = x;
        this.y = y;
        this.speed = Math.random() * 400.0;
    }


    public function update(dt:Float) 
    {
        this.x += 1 * speed * dt;
        this.y += 1 * speed * dt;
    }
}
