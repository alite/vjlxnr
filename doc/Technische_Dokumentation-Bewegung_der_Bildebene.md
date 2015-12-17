Bewegung der Bildebenen
-----------------------

### Kameraposition

Die Position der Kamera ist auf den Punkt `[0, 0, 2]` festgelegt, der
Kamerawinkel liegt bei 45°, *near\_clip* liegt bei `0.1`, d.h. die
Bildebene kann auf der *z*-Achse zwischen dem Punkt 0 und dem Punkt 1,9
bewegt werden.

### Ausgangsposition der Bildebene

Die `[jit.gl.videoplane]` hat im Ausgangszustand ihren Ursprungspunkt
bei `[0, 0, 0]`, die Skalierung sollte so gewählt werden, dass das
projizierte Bild nicht verzerrt dargestellt wird, also dem
Seitenverhältnis das Anzeigefensters entspricht: `[x/y, 1, 1]`. Dies
muss den `[jit.gl.videoplanes]` über den Parameter `dim x y z`
mitgeteilt werden, wobei `y = 1.0`, `z = 1.0` und `x` variabel sein
sollte.

### Berechnung der nächsten Position

Die Bewegung auf der *z*-Achse (zwischen Ursprung und Kamera) spiegelt
direkt den abgegriffenen Audiopegel wider, der über den
*scale*-Parameter skaliert werden kann. Dies geschieht durch eine
Wurzelfunktion, wobei über den Parameter *scale* der Wurzelexponent
eingestellt wird. Der Parameter *sense* skaliert als Faktor den Einfluss
auf die Auslenkung in *z*-Richtung. Aus der Position auf der *z*~~Achse
ergibt sich mittels des Strahlensatzes jew. ein Betrag, um den die
Bildebene in *x*~~ und *y*-Richtung verschoben werden kann. Diese
Beträge werden per Zufallszahl, skaliert durch den *rand*-Parameter
erzeugt\[2\].

Die Skizze stellt links die Kameraposition dar (Scheitelpunkt des
Winkels), rechts die Videoplane auf ihrer Ursprungsposition (`z = 0`)
und in der Mitte eine ausgelenkte Videoplane (`z = d`). Bei der
augelenkten Ebene liegt der Streckenabschnitt ***f*** im sichtbaren
Bereich des Kamerawinkels; abgezogen von der Bildhöhe ***h*** ergibt
***g*** den Betrag, um den die Ebene potentiell nach oben oder unten
bzw. nach links oder rechts bewegt werden kann.

{{thumbnail(Bewegung\_Videoplane.png, size=800, title="Bewegung der
Bildebene (Strahlensatz)")}}

Die maximalen Auslenkungen berechnen sich nach folgender Formel
(Strahlensatz):

![](formel_auslenkung.png)

Dies muss jeweils unter Berücksichtigung der *x*- und *y*-Skalierung
(als *h*-Werte) berechnet werden.

Die so ermittelten *x*~~, *y*~~ und *z*-Koordinaten dienen als neue
Zielkoordinaten, auf die sich die Bildebene zubewegt. Die
Geschwindigkeit dieser Bewegung wird durch den Parameter *smooth*
gesteuert. Dabei wir ein `[line]`-Objekt benutzt, dass einen
zeitgesteuerten Übergang zu den neu ermittelten Zielkoordinaten
ermöglicht.

### Bewegung der Bildebenen

Ankerpunkt ist die Ebenenmitte. Die aktuelle Position *P* hat die
Koordinaten *<span class="z y, x,"></span>*. Durch Erhalten eines neuen
Pegels (taktsynchron oder durch threshold getriggert) wird eine neue
Position *P'* ermittelt, auf die sich die Ebene in der Zeit *t* auf
direktem Wege bewegt. Die Bewegung geschieht schrittweise in Abschnitten
von *∆t* (voreingestellt auf 30 ms). Zur Berechnung einer Position sind
folgende Parameter relevant:

-   *t* Eingestellte Abtastrate; relativ (Notenwerte), in Abhängigkeit
    der Transport-Clock; beeinflusst vom Parameter *smooth* (dies wird
    hier nicht weiter berücksichtigt)
-   *d* Zufällige Dämpfung; ein Wert von '0' bedeutet, dass die
    Auslenkung genau dem empfangenen Pegel entspricht, '1' bedeutet
    Dämpfung um einen zufälligen Faktor, der bis zum maximalen
    Pegel-Betrag dämpfen kann.
-   *r* Einen Zufallswert (wird skaliert durch *d*)
-   *s* Skalierungsfaktor; entsprechend der eingetsellten Bildauflösung;
    ist eigentlich nur für den *x*-Wert relevant, *y* und z sollten
    immer 1.0 betragen.
-   *e*, *z* Eingestellte *sense* und *zoom*-Parameter

