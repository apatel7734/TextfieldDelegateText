//
//  customTextField.m
//  TextfieldDelegateText
//
//  Created by Ashish Patel on 8/8/15.
//  Copyright (c) 2015 Ashish Patel. All rights reserved.
//

#import "customTextField.h"

@implementation customTextField

- (instancetype)initWithFrame:(CGRect)frame
{
    NSLog(@"initWithFrame");
    self = [super initWithFrame:frame];
    if (self) {
        [self setup];
    }
    return self;
}

- (instancetype)initWithCoder:(NSCoder *)coder
{
    NSLog(@"initWithCoder");
    self = [super initWithCoder:coder];
    if (self) {
        [self setup];
    }
    return self;
}

- (void) setup{
    NSLog(@"Textfield setup");
    //textfield style to show only bottom line
    self.borderStyle = UITextBorderStyleLine;

//    CALayer *bottomBorder = [[CALayer alloc] init];
//    bottomBorder.frame = CGRectMake(0.0, self.frame.size.height - 1 , self.frame.size.width, 1.0);
//    [self.layer addSublayer:bottomBorder];
    
    //enable numberpad keyboardstyle
    self.keyboardType = UIKeyboardTypeNumberPad;
    
    //enable secure textEntry
    self.secureTextEntry = YES;
    
    //increase fonts
    self.font = [UIFont fontWithName:@"ArialMT" size:30];
    
    //text Allignment to center
    self.textAlignment = NSTextAlignmentLeft;
}

//hide textfield cursor.
-(CGRect) caretRectForPosition:(UITextPosition *)position{
    return CGRectZero;
}

//hide the caret



@end
