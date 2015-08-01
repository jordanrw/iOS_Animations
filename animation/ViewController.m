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
    // Do any additional setup after loading the view, typically from a nib.
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
    //UIView *view = [UIView alloc]initWithFrame:CGRectMake(self.view.center), CGRectMake(self.view.center), 50, 50;
    UIView *view = [[UIView alloc]initWithFrame:CGRectMake(120, 120, 50.0, 50.0)];
    view.backgroundColor = [UIColor redColor];
    
    return view;
}


@end
