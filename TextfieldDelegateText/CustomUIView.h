//
//  CustomUIView.h
//  TextfieldDelegateText
//
//  Created by Ashish Patel on 8/8/15.
//  Copyright (c) 2015 Ashish Patel. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "customTextField.h"

@interface CustomUIView : UIView <UITextFieldDelegate>

@property (weak, nonatomic) id <UITextFieldDelegate> textFieldDelegate;

@property (weak, nonatomic) IBOutlet customTextField *textField1;

@property (weak, nonatomic) IBOutlet customTextField *textField2;

@property (weak, nonatomic) IBOutlet customTextField *textField3;

@property (weak, nonatomic) IBOutlet customTextField *textField4;

@end
