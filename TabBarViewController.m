//
//  TabBarViewController.m
//  Week5
//
//  Created by Tom Gurka on 7/5/14.
//  Copyright (c) 2014 tom. All rights reserved.
//

#import "TabBarViewController.h"

#import "HomeViewController.h"
#import "SearchViewController.h"
#import "AccountViewController.h"
#import "TrendingViewController.h"

@interface TabBarViewController ()

@property (nonatomic,strong) HomeViewController *homeViewController;
@property (nonatomic,strong) SearchViewController *searchViewController;
@property (nonatomic,strong) AccountViewController *accountViewController;
@property (nonatomic,strong) TrendingViewController *trendingViewController;
@property (weak, nonatomic) IBOutlet UIView *contentView;
@property (weak, nonatomic) IBOutlet UIView *composeView;
@property (weak, nonatomic) IBOutlet UIView *nevermindView;

@property (weak, nonatomic) IBOutlet UIButton *homeButton;
@property (weak, nonatomic) IBOutlet UIButton *searchButton;
@property (weak, nonatomic) IBOutlet UIButton *accountButton;
@property (weak, nonatomic) IBOutlet UIButton *trendingButton;

@property (weak, nonatomic) IBOutlet UIImageView *exploreImg;
- (void) bounceTip;

- (IBAction)onHomeButton:(id)sender;
- (IBAction)onSearchButton:(id)sender;
- (IBAction)onComposeButton:(id)sender;
- (IBAction)onAccountButton:(id)sender;
- (IBAction)onTrendingButton:(id)sender;
- (IBAction)onNevermindButton:(id)sender;

@property (weak, nonatomic) IBOutlet UIView *textView;
@property (weak, nonatomic) IBOutlet UIView *photoView;
@property (weak, nonatomic) IBOutlet UIView *quoteView;
@property (weak, nonatomic) IBOutlet UIView *linkView;
@property (weak, nonatomic) IBOutlet UIView *chatView;
@property (weak, nonatomic) IBOutlet UIView *videoView;

@end

@implementation TabBarViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
        self.homeViewController = [[HomeViewController alloc] init];
        self.searchViewController = [[SearchViewController alloc] init];
        self.accountViewController = [[AccountViewController alloc] init];
        self.trendingViewController = [[TrendingViewController alloc] init];
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    [self onHomeButton:nil];
    [self.homeButton setSelected:YES];
    [self performSelector:@selector(bounceTip)];
    self.composeView.alpha = 0;
    self.nevermindView.center = CGPointMake(self.nevermindView.center.x, 603);
    
    self.textView.center = CGPointMake(self.textView.center.x, 619);
    self.photoView.center = CGPointMake(self.photoView.center.x, 619);
    self.quoteView.center = CGPointMake(self.quoteView.center.x, 619);
    self.linkView.center = CGPointMake(self.linkView.center.x, 619);
    self.chatView.center = CGPointMake(self.chatView.center.x, 619);
    self.videoView.center = CGPointMake(self.videoView.center.x, 619);
    
}

- (void)bounceTip
{
    [UIView animateWithDuration:1  animations:^{
        
    self.exploreImg.center = CGPointMake(self.exploreImg.center.x, 488);
        
} completion:^(BOOL finished) {
    
    [UIView animateWithDuration:1 animations:^{
        self.exploreImg.center = CGPointMake(self.exploreImg.center.x, 494);
        } completion:^(BOOL finished) {
            [self bounceTip];
        }
     ];
    }];
    
}
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)onHomeButton:(id)sender {
    //Selection
    [sender setSelected:YES];
    [self.searchButton setSelected:NO];
    [self.accountButton setSelected:NO];
    [self.trendingButton setSelected:NO];
    
    [UIView animateWithDuration:1 animations:^{
        self.exploreImg.alpha = 1;
    } completion:nil];
    
    self.homeViewController.view.frame = self.contentView.frame;
    [self.contentView addSubview:self.homeViewController.view];
}

- (IBAction)onSearchButton:(id)sender {
    //Selection
    [sender setSelected:YES];
    [self.homeButton setSelected:NO];
    [self.accountButton setSelected:NO];
    [self.trendingButton setSelected:NO];
    
    [UIView animateWithDuration:1 animations:^{
        self.exploreImg.alpha = 0;
    } completion:nil];
    
    self.searchViewController.view.frame = self.contentView.frame;
    [self.contentView addSubview:self.searchViewController.view];
}

- (IBAction)onComposeButton:(id)sender {
    
    [UIView animateWithDuration:0.4 animations:^{
        self.exploreImg.alpha = 0;
    } completion:nil];
    
    [UIView animateWithDuration:0.4 animations:^{
        self.composeView.alpha = 0.9;
    } completion:nil];
    
    [UIView animateWithDuration:0.4 animations:^{
        self.nevermindView.center = CGPointMake(self.nevermindView.center.x, 532);
    } completion:nil];
    
    [UIView animateWithDuration:.3 delay:0 usingSpringWithDamping:.5 initialSpringVelocity:10 options:0 animations:^{
        self.photoView.center = CGPointMake(self.photoView.center.x, 224);
        } completion:nil];
    
    [UIView animateWithDuration:.3 delay:0.1 usingSpringWithDamping:.5 initialSpringVelocity:10 options:0 animations:^{
        self.textView.center = CGPointMake(self.textView.center.x, 224);
    } completion:nil];
    
    [UIView animateWithDuration:.3 delay:0.1 usingSpringWithDamping:.5 initialSpringVelocity:10 options:0 animations:^{
        self.quoteView.center = CGPointMake(self.quoteView.center.x, 224);
    } completion:nil];

    [UIView animateWithDuration:.3 delay:0.2 usingSpringWithDamping:.5 initialSpringVelocity:10 options:0 animations:^{
        self.chatView.center = CGPointMake(self.chatView.center.x, 344);
    } completion:nil];
    
    [UIView animateWithDuration:.3 delay:0.4 usingSpringWithDamping:.5 initialSpringVelocity:10 options:0 animations:^{
        self.linkView.center = CGPointMake(self.linkView.center.x, 344);
    } completion:nil];
    
    [UIView animateWithDuration:.3 delay:0.3 usingSpringWithDamping:.5 initialSpringVelocity:10 options:0 animations:^{
        self.videoView.center = CGPointMake(self.videoView.center.x, 344);
    } completion:nil];
    
    
}

- (IBAction)onAccountButton:(id)sender {
    //Selection
    [sender setSelected:YES];
    [self.homeButton setSelected:NO];
    [self.searchButton setSelected:NO];
    [self.trendingButton setSelected:NO];
    
    [UIView animateWithDuration:1 animations:^{
        self.exploreImg.alpha = 1;
    } completion:nil];
    
    self.accountViewController.view.frame = self.contentView.frame;
    [self.contentView addSubview:self.accountViewController.view];
}

- (IBAction)onTrendingButton:(id)sender {
    //Selection
    [sender setSelected:YES];
    [self.homeButton setSelected:NO];
    [self.searchButton setSelected:NO];
    [self.accountButton setSelected:NO];
    
    [UIView animateWithDuration:1 animations:^{
        self.exploreImg.alpha = 1;
    } completion:nil];
    
    self.trendingViewController.view.frame = self.contentView.frame;
    [self.contentView addSubview:self.trendingViewController.view];
}

- (IBAction)onNevermindButton:(id)sender {
    
    [UIView animateWithDuration:0.4 animations:^{
        self.composeView.alpha = 0;
    } completion:nil];
    
    [UIView animateWithDuration:0.4 animations:^{
        self.nevermindView.center = CGPointMake(self.nevermindView.center.x, 603);
    } completion:nil];
    
    
    [UIView animateWithDuration:.3 delay:0 usingSpringWithDamping:.5 initialSpringVelocity:10 options:0 animations:^{
        self.photoView.center = CGPointMake(self.photoView.center.x, -51);
    } completion:^(BOOL finished) {
        self.photoView.center = CGPointMake(self.photoView.center.x, 619);
    }
     ];
    
    [UIView animateWithDuration:.3 delay:0.1 usingSpringWithDamping:.5 initialSpringVelocity:10 options:0 animations:^{
        self.textView.center = CGPointMake(self.textView.center.x, -51);
    } completion:^(BOOL finished) {
        self.textView.center = CGPointMake(self.textView.center.x, 619);
    }
     ];
    
    [UIView animateWithDuration:.3 delay:0.1 usingSpringWithDamping:.5 initialSpringVelocity:10 options:0 animations:^{
        self.quoteView.center = CGPointMake(self.quoteView.center.x, -51);
    } completion:^(BOOL finished) {
        self.quoteView.center = CGPointMake(self.quoteView.center.x, 619);
    }
     ];
    
    [UIView animateWithDuration:.3 delay:0.2 usingSpringWithDamping:.5 initialSpringVelocity:10 options:0 animations:^{
        self.chatView.center = CGPointMake(self.chatView.center.x, -51);
    } completion:^(BOOL finished) {
        self.chatView.center = CGPointMake(self.chatView.center.x, 619);
    }
     ];
    
    [UIView animateWithDuration:.3 delay:0.3 usingSpringWithDamping:.5 initialSpringVelocity:10 options:0 animations:^{
        self.linkView.center = CGPointMake(self.linkView.center.x, -51);
    } completion:^(BOOL finished) {
        self.linkView.center = CGPointMake(self.linkView.center.x, 619);
    }
     ];
    
    [UIView animateWithDuration:.3 delay:0.3 usingSpringWithDamping:.5 initialSpringVelocity:40 options:0 animations:^{
        self.videoView.center = CGPointMake(self.videoView.center.x, -51);
    } completion:^(BOOL finished) {
        self.videoView.center = CGPointMake(self.videoView.center.x, 619);
    }
     ];
    
    
    
}
@end
