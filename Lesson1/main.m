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
        
        CGFloat firstNumber = 15.0;
        CGFloat secondNumber = 25.0;
        
        CGFloat result = [Calculator beginOperation:ArifmeticOperationsSumm firstNumber:firstNumber secondNumber:secondNumber];
        NSLog(@"%0.1f",result);
        
        __block CGFloat blockResult;
        
        NSOperationQueue *queue1 = [[NSOperationQueue alloc] init];
        
        [queue1 addOperationWithBlock:^{
            blockResult = [Calculator beginOperation:ArifmeticOperationsSumm firstNumber:firstNumber secondNumber:secondNumber];
            NSLog(@"queue1 result = %0.1f",blockResult);
                }];
        
        [queue1 addOperationWithBlock:^{
            blockResult = [Calculator beginOperation:ArifmeticOperationsSub firstNumber:100 secondNumber:blockResult];
            NSLog(@"queue2 result = %0.1f",blockResult);
                }];
        
        [queue1 addOperationWithBlock:^{
            blockResult = [Calculator beginOperation:ArifmeticOperationsDiv firstNumber:blockResult secondNumber:100];
            NSLog(@"queue3 result = %f",blockResult);
                }];
        
        [queue1 addOperationWithBlock:^{
            blockResult = [Calculator beginOperation:ArifmeticOperationsMult firstNumber:blockResult secondNumber:100];
            NSLog(@"queue4 result = %f",blockResult);
                }];
        
        
        
        sleep(1.0);
    }
    return 0;
}
