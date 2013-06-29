//
//  QCCustomButtonCell.h
//  AccessCode_PasswordManager
//
//  Created by Rebecca Kleinberg on 6/23/13.
//  Copyright (c) 2013 self.edu. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface QCCustomButtonCell : UITableViewCell
@property (strong, nonatomic) IBOutlet UILabel *textLabel;
@property (strong, nonatomic) IBOutlet UIButton *button;
- (IBAction)buttonPressed:(id)sender;

@end
