package ngin;

/**
  Base class for the NGIN framework
  **/
class NGGame extends hxd.App
{
    /**
      Width of the main game window.
      **/
    var width  : Int;

    /**
      Height of the main game window.
      **/
    var height : Int;

    /**
      Title of the main game window.
      **/
    var title  : String;

    public function new(width:Int, height:Int, title:String)
    {
        super();
        this.width  = width;
        this.height = height;
        this.title  = title;
    }
}
