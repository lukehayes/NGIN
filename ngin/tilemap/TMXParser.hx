package ngin.tilemap;

// TODO Implement most of the class.

/**
  A simple .tmx (Tiled Map File) parser using Haxes' built in Xml API.
**/
class TMXParser
{
    var tmxFile : String;
    var xml     : Xml;

    public function new(tmxFile:String)
    {
        this.tmxFile = sys.io.File.getContent(tmxFile);
        this.xml = Xml.parse(this.tmxFile);
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
