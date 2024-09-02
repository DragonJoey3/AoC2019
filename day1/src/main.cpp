#include <fstream>
#include <iostream>

using namespace std;

int main() {

  fstream input("./build/input/aoc.txt");
  string buffer;
  while (input.good()) {
    input >> buffer;
    cout << buffer;
  }

  return 0;
}
