package ngin.core;

import ngin.gfx.NGSprite;
import ngin.core.NGBasic;

class NGEntity extends NGBasic {

    // Graphical object
    public var sprite : NGSprite;

    // Base coordinates
    // cx and cy are grid coordinates
    public var cx : Int;
    public var cy : Int;

    // xr and yr are ratios (position inside a grid cell)
    public var xr : Float;
    public var yr : Float;

    // Resulting coordinates
    public var xx : Float;
    public var yy : Float;

    // Movements
    public var dx : Float;
    public var dy : Float;

    public function new() {
        super();
        this.sprite = new NGSprite();
    }

    public function update(dt:Float) {
        //...
    }

    public function setCoordinates(x,y) {
        xx = x;
        yy = y;
        cx = Std.int(xx/16);
        cy = Std.int(yy/16);
        xr = (xx-cx*16) / 16;
        yr = (yy-cy*16) / 16;
    }

}
