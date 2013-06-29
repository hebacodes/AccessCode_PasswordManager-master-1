//
//  QCSettingViewController.m
//  AccessCode_PasswordManager
//
//  Created by Rebecca Kleinberg on 6/23/13.
//  Copyright (c) 2013 self.edu. All rights reserved.
//

#import "QCSettingViewController.h"

@interface QCSettingViewController ()
{
    NSInteger autoLogoutIntervalInSeconds;
    NSString* autoLogoutInterval;
}

@end

@implementation QCSettingViewController

- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];

    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
 
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
    
    // Indicates that this class is implementing the protocol for a the tableview delegate and datasource.
    self.tableView.delegate = self;
    self.tableView.dataSource = self;
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    [self.tableView reloadData];
}
#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
#warning Potentially incomplete method implementation.
    // Return the number of sections.
    return 3;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
#warning Incomplete method implementation.
    // Return the number of rows in the section.
    // Section is the number that is being passed in
    
    switch (section) {
        case 0:
            
            NSLog(@"We are at section 0");
            
            return 1;
            
        case 1:

            NSLog(@"We are at section 1");
            
            return 3;
            
        case 2:
            return 2;
    
            
            break;
            
        default: return 0;
    }
    
    return 0; // This should never be reached, default will handle this. 
    
}

- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section
{
    NSArray  *titlesArray  = [NSArray arrayWithObjects:@"Auto Logout",@"Security",@"More",nil];
    return titlesArray [section];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    
    // *** if indexPath.section == 1 do this
    // *** nested if if row = 0 do switchbutton custom cell, else do regularbutton custom cell
    
    static NSString *SwitchCellIdentifier = @"SwitchCell";
    static NSString *ButtonCellIdentifier = @"ButtonCell";
    static NSString *CellIdentifier = @"Cell";
    
    if (indexPath.section == 1)
    {
        if (indexPath.row == 0)
        {
            QCCustomSwitchCell *customSwitchCell = [tableView dequeueReusableCellWithIdentifier:SwitchCellIdentifier];

            if (customSwitchCell == nil) {
                NSArray *nib = [[NSBundle mainBundle] loadNibNamed:@"QCCustomSwitchCell" owner:self options:nil];
                customSwitchCell = [nib objectAtIndex:0];

            } // end if cell == nil

            customSwitchCell.textLabel.text = @"Enable Self Destruct";
            return customSwitchCell;
        }
        
        
        QCCustomButtonCell *customButtonCell = [tableView dequeueReusableCellWithIdentifier:ButtonCellIdentifier];
        
        if (customButtonCell == nil) {
            NSArray *nib = [[NSBundle mainBundle] loadNibNamed:@"QCCustomButtonCell" owner:self options:nil];
            customButtonCell = [nib objectAtIndex:0];
            
        } // end if cell == nil
        
        
        if (indexPath.row == 1)
        {
            [customButtonCell.button setTitle:@"Reset" forState:
             UIControlStateNormal];
            customButtonCell.textLabel.text = @"Master Password";
        }
        else {
            [customButtonCell.button setTitle:@"Delete" forState: UIControlStateNormal];
            customButtonCell.textLabel.text = @"Delete Database";
            NSLog(@"The button text is %@", customButtonCell.button.titleLabel.text);
        }
        return customButtonCell;
        
        
    }

    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:CellIdentifier];;
        
    } // end if cell == nil
    
    cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
    
    if (indexPath.section == 0)
    {
        NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
        [defaults objectForKey:@"autoLogoutIntervalAsString"];
        cell.textLabel.text = [defaults objectForKey:@"autoLogoutIntervalAsString"];
    }
    
    if (indexPath.section == 2)
    {
        cell.textLabel.text =  (indexPath.row == 0) ? @"Tell Friend" : @"Email Us";
    }
    return cell;

        
}



/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    }   
    else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

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

#pragma mark - Table view delegate

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Navigation logic may go here. Create and push another view controller.
    /*
     <#DetailViewController#> *detailViewController = [[<#DetailViewController#> alloc] initWithNibName:@"<#Nib name#>" bundle:nil];
     // ...
     // Pass the selected object to the new view controller.
     [self.navigationController pushViewController:detailViewController animated:YES];
     */
    
    if (indexPath.section == 0 && indexPath.row == 0)
    {
        QCAutoLogoutViewController *autoLogoutVC = [[QCAutoLogoutViewController alloc] initWithNibName:nil bundle:nil];
        
        //autoLogoutVC.delegate = self;
        [self.navigationController pushViewController:autoLogoutVC animated:YES];
    }
}


@end
