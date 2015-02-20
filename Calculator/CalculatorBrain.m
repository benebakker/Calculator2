//
//  CalculatorBrain.m
//  Calculator
//
//  Created by bbakker on 8/26/14.
//  Copyright (c) 2014 DA CS. All rights reserved.
//

#import "CalculatorBrain.h"

@interface CalculatorBrain ()

@property(nonatomic, strong) NSMutableArray * operandStack;

@end

@implementation CalculatorBrain

- (NSMutableArray *) operandStack
{
    if( _operandStack == nil)
        _operandStack = [[NSMutableArray alloc] init];
    
    return _operandStack;
    
}

- (void) pushOperand: (double)operand
{
    NSNumber *operandObject = [NSNumber numberWithDouble:operand];
    [self.operandStack addObject:operandObject];
}

- (double) popOperand
{
    NSNumber *lastOperand = [self.operandStack lastObject];
    if(lastOperand != nil)
        [self.operandStack removeLastObject];
    return [lastOperand doubleValue];
}

- (double) performOperation: (NSString *) operation
{
    double result = 0;
    
    if([operation isEqualToString:@"+"])
        result = [self popOperand] + [self popOperand];
    return result;
}

@end
