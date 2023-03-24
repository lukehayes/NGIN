package ecs.component;

import ecs.component.Component;
import h3d.Vector;

class PositionComponent extends Component
{
    
    public var position : Vector;
    
    public var speed : Float;

    public function new(x:Float, y:Float) 
    {
        this.position = new Vector(x,y);
        this.speed = Math.random() * 100.0;
    }


	public function update(dt:Float) 
    {
        this.position.x += 1 * speed * dt;
        this.position.y += 1 * speed * dt;
    }
}