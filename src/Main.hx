import linalg.Vector2;

class Main {
	static function main() {
		var vec:Vector2 = new Vector2(3, 3);
		vec += new Vector2(1, 1);
		vec -= new Vector2(2, 2);
		vec *= 2;
		vec /= 2;
		trace(vec);
		vec = -vec;
		trace(vec);
	}
}
