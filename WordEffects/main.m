//
//  main.m
//  WordEffects
//
//  Created by Tye Blackie on 2017-07-24.
//  Copyright © 2017 Tye Blackie. All rights reserved.
//

#import <Foundation/Foundation.h>



int main(int argc, const char * argv[]) {
    
    char playAgain = 'y';
    
    while (playAgain == 'y') {
    
        char inputChars [255];
    
        printf ("Input a string: ");
        fgets (inputChars, 255, stdin);
        strtok (inputChars, "\n");
    
        printf ("Your string is: %s", inputChars);
        NSString *inputString = [NSString stringWithUTF8String:inputChars];
    
        NSLog(@"Here is your loud uppercase string : %@ \n",[inputString uppercaseString]);
    
        NSLog(@"Here is your quiet, lowercase string : %@ \n",[inputString lowercaseString]);
    
        NSLog(@"Here is your canadian string :  %@ \n", [inputString stringByAppendingString: @" Eh!"]);
    
        int value = [inputString intValue];
          
        NSLog(@"here is the int value of your string: %d \n", value);
    
        inputString = [inputString stringByReplacingOccurrencesOfString:@" " withString:@"-"];
    
        NSLog(@"Here is your string 'De-Spaced: %@ \n", inputString);
    
   
    
    if([inputString containsString:@"?"]) {
           NSLog(@"I dont Know");
    }else if([inputString containsString:@"!"]) {
        NSLog(@"Whoa! Calm Down!");
    }
    
    
    char responseToPlay = 'y';
    printf("Would you like to play again?");
    fgets(&responseToPlay, 1, stdin);
        NSLog(@"You chose %c", responseToPlay);
     playAgain = responseToPlay;
    }
    
    return 0;
}


