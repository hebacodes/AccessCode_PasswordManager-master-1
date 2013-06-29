//
//  QCSettingViewController.h
//  AccessCode_PasswordManager
//
//  Created by Rebecca Kleinberg on 6/23/13.
//  Copyright (c) 2013 self.edu. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "QCCustomSwitchCell.h"
#import "QCCustomButtonCell.h"
#import "QCAutoLogoutViewController.h"

@interface QCSettingViewController : UITableViewController <UITableViewDelegate, UITableViewDataSource
//, QCAutoLogoutViewControllerDelegate
>
@property (strong, nonatomic) IBOutlet UITableView *tableView;

@end
