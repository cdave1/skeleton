uniform float time;
varying vec2 texture_coordinate;
uniform sampler2D tex0;

/**
 * Mandelbrot fragment shader
 */
void main()
{
    float zoom = sin(time);
    float offset = cos(time); //cos(time) - 0.5;
    
   // float x0 = (offset + ((-2.5 + zoom) + (3.5 - zoom))) * texture_coordinate[0];
  //  float y0 = (offset + ((-2.5 + zoom) + (2.0 - zoom))) * texture_coordinate[1];
    
   // float x0 = (-2.5 + zoom - offset) + ((3.5 - zoom) * texture_coordinate[0]);
  //  float y0 = (-1.0 + zoom - offset) + ((2.0 - zoom) * texture_coordinate[1]);
 
    float x0 = (0.25) + (0.35 * (texture_coordinate[0]));
    float y0 = (sin(time)) + (0.2 * (texture_coordinate[1]));
    
    float x = 0.0;
    float y = 0.0;
    
    float iteration = 0.0;
    float max_iteration = 20.0;
    
    while(x*x + y*y <= (2.0*2.0) && iteration < max_iteration)
    {
        float xtmp = x*x - y*y + x0;
        y = 2.0*x*y + y0;
        x = xtmp;
        iteration = iteration + 1.0;
    }
    
    vec4 color;
    if (iteration == max_iteration)
        color =  vec4(1.0,1.0,1.0,1.0);
    else
        color = vec4(iteration/max_iteration);
        
    gl_FragColor = color;
    //gl_FragColor = iteration/max_iteration * texture2D ( color_sampler, texture_coordinate);
}
