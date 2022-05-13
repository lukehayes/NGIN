package ngin;

class Main extends hxd.App {

    var bmp : h2d.Bitmap;

    override function init() {
        var tile = h2d.Tile.fromColor(0x0000FF, 100, 100);
        bmp = new h2d.Bitmap(tile, s2d);
        bmp.x = s2d.width * 0.5;
        bmp.y = s2d.height * 0.5;
    }
    override function update(dt:Float) {
        bmp.rotation += 0.1;
    }
    static function main() {
        //new Main();

        var tm = new ngin.tilemap.TMXParser("res/Tilemap.tmx");
    }
}
