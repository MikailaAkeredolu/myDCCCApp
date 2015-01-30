//
//  othersViewController.m
//  myDCCC
//
//  Created by Mikaila Akeredolu on 10/23/13.
//  Copyright (c) 2013 Mikaila Akeredolu. All rights reserved.
//

#import "othersViewController.h"
#import "othersDetailViewController.h"

@interface othersViewController (){
    NSMutableArray *_objects;
}

@end

@implementation othersViewController

@synthesize linksnames,linknamessubtitles,linkurl,number,imageicons,AtoZSearch;

- (void)awakeFromNib
{
    [super awakeFromNib];
}


- (void)viewDidLoad
{
    [super viewDidLoad];
    
    //This will help show your manual push sgeway identifier
    //[self performSegueWithIdentifier:@"showHome" sender:self];
    
	/* Do any additional setup after loading the view, typically from a nib.
     self.navigationItem.leftBarButtonItem = self.editButtonItem;
     
     UIBarButtonItem *addButton = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemAdd target:self action:@selector(insertNewObject:)];
     self.navigationItem.rightBarButtonItem = addButton;
     */
    
    self.navigationItem.title = @"Other Faculty Directory";
    
    NSString *atozFile = [[NSBundle mainBundle]pathForResource:@"Others" ofType:@"plist"];
    
    //assign the presidents dictionary object to where this file is located = presidentsfile
    AtoZSearch = [[NSDictionary alloc]initWithContentsOfFile:atozFile];
    
    //access values from dictionary by using the keys.eg get [presidents name], years and party ...
    
    linksnames = [AtoZSearch objectForKey:@"LinkNames"];//using the method object for key
    linknamessubtitles = [AtoZSearch objectForKey:@"LinkSubtitles"];
    linkurl = [AtoZSearch objectForKey:@"LinkUrl"];
    imageicons = [AtoZSearch objectForKey:@"ImageIcons"];
    
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{

    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    // Return the number of rows in the section.
    return [self.linkurl count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Cell" forIndexPath:indexPath];
    
    NSString *nameOfLinks = [linksnames objectAtIndex:indexPath.row];
    cell.textLabel.text = nameOfLinks;
    
    
    NSString *subTitleText = [linknamessubtitles objectAtIndex:indexPath.row];
    cell.detailTextLabel.text = subTitleText;
    
    
    //make string for images then pass in variable to celldotomageview
    NSString *tableImages = [imageicons objectAtIndex:indexPath.row];
    cell.imageView.image = [UIImage imageNamed:tableImages];
    return cell;
}

- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the specified item to be editable.
    return YES;
}

- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        [_objects removeObjectAtIndex:indexPath.row];
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view.
    }
}

/*
 // Override to support rearranging the table view.
 - (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath
 {
 }
 */

/*
 // Override to support conditional rearranging of the table view.
 - (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath
 {
 // Return NO if you do not want the item to be re-orderable.
 return YES;
 }
 */

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if ([[segue identifier] isEqualToString:@"showDetail"]) {
        NSIndexPath *indexPath = [self.tableView indexPathForSelectedRow];
        // NSDate *object = _objects[indexPath.row];
        //[[segue destinationViewController] setDetailItem:object];
        [[segue destinationViewController] setDetailItem:linkurl[indexPath.row]];
    }
}

@end
