//
//  ViewController.m
//  animation
//
//  Created by Jordan White on 8/1/15.
//  Copyright (c) 2015 Two Beards and Fro. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


#pragma mark - animations
- (IBAction)animateButton:(UIButton *)sender {
    NSLog(@"hi");
    
    [self.view addSubview:[self createUIView]];
}

- (UIView*)createUIView {

    //CGPoint cp = self.view.center;
    double width = 275.0;
    double height = 325.0;
    
    UIView *view = [[UIView alloc]initWithFrame:CGRectMake((self.view.bounds.size.width)/2 - width/2 ,(self.view.bounds.size.height)/2 - height/2 , width, height)];
    
    view.backgroundColor = [UIColor blackColor];
    
    UILabel *label = [[UILabel alloc]initWithFrame:CGRectMake(25, 25, width - 50, 25)];
    label.text = @"FBI Database";
    label.textAlignment = NSTextAlignmentCenter;
    label.textColor = [UIColor whiteColor];
    [view addSubview:label];
    
    
    UITextField *nameField = [[UITextField alloc]initWithFrame:CGRectMake(25, 100, width - 50, 30)];
    nameField.delegate = self;
    nameField.backgroundColor = [UIColor whiteColor];
    nameField.placeholder = @"Your Name";
    [view addSubview:nameField];
    
    UITextField *passwordField = [[UITextField alloc]initWithFrame:CGRectMake(25, 150, width - 50, 30)];
    passwordField.delegate = self;
    passwordField.backgroundColor = [UIColor whiteColor];
    passwordField.placeholder = @"password";
    [view addSubview:passwordField];
    
    
    return view;
}

- (BOOL)textFieldShouldReturn:(UITextField *)textField {
    [textField resignFirstResponder];
    
    return YES;
}

@end
