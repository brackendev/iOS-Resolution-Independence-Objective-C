//
//  ViewController.m
//  Vector Example
//
//  Created by brackendev.
//  Copyright (c) 2012-2019 brackendev. All rights reserved.
//

#import "ViewController.h"
#import "UIImage+PDF.h"
#import "UIImage+Tint.h"

static NSString *kPDFFile = @"home.pdf";

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [UIImage setShouldCacheOnDisk:NO];
    [UIImage setShouldCacheInMemory:YES];
    
    UIImage *imageLarge = [UIImage imageWithPDFNamed:kPDFFile atHeight:self.view.frame.size.height];
    UIImage *imageLargeRed = [imageLarge imageTintedWithColor:[UIColor redColor]];
    
    UIImage *imageMedium = [UIImage imageWithPDFNamed:kPDFFile atHeight:(self.view.frame.size.height / 2.0f)];
    UIImage *imageMediumBlue = [imageMedium imageTintedWithColor:[UIColor blueColor]];
    
    UIImage *imageSmall = [UIImage imageWithPDFNamed:kPDFFile atHeight:(self.view.frame.size.height / 10.0f)];
    UIImage *imageSmallGreen = [imageSmall imageTintedWithColor:[UIColor greenColor]];
    
    UIImage *imageTiny = [UIImage imageWithPDFNamed:kPDFFile atHeight:(self.view.frame.size.height / 20.0f)];
    UIImage *imageTinyBlack = [imageTiny imageTintedWithColor:[UIColor blackColor]];
    
    [self addImageViewsForImages:@[imageLargeRed, imageMediumBlue, imageSmallGreen, imageTinyBlack]];
}

- (void)addImageViewsForImages:(NSArray *)images {
    for (UIImage *image in images) {
        UIImageView *imageView = [[UIImageView alloc] initWithFrame:CGRectMake(0.0f, 0.0f, image.size.width, image.size.height)];
        [imageView setCenter:self.view.center];
        [imageView setImage:image];
        
        [self.view addSubview:imageView];
    }
}

@end
