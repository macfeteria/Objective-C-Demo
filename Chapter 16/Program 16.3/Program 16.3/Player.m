//
//  User.m
//  Program 16.3
//
//  Created by Ter on 9/21/13.
//  Copyright (c) 2013 Ter. All rights reserved.
//

#import "Player.h"

@interface Player ()
{
    NSString* fullName;
}
@property (readwrite,copy) NSString* age;
@end

@implementation Player
-(NSString*) getNewString
{
    return [[[NSString alloc] initWithString:@"Hello"] autorelease];
}


-(void) printInfo
{
    if( self.age == nil)
        self.age = @"19";
    
    fullName = [NSString stringWithFormat:@"%@ %@", self.name , self.lastName];
    
    NSLog(@"Name: %@",fullName);
    NSLog(@"age:%@",self.age);
}
@end
