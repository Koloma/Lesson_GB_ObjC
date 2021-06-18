//
//  main.m
//  Lesson1
//
//  Created by user197514 on 6/17/21.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {

        NSInteger number1;
        NSInteger number2;
        NSInteger number3;
        
        printf("Enter first number: ");
        scanf("%ld",&number1);
    
        printf("Enter second number: ");
        scanf("%ld",&number2);
        
        printf("Enter third number: ");
        scanf("%ld",&number3);
        
        printf("First: %ld, Second: %ld, Third: %ld\r", number1, number2, number3);
        
        printf("Choose operation:\r");
        printf("1. Summ of numbers\r");
        printf("2. Mult of numbers\r");
        printf("3. Arithmetic mean of numbers\r");
        
        NSInteger menuNumber;
        scanf("%ld", &menuNumber);
        
        switch (menuNumber) {
            case 1:
                printf("Summ of numbers: %ld\r", number1+number2+number3);
                break;
                
            case 2:
                printf("Mult of numbers: %ld\r", number1*number2*number3);
                break;
                
            case 3:
                printf("Arithmetic mean of numbers: %f\r",(double)(number1+number2+number3)/3);
                break;
                
            default:
                printf("Wrong menu number\r");
                break;
        }
        
        printf("Finish\n");
        
    }
    return 0;
}
