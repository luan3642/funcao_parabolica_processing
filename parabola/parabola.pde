float h = 200; // altura
float d = 150; // distancia bolinha
float x = 50;
float y = 500;
float dx = 0;
float dy = 0;
boolean jumping = false; // saber quando está pulando ou não
float step = 2;


void setup() {
  size(1024, 768);
}

void draw() {
  clear();
  update();
  circle(x, y- dy, 30);
}


void update() {
  x +=step;
  if (jumping) {
    dx += step;
    dy = calc_dy(dx);
    
    // aqui que verifica o fim da bolinha, vai dizer quando parar e ficar no chão
    // na hora que a bolinha está na plataforma, posso verificar se ela está num XP1
    // ou x na plataforma 2
    if (dx >= d/2){
      jumping = false;
      dy = 0;
    }
  }
}

float calc_dy(float dx) {
  return (-4 * h / (d * d)) * dx * dx + h;
}

void mousePressed() {
  if (!jumping) {
    jumping = true;
    dx = -d/2;
  } else {
  }
}
