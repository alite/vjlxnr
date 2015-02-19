post("blubber.js");
inlets = 1;
outlets = 2;

var render_context = jsarguments[1];
var mode = 0;

var texture = new JitterObject("jit.gl.texture", render_context);
texture.dim = [1920, 1080];
// texture.colormode = "uyvy";
texture.erase_color = [0., 0., 0., .0];
var sketch = new JitterObject("jit.gl.sketch", render_context);
sketch.capture = texture.name;
sketch.enable = 0;

function pattern(m) {
	mode = (m<0) ? 0 : (m>=draw.length) ? draw.length-1 : m;
	// post("Mode set to ", mode, "\n");
}

function enable(e) {
	sketch.enable = (e===0) ? 0 : 1;
	// post("Sketch ", (e===0) ? "disabled" : "enabled", "\n");
}

function dim(x, y) {
	texture.dim = [x, y];
	// post("Texture.dim set to ", x, ", ", y, "\n");
}

function dumpout() {
	post("Sketch.enable = ", sketch.enable, "\n");
	post("Pattern = ", mode, "\n");
	post("Texture.dim", texture.dim, "\n");
}

function msg_float(v) {
	// v = (v<0.)? 0. : (v>1.) ? 1. : v;
	draw[mode](v);
}

function bang() {
    if (enable === 0) { return; };
    outlet(0, "jit_gl_texture", texture.name);
}

var draw = [];
draw.local = 1;

// Disabled
draw[0] = undefined;

// Bunte Kreise
draw[1] = function(v) {
    // var value = v<0. ? 0. : v>1. ? 1. : v;
    var value = v;
    var x = snrandval(value);
    var y = snrandval(value);
    var z = snrandval(value);
    var r = nrandval(value);
    var g = nrandval(value);
    var b = nrandval(value);
    var d = nrandval(value);
    // post(v, " - ", x, y, z, " - ", r, g, b, " - ", d, "\n");
    with (sketch) {
        reset();
        moveto(x, y, z);
        glcolor(r, g, b);
        circle(d);
    }
    outlet(0, "jit_gl_texture", texture.name);
}

// Konzentrische Kreise
draw[2] = function(v) {
    var count = 100 * v;
    var len = v>0 ? 10/v : 10;
    with (sketch) {
        reset();
        glcolor(1, 1, 1);
        for (var i=1; i<=count; ++i) {
            moveto((Math.random()-.5)/len, (Math.random()-.5)/len);
            framecircle(i/count*v);
        }
        glend();
    }
    outlet(0, "jit_gl_texture", texture.name);
}

// Blitze
draw[3] = function(v) {
    var linecount = 1000 * v;
    var len = v > 0 ? 10/v : 10;
    with (sketch) {
        reset();
        glcolor(1, 1, 1);
        glbegin("line_loop");
        moveto((Math.random()-.5)/len, (Math.random()-.5)/len);
        for (var i=0; i<linecount; ++i) {
            line((Math.random()-.5)/len, (Math.random()-.5)/len);
        }
        glend();
    }
    outlet(0, "jit_gl_texture", texture.name);
}

nrandval.local = 1;
function snrandval(v) {
    // returns a random value r in the range
    // -1 <= -v <= r <= v <= 1
    // v = v<0. ? 0. : v>1. ? 1. : v;
    return (Math.random()-.5)*2*v;
}

snrandval.local = 1;
function nrandval(v) {
    // returns a random value r in the range
    // 0 <= r <= v <= 1
    // v = v<0. ? 0. : v>1. ? 1. : v;
    return Math.random()*v;
}