#include "colors.inc"
#include "shapes.inc"
#include "textures.inc"
#include "stones.inc"
#include "metals.inc"
#include "woods.inc"
#include "glass.inc"
#include "skies.inc"

camera {
  location <2, 13, -2>
	  look_at < 0, 0 ,1>
  angle  65
}

light_source { <0,30,-10> color White }

background {  rgb < 0. 0.39, 0> }
union{
  difference{
    object{
	sphere { <0,1,0>, 1}
	texture{ T_Wood7}
	scale < 2.2,2,1.8>
	pigment { color White }
   }

  object{
    sphere { < -0.5, 3.4, 0.4>,0.5}
     texture { T_Wood7}
     pigment { color Black}
     scale < 1,1,2.5>
  }
  object{
     sphere { < -0.3, 3.8, -0.5>,0.35}
     texture { T_Wood7}
     pigment { color Black}
     scale < 1,1,1>
  }
  object{
    sphere { < -0.4, 3.8, -0.8>,0.35}
     texture { T_Wood7}
     pigment { color Black}
     scale < 1,1,1>
  }
  object{
     sphere { < -0.1, 3.8, -0.8>,0.35}
     texture { T_Wood7}
     pigment { color Black}
     scale < 1,1,1>
  }
  object{
    sphere { < -0.8, 3, 0.2>,0.5}
     texture { T_Wood7}
     pigment { color Black}
     scale < 2,1,1>
  }
  object{
    sphere { < -0.5, 3.2, -2.2>,0.9}
     texture { T_Wood7}
     pigment { color Black}
     scale < 3,1,1>
  }
}


  object {
	cone { <0, 1 ,0 >,0.7 
	                <-2.7, 1, 0>, 1}
	texture { T_Wood7}
	rotate < 0, 30, 0>
	pigment { color White }
  }

  object {
	cone { <-2.7, 1 ,0 >,0.95
	                <-3, 1, 0>, 1}
	texture { T_Wood7}
	rotate < 0, 30, 0>
	pigment { color Pink }
  }


  object {
	cone{ <0, 1 ,0 >,0.7
	          <-2.7, 1, 0>, 1}
	texture { T_Wood7}
	rotate < 0, -30, 0>
	pigment { color White }

  }

  object {
	cone{ <-2.7 ,1 ,0 >,0.95
	          <-3, 1, 0>, 1}
	texture { T_Wood7}
	rotate < 0, -30, 0>
	pigment { color Pink }
  }


  object {
	cone { <0, 1 ,0 >, 0.7
	            <2.7, 1, 0>, 0.5}
	texture { T_Wood7}
	rotate < 0, -50, 0>
	pigment { color White }

  }

  object {
	cone { <2.7, 1 ,0 >, 0.45
	            <3, 1, 0>, 0.5}
	texture { T_Wood7}
	rotate < 0, -50, 0>
	pigment { color Pink }
  }

  object {
	cone { <0, 1 ,0 >, 0.7
	            <2.7, 1, 0>, 0.5}
	texture { T_Wood7}
	rotate < 0, 50, 0>
	pigment { color White }
  }

  object {
	cone { <2.7, 1 ,0 >, 0.45
	            <3, 1, 0>, 0.5}
	texture { T_Wood7}
	rotate < 0, 50, 0>
	pigment { color Pink}
  }

difference{
  object { 
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
difference{
  object{
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
difference{
  object{
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
  object{
	cone {<3.5, 3, 0.2>, 0.3
	          <4.5, 3, 0.6 >, 0.1 }
	 texture { T_Wood7}
	 pigment { color Yellow }
  }
  object{
	cone {<3.5, 3, -0.2>, 0.3
	          <4.5, 3, -0.6 >, 0.1 }
	 texture { T_Wood7}
	 pigment { color Yellow }
  }

difference{
  union{		
    difference{
       object { 
	   sphere { < 1.2, 0, 0> ,0.8}
	   texture { T_Wood7}
	   pigment  { color Pink }
	  scale < 2.8,1.8,1.8>
       }
  
	  plane { x, 5.3 }
     }

  object { 
	sphere { < 1.2, 0, 0> ,0.79}
	texture { T_Wood7}
	pigment  { color White }
	scale < 2.8,1.8,1.8>
  }
  rotate < 0, 0,75>
  translate < 0.7,0, 0>
}
object {
	sphere { < 2.1, 5.4, 0.4 > 0.25 }
	texture { T_Wood7}
	pigment { color White }
}
object {
	sphere { < 2.1, 5.4, -0.4 > 0.25 }
	texture { T_Wood7}
	pigment { color White }
}
}

#declare Kara = -1;
#declare Made = 2;

#declare T = Kara;
#while( T<Made)
#declare X = T;
#declare Z = 1/2*sin(X*3);
  object{
	Sphere
	texture { T_Wood7}
	pigment { rgb < 0.42, 0.56, 0.14> }	
	scale 0.1
	translate < X + 1, 1.45, Z -2.3>
  }
#declare T = T + 0.02;
#end

  object { 
	Sphere
	texture { T_Wood7}
	pigment { color Red}
	translate < 10,5, -7.3>
	scale  0.3
  }	
} 
