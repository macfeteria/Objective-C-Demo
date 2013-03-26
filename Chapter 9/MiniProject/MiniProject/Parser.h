//
//  Parser.h
//  MiniProject
//
//  Created by Ter on 3/20/13.
//  Copyright (c) 2013 Objective-C Book. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Parser : NSObject
+(NSString *)getString:(NSString *)string tag:(NSString *)tag location:(int)location;
@end
