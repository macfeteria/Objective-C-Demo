//
//  main.m
//  Program 16.2
//
//  Created by Ter on 9/7/13.
//  Copyright (c) 2013 Ter. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        NSNumber *ten = @10;        // [Number numberWithInt:10]
        NSNumber *pi = @3.1415926;  // [Number numberWithDouble:3.1415926]
        NSNumber *a = @'a';         // [Number numberWithChar:'a']
        NSNumber *isDone = @YES;    // [Number numberWithBool:YES]
        
        NSNumber *positive = @256u; // [NSNumber numberWithUnsignedInteger:256]
        NSNumber *fNum = @256.23f;  // [NSNumber numberWithFloat:256.23]
        
        NSLog(@"ten: %@", ten);
        NSLog(@"pi: %@",pi);
        NSLog(@"a: %@",a);
        NSLog(@"isDone: %@",isDone);
        NSLog(@"positive: %@",positive);
        NSLog(@"fNum: %@",fNum);
        
        
        NSArray *fruits = @[@"apple", @"mango", @"banana"];
        
        NSDictionary* player = @{@"name": @"Frank",
                                 @"lastName": @"Lampard",
                                 @"goal": @200};
        
        
        NSLog(@"%@", fruits[0]);    // [fruits objectAtIndex:0]
        NSLog(@"%@", fruits[1]);
        
        NSLog(@"%@", player[@"name"]);  //[player objectForKey:@"name"]
        NSLog(@"%@", player[@"goal"]);
        
        
        NSMutableArray* apple = [NSMutableArray arrayWithObjects:@"iPad", @"iPhone", @"Galaxy", nil];

        apple[2] = @"Macbook";
        
        NSLog(@"%@",apple);
        
        NSDictionary *players = @{ @"name" : @"Frank Lampard",
                                   @"statistics" :  @{ @"score" : @200,
                                                       @"assist": @120 } };

        NSArray* products = @[@[@"iPhone", @"iPad", @"macbook"],
                              @[@"Galaxy S", @"Galaxy Note"]];
        
        
        NSLog(@"%@", players[@"statistics"][@"score"]);
        NSLog(@"%@", products[0][1]);

    }
    return 0;
}

