var texto = document.getElementById("lineas");
var boton = document.getElementById("botoncito");
boton.addEventListener("click", dibujoPorClick);

var d = document.getElementById("dibujo"); //guardar el id de html en la var d
var lienzo = d.getContext("2d"); //var lienzo, se requiere un dibujo en 2d
var lines = 30;
var l = 0;
var rosita = "FAA";
for(l=0; l< lines; l++)
//while(l < lines)
{
  yi = 10 * l;
  xf = 10 * (l + 1);
  drawLine(rosita, 0, yi, xf, 300);
//drawLine("pink", 300, 10, 10, 220);
  console.log("line " + 1);
  //l++; //l = l + 1;
}
drawLine(rosita, 1, 1, 1, 299);
drawLine(rosita, 1, 299, 299, 300);

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

function dibujoPorClick()
{
  alert("Sobres");
}
