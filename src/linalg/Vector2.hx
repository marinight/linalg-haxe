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

    @:op(A + B)
    static function add(l:Vector2, r:Vector2) {
        return new Vector2(l.x+r.x, l.y+r.y);
    }

    @:op(A += B)
    inline function addEq(r:Vector2) {
        return this = this + r;
    }

    @:op(A - B)
    static function sub(l:Vector2, r:Vector2) {
        return new Vector2(l.x-r.x, l.y-r.y);
    }

    @:op(A -= B)
    inline function subEq(r:Vector2) {
        return this = sub(this, r);
    }

    @:commutative
    @:op(A * B) static function scale(l:Vector2, r:Float) {
        return new Vector2(l.x*r, l.y*r);
    }

    @:commutative
    @:op(A *= B) inline function scaleEq(r:Float) {
        return this = scale(this, r);
    }

    @:op(-A) static function neg(l:Vector2) {
        return -1*l;
    }

    @:commutative
    @:op(A / B) static function divscale(l:Vector2, r:Float) {
        return new Vector2(l.x/r, l.y/r);
    }

    @:commutative
    @:op(A /= B) inline function divscaleEq(r:Float) {
        return this = divscale(this, r);
    }

    function toString() {
        return '[${this[0]}]\n[${this[1]}]';
    }
}