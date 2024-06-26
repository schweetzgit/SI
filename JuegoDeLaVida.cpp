#include <iostream>
#include <vector>
#include <stdlib.h>
#include <time.h>
using namespace std;
int main() {
  // Define the size of the matrix
  int size = 16;
  // Create a 2D vector to represent the matrix
  vector<vector<int> > matrix(size, vector<int>(size));
  // Initialize the matrix with random values
  for (int i = 0; i < size; i++) {
    for (int j = 0; j < size; j++) {
      matrix[i][j] = rand() % 2;
    }
  }
  // Print the initial matrix
  cout << "Initial matrix:" << endl;
  for (int i = 0; i < size; i++) {
    for (int j = 0; j < size; j++) {
      cout << matrix[i][j] << " ";
    }
    cout << endl;
  }
  // Iterate over the matrix and apply the rules of the Game of Life
  for (int i = 0; i < size; i++) {
    for (int j = 0; j < size; j++) {
      // Count the number of living neighbors
      int neighbors = 0;
      for (int k = -1; k <= 1; k++) {
        for (int l = -1; l <= 1; l++) {
          if (k == 0 && l == 0) {
            continue;
          }
          if (i + k >= 0 && i + k < size && j + l >= 0 && j + l < size) {
            neighbors += matrix[i + k][j + l];
          }
        }
      }
      // Apply the rules of the Game of Life
      if (matrix[i][j] == 1) {
        if (neighbors < 2 || neighbors > 3) {
          matrix[i][j] = 0;
        }
      } else {
        if (neighbors == 3) {
          matrix[i][j] = 1;
        }
      }
    }
  }
  // Print the final matrix
  cout << "Final matrix:" << endl;
  for (int i = 0; i < size; i++) {
    for (int j = 0; j < size; j++) {
      cout << matrix[i][j] << " ";
    }
    cout << endl;
 }
 system("pause");
 return 0;
}
