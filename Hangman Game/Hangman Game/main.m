//
//  main.m
//  Hangman Game
//
//  Created by Jackie Meggesto on 6/16/15.
//  Copyright (c) 2015 Jackie Meggesto. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
       // for this we will need two arrays - an array to display the current state of the game (an array of dashes) and the array holding the actual characters of the word to be guessed. We will need a variable called counter or some such, to
        
       char myWord[6] = "agave";
        char myDashes[6] = "_____";
        char guess;
        int count = 0;
        int found;
        int ret;
        int hasWon = 0;
        
        
        printf("I'm thinking of a word. Can you guess it? \n");
        while (count < 6 && !hasWon) {
            found = 0;
            printf("\n Please guess a letter. \n");
            scanf("%c", &guess);
            for (int j = 0; j < sizeof(myWord)/sizeof(char); j++) {
                if (guess == myWord[j]) {
                    myDashes[j] = myWord[j];
                    found = 1;
                }
            }
            for (int i = 0; i < sizeof(myWord)/sizeof(char); i++) {
                printf("%c", myDashes[i]);
            }
            
            scanf("%c", &guess);
            
            ret = strcmp(myDashes, myWord);
            if (ret == 0) {
                printf("You win!");
                hasWon = 1;
            }
            
            
            if (found == 0) {
                count = count + 1;
            }
            if (count == 6) {
                printf("You lost!");
            }
            
        }
        
        
        
        
        
        }
        
    
    return 0;
}
