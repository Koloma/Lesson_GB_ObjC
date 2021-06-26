//
//  EnglishAlphabet.m
//  Lesson1
//
//  Created by user197514 on 6/20/21.
//

#import "EnglishAlphabet.h"

@implementation EnglishAlphabet

+(BOOL) checkLette:(NSString *)letter {
    
    NSInteger letterCode = [letter characterAtIndex:0];
    
    return (letterCode>= 65 && letterCode <= 90) || (letterCode>= 97 && letterCode <= 122);
}

@end
