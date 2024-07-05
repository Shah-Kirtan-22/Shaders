float circle(vec2 position, float radius)
{
    // return black color for when the length of the position is less than or equal to the radius
    return step(radius, length(position));
}

void mainImage( out vec4 fragColor, in vec2 fragCoord )
{
    // normalize the uv coordinates
    vec2 uv = fragCoord/iResolution.xy;
    // shift the uv to the center of the screen
    uv = uv * 2. - 1.;
    // set the uv to draw accurately irrespective of the aspect ratio
    uv.x *= iResolution.x/iResolution.y;
    float radius = 0.5;

    float circle = circle(uv, radius);
    
    // set the frag color to display the circle in black
    fragColor = vec4(vec3(circle),1.);
}