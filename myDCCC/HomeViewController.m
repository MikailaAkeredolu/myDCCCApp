//
//  HomeViewController.m
//  myDCCC
//
//  Created by Mikaila Akeredolu on 10/19/13.
//  Copyright (c) 2013 Mikaila Akeredolu. All rights reserved.
//

#import "HomeViewController.h"

@interface HomeViewController ()

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
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

//unwind
-(IBAction)exitToHere:(UIStoryboardSegue *)sender{
    
}

@end
