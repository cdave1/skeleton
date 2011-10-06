//
// Shader.fsh
// opengles2-template
//
// Created by David Petrie on 18/05/10.
// Copyright n/a 2011. All rights reserved.
//

uniform float time;
varying vec2 texture_coordinate;
uniform sampler2D tex0;

/*
 Fragment shaders inspired by Iñigo Quilez: http://www.iquilezles.org/www/articles/deform/deform.htm
 */

void main()
{
    gl_FragColor = texture2D ( color_sampler, texture_coordinate);
    
// Moves the images in a horizontal direction    
    /*
     vec4 a = texture2D ( color_sampler, texture_coordinate + vec2(sin(time), 0.0));
     gl_FragColor = a;
     */
    
// Increasingly crazy whirligig soup
    /*
     float x = -1.0 + 2.0 * texture_coordinate[0];
     float y = -1.0 + 2.0 * texture_coordinate[1];
     float d = sqrt(x*x + y*y);
     float r = d * time * sin(time);
     float u = x*cos(r) - y*sin(r);
     float v = y*cos(r) + x*sin(r);
     
     gl_FragColor = texture2D(color_sampler, vec2(u,v) + vec2(time));
     */
    
// Creates effect of moving through an endless room - cool
    
     float x = -1.0 + 2.0 * texture_coordinate[0];
     float y = -1.0 + 2.0 * texture_coordinate[1];
     float u = x/abs(y);
     float v = 1.0/abs(y);
     gl_FragColor = texture2D(color_sampler, vec2(u,v) + vec2(time)) * vec4(abs(y));
     
    
// Lame tunnel effect
    /*
     float x = -1.0 + 2.0 * texture_coordinate[0];
     float y = -1.0 + 2.0 * texture_coordinate[1];
     float a = atan(x,y);
     float r = 1.0;
     float u = 1.0/(r+0.5+0.5*sin(5.0*a));
     float v = a*3.0/3.141595;
     gl_FragColor = texture2D(color_sampler, vec2(u,v) + vec2(time)) * vec4(0.8 * (abs(x) + abs(y)));
     */
    
// Zooms in and out of a plane, while spinning around center
    /*
     float m = sin(time) * 10.0;
     float x = -m + (m*2.0) * texture_coordinate[0];
     float y = -m + (m*2.0) * texture_coordinate[1];
     float r = 1.0;
     float u = x*cos(2.0*r) - y*sin(2.0*r);
     float v = y*cos(2.0*r) + x*sin(2.0*r);
     gl_FragColor = texture2D(color_sampler, vec2(u,v) + vec2(time));
     */
    
// Four leaf clover pattern in middle, pulsing zoom
    /*
     float x = -1.0 + 2.0 * texture_coordinate[0];
     float y = -1.0 + 2.0 * texture_coordinate[1];
     float a = atan(y,x);
     float r = 0.9;
     float u = 0.02*y+0.03*cos(a*3.0)/r;
     float v = 0.02*x+0.03*sin(a*3.0)/r;
     gl_FragColor = texture2D(color_sampler, vec2(u,v) + vec2(time));
     */
    
// Circular endless zoom tunnel - cool
    /*
     float x = -1.0 + 2.0 * texture_coordinate[0];
     float y = -1.0 + 2.0 * texture_coordinate[1];
     float d = sqrt(x*x + y*y);
     float a = atan(y,x);
     float u = cos( a )/d;
     float v = sin( a )/d;
     gl_FragColor = texture2D(color_sampler, vec2(u,v) + vec2(time)) * vec4(abs(x) + abs(y));
     */
    
// Spins and zooms
    /*    
     float m = cos(time) * 5.0;
     float x = -m + (m*2.0) * texture_coordinate[0];
     float y = -m + (m*2.0) * texture_coordinate[1];
     float r = time;
     float u = x*cos(4.0*r) - y*sin(4.0*r);
     float v = y*cos(4.0*r) + x*sin(4.0*r);
     
     gl_FragColor = texture2D(color_sampler, vec2(u,v) + vec2(time));
     */
}