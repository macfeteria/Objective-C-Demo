//
//  NetworkController.m
//  Program 10.4
//
//  Created by Ter on 3/30/13.
//  Copyright (c) 2013 Objective-C Book. All rights reserved.
//

#import "NetworkController.h"

@implementation NetworkController
-(void) startConnect
{
    if( _delegate == nil )
        return;
    
    int rand = arc4random_uniform(100);
    if( rand > 50 )
    {
        if( [_delegate respondsToSelector:@selector(authentication)])
            [_delegate authentication];
        
        if( [_delegate respondsToSelector:@selector(connectSuccess:)])
            [_delegate connectSuccess:200];
        
        if( [_delegate respondsToSelector:@selector(receiveData:)])
        {
            for(int i = 0 ; i <= 5 ; i++)
            {
                sleep(1);
                NSString* data = [NSString stringWithFormat:@"%d",i];
                [_delegate receiveData:data];
            }
        }
        
    }
    else
        if( [_delegate respondsToSelector:@selector(connectFail:)])
            [_delegate connectFail:404];
}

@end
