PVector grid_to_screen(int x, int y) {
  x = x * 40;
  y = y * 40;
 return new PVector(20 + x, 20 + y); 
}
