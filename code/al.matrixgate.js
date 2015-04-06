inlets = 1;
setinletassist(0, "(0,1) selects the outlet the matrix is send out; (matrix) outputs matrix out of selectedt outlet");
outlets = 2;
setoutletassist(-1, "outputs matrix on choosen outlet");
var selector = 0;

function msg_int(v) {
	selector = (v<0) ? 0 : (v>1) ? 1 : v;
	//post("Choose outlet: ", selector, "\n");
}

function jit_matrix(m) {
	//post("Out: ", m, "\n");
	outlet(selector, "jit_matrix", m);
}
