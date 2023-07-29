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
      Get all the layers from the TMX File.

      @return Xml
     **/
    public function getLayers()
    {
        // TODO
        throw new haxe.Exception("TMXParser::getLayers() not defined yet!");
    }

    /**
      Get all the objects from the TMX File.

      @return Xml
     **/
    public function getObjects()
    {
        // TODO
        throw new haxe.Exception("TMXParser::getObjects() not defined yet!");
    }

    /**
      Get all the entities from the TMX File.

      @return Xml
     **/
    public function getEntities()
    {
        // TODO
        throw new haxe.Exception("TMXParser::getEntities() not defined yet!");
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
    public function getAllParseData() : Xml
    {
        return this.xml;
    }
}
