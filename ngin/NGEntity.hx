package ngin;

class NGEntity {

	// Graphical object
	public var sprite : YourSpriteClass;

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
		//...
	}

	public function update(dt:Float) {
		//...
	}
}
