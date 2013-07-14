//
//  Network.h
//  Program 14.9
//
//  Created by Ter on 7/13/13.
//  Copyright (c) 2013 Objective-C Book. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Network : NSObject
{
    id delegate;
}
-(void) receiveData;
@property (retain) id delegate;
@end
