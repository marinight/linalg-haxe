package linalg;

import linalg.Vector2.Vec2;
import linalg.Matrix2x2.Mat2x2;

class LinAlgUtils {
    public static final ZERO_MATRIX_2X2:Mat2x2 = new Mat2x2();   
    public static final IDENTITY_MATRIX_2X2:Mat2x2 = new Mat2x2(1, 0, 0, 1);


    public static final ZERO_VECTOR:Vec2 = new Vec2();
    public static final UNIT_VECTOR:Vec2 = new Vec2(1, 1);

    public static final UP_VECTOR:Vec2 = new Vec2(0, 1);
    public static final DOWN_VECTOR:Vec2 = new Vec2(0, -1);
    public static final LEFT_VECTOR:Vec2 = new Vec2(-1, 0);
    public static final RIGHT_VECTOR:Vec2 = new Vec2(1, 0);

    public static function rotationMatrix2x2(theta:Float) {
        return new Mat2x2(Math.cos(theta), Math.sin(theta), -Math.sin(theta), Math.cos(theta));
    }
}