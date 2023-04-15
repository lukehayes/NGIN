package ecs.component;

import ecs.component.Component;

class TransformComponent extends Component
{
    public var x : Float;
    public var y : Float;
    public var w : Float;
    public var h : Float;
    public var speed : Float;
    public var color : Int;

    public function new(x:Float, y:Float, w:Float, h:Float) 
    {
        this.x = x;
        this.y = y;
        this.w = w;
        this.h = h;
        this.color = 0xFFFFFF;
        this.speed = Math.random() * 400.0;
    }
}
