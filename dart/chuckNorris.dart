// Binary with 0 and 1 is good, but binary with only 0, or almost, is even better! Originally, this is a concept designed by Chuck Norris to send so called unary messages.

// Write a program that takes an incoming message as input and displays as output the message encoded using Chuck Norris’ method.

//  	Rules
// Here is the encoding principle:

// The input message consists of ASCII characters (7-bit)
// The encoded output message consists of blocks of 0
// A block is separated from another block by a space
// Two consecutive blocks are used to produce a series of same value bits (only 1 or 0 values):
// - First block: it is always 0 or 00. If it is 0, then the series contains 1, if not, it contains 0
// - Second block: the number of 0 in this block is the number of bits in the series
//  	Example
// Let’s take a simple example with a message which consists of only one character: Capital C. C in binary is represented as 1000011, so with Chuck Norris’ technique this gives:

// 0 0 (the first series consists of only a single 1)
// 00 0000 (the second series consists of four 0)
// 0 00 (the third consists of two 1)
// So C is coded as: 0 0 00 0000 0 00


// Second example, we want to encode the message CC (i.e. the 14 bits 10000111000011) :

// 0 0 (one single 1)
// 00 0000 (four 0)
// 0 000 (three 1)
// 00 0000 (four 0)
// 0 00 (two 1)
// So CC is coded as: 0 0 00 0000 0 000 00 0000 0 00



// Here is my solution, however I could not pass the last test on this problem
    String encrypted = '';
    String substring = binaryCode[0];
    String zeros(String string){
        return string.split('').map((char) => 0 ).toList().join('');
    }

    for(int i = 1 ; i < binaryCode.length; i++ ){
        if( i < binaryCode.length){
            if( binaryCode.length - 1 == i ){
                if(binaryCode[i] == binaryCode[i-1]){
                    substring += binaryCode[i];
                    encrypted += binaryCode[i] == '1' ? '0 ' + zeros( substring ) : '00 ' + zeros(substring);
                } else {
                    stderr.writeln('substring ' + substring + 'encrypted' + encrypted);
                    encrypted += binaryCode[i - 1] == '1' ? '0 ' + zeros( substring ) : '00 ' + zeros(substring) + ' ';
                    encrypted += binaryCode[i] == '1' ? '0 ' + zeros( binaryCode[i] ) : '00 ' + zeros( binaryCode[i] );
                }

            } else if( binaryCode[i - 1] != binaryCode[i] ){
                encrypted += binaryCode[i-1] == '1' ? '0 ' + zeros( substring ) + ' ' : '00 ' + zeros(substring) + ' ';
                substring = binaryCode[i];
            }else {
                substring = substring + binaryCode[i];
            }