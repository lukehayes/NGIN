package game;

import ngin.gfx.NGSprite;
import ngin.util.NGPlayer;

/**
  Main entry point for the game.
**/
class Main extends hxd.App {

    var sprite : NGSprite;

    var player : NGPlayer;

    function new()
    {
        super();
    }

    override function init()
    {
        var overlay = new ngin.util.NGDebugOverlay(s2d);

        this.sprite = new NGSprite(s2d, 100,100, 0xFF00FF, "cats/toby");

        this.player = new NGPlayer(s2d,100,100, "cats/smile");
    }

    override function render(e: h3d.Engine)
    {
        // This line is exactly the same as in hxd.App. Calling it here
        // means it acts the same as a vanilla app - making it a 
        // good place to override render() but add custom functionality.
        s2d.render(e);

        //s2d.renderer.begin();
        //s2d.renderer.end();
    }

    override function update(dt:Float)
    {
        this.player.update(dt);
    }


    static function main() {

        new Main();

        // Preload all assets (like images);
        hxd.Res.initEmbed();
    }
}
