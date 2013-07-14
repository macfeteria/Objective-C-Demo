//
//  Download.m
//  Program 14.1
//
//  Created by Ter on 7/7/13.
//  Copyright (c) 2013 Objective-C Book. All rights reserved.
//

#import "Download.h"

@implementation Download
-(id) initWithURL:(NSString*) url fileSize:(int)size
{
    _urlPath = [url copy];
    _fileSize = size;
    return  self;
}

-(void) dealloc
{
    [_urlPath release];
    [super dealloc];
}

-(void) startDownload
{
    NSLog(@"Start downloading %@", _urlPath);
    
    for( int i = 1; i <= _fileSize; i++)
        NSLog(@"Downloading %@ - %.2f %%",_urlPath , (float)(i*100/_fileSize));

    NSLog(@"%@ done", _urlPath);

}
@end
