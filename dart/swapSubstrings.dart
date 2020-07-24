// I lost the problem statemeant for this one but here is the solutioon
import 'dart:io';
import 'dart:math';

/**
 * Auto-generated code below aims at helping you parse
 * the standard input according to the problem statement.
 **/
void main() {
  int N = int.parse(stdin.readLineSync());
  String word = stdin.readLineSync().toString();

  // Write an answer using print()
  // To debug: stderr.writeln('Debug messages...');
  stderr.writeln(N);
  stderr.writeln(word.substring(0, 2));
  print(N < word.length
      ? word.substring(N, word.length) + word.substring(0, N)
      : word.substring(1, word.length) + word.substring(0, 1));
}
