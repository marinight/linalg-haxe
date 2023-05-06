package linalg;

import linalg.Matrix2x2.Mat2x2;
import haxe.ds.Vector;

typedef Vec2 = Vector2;

abstract Vector2(Vector<Float>) from Vector<Float> to Vector<Float> {
    public function new(?x:Float, ?y:Float) {
        this = new Vector<Float>(2, 0);
        this[0] = x;
        this[1] = y;
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
    static inline function add(l:Vector2, r:Vector2) {
        return new Vector2(l.x+r.x, l.y+r.y);
    }

    @:op(A += B)
    inline function addEq(r:Vector2) {
        return this = this + r;
    }

    @:op(A - B)
    static inline function sub(l:Vector2, r:Vector2) {
        return new Vector2(l.x-r.x, l.y-r.y);
    }

    @:op(A -= B)
    inline function subEq(r:Vector2) {
        return this = sub(this, r);
    }

    @:commutative
    @:op(A * B) static inline function scale(l:Vector2, r:Float) {
        return new Vector2(l.x*r, l.y*r);
    }

    @:op(A *= B) inline function scaleEq(r:Float) {
        return this = scale(this, r);
    }

    @:commutative
    @:op(A * B) static inline function mulMat2x2(l:Vector2, r:Mat2x2):Vector2 {
        return l.x * new Vec2(r.a1, r.a2) + l.y * new Vec2(r.b1, r.b2);
    }

    @:op(A *= B) inline function mulMat2x2Eq(r:Mat2x2)
        return this = mulMat2x2(this, r);

    @:op(-A) static inline function neg(l:Vector2) {
        return -1*l;
    }

    @:commutative
    @:op(A / B) static inline function divscale(l:Vector2, r:Float) {
        return new Vector2(l.x/r, l.y/r);
    }

    @:op(A /= B) inline function divscaleEq(r:Float) {
        return this = divscale(this, r);
    }

    @:op(A * B) static inline function mulVec2(l:Vector2, r:Vector2) {
        return new Vector2(l.x*r.x, l.y*r.y);
    }

    @:op(A *= B) inline function mulEqVec2(r:Vector2) {
        return this = mulVec2(this, r);
    }

    public static inline function dot(v1:Vector2, v2:Vector2) {
        return v1.x*v2.x + v1.y * v2.y;
    }

    public static inline function cross(v1:Vector2, v2:Vector2) {
        return v1.x*v2.y - v1.y*v2.x;
    }

    public static inline function normalize(v:Vector2)
        return v / v.length();

    public inline function length()
        return Math.sqrt(lengthSquared());

    public inline function lengthSquared() {
        return this[0]*this[0] + this[1]*this[1];
    }

    public function clone() {
        return new Vector2(this[0], this[1]);
    }
}