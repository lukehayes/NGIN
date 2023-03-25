package ecs.component;

import ecs.component.Component;

/**
  Component holds information to draw itself.
 **/
class DrawComponent extends Component
{
    var color : Int = 0xFF00FF;
    var w     : Int;
    var h     : Int;

    public function new(w:Int = 10, h:Int = 10, color:Int = 0xFF00FF) 
    {
        this.w = w;
        this.h = h;
        this.color = color;
    }

    public function update(dt:Float) {}
}
