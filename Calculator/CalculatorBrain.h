//
//  CalculatorBrain.h
//  Calculator
//
//  Created by bbakker on 8/26/14.
//  Copyright (c) 2014 DA CS. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CalculatorBrain : UIViewController

- (void) pushOperand: (double)operand;
- (double) performOperation: (NSString *) operation;


@end
