//
//  ViewController.m
//  ParallaxEffect
//
//  Created by Bipen Sasi on 3/21/14.
//  Copyright (c) 2014 Bipen Sasi. All rights reserved.
//

#import "ViewController.h"

static CGFloat kParallaxRatio = 0.50;

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)scrollViewDidScroll:(UIScrollView *)scrollView{
    CGFloat yOffset  = scrollView.contentOffset.y;
    NSLog(@"yOffset:%f",yOffset);
    CGRect f = self.imageView.frame;
    if (yOffset > -20) //20 = height of status bar
        f.origin.y = -(yOffset*kParallaxRatio);
    self.imageView.frame = f;
    NSLog(@"height:%f   y:%f", self.imageView.frame.size.height, self.imageView.frame.origin.y);
}

@end
