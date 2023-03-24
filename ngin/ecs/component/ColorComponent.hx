package ecs.component;

import ecs.component.Component;

/**
    Class simply holds a color.
**/
class ColorComponent extends Component
{
    var color : Int = 0xFF00FF;

	public function new() {}

	public function update(dt:Float) {}
}