# linalg

A cozy linear algebra library for Haxe.

## Features

* Vectors and Matrices can be operated on using mathematical and comparison operators
* Vectors and Matrices are abstracts over the Vector data structure, giving more speed and less space
* Typedefs inspired by GLSL data structure naming to give you a familiar feel

## Notes

* Vector-vector multiplication using the `*` operator does component-wise multiplication `(v1.x * v2.x, v1.y * v2.y)`, cross and dot product
has to be done using the functions `cross` and `dot` respectively.

## Special Thanks

* 3blue1brown for his [Essence of Linear Algebra](https://www.youtube.com/watch?v=fNk_zzaMoSs&list=PLZHQObOWTQDPD3MizzM2xVFitgF8hE_ab) course