#include <iostream>
int main(){
    int MEM[] = {
        0x2e, 0xb0, 0xd4, 0xe0, 0x2f, 0x6f, 0x4f, 0x2e, 0x91,
        0x4e, 0xcb, 0x00, 0x00, 0x00, 0x0A, 0x01
    }; //values in memory address
    int accumulator = 0;
    while (1){
        accumulator = MEM[14];// step 0
        if (accumulator == 0){ //step 1
            std::cout << MEM[15];
            exit(0); //step 3
        }
        else { //step 2
            accumulator = MEM[15]; //step 4
            accumulator += MEM[15]; //step 5
            MEM[15] = accumulator; //step 6
            accumulator = MEM[14]; //step 7
            accumulator -= 1; //step 8
            MEM[14] = accumulator; //step 9
        } //step 10
        //step 11 12 13 14 15 are declared in the array
    }
}