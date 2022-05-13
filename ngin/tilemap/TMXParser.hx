package ngin.tilemap;

// TODO Implement most of the class.

/**
  A simple .tmx (Tiled Map File) parser using Haxes' built in Xml API.
**/
class TMXParser
{
    var tmxFile : String;
    var xml     : Xml;
    var root    : Xml;

    public function new(tmxFile:String)
    {
        this.tmxFile = sys.io.File.getContent(tmxFile);
        this.xml     = Xml.parse(this.tmxFile);
        this.root    = this.xml.firstElement();
    }


    /**
      Get the root element of the TMX file.

      @return Xml
     **/
    public function getRoot() : Xml
    {
        return this.root;
    }


    /**
      Get all of the data that was parsed from the initial parse
      inside the constructor.

      @return Xml
     **/
    public function getAllParseData()
    {
        return this.xml;
    }
}
