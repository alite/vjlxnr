post("blubber.js");
inlets = 1;
outlets = 1;

this.autowatch = 1;

var enable = 0;
var render_context = jsarguments[1];

var texture = new JitterObject("jit.gl.texture", render_context);
//texture.dim = [/*1920, 1080*/800, 600];
// texture.colormode = "uyvy";
texture.erase_color = [];
var sketch = new JitterObject("jit.gl.sketch", render_context);
sketch.capture = texture.name;

function msg_int(i) {
    enable = i;
}

function msg_float(v) {
    if (typeof draw[enable] === "function") {
        // post("draw[", enable, "]: \n");
        draw[enable](v);
    }
}

function bang() {
    if (enable === 0) { return; };
    outlet(0, "jit_gl_texture", texture.name);
}

var draw = [];
draw.local = 1;

draw[0] = undefined/*function() { return; }*/;

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

draw[2] = function(v) {
    var col = 1;
    var count = v * 100;
    sketch.reset();
    // with (sketch) {
    //     moveto(0, 0, 0);
    //     glcolor(1, 1, 1);
    //     circle(1.);
    //     moveto(0, 0, .1);
    //     glcolor(0, 0, 0);
    //     circle(.5);
    // }
    for (var i=count; i>0; --i) {
        var x = snrandval(v)/100;
        var y = snrandval(v)/100;
        var r = v*count/i;
        with (sketch) {
            // reset();
            moveto(x, y, i/10);
            glcolor(col, col, col);
            circle(r);
        }
        col = (col === 1) ? 0 : 1;
        post("color", col, " radius ", r, "\n");
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