package linalg;

import linalg.Matrix2x2.Mat2x2;
import haxe.ds.Vector;

typedef Vec3 = Vector3;

abstract Vector3(Vector<Float>) from Vector<Float> to Vector<Float> {
    public function new(?x:Float, ?y:Float, ?z:Float) {
        this = new Vector<Float>(3, 0);
        this[0] = x;
        this[1] = y;
        this[2] = z;
    }

    @:op(A.b) function getVal(n:String) {
        if (n == "x")
            return this[0];
        else if (n == "y")
            return this[1];
        else if (n == "z")
            return this[2];
        throw "Invalid field";
    }

    @:op(A.b) function setVal(n:String, v:Float) {
        if (n == "x")
            return this[0] = v;
        else if (n == "y")
            return this[1] = v;
        else if (n == "z")
            return this[2] = v;
        throw "Invalid field";
    }

    public function clone() {
        return new Vector3(this[0], this[1], this[2]);
    }
}