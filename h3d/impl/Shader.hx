package h3d.impl;

#if flash
typedef Shader = hxsl.Shader;
#elseif js

enum ShaderType {
	Float;
	Vec2;
	Vec3;
	Vec4;
	Mat2;
	Mat3;
	Mat4;
	Tex2d;
	TexCube;
	Struct( field : String, t : ShaderType );
	Index( index : Int, t : ShaderType );
}

typedef Uniform = { name : String, loc : js.html.webgl.UniformLocation, type : ShaderType, index : Int }

class ShaderInstance {

	public var program : js.html.webgl.Program;
	public var attribs : Array<{ name : String, type : ShaderType, etype : Int, offset : Int, index : Int, size : Int }>;
	public var uniforms : Array<Uniform>;
	public var stride : Int;
	public function new() {
	}

}

class Shader implements Dynamic {
	
	var instance : ShaderInstance;
	
	public function new() {
	}
	
	function getConstants( vertex : Bool ) {
		return "";
	}

}

#else

class Shader implements Dynamic {
	public function new() {
	}
}

#end