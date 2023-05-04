package linalg;

import haxe.ds.Vector;

abstract Vector2(Vector<Float>) from Vector<Float> to Vector<Float> {
    public function new(x:Float, y:Float) {
        this = new Vector<Float>(2);
        this[0] = x;
        this[1] = y;
        // this.set()
    }

    @:op(A.b) function getVal(n:String) {
        if (n == "x")
            return this[0];
        else if (n == "y")
            return this[1];
        throw "Invalid field";
    }

    @:op(A.b) function setVal(n:String, v:Float) {
        if (n == "x")
            return this[0] = v;
        else if (n == "y")
            return this[1] = v;
        throw "Invalid field";
    }
}