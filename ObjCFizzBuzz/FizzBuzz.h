//
//  FizzBuzz.h
//  ObjCFizzBuzz
//
//  Created by Bruno Gomez on 3/12/22.
//

#ifndef FizzBuzz_h
#define FizzBuzz_h


#endif /* FizzBuzz_h */

@interface FizzBuzz : NSObject 
- (void)NumsFromTo:(int)from to:(int)to;
- (BOOL)isDivisibleBy3:(int)num;
- (BOOL)isDivisibleBy5:(int)num;
- (BOOL)isDivisibleBy3and5:(int)num;
- (NSString *)checkNum:(int)num;
@end
