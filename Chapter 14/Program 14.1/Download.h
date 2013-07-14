//
//  Download.h
//  Program 14.1
//
//  Created by Ter on 7/7/13.
//  Copyright (c) 2013 Objective-C Book. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Download : NSObject
{
    NSString* _urlPath;
    int _fileSize;
}
-(id) initWithURL:(NSString*) url fileSize:(int)size;
-(void) startDownload;
@end
