float sqSize = 550.0; //størrelsen på kassen
float sqChange = 0.997; //ændringen på kassens størrelse
float circleX = 225; //cirklens x startpunkt
float circleY = 50.0; //cirklens y startpunkt
float speedX = 5; //farten på cirklen af x-aksen
float speedY = 5; //farten på cirklen af y-aksen
float circleSize = 15; //cirklens størrelse
float circleRadius = circleSize / 2; //circlens radius

void setup () {
  
  size (600, 600);
  background (0);
  frameRate(60);
  
}
  void draw () {
    
    clear (); //fjerner sporet efter objekterne efter de flyttes eller ændres
    
float sqCordX = (width - sqSize) / 2; /*sætter kassens koordinat af x-aksen 
til at være kassens størrelse trukket fra bredden på programmet 
*/
float sqCordY = (height - sqSize) / 2; /*sætter kassens koordinat af y-aksen 
til at være kassens størrelse trukket fra højden på programmet 
*/

    sqSize *= sqChange; //sætter kassens størrelse til at blive større med ændringen på kassens størrelse
    stroke(255,255,255);
    fill(0);
    square (sqCordX, sqCordY, sqSize); 
    

circleX += speedX; /*sætter boldens koordinat på x-aksen til at være den selv 
lagt sammen med boldens hastighed på x-aksen
*/

if (circleX > sqCordX + sqSize - circleRadius || 
circleX < sqCordX + circleRadius) { //sætter colliders for bolden på x-aksen
  speedX *= -1; //sætter boldens hastighed til at være dens egen hastighed med omvendte fortegn
} 

circleY += speedY; /*sætter boldens koordinat på y-aksen til at være den selv 
lagt sammen med boldens hastighed på y-aksen
*/

if (circleY > sqCordY + sqSize - circleRadius || 
circleY < sqCordY + circleRadius) { //sætter colliders for bolden på y-aksen
  speedY *= -1; //sætter boldens hastighed til at være dens egen hastighed med omvendte fortegn
  
} 

   fill(255,255,255);
   circle (circleX, circleY, circleSize);
 
 }
 
 /*
 Bolden begynder at gå frem og tilbage efter et stykke tid. 
 Jeg kan ikke rigtig finde årsagen 
 */
