//
//  MyDelegate.h
//  Program 18.1
//
//  Created by Ter on 1/11/14.
//  Copyright (c) 2014 Objective-C Book. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface MyDelegate : NSObject <NSURLSessionDataDelegate>
@property NSMutableData* netData;
@end
