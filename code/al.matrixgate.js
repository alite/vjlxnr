inlets = 2;
setinletassist(0, "bang outputs matrix on corresponding outlet");
outlets = 2;
setoutletassist(-1, "outputs matrix on choosen outlet");
var outputmatrix = new JitterMatrix;

function bang() {
	post("bang: ", inlet, "\n");
	outlet(inlet, "jit_matrix", outputmatrix);
}

function jit_matrix(m) {
	post("Matrix\n");
	outputmatrix = m;
}
