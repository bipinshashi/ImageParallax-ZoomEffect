//
//  ViewController.m
//  ParallaxEffect
//
//  Created by Bipen Sasi on 3/21/14.
//  Copyright (c) 2014 Bipen Sasi. All rights reserved.
//

#import "ViewController.h"

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
    if (yOffset < -250) {
        f.origin.y = yOffset;
        f.size.height =  -yOffset;
        self.imageView.frame = f;
    }else{
        f.origin.y = -(yOffset*0.50);
        self.imageView.frame = f;
    }
}

@end
