//
//  ViewController.m
//  TextfieldDelegateText
//
//  Created by Ashish Patel on 8/8/15.
//  Copyright (c) 2015 Ashish Patel. All rights reserved.
//

#import "ViewController.h"
#import "SecondViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    _textField1.delegate = self;
    _textField2.delegate = self;
    _textField3.delegate = self;
    _textField4.delegate = self;
    _textField5.delegate = self;
    //Test commit 3
    //Test commit 4
    //Test commit 10
    //Test commit 11
    //Test commit 5
    //Test commit 6
    //Test commit 7
    //Test commit 8
}

-(BOOL) textField:(UITextField *)textField shouldChangeCharactersInRange:(NSRange)range replacementString:(NSString *)string{
    
    return true;
}

- (IBAction)ButtonClicked:(id)sender {
    [self pushSecondViewController];
}

- (void) pushSecondViewController{
    NSLog(@"ViewController.pushViewController()");
    SecondViewController *vc = [[SecondViewController alloc] init];
    [self.navigationController pushViewController:vc animated:YES];
    
    //    SecondViewController *vc = [[SecondViewController alloc] initWithNibName:@"SecondViewController" bundle:nil];
    //    [self.navigationController pushViewController:vc animated:YES];
}

@end
