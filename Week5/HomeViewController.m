//
//  HomeViewController.m
//  Week5
//
//  Created by Tom Gurka on 7/5/14.
//  Copyright (c) 2014 tom. All rights reserved.
//

#import "HomeViewController.h"

@interface HomeViewController ()
@property (weak, nonatomic) IBOutlet UITextField *emailField;
- (IBAction)onCancelButton:(id)sender;
@property (weak, nonatomic) IBOutlet UIView *loginView;
@property (weak, nonatomic) IBOutlet UIView *overlayView;
- (IBAction)onLoginButton:(id)sender;

@end

@implementation HomeViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    self.overlayView.alpha = 0;
//    self.loginView.center = CGPointMake(self.loginView.center.x, 834);
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)onLoginButton:(id)sender {
    
    [self.emailField becomeFirstResponder];
    
    [UIView animateWithDuration:0.1 animations:^{
        self.overlayView.alpha = 0.9;
    } completion:nil];
    
        [UIView animateWithDuration:0.4 animations:^{
        self.loginView.center = CGPointMake(self.loginView.center.x, 180);
        } completion:nil];
}
- (IBAction)onCancelButton:(id)sender {
    [[self view] endEditing:YES];
    [UIView animateWithDuration:0.4 animations:^{
                  self.loginView.center = CGPointMake(self.loginView.center.x, 834);
    } completion:nil];
    
        [UIView animateWithDuration:0.1 animations:^{
self.overlayView.alpha = 0;
        } completion:nil];

}
@end
