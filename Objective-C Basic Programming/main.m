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
        
        
        // For loops
        
        for (int i = 0; i < 10; i++){
            NSLog(@"%i", i);
        }
        
        for (int i = 0; i < myArr.count; i++) {
            NSLog(@"This is: %@", myArr[i]);
        }
        
        for (NSString* any in myArr) {
            NSLog(@"This is: %@", any);
        }
        
        
        // Switch
        
        int myInt = 1;
        
        switch (myInt) {
            case 0:
                NSLog(@"myInt is 0");
                break;
            case 1:
                NSLog(@"myInt is 1");
                break;
            case 2:
                NSLog(@"myInt is 2");
                break;
                
            default:
                NSLog(@"Cant find myInt is 0");
                break;
        }
        NSArray* cityArr = [[NSArray alloc] initWithObjects:@"Recife",@"London",@"New York",@"Basel",nil];
        NSString* myCity = @"Basel";
        int cityIndex = (int) [cityArr indexOfObject:myCity];
        
        switch (cityIndex) {
            case 0:
                NSLog(@"I live in Recife!");
                break;
            
            case 1:
                NSLog(@"I live in London!");
                break;
                
            case 2:
                NSLog(@"I live in New York!");
                break;
                
            case 3:
                NSLog(@"I live in Basel!");
                break;
            default:
                NSLog(@"I dont have a house ;-;");
                break;
        }
        
        
    }
    return 0;
}
