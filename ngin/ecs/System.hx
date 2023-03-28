package ecs;

import ecs.component.Component;
import ecs.component.PositionComponent;
import ecs.component.DrawComponent;

/**
  Base class for all systems.
 **/
abstract class System
{
    public var entities : Map<Int, Map<String, Component>>;

    abstract public function update(dt:Float) : Void;

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
            var m = ["Pos"  => new PositionComponent(rx,ry),
                    "Draw" => new DrawComponent(2,2, 0x00FFFF)];


            this.entities[i] = m;
        }
    }
}
