//
//  QCCustomButtonCell.m
//  AccessCode_PasswordManager
//
//  Created by Rebecca Kleinberg on 6/23/13.
//  Copyright (c) 2013 self.edu. All rights reserved.
//

#import "QCCustomButtonCell.h"

@implementation QCCustomButtonCell

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        // Initialization code
    }
    return self;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

- (IBAction)buttonPressed:(id)sender {
}
@end
