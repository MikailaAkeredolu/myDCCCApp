//
//  DetailViewController.h
//  myDCCC
//
//  Created by Mikaila Akeredolu on 10/19/13.
//  Copyright (c) 2013 Mikaila Akeredolu. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DetailViewController : UIViewController

@property (strong, nonatomic) id detailItem;

@property (weak, nonatomic) IBOutlet UILabel *detailDescriptionLabel;

@property (weak, nonatomic) IBOutlet UIWebView *webView;



@end
