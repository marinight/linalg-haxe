package linalg;

import linalg.Vector2.Vec2;
import haxe.ds.Vector;

typedef Mat2x2 = Matrix2x2;

abstract Matrix2x2(Vector<Float>) from Vector<Float> to Vector<Float> {
    public inline function new(?a1:Float, ?a2:Float, ?b1:Float, ?b2:Float) {
        this = new Vector<Float>(4, 0);
        /*
        idx 0 [a1  b1] idx 2
        idx 1 [a2  b2] idx 3
        */
        this[0] = a1;
        this[1] = a2;
        this[2] = b1;
        this[3] = b2;
    }

    @:op(A.b) function getVal(n:String) {
        if (n == "a1")
            return this[0];
        else if (n == "a2")
            return this[1];
        else if (n == "b1")
            return this[2];
        else if (n == "b2")
            return this[3];
        throw "Invalid field";
    }

    @:op(A.b) function setVal(n:String, v:Float) {
        if (n == "a1")
            return this[0] = v;
        else if (n == "a2")
            return this[1] = v;
        else if (n == "b1")
            return this[2] = v;
        else if (n == "b2")
            return this[3] = v;
        throw "Invalid field";
    }

    public static inline function determinant(m:Matrix2x2) {
        return m.a1*m.b2 - m.a2*m.b1;
    }

    public static inline function inverse(m:Matrix2x2) {
        var det = determinant(m);
        return new Matrix2x2(m.b2/det, -m.a2/det, -m.b1/det, m.a1/det);
    }

    @:op(A * B) static function mulMat2x2(l:Matrix2x2, r:Matrix2x2) {
        return new Matrix2x2(
            r.a1 * l.a1 + r.a2 * l.b1,
            r.a1 * l.a2 + r.a2 * l.b2,
            r.b1 * l.a1 + r.b2 * l.b1,
            r.b1 * l.a2 + r.b2 * l.b2
        );
    }

    @:op(A *= B) inline function mulEqMat2x2(r:Matrix2x2) {
        this = mulMat2x2(this, r);
    }

    @:commutative
    @:op(A * B) static function mul(l:Matrix2x2, r:Float) {
        return new Matrix2x2(l.a1*r, l.a2*r, l.b1*r, l.b2*r);
    }

    @:op(-A) static function neg(l:Matrix2x2) {
        return mul(l, -1);
    }

    @:op(A *= B) inline function mulEq(r:Float) {
        return this = mul(this, r);
    }

    @:op(A + B) static function addMat2x2(l:Matrix2x2, r:Matrix2x2) {
        return new Matrix2x2(l.a1+r.a1, l.a2+r.a2, l.b1+r.b1, l.b2+r.b2);
    }

    @:op(A += B) inline function addEqMat2x2(r:Matrix2x2) {
        return this = addMat2x2(this, r);
    }

    @:op(A - B) static function subMat2x2(l:Matrix2x2, r:Matrix2x2) {
        return new Matrix2x2(l.a1-r.a1, l.a2-r.a2, l.b1-r.b1, l.b2-r.b2);
    }

    @:op(A -= B) inline function subEqMat2x2(r:Matrix2x2) {
        return this = subMat2x2(this, r);
    }

    @:op(A / B) static function divMat2x2(l:Matrix2x2, r:Matrix2x2){
        return l * inverse(r);
    }

    @:op(A /= B) inline function divEqMat2x2(r:Matrix2x2){
        return this = divMat2x2(this, r);
    }

    @:commutative
    @:op(A / B) static function div(l:Matrix2x2, r:Float) {
        return new Matrix2x2(l.a1/r, l.a2/r, l.b1/r, l.b2/r);
    }

    @:op(A /= B) inline function divEq(r:Float) {
        return this = div(this, r);
    }
}