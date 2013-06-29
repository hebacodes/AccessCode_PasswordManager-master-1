//
//  QCAddPasswordViewController.h
//  AccessCode_PasswordManager
//
//  Created by Eliot Arntz on 5/24/13.
//  Copyright (c) 2013 self.edu. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "QCAccount.h"

/* we setup our own protocol.  QCPasswordFeedViewController will have to conform to the QCAddPasswordViewControllerDelegate and then it will be able to implement the method we define below: -(void)passwordAdded:(QCAccount *)account;
 */
@protocol QCAddPasswordViewControllerDelegate <NSObject>

-(void)passwordAdded:(QCAccount *)account;

@end

@interface QCAddPasswordViewController : UIViewController <UITextFieldDelegate>

/* we create our own property name delegate.  Now when we create instances of QCAddPasswordViewController we can set the property 'delegate' equal to self. */
@property (weak) id <QCAddPasswordViewControllerDelegate> delegate;

@property (strong, nonatomic) IBOutlet UITextField *accountTextField;
@property (strong, nonatomic) IBOutlet UITextField *userNameTextField;
@property (strong, nonatomic) IBOutlet UITextField *passwordTextField;
@property (strong, nonatomic) IBOutlet UITextField *commentTextField;

@end
