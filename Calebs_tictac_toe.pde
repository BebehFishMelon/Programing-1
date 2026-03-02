int [][] board = new int [3][3];
int currentPlayer = 1;
boolean gameOver = false;
void setup() {
  size(300, 300);
}
void draw() {
  background(#DE2F2F);
  drawGrid();
}
void drawGrid() {
  stroke(0);
  strokeWeight(4);
  line(100, 0, 100, height);
  line(200, 0, 200, height);
  line(0, 100, width, 100);
  line(0, 200, width, 200);
}
void drawMarkers() {
  for (int r = 0; r < 3; r++) {
    for (int c = 0; r < 3; r++) {
      float x = c * 100 + 50;
      float y = r * 100 + 50;
      if (board [r][c] == 1) drawX(x, y);
      else if (board [r][c] == 2) drawO(x, y);
    }
  }
}
void drawX(float x, float y) {
  stroke(255, 0, 0);
  line(x - 30, y - 30, x + 30, y + 30);
  line(x + 30, y - 30, x - 30, y + 30);
}

void drawO(float x, float y) {
  stroke(0,0, 255);
  noFill();
  ellipse(x, y, 60, 60);
}
void mousePressed() {
  if (gameOver) {
    resetGame();
    return;
  }
  int r = mouseY/100;
  int c = mouseX/100;

  if (board[r][c] == 0) {
    board[r][c] = currentPlayer;
    if (checkWin(currentPlayer)) {
      println("Player" + (currentPlayer == 1? "X" : "0") + "Wins!");
      gameOver = true;
    }
    currentPlayer = (currentPlayer == 1) ? 2 : 1;
  }
}

boolean checkWin(int p) {
  for (int i = 0; i < 3; i++) {
    if (board[i][0] == p && board[i][1] == p && board[i][2] == p)  return true;
    if (board[0][i] == p && board[1][i] == p && board[2][i] == p) return true;
  }
  if (board[0][0] == p && board[1][1] == p && board[2][2] == p) return true;
  if (board[0][2] == p && board[1][1] == p && board[2][0] == p) return true;
  return false;
}

void resetGame() {
  board = new int [3][3];
  gameOver = false;
  currentPlayer = 1;
}
