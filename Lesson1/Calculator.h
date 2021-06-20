//
//  Calculator.h
//  Lesson1
//
//  Created by user197514 on 6/20/21.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Calculator : NSObject
typedef enum{
  Summ, Sub, Mult, Div
} ArifmeticOperations;

+(CGFloat) calculate:(ArifmeticOperations)method :(CGFloat)a :(CGFloat)b;


@end

NS_ASSUME_NONNULL_END
