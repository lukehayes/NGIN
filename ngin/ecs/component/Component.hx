package ecs.component;

/**
    Base class for all components.
**/
abstract class Component 
{
   abstract public function update(dt:Float) : Void;
}