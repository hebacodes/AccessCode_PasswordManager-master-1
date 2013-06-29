//
//  QCAutoLogoutViewController.h
//  AccessCode_PasswordManager
//
//  Created by Rebecca Kleinberg on 6/24/13.
//  Copyright (c) 2013 self.edu. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface QCAutoLogoutViewController : UITableViewController <UITableViewDelegate, UITableViewDataSource>

@property (strong, nonatomic) IBOutlet UITableView *autoLogoutTableView;

@end
