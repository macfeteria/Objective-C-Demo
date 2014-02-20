#import <Foundation/Foundation.h>
#import "Math.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        __block NSString* text = @"OK";
        NSMutableArray* list = [NSMutableArray array];
        NSOperationQueue* aQueue = [[NSOperationQueue alloc] init];
        
        NSBlockOperation* two = [NSBlockOperation blockOperationWithBlock:^{
            [list addObject:@"Hello"];
        }];
        
        NSBlockOperation* one = [NSBlockOperation blockOperationWithBlock:^{
            text = nil;
            [list addObject:text];
        }];
        
        [aQueue addOperation:one];
        [aQueue addOperation:two];
        
        [aQueue waitUntilAllOperationsAreFinished];

    }
    return 0;
}

