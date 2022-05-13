package ngin;

import ngin.NGBasic;

/**
  Most classes in NGIN should extend this class.
  **/
class NGObject extends NGBasic
{
    /**
      The x position of the object **/
    public var x : Float = 0;

    /**
      The x position of the object **/
    public var y : Float = 0;

    public function new() 
    {
        super();
    }
}
