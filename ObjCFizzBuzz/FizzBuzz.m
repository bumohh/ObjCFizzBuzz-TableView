//
//  FizzBuzz.m
//  ObjCFizzBuzz
//
//  Created by Bruno Gomez on 3/12/22.
//

#import <Foundation/Foundation.h>
#import "FizzBuzz.h"

@interface FizzBuzz ()
@end

@implementation FizzBuzz
- (NSString *)checkNum:(int)num {
    if ([self isDivisibleBy3and5:num]) { return @"FizzBuzz";
    } else if ([self isDivisibleBy3:num]){ return @"Fizz";
    } else if ([self isDivisibleBy5:num]){ return @"Buzz";
    } else { return [NSString stringWithFormat:@"%d",num]; }
}
- (BOOL)isDivisibleBy3and5:(int)num {
    if ([self isDivisibleBy3:num] && [self isDivisibleBy5:num]) { return YES; } return NO;
}
- (BOOL)isDivisibleBy5:(int)num { if (num % 5 == 0) { return YES; } return NO; }
- (BOOL)isDivisibleBy3:(int)num { if (num % 3 == 0) { return YES; } return NO; }
- (void)NumsFromTo:(int)from to:(int)to {
    if (from > to) { return; }
    for (int i = from; i <= to; i++) {
        NSLog(@"%@", [self checkNum:i]);
    }
}
@end
