//
//  ViewController.h
//  ParallaxEffect
//
//  Created by Bipen Sasi on 3/21/14.
//  Copyright (c) 2014 Bipen Sasi. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
@property (strong, nonatomic) IBOutlet UIImageView *imageView;
@property (strong, nonatomic) IBOutlet NSLayoutConstraint *imageViewHeight;
@property (strong, nonatomic) IBOutlet NSLayoutConstraint *imageViewTop;

@end
