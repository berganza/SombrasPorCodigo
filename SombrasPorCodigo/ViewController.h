//
//  ViewController.h
//  SombrasPorCodigo
//
//  Created by LLBER on 27/07/13.
//  Copyright (c) 2013 Berganza. All rights reserved.
//

#import <UIKit/UIKit.h>

#import <QuartzCore/QuartzCore.h>

@interface ViewController : UIViewController


@property (nonatomic, strong) CALayer * capa1;

@property (nonatomic, strong) CALayer * capa2;


- (IBAction)slider1:(id)sender;

- (IBAction)slider2:(id)sender;

- (IBAction)slider3:(id)sender;



@end
