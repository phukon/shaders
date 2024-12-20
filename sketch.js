const p5 = require('p5')

let exampleShader;

function preload() {
  exampleShader = loadShader('index.vert', 'index.frag');
}

function setup() {
  createCanvas(600, 600, WEBGL);

  shader(exampleShader);
  noStroke();
}

function draw() {
  clear();
  rect(0, 0, width, heigt)
}
