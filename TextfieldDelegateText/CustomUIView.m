//
//  CustomUIView.m
//  TextfieldDelegateText
//
//  Created by Ashish Patel on 8/8/15.
//  Copyright (c) 2015 Ashish Patel. All rights reserved.
//

#import "CustomUIView.h"

@implementation CustomUIView

- (instancetype) initWithFrame:(CGRect)frame{
    if (self = [super initWithFrame:frame]) {
        NSLog(@"before Setup");
        [self setup];
        NSLog(@"after Setup");
    }
    
    return self;
}

- (instancetype) initWithCoder:(NSCoder *)aDecoder{
    if (self = [super initWithCoder:aDecoder]) {
        NSLog(@"initWithCoder");
    }
    return self;
}

-(BOOL) textField:(UITextField *)textField shouldChangeCharactersInRange:(NSRange)range replacementString:(NSString *)string{
    NSLog(@"String = %@", string);
    return true;
}


/*
 var nib = UINib(nibName: "PinUIView", bundle: nil)
 nib.instantiateWithOwner(self, options: nil)
 */
- (void) setup{
    //    NSArray *subviewArray = [[NSBundle mainBundle] loadNibNamed:@"CustomUIView" owner:self options:nil];
    //    UIView *mainView = [subviewArray objectAtIndex:0];
    
    CustomUIView *customView = [[[UINib nibWithNibName:@"CustomUIView" bundle:nil]
                                 instantiateWithOwner:self options:nil] objectAtIndex:0];
    
    _textField1.delegate =  self.textFieldDelegate;
    _textField2.delegate =  self.textFieldDelegate;
    _textField3.delegate =  self.textFieldDelegate;
    _textField4.delegate =  self.textFieldDelegate;
    
    [self addSubview:customView];
    
}

@end
