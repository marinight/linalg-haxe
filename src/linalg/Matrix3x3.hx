package linalg;

import linalg.Vector2.Vec2;
import haxe.ds.Vector;

typedef Mat3x3 = Matrix3x3;

abstract Matrix3x3(Vector<Float>) from Vector<Float> to Vector<Float> {
    public inline function new(?a1:Float, ?a2:Float, ?a3:Float, ?b1:Float, ?b2:Float, ?b3:Float, ?c1:Float, ?c2:Float, ?c3:Float) {
        this = new Vector<Float>(9, 0);
        this[0] = a1;
        this[1] = a2;
        this[2] = a3;
        this[3] = b1;
        this[4] = b2;
        this[5] = b3;
        this[6] = c1;
        this[7] = c2;
        this[8] = c3;
    }

    @:op(A.b) function getVal(n:String) {
        switch (n) {
            case 'a1':
                return this[0];
            case 'a2':
                return this[1];
            case 'a3':
                return this[2];
            case 'b1':
                return this[3];
            case 'b2':
                return this[4];
            case 'b3':
                return this[5];
            case 'c1':
                return this[6];
            case 'c2':
                return this[7];
            case 'c3':
                return this[8];
        }

        throw "Invalid field";
    }

    @:op(A.b) function setVal(n:String, v:Float) {
        switch (n) {
            case 'a1':
                return this[0] = v;
            case 'a2':
                return this[1] = v;
            case 'a3':
                return this[2] = v;
            case 'b1':
                return this[3] = v;
            case 'b2':
                return this[4] = v;
            case 'b3':
                return this[5] = v;
            case 'c1':
                return this[6] = v;
            case 'c2':
                return this[7] = v;
            case 'c3':
                return this[8] = v;
        }
        throw "Invalid field";
    }

    public function clone() {
        return new Matrix3x3(this[0], this[1], this[2], this[3], this[4], this[5], this[6], this[7], this[8]);
    }
}