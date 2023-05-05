package linalg;

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
}