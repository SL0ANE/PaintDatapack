#version 150

in vec3 Position;
in vec4 Color;

uniform mat4 ModelViewMat;
uniform mat4 ProjMat;

out vec4 vertexColor;
out vec4 mask;

void main() {
    float vertexId = mod(gl_VertexID, 4.0);

    vec3 Position_ = Position;
    if(Color.r == 1.0 && Color.g == 1.0 && Color.b == 1.0 && Color.a <= 0.502 && Color.a >= 0.5019){
        if(vertexId == 0.0){
            mask = vec4(1.0, 0.0, 1.0, 0.5);

            Position_.x += -2.0;
            Position_.y += -2.0;
        }
        else if(vertexId == 1.0){
            mask = vec4(0.0, 0.0, 1.0, 0.5);
            Position_.x += -2.0;
            Position_.y += 2.0;

        }
        else if(vertexId == 2.0){
            mask = vec4(0.0, 1.0, 1.0, 0.5);
            Position_.x += 2.0;
            Position_.y += 2.0;

        }
        else if(vertexId == 3.0){
            mask = vec4(1.0, 1.0, 1.0, 0.5);

            Position_.x += 2.0;
            Position_.y += -2.0;
        }
    }
    gl_Position = ProjMat * ModelViewMat * vec4(Position_, 1.0);

    if(ivec3(Color.rgb * 255.0) == ivec3(239, 50, 61)) {
        vertexColor = vec4(0.0, 0.0, 0.0, Color.a);
    }
    else vertexColor = Color;
}
