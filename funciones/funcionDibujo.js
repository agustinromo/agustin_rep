var d = document.getElementById("dibujo"); //guardar el id de html en la var d
var lienzo = d.getContext("2d"); //var lienzo, se requiere un dibujo en 2d
////////////////////////////////
drawLine("red", 10, 300, 220, 10); //mandar a llamar la funcion con un color y coordenadas
drawLine("pink", 300, 10, 10, 220);//mandar a llamar la misma funcion con otro color y otras coordenadas
////////////////////////////////
function drawLine(color, xinicial, yinicial, xfinal, yfinal)// Declaracion de la funcion
{
 ////comandos de js para realizar dibujos
 lienzo.beginPath();//iniciar trazos
 lienzo.strokeStyle = color;
 lienzo.moveTo(xinicial, yinicial);//coordenadas iniciales
 lienzo.lineTo(xfinal, yfinal); //coordenadas finales
 lienzo.stroke();//mostrar trazos
 lienzo.closePath();//terminar trazos
}
