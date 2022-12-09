#include "colors.inc"
#include "shapes.inc"
#include "textures.inc"
#include "stones.inc"
#include "metals.inc"
#include "woods.inc"
#include "glass.inc"
#include "skies.inc"

camera {
  location < -4 , 8, -10>
  look_at < -2, 2 ,0>
  angle  110
}

light_source { <0,10,-10> color White }

union{
   intersection{ 
      object{
  	    Round_Box_Union ( < -9, -6, -2>,  < 8, 1, 2>, 0.25 )
	    texture { T_Wood25 }
    } 

     object {
	    sphere { <0, 0, 0>, 1.2}
	    texture { T_Wood25 }
	    scale < 8, 6, 2 >
    }  
  }
  difference{
      object {
     	     cylinder { < 0, 1, 0 >  < 0, 1.5, 0 > , 1}
    	     texture { T_Wood8 }
    	     scale < 13, 1, 3>
    }
    object {
    	      Plane_YZ
    	      rotate < 0, 180, 0 >
    }
 }
     object {
    	    box {  < -1, 1, -3 >, < 11, 1.5, 3 > }
    	    texture { T_Wood8 }
    } 
     object {
     	     cylinder  { < -9.5, 1.5, 0 >, <  -9.5, 2.5, 0 > , 0.5}
     	     texture { T_Wood6 }
     }
     
  difference{ 
     object {
     	      box { < -6, 1.3, -2 >, <  3, 2.5, 2 >}
     	      texture { T_Wood7 }
     }
     object {
     	      cylinder { < -6, 1.3 , -4  >, < -6, 1.3 , 4 > , 0.3  }
     	      texture { T_Wood7 }
     	      scale < 0.8, 1.4, 1 >
     	      
     }
     object {
     	      cylinder { < -4.5, 1.3 , -4  >, < -4.5, 1.3 , 4 > , 0.3  }
     	      texture { T_Wood7 }
     	      scale < 0.8, 1.4, 1 >
     	      
     }
      object {
     	      cylinder { < -3, 1.3 , -4  >, < -3, 1.3 , 4 > , 0.3 }
     	      texture { T_Wood7 }
     	      scale < 0.8, 1.4, 1 >
     	      
     }
      object {
     	      cylinder { < -1.5, 1.3 , -4  >, < -1.5, 1.3 , 4 > , 0.3  }
     	      texture { T_Wood7 }
     	      scale < 0.8, 1.4, 1 >
     	      
     }
     object {
     	      cylinder { < 0, 1.3 , -4  >, < 0, 1.3 , 4 > , 0.3  }
     	      texture { T_Wood7 }
     	      scale < 0.8, 1.4, 1 >
     	      
     }
      object {
     	      cylinder { < 1.5, 1.3 , -4  >, < 1.5, 1.3 , 4 > , 0.3  }
     	      texture { T_Wood7 }
     	      scale < 0.8, 1.4, 1 >
     	      
     }
          object {
     	      cylinder { < 3, 1.3 , -4  >, < 3, 1.3 , 4 > , 0.3  }
     	      texture { T_Wood7 }
     	      scale < 0.8, 1.4, 1 >
     	      
     }
  }  
    object {
  	 box { < -6.5, 2.5, -2 >, <  5, 2.8, 2 >  }
  	 texture { T_Wood8 }
  }
 difference{ 
     object {
     	      box { < -4.5, 2.8, -2 >, <  3, 3.7, 2 >}
     	      texture { T_Wood7 }
     }
      object {
     	      cylinder { < -4.5, 2.2 , -4  >, < -4.5, 2.2 , 4 > , 0.3  }
     	      texture { T_Wood7 }
     	      scale < 0.8, 1.4, 1 >
     	      
     }
      object {
     	      cylinder { < -3, 2.2 , -4  >, < -3, 2.2 , 4 > , 0.3  }
     	      texture { T_Wood7 }
     	      scale < 0.8, 1.4, 1 >
     	      
     }
      object {
     	      cylinder { < -1.5, 2.2 , -4  >, < -1.5, 2.2 , 4 > , 0.3  }
     	      texture { T_Wood7 }
     	      scale < 0.8, 1.4, 1 >
     	      
     }
     object {
     	      cylinder { < 0, 2.2  , -4  >, < 0, 2.2 , 4 > , 0.3  }
     	      texture { T_Wood7 }
     	      scale < 0.8, 1.4, 1 >
     	      
     }
      object {
     	      cylinder { < 1.5, 2.2 , -4  >, < 1.5, 2.2 , 4 > , 0.3  }
     	      texture { T_Wood7 }
     	      scale < 0.8, 1.4, 1 >
     	      
     }
       object {
     	      cylinder { < 3, 2.2 , -4  >, < 3, 2.2 , 4 > , 0.3  }
     	      texture { T_Wood7 }
     	      scale < 0.8, 1.4, 1 >
     	      
     }
  }  
 
     object {
 	  cylinder { < -5, 2.8,-1> < -4.7, 7, -1 > , 0.25}
 	   texture { T_Wood6 }
 }
     object {
 	   cylinder { < -5, 2.8,1> < -4.7, 7, 1 > , 0.25}
 	    texture { T_Wood6 }
 }
     object {
  	   box { < -6.5, 3.7, -2 >, <  4.5, 4, 2 >  }
  	   texture { T_Wood8 }
  }
   difference{ 
     object {
     	     box { < -3, 4, -2 >, <  3, 5, 2 >}
     	     texture { T_Wood7 }
     }
     object {
     	     cylinder { < -3, 3 , -4  >, < -3, 3 , 4 > , 0.3  }
     	      texture { T_Wood7 }
     	     scale < 0.8, 1.4, 1 >
     	      
     }
     object {
     	     cylinder { < -1.5, 3 , -4  >, < -1.5, 3 , 4 > , 0.3  }
     	     texture { T_Wood7 }
     	     scale < 0.8, 1.4, 1 >
     	      
     }
      object {
     	    cylinder { < 0, 3 , -4  >, < 0, 3 , 4 > , 0.3  }
     	    texture { T_Wood7 }
     	    scale < 0.8, 1.4, 1 >
     	      
     }
     object {
     	     cylinder { < 1.5, 3 , -4  >, < 1.5, 3 , 4 > , 0.3  }
     	     texture { T_Wood7 }
           scale < 0.8, 1.4, 1 >
     }
      object {
     	     cylinder { < 3, 3 , -4  >, < 3, 3 , 4 > , 0.3  }
     	     texture { T_Wood7 }
     	     scale < 0.8, 1.4, 1 >
     	      
     }
   }
     object {
     	      box { < -4, 5, -2 >, <  4, 5.3,  2>}
     	      texture { T_Wood8 }
     }
     
     object {
      	cylinder { < 0, 5.3 , 0> < 0, 6 , 0> 1}
      	texture {T_Wood24 }
     }
  difference{
     object {
     	 Sphere
     	 texture { T_Wood31}
     }
     object {
     	  Plane_XZ
     }
     translate < 0, 6, 0>
  }
    object {
  	 cylinder { < 0, 5.5, 0> , < 0, 8.5, 0>, 0.2 }
  	 texture { T_Wood7 } 
   }
    object {
  	 triangle { < 0, 7.5, 0 > ,< 0, 8.5, 0> ,< 1.5, 8.25, 0> }
  	 texture { T_Wood6}
   }
    object {
	 box { < 5.7, 3.2, -2 > < 6.2, 3.7 ,2>  }
	 texture { T_Wood7}
	 rotate < 0, 0, -3 >
  }
   object {
	 box { < 7.5, 2.2, -2 > < 8, 2.7 ,2>  }
	 texture { T_Wood7}
	 rotate < 0, 0, 5>
  }


 difference {
   object {
  	 cylinder { < 0, 0 , -2 >, < 0, 0,  2 >, 1.3}
  	 texture { T_Wood6}
  	 translate < 7, 2 ,0>
   }
   object {
  	Plane_XZ
   }
 }
} 

difference{
  object {
    height_field { png "suisui.png" }
    texture { T_Wood6}
  }
  object{
  	Plane_XZ
  	translate<0, 0.2, 0>
  }
   scale<20,0,20> 
   translate<-13,0,-17>
   rotate <-60, 10, 0>
   
}



 sky_sphere{
 	S_Cloud3
 } 	
  
