package ecs;

import ecs.component.Component;
import ecs.component.TransformComponent;

/**
  Base class for all systems.
 **/
abstract class System
{
    public var entities : Map<Int, Map<String, Component>>;

    abstract function update(dt:Float) : Void;

    /**
      Initialize entities map with only a Position and DrawCompnent.

      @param count:Int    The number of entities to create.

      @return Void.
     **/
    public function initEntities(count:Int = 3) : Void
    {
        this.entities = new Map<Int, Map<String, Component>>();

        for(i in 0...count)
        {
            var rx = hxd.Rand.create().random(600);
            var ry = hxd.Rand.create().random(600);
            
            // TODO Fix for no array access error.
            // Will change when I understand more about it.
            var mm = new Map<String, Component>();
            mm["Transform"] = new TransformComponent(rx,ry,10.0,10.0);
            this.entities[i] = mm;
        }
    }
}
