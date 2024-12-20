// attribute variales are only available in the vertex shaders
// ===============================
attribute vec3 aPosition; // holding the world space position
// holds the coordinates we would use in the fragment shader
// if we wanna draw a texture on the face of the geometry
attribute vec2 aTextCoord; 


varying vec2 pos;

void main(){
  pos = aTextCoord;

  vec4 position = vec4(aPosition, 1.0);
  position.xy = position.xy * 2. - 1;

  gl_Position = position;
}