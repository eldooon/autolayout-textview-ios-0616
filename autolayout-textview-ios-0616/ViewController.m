//
//  ViewController.m
//  autolayout-textview-ios-0616
//
//  Created by Eldon Chan on 6/27/16.
//  Copyright © 2016 Eldon. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UITextView *textField;
@property (weak, nonatomic) IBOutlet UIButton *leftButton;
@property (weak, nonatomic) IBOutlet UIButton *rightButton;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    //remove all constraints
    self.view.translatesAutoresizingMaskIntoConstraints = NO;
    [self.view removeConstraints:self.view.constraints];
    self.leftButton.translatesAutoresizingMaskIntoConstraints = NO;
    [self.leftButton removeConstraints: self.leftButton.constraints];
    self.rightButton.translatesAutoresizingMaskIntoConstraints = NO;
    [self.rightButton removeConstraints: self.rightButton.constraints];
    self.textField.translatesAutoresizingMaskIntoConstraints = NO;
    [self.textField removeConstraints:self.textField.constraints];
    
    //modify leftbutton constraints
    [self.leftButton.bottomAnchor constraintEqualToAnchor:self.view.bottomAnchor constant:-10].active = YES;
    [self.leftButton.leftAnchor constraintEqualToAnchor:self.view.leftAnchor constant:10].active = YES;
    
    //modify rightbutton constraints
    [self.rightButton.bottomAnchor constraintEqualToAnchor:self.view.bottomAnchor constant:-10].active = YES;
    [self.rightButton.rightAnchor constraintEqualToAnchor:self.view.rightAnchor constant:-10].active = YES;
    
    //modify textivew constraints
    
    [self.textField.topAnchor constraintEqualToAnchor:self.view.topAnchor constant:20].active = YES;;
    [self.textField.leftAnchor constraintEqualToAnchor:self.view.leftAnchor constant:10].active = YES;
    [self.textField.rightAnchor constraintEqualToAnchor:self.view.leftAnchor constant:-10].active = YES;
    [self.textField.bottomAnchor constraintEqualToAnchor:self.rightButton.topAnchor constant:-20].active = YES;
    [self.textField.widthAnchor constraintEqualToAnchor:self.view.widthAnchor constant:-20].active = YES;
    
    
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
