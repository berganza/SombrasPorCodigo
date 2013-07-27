//
//  ViewController.m
//  SombrasPorCodigo
//
//  Created by LLBER on 27/07/13.
//  Copyright (c) 2013 Berganza. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

@synthesize capa1, capa2;

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    
    // Primera capa
    capa1 = [CALayer layer];
    capa1.bounds = CGRectMake(0, 0, 100, 100);
    capa1.position = CGPointMake(160, 80);
    capa1.backgroundColor = [UIColor yellowColor].CGColor;
    
    capa1.cornerRadius = 50;
    capa1.opacity = 1;
    capa1.borderWidth = 2;
    capa1.borderColor = [UIColor blueColor].CGColor;
    
    capa1.shadowOffset = CGSizeMake(0, 0);
    capa1.shadowColor = [UIColor blackColor].CGColor;
    capa1.shadowOpacity = 1;
    capa1.shadowRadius = 0;
    
    [self.view.layer addSublayer:capa1];
    
    
    // Segunda capa
    capa2 = [CALayer layer];
    capa2.bounds = CGRectMake(0, 0, 100, 100);
    capa2.contents = (id)[UIImage imageNamed:@"Logo.png" ].CGImage;
    capa2.position = CGPointMake(160, 350);
    
    capa2.shadowOffset = CGSizeMake(0, 0);
    capa2.shadowColor = [UIColor orangeColor].CGColor;
    capa2.shadowOpacity = 1;
    capa2.shadowRadius = 0;
    
    [self.view.layer addSublayer:capa2];

}

- (IBAction)slider1:(id)sender {
    UISlider * slider = (UISlider *) sender;
    [capa1 setShadowOffset:CGSizeMake((float) (slider.value), (float) (slider.value))];
    [capa2 setShadowOffset:CGSizeMake((float) (slider.value), (float) (slider.value))];
}

- (IBAction)slider2:(id)sender {
    UISlider * slider = (UISlider *) sender;
    [capa1 setShadowOpacity:(float) (slider.value)];
    [capa2 setShadowOpacity:(float) (slider.value)];
}

- (IBAction)slider3:(id)sender {
    UISlider * slider = (UISlider *) sender;
    [capa1 setShadowRadius:(float) (slider.value)];
    [capa2 setShadowRadius:(float) (slider.value)];
}
@end











