import processing.serial.*;
float var1;
float var2;
float var3;
float var4;
float var5;
float var6;
float var7;
float var8;
int f= 250;
PFont fontA;

 Serial myPort;

void setup() 
{
  size (800,600);
  background (#0525ED);
  rectMode(CENTER);
  fontA = createFont("Times New Romans Bold", 40);
  
  println(Serial.list());
 // I know that the first port in the serial list on my mac
 // is always my  Arduino, so I open Serial.list()[0].
 // Open whatever port is the one you're using.
 myPort = new Serial(this, Serial.list()[1], 9600);
 // don't generate a serialEvent() unless you get a newline character:
 myPort.bufferUntil('\n');
 
}
void draw()
{
  
  
//the following code is for the keyboard and staff lines
 fill (#E5A720);
 ellipse (400,80,450,75);  
 textFont(fontA);
 fill(0, 102, 153);
 text("Virtual Keyboard", 260, 95);
 Rectangle1((width/2)-222,230,35,180,f);
 Rectangle1((width/2)+37,230,35,180,f);
 Rectangle2((width/2)-185,230,35,180,f);
 Rectangle2((width/2)+74,230,35,180,f);
 Rectangle3((width/2)-148,230,35,180,f);
 Rectangle3((width/2)+111,230,35,180,f);
 Rectangle4((width/2)-111,230,35,180,f);
 Rectangle4((width/2)+148,230,35,180,f);
 Rectangle5((width/2)-74,230,35,180,f);
 Rectangle5((width/2)+185,230,35,180,f);
 Rectangle6((width/2)-37,230,35,180,f);
 Rectangle6((width/2)+222,230,35,180,f);
 Rectangle7((width/2)+0,230,35,180,f);
 Rectangle7((width/2)+259,230,35,180,f);
 stroke (0);
 line (100,400,700,400); 
 line (100,420,700,420);
 line (100,440,700,440);
 line (100,460,700,460);
 line (100,480,700,480);
 fill (0);
 RectangleA((width/2)+55,200,20,120);
 RectangleA((width/2)-203,200,20,120);
 RectangleB((width/2)+92,200,20,120);
 RectangleB((width/2)-166,200,20,120);
 RectangleC((width/2)+166,200,20,120);
 RectangleC((width/2)-92,200,20,120);
 RectangleD((width/2)+203,200,20,120);
 RectangleD((width/2)-55,200,20,120); 
 RectangleE((width/2)+240,200,20,120);
 RectangleE((width/2)-18,200,20,120);
 //The following code is for the notes
 fill (#042702);
 stroke (0);
 line (120,500,150,500);
 ellipse (135,500,20,15);
 ellipse (175,490,20,15);
 ellipse (215,480,20,15);
 ellipse (255,470,20,15);
 ellipse (295,460,20,15);
 ellipse (335,450,20,15);
 ellipse (375,440,20,15);
 ellipse (415,430,20,15);
 ellipse (455,420,20,15);
 ellipse (495,410,20,15);
 ellipse (535,400,20,15);
 ellipse (575,390,20,15);
 line (600,380,630,380);
 ellipse (615,380,20,15);
 line (640,380,670,380);
 ellipse (655,370,20,15);
}

void serialEvent(Serial myPort) { 
 // get the ASCII string:
 String inString = myPort.readStringUntil('\n');
 
 if (inString != null) {
 // trim off any whitespace:
 inString = trim(inString);
 // split the string on the commas and convert the 
 // resulting substrings into an integer array:
 float[] vars = float(split(inString, ","));
 // if the array has at least three elements, you know
 // you got the whole thing.  Put the numbers in the
 // color variables:
 if (vars.length >=7) {
 // map them to the range 0-255:
var1 = vars[0];
var2 = vars[1];
var3 = vars[2];
var4 = vars[3];
var5 = vars[4];
var6 = vars[5];
var7 = vars[6];
var8 = vars[7];
 }
 }
 }
