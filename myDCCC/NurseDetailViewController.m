//
//  NurseDetailViewController.m
//  myDCCC
//
//  Created by Mikaila Akeredolu on 10/23/13.
//  Copyright (c) 2013 Mikaila Akeredolu. All rights reserved.
//

#import "NurseDetailViewController.h"

@interface NurseDetailViewController ()
- (void)configureView;
@end

@implementation NurseDetailViewController

#pragma mark - Managing the detail item

- (void)setDetailItem:(id)newDetailItem
{
    if (_detailItem != newDetailItem) {
        _detailItem = newDetailItem;
        
        // Update the view.
        [self configureView];
    }
}

- (void)configureView
{
    // Update the user interface for the detail item.
    
    if (self.detailItem) {
        self.detailDescriptionLabel.text = [self.detailItem description];
        //here you pass the data to the detail web view
        [self.webView loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:self.detailItem]]];
        
        
    }
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    [self configureView];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
