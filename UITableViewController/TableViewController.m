//
//  TableViewController.m
//  UITableViewController
//
//  Created by student on 10/9/15.
//  Copyright © 2015 Student. All rights reserved.
//

#import "TableViewController.h"

@interface TableViewController ()

@end

@implementation TableViewController
NSArray *arrayFruits;

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"Create TableView";
    arrayFruits = [[NSArray alloc]initWithObjects:@"Apple",@"Banana",@"WaterMelon", nil];

}


- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {

    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {

    return [arrayFruits count];
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
 //step 1
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Cell" ];
//step 2 If there are no cells to be reused, creat a new cell ...
//    if (cell==nil) {
    
    
// Configure the cell...


//Create a UIImage
    
UIImage *appleImage =[UIImage imageNamed:@"apple"];
UIImage *bananaImage =[UIImage imageNamed:@"banana"];
UIImage *watermelonImage = [UIImage imageNamed:@"watermelon"];
//Set the image in the row
cell.imageView.image =appleImage;
    switch (indexPath.row) {
        case 0:
            cell.imageView.image =appleImage;
            break;
        case 1:
            cell.imageView.image =bananaImage;
            break;
        default:
            cell.imageView.image =watermelonImage;
            break;
    }
    cell.textLabel.text =[arrayFruits objectAtIndex:indexPath.row];
    return cell;
}

@end
