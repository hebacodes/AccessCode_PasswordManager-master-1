//
//  QCCreateAccountViewController.h
//  AccessCode_PasswordManager
//
//  Created by Eliot Arntz on 5/24/13.
//  Copyright (c) 2013 self.edu. All rights reserved.
//

#import <UIKit/UIKit.h>

/* QCCreateAccountViewController conforms to the UITextFieldDelegate */
@interface QCCreateAccountViewController : UIViewController <UITextFieldDelegate>

//hook up our view objects to our header file
@property (strong, nonatomic) IBOutlet UITextField *emailTextField;
@property (strong, nonatomic) IBOutlet UITextField *passwordTextField;
@property (strong, nonatomic) IBOutlet UITextField *confirmPasswordTextField;

@end
