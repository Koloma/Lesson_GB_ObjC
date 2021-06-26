//
//  main.m
//  Lesson1
//
//  Created by user197514 on 6/17/21.
//

#import <Foundation/Foundation.h>
#import "Calculator.h"

typedef NS_ENUM(NSUInteger, Garden) {
    GardenWithTree,
    GardenWithFlowers,
    GardenWithMushrooms,
    GardenNo
};

struct Human {
    NSString * name;
    NSInteger age;
    Garden garden;
};
typedef struct Human Human;

void humanToLog(Human human) {
    
    NSString * gardenName;
    
    switch (human.garden) {
        case GardenWithTree:
            gardenName = @"Garden With Tree";
            break;
        case GardenWithFlowers:
            gardenName = @"Garden With Flowers";
            break;
        case GardenWithMushrooms:
            gardenName = @"Garden With Mushrooms";
            break;
        case GardenNo:
            gardenName = @"No Garden";
            break;
        default:
            gardenName = @"Unknown Garden";
            break;
    }
    
    NSLog(@"Human name is:%@, age:%ld, %@", human.name, human.age, gardenName);
    return;
}

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        CGFloat a = [Calculator calculate:ArifmeticOperationsSumm :10 :20];
        CGFloat b = [Calculator calculate:ArifmeticOperationsSub :10 :20];
        CGFloat c = [Calculator calculate:ArifmeticOperationsMult :10 :20];
        CGFloat d = [Calculator calculate:ArifmeticOperationsDiv :10 :20];

        NSLog(@"Result: \n a = %f, \n b = %f, \n c = %f, \n d = %f", a, b, c, d);
        
    
        char paramString[40];
        NSLog(@"Enter string of parameters:");
        int nChars = scanf("%s", paramString);
        NSLog(@"%i", nChars);
        for (int i = 0; i < nChars; i++) {
            NSLog(@"%c", paramString[i]);
        }
        int i = 0;
        do {
            NSLog(@"%c", paramString[i]);
            i++;
        } while ( i < nChars);
        
        int j = 0;
        while (j < nChars) {
            NSLog(@"%c", paramString[j]);
            j++;
        }

        
        Human human1 = {@"Petya", 15, GardenWithTree};
        Human human2 = {@"Lida", 25, GardenWithFlowers};
        Human human3 = {@"Egor", 10, GardenWithMushrooms};
        
        humanToLog(human1);
        humanToLog(human2);
        humanToLog(human3);
    }
    return 0;
}
