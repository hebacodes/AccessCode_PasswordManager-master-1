//
//  QCCreateAccountViewController.m
//  AccessCode_PasswordManager
//
//  Created by Eliot Arntz on 5/24/13.
//  Copyright (c) 2013 self.edu. All rights reserved.
//

#import "QCCreateAccountViewController.h"

@interface QCCreateAccountViewController ()

@end

@implementation QCCreateAccountViewController

#pragma mark - Setup

/* helper method that keeps our barButtonItem creation seperate from our viewDidLoad (this is only done to keep viewDidLoad a little cleaner */
- (void)addBarButtonItem
{
    UIBarButtonItem *saveBarButtonItem = [[UIBarButtonItem alloc] initWithTitle:@"Save" style:UIBarButtonItemStyleBordered target:self action:@selector(saveBarButtonItemPressed:)];
    self.navigationItem.rightBarButtonItem = saveBarButtonItem;
}


- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    //call our helper method
    [self addBarButtonItem];
    
    //set our textField view objects's delegate property to self.
    self.emailTextField.delegate = self;
    self.passwordTextField.delegate = self;
    self.confirmPasswordTextField.delegate = self;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - IBActions

-(void)saveBarButtonItemPressed:(id)sender
{
    /* when the save BarButtonItem is pressed evaluate this method*/
    
    /* if statement (if the two passwords are the same save our password to NSUserDefaults which will persist (save) our password and email between sessions. */
    if ([self.passwordTextField.text isEqualToString:self.confirmPasswordTextField.text]){
        NSUserDefaults *standardUserDefaults = [NSUserDefaults standardUserDefaults];
        [standardUserDefaults setObject:self.emailTextField.text forKey:@"email"];
        [standardUserDefaults setObject:self.passwordTextField.text forKey:@"password"];
        [standardUserDefaults synchronize];
        
        [self.navigationController popViewControllerAnimated:YES];
    }
    //if the two passwords are not the same show an alertview
    else {
        UIAlertView *alertView = [[UIAlertView alloc] initWithTitle:@"Warning" message:@"Your passwords do not match" delegate:self cancelButtonTitle:@"Cancel" otherButtonTitles: nil];
        [alertView show];
    }
 
}

#pragma mark - UITextFieldDelegate

//implement the UITextField Protocol method that will be called every time the user presses the return key on the keyboard.
-(BOOL)textFieldShouldReturn:(UITextField *)textField
{
    [self.emailTextField resignFirstResponder];
    [self.passwordTextField resignFirstResponder];
    [self.confirmPasswordTextField resignFirstResponder];
    
    return YES;
}

@end
