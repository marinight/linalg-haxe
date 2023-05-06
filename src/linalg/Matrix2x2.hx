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
}