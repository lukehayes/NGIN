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
}
