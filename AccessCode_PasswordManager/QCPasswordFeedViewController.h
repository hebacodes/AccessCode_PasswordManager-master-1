//
//  QCPasswordFeedViewController.h
//  AccessCode_PasswordManager
//
//  Created by Eliot Arntz on 5/24/13.
//  Copyright (c) 2013 self.edu. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "QCAddPasswordViewController.h"

/* UITableView has 2 protocols: UITableViewDelegate & UITableViewDataSource.  We also created our own protocol located in the QCAddPasswordViewController.h file */
@interface QCPasswordFeedViewController : UIViewController<UITableViewDataSource, UITableViewDelegate, QCAddPasswordViewControllerDelegate>

@property (strong, nonatomic) IBOutlet UITableView *passwordFeedTableView;

//our passwords array will be an ordered set/list of the passwords we add to our password list.
@property (strong, nonatomic) NSMutableArray *passwords;

@end
