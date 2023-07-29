package ngin;


class Main extends hxd.App {

    var c : Float = 0.0;

    function new() 
    {
        super();
    }

    override function init() 
    {
    }

    override function update(dt:Float) 
    {
        //trace(hxd.Timer.fps());
        this.c += 0.1;
    }

    static function main() {

        new Main();

        // Preload all assets (like images);
        hxd.Res.initEmbed();
    }
}
