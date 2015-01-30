//
//  NurseViewController.h
//  myDCCC
//
//  Created by Mikaila Akeredolu on 10/23/13.
//  Copyright (c) 2013 Mikaila Akeredolu. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface NurseViewController : UITableViewController

//set up property for dictionary  plist
@property (nonatomic, strong)NSDictionary *AtoZSearch; //this tis the dictionary

//then declare properties to hold plist keys
@property (nonatomic, strong)NSArray *number;//these are the arrays
@property (nonatomic, strong)NSArray *linksnames;
@property (nonatomic, strong)NSArray *linknamessubtitles;
@property (nonatomic, strong)NSArray *linkurl;
@property (nonatomic, strong)NSArray *imageicons; // to add pictures



@end
