#include "colors.inc"
#include "shapes.inc"
#include "textures.inc"
#include "stones.inc"
#include "metals.inc"
#include "woods.inc"
#include "glass.inc"
#include "skies.inc"

camera {
  location <0, 20, -2>
	  look_at < 0, 0 ,0>
  angle  60
}

light_source { <0,30,-10> color White }

background {  rgb < 0. 0.39, 0> }

#declare body = 
union{
union{
  difference{ //どうdou
    object{
	sphere { <-0.5,1,0>, 1}
	texture{ T_Wood7}
	scale < 2.5,2.5,2>
	pigment { color White }
   }

  object{
    sphere { < -0.5, 3.8, 0.4>,0.6}
     texture { T_Wood7}
     pigment { color Black}
     scale < 1,0,2.5>// migi
  }
  object{
     sphere { < -0.5, 3.8, -0.5>,1}
     texture { T_Wood7}
     pigment { color Black}
     scale < 1,1,1>//hidariue
  }
  object{
    sphere { < -2, 3.8, -0.8>,1}
     texture { T_Wood7}
     pigment { color Black}
     scale < 1,1,1> //hidarishite
  }
  object{
     sphere { < -1.7, 5, 1>,0.9}
     texture { T_Wood7}
     pigment { color Black}
     scale < 1,1,1>//migishita
  }
   
}

#declare THETA = 2 * 3.14 * clock/18;
#declare PHI = 60*sin(THETA);

#declare PHI2 = 80 *sin(THETA);
 
#declare LEG_RIGHT = 
union{
  object {//right ashi
	cone { <-2.5, 2 ,0 >,0.6 
	                <-4.5,2, 0>, 0.8}
	texture { T_Wood7}
	rotate < 0, 20, 0>
	pigment { color White }
  }

  object {
	cone { <-4.5, 2 ,0 >,0.75
	                <-5, 2, 0>, 0.8}
	texture { T_Wood7}
	rotate < 0, 20, 0>
	pigment { color Pink }
  }
}

#declare LEG_LEFT = 
union{
  object {// left ashi
	cone{ <-2.5,2 ,0 >,0.6
	          <-4.5, 2, 0>, 0.8}
	texture { T_Wood7}
	rotate < 0, -20, 0>
	pigment { color White }

  }

  object {
	cone{ <-4.5 ,2 ,0 >,0.75
	          <-5, 2, 0>, 0.8}
	texture { T_Wood7}
	rotate < 0, -20, 0>
	pigment { color Pink }
  }
}

  object{ //動き動きugoki
    LEG_RIGHT
    rotate < 0, PHI, 0>
  }
  
  object{
    LEG_LEFT
    rotate <0, -PHI, 0>
  }
  
  #declare  hand_right =
  union{
  object {// right hand
  	cone { <1, 2.4 ,0.65 >,1
	            <2.7, 2.4, 0.65>, 0.5}
      texture { T_Wood7}
	rotate < 0, -50, 0>
	pigment { color White }

  }

  object {
	cone { <2.7, 2.4 ,0.65 >, 0.45
	            <3, 2.4, 0.65>, 0.5}
	texture { T_Wood7}
	rotate < 0, -50, 0>
	pigment { color Pink }
  }
  }
  #declare hand_left = 
  union{
  object { // みleft hand
	cone { <1, 2.4,-0.5 >, 1
	            <2.7, 2, -0.5>, 0.5}
	texture { T_Wood7}
	rotate < 0, 50, 0>
	pigment { color White }
  }

  object {
	cone { <2.7, 2 ,-0.5 >, 0.45
	            <3, 2, -0.5>, 0.5}
	texture { T_Wood7}
	rotate < 0, 50, 0>
	pigment { color Pink}
  }
}

object{
	hand_right
	rotate < 0,PHI2 ,0>
}

object {
	hand_left
	rotate <0, -PHI2, 0>
}

difference{
  object { //atama ue
	sphere { < 0.5, 2.5, 0> ,0.79}
	texture { T_Wood7}
	pigment  { color White }
	scale < 2.3,1.5,1.5>
	rotate < 0, 0, -20>
  } 
  object{
	sphere { < 3.5,4,0.5> , 0.25 }
	texture { T_Wood7}
	pigment { color Black }
  }

  object{
  	sphere { < 3.5,4,-0.5> , 0.25 }
	texture { T_Wood7}
	pigment { color Black }
  }  
}
union{
difference{
  object{ //mimi left
	 sphere { <3.5, 3, -0.5>, 0.4}
	 texture { T_Wood7}
	 pigment { color White }
	 scale < 1,1,2>
  }  
  object{
	 sphere { <3.5, 3.5, -0.7>, 0.25}
	 texture { T_Wood7}
	 pigment { color Pink }
	 scale < 1,1,2>
  }
}
}
difference{
  object{ //mimi right
	 sphere { <3.5, 3,0.5>, 0.4}
	 texture { T_Wood7}
	 pigment { color White }
	 scale < 1,1,2>
  }
  object{
	 sphere { <3.5, 3.5 ,0.7>, 0.25}
	 texture { T_Wood7}
	 pigment { color Pink}
	 scale < 1,1,2>
  }
}
  object{ //thuno 
	cone {<3.5, 3, 0.2>, 0.3
	          <4.5, 3, 0.6 >, 0.1 }
	 texture { T_Wood7}
	 pigment { color Yellow }
  }
  object{ //thuno
	cone {<3.5, 3, -0.2>, 0.3
	          <4.5, 3, -0.6 >, 0.1 }
	 texture { T_Wood7}
	 pigment { color Yellow }
  }
union{
difference{
  union{ //atama shita		
    difference{
       object {  // hanasaki 
	   sphere { < 1.2, 0, 0> ,0.8}
	   texture { T_Wood7}
	   pigment  { color Pink }
	  scale < 2.8,1.8,1.8>
       }
  
	  plane { x, 5.3 }
     }

  object { // hontai
	sphere { < 1.2, 0, 0> ,0.79}
	texture { T_Wood7}
	pigment  { color White }
	scale < 2.8,1.8,1.8>
  }
  rotate < 0, 0,75>
  translate < 0.7,0, 0>
}
object { //ana
	sphere { < 2.1, 5.4, 0.4 > 0.25 }
	texture { T_Wood7}
	pigment { color White }
}
object {//ana
	sphere { < 2.1, 5.4, -0.4 > 0.25 }
	texture { T_Wood7}
	pigment { color White }
}
}
rotate < 0, 0, 10>
translate < 0.25, -0.1, 0>
}
}

object {
	cylinder {<-1.5,-1,0>,<-1.5,-2,0>, 4}
	texture { T_Wood35 }
}
	translate < -3,0,0>
} 

object { 
	body
translate <8*clock, 0, 0>
rotate < 0, 360*clock, 0>
}


