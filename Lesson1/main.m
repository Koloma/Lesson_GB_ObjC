//
//  main.m
//  Lesson1
//
//  Created by user197514 on 6/17/21.
//

#import <Foundation/Foundation.h>
#import "Student.h"





int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        Student *stud = [[Student new] initWithParams:18 name:@"Paul" surname:@"Shmit"];
        NSLog(@"%@", stud);
        stud.increaseAgeOneYear;
        NSLog(@"%@", stud);
        NSLog(@"%@", stud.fullName);
        
        NSMutableArray *students = [NSMutableArray new];
        
        for (int i=0; i<10; i++) {
            Student *student = [[Student new] initWithParams:18+i name:[Student randomNameWithLength:6] surname:[Student randomNameWithLength:8]];
            [students addObject:student];
        }
        
        for (Student *student in students) {
            NSLog(@"%@", student);
        }

    }
    return 0;
}
