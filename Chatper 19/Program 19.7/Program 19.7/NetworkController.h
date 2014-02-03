//
//  Download.h
//  Program 19.4
//
//  Created by Ter on 1/29/14.
//  Copyright (c) 2014 Objective-C Book. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NetworkController : NSObject
- (NSOperation*)downloadWithURL:(NSString*)urlString;
@end
