//
//  main.m
//  Objective-C Basic Programming
//
//  Created by Rodrigo Barbosa on 09/10/24.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        // ARRAYS & SET
        NSArray* myArr;
        myArr = [[NSArray alloc] initWithObjects:@"Olá mundo", @"texto", nil];
        
        NSLog(@"Object at index 1 is: %@", [myArr objectAtIndex:1]);
        NSLog(@"There are %lu objects in my array", myArr.count);
        
        
        NSMutableArray* myMutableArray;
        myMutableArray = [[NSMutableArray alloc] initWithObjects: @"abcde", @"fghi", nil];
        [myMutableArray addObject:@"jklm"];
        
        NSSet* mySet = [[NSSet alloc] initWithObjects:@"Sunday", @"Monday", @"Friday", nil];
        
        for (NSString* any in mySet) {
            if ([any isEqualToString:@"Friday"]) {
                NSLog(@"Its friday!");
            } else {
                NSLog(@"Isnt friday ;-;");
            }
        }
        
        
        // Dictionaries
        
        NSDictionary* myDict = [NSDictionary dictionaryWithObject:@"Rodrigo" forKey:@"name"];
        NSLog(@"Value for name is: %@", [myDict objectForKey:@"name"]);
        
        
        NSMutableDictionary* myMutableDict = [[NSMutableDictionary alloc] init];
        [myMutableDict setValue:@"Barbosa" forKey:@"lastName"];
        
        NSLog(@"My full name is: %@ %@", [myDict objectForKey:@"name"], [myMutableDict objectForKey:@"lastName"]);
        
        NSLog(@"All keys in my mutable dictionarie %@", [myMutableDict allKeys]);
        NSLog(@"All values in my mutable dictionarie %@", [myMutableDict allValues]);
        
    }
    return 0;
}
