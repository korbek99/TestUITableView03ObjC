//
//  ViewController.m
//  TestUITableView
//
//  Created by Jose David Bustos H on 21-01-17.
//  Copyright © 2017 Jose David Bustos H. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    // if (tableView == self.firstTableView) //or (tableView == firstTableView)
    //     return [_fetchedResultsController.sections count];
    //  else
    return 1;
}
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
   // if (section == 0)
   //     return 6;
   // else
        return 32;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    NSLog(@"Table Cell Data");
    static NSString *CellIdentifier = @"Cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:CellIdentifier];
    }
    cell.textLabel.text =@"Tabla Test";
    cell.detailTextLabel.text =@"Detalles";
    cell.imageView.image = [UIImage imageNamed:@"apple4s.jpg"];
    cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
    
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Navigation logic may go here, for example:
    // Create the next view controller.
    //DetailViewController *detailViewController = [[DetailViewController alloc] //initWithNibName:@"DetailViewController" bundle:nil];
    
    // Push the view controller.
    //[self.navigationController pushViewController:detailViewController animated:NO];
    
   // detailViewController.detailLabel.text = [_items objectAtIndex:indexPath.row];
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    // How to get the UITableViewCell associated with this indexPath?
    return 44;
}
@end
