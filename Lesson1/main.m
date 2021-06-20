//
//  main.m
//  Lesson1
//
//  Created by user197514 on 6/17/21.
//

#import <Foundation/Foundation.h>
#import "Calculator.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        CGFloat a = [Calculator calculate:Summ :10 :20];
        CGFloat b = [Calculator calculate:Sub :10 :20];
        CGFloat c = [Calculator calculate:Mult :10 :20];
        CGFloat d = [Calculator calculate:Div :10 :20];
        
        NSLog(@"Result: \n a = %f, \n b = %f, \n c = %f, \n d = %f", a, b, c, d);
        
        
        
//        for (char c = 'a'; c <= 'z'; c++) {
//            NSString *firstLetter = [NSString stringWithFormat:@"%c", c];
//            NSInteger asciiCode = [firstLetter characterAtIndex:0];
//            NSLog(@"%@ = %li",firstLetter, asciiCode);
//        }

    }
    return 0;
}
