//
//  QCSignInViewController.h
//  AccessCode_PasswordManager
//
//  Created by Eliot Arntz on 5/24/13.
//  Copyright (c) 2013 self.edu. All rights reserved.
//

#import <UIKit/UIKit.h>
/* Import both the CreateAccountViewController and QCPasswordFeedViewController's means that we can create instances of these classes ergo we can push/present instances of these classes */
#import "QCCreateAccountViewController.h"
#import "QCPasswordFeedViewController.h"

/* class conforms to the UITextField Delegate (we can implement the UITextField Delegate methods) */
@interface QCSignInViewController : UIViewController<UITextFieldDelegate>

//outlet to our password textField
@property (strong, nonatomic) IBOutlet UITextField *enterPasswordTextField;

//Actions/methods that will be called/evaluated when their respective buttons are pressed.
- (IBAction)loginButtonPressed:(UIButton *)sender;
- (IBAction)createAccountButtonPressed:(UIButton *)sender;



@end
