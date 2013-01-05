//
//  ViewController.m
//  Soccer
//
//  Created by Administrator on 1/5/13.
//  Copyright (c) 2013 Ruby4Kids. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.ball = [[Ball alloc] init];
    
    [self.view addSubview:self.ball.imageView];
    
    [NSTimer scheduledTimerWithTimeInterval:.01 target:self selector:@selector(advanceBall) userInfo:nil repeats:YES];
    
	// Do any additional setup after loading the view, typically from a nib.
}

- (void) advanceBall {
    [self.ball advance];
}
- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

@end
