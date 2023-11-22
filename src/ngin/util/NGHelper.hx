package ngin.util;

/**
  Static helper functions are contained in this file.
**/
class NGHelper
{
    /**
      Get input from the W,A,S,D keys and apply this to a
      targets x and y position. 

      Should be used purely for testing.

      @param target The target to apply movement to.
      @param dt     Delta time.
     **/
    static public function getKeyInput(target:h2d.Object, dt:Float)
    {
        final SPEED = 100;

        if(hxd.Key.isDown(hxd.Key.W))
        {
            target.y -= SPEED * dt;
        }

        if(hxd.Key.isDown(hxd.Key.S))
        {
            target.y += SPEED * dt;
        }

        if(hxd.Key.isDown(hxd.Key.A))
        {
            target.x -= SPEED * dt;
        }

        if(hxd.Key.isDown(hxd.Key.D))
        {
            target.x += SPEED * dt;
        }
    }
}
