//
//  ViewController.m
//  animation
//
//  Created by Jordan White on 8/1/15.
//  Copyright (c) 2015 Two Beards and Fro. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UIView *LoginView;
@property (weak, nonatomic) IBOutlet UITextField *emailField;
@property (weak, nonatomic) IBOutlet UITextField *passwordField;



@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    _LoginView.alpha = 0;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - animation StoryboardView
- (IBAction)xButton:(UIButton *)sender {
    self.LoginView.alpha = 0;
}

- (IBAction)loginButton:(UIButton *)sender {
    NSLog(@"go to the next screen");
}



#pragma mark - the Button
- (IBAction)animateButton:(UIButton *)sender {
    //Storyboard View
    [UIView animateWithDuration:1.0 delay:0.0 options:UIViewAnimationOptionCurveEaseInOut animations:^{
        _LoginView.alpha = 1.0;
    } completion:NULL];
    
    
    
    //PROGRAMMATIC VIEW
//    UIView *view = [self createUIView];
//    [self.view addSubview:view];
}


#pragma mark - animations with program view
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
    
    
    //animation
    view.alpha = 0.0;
    
    [UIView animateWithDuration:0.7 delay:0.0 options:UIViewAnimationOptionCurveEaseInOut animations:^{
        view.alpha = 1.0;
    } completion:NULL];
    
    return view;
}

- (BOOL)textFieldShouldReturn:(UITextField *)textField {
    [textField resignFirstResponder];
    
    return YES;
}

@end
