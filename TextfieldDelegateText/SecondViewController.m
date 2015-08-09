//
//  SecondViewController.m
//  TextfieldDelegateText
//
//  Created by Ashish Patel on 8/8/15.
//  Copyright (c) 2015 Ashish Patel. All rights reserved.
//

#import "SecondViewController.h"
#import "CustomUIView.h"

@interface SecondViewController ()

@end

@implementation SecondViewController

CustomUIView *customUIView;

- (instancetype)init
{
    self = [super initWithNibName:@"SecondViewController" bundle:nil];
    if (self != nil) {
        [self setup];
    }
    return self;
}


- (id)initWithNibName:(NSString *)nibName bundle:(NSBundle *)bundle
{
    NSAssert(NO, @"Initialize with -init");
    return nil;
}

- (void)viewDidLoad {
    NSLog(@"SecondViewController.viewDidLoad()");
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
    customUIView.textFieldDelegate = self;
    
}

- (BOOL) textField:(UITextField *)textField shouldChangeCharactersInRange:(NSRange)range replacementString:(NSString *)string{
    
    NSLog(@"SecondViewController.shouldChangeCharactersInRange() String = %@", string);
    
    return true;
}


- (void) setup{
    NSLog(@"SecondViewController.setup()");
    
    self.view.frame = CGRectMake(0, 0, 375, 667);
    
    self.view.frame = CGRectMake(0, 0, 375, 667);
    
    const CGFloat viewHeight = self.view.frame.size.height;
    const CGFloat viewWidth = self.view.frame.size.width;
    
    self.containerView.frame = CGRectMake(0, 0, viewWidth, viewHeight);
    
    const CGFloat scrollViewWidth = self.containerView.frame.size.width;
    const CGFloat scrollViewHeight = self.containerView.frame.size.height;
    
    CGRect setPinViewCGRect = CGRectMake(0, 0, scrollViewWidth, scrollViewHeight);
    
    //create two views for set pin and confirm pin with setting up delegates
     customUIView = [[CustomUIView alloc] initWithFrame:setPinViewCGRect];
    
    
    //add subviews to scrollview
    [self.containerView addSubview:customUIView];
    
    //set the scrollViewContentSize
    self.containerView.contentSize = CGSizeMake(scrollViewWidth, scrollViewHeight);}

@end
