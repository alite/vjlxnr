/*
	al.cutnscale.js

	Empfängt Nachrichten der Form 'dim x y'
	Berechnet ggf. einen Offset eines Quellmatrix-Ausschnitts,
	der in eine Zielmatrix mit gegebenen Dimensionen überführt 
	werden soll.

	Das rechte Inlet setzt die Dimension der Zielmatrix,
	das linke Inlet empfängt die Dimension der Quellmatrix
	und bewirkt eine Ausgabe des berechneten Vektors
	[x0, y0, x1, y1], wobei [x0, y0] als @srcdimstart
	und [x1, y1] als @srcdimend genutzt werden können
*/

inlets = 2;
outlets = 4;

// Default-Werte für Zieldimension
var xd = 320, yd = 240;
var rd = xd / yd;

function dim(x, y) {
	if (y < 1 || x < 1) {
		error("Koordinaten müssen positiv sein!\n");
		return;
	}
	if (inlet === 0) {
		var res = cutnscale(x, y);
		//post(":: ");
		for (var i=3; i>=0; --i) {
			outlet(i, res[i]);
			//post(res[i]);
		}
		//post("\n");
	}
	else if (inlet === 1) {
		// Zieldimension setzen
		xd = x;
		yd = y;
		rd = xd / yd;
		//post("Zieldimension gesetzt: [",xd,",",yd,"]; Ratio: ",rd,"\n");
	}
	return;
}

function cutnscale(x, y) {
	var res = [];
	var r = x / y;
	if (r === rd) {
		res = [0, 0, x, y];
	}
	else if (r > rd) {
		res[0] = (x*yd-y*xd)/(2*yd);
		res[1] = 0;
		res[2] = x-res[0];
		res[3] = y;
	}
	else {
		res[0] = 0;
		res[1] = (y*xd-x*yd)/(2*xd);
		res[2] = x;
		res[3] = y-res[1];
	}
	return res;
}
cutnscale.local = 1;
