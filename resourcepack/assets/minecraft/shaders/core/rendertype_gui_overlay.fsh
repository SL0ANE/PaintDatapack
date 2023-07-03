#version 150

in vec4 vertexColor;
in vec4 mask;

uniform vec4 ColorModulator;

out vec4 fragColor;

int InRange(vec2 coord){
    if(coord.x > 2.0 / 20.0 && coord.x < 18.0 / 20.0 && coord.y > 2.0 / 20.0 && coord.y < 18.0 / 20.0) return 0;
    else if(coord.x > 4.0 / 20.0 && coord.x < 16.0 / 20.0 || coord.y > 4.0 / 20.0 && coord.y < 16.0 / 20.0) return 0;
    else return 1;
}

void main() {
    vec4 color = mask;
    if (vertexColor.a == 0.0) {
        discard;
    }
    else if(mask.a == 0.5 && mask.b == 1.0){

        if(InRange(vec2(color.r, color.g)) == 0) discard;
        else{
            fragColor = vec4(1.0, 1.0, 1.0, 1.0) * ColorModulator;
        }
    }
    else fragColor = vertexColor * ColorModulator;
}
