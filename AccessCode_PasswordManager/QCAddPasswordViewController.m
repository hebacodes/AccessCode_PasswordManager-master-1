//
//  QCAddPasswordViewController.m
//  AccessCode_PasswordManager
//
//  Created by Eliot Arntz on 5/24/13.
//  Copyright (c) 2013 self.edu. All rights reserved.
//

#import "QCAddPasswordViewController.h"

@interface QCAddPasswordViewController ()

@end

@implementation QCAddPasswordViewController

-(void)addBarButtonItem
{
    UIBarButtonItem *barButtonItem = [[UIBarButtonItem alloc] initWithTitle:@"Save" style:UIBarButtonItemStyleBordered target:self action:@selector(saveBarButtonItemPressed:)];
    self.navigationItem.rightBarButtonItem = barButtonItem;
}

#pragma mark - ViewLifeCycle

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
    // Do any additional setup after loading the view from its nib.
    self.accountTextField.delegate = self;
    self.userNameTextField.delegate = self;
    self.passwordTextField.delegate = self;
    self.commentTextField.delegate = self;
    
    [self addBarButtonItem];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - IBActions

-(void)saveBarButtonItemPressed:(id)sender
{
    if ([self.passwordTextField.text isEqualToString:@""]){
        UIAlertView *alertView = [[UIAlertView alloc] initWithTitle:@"Error" message:@"You must enter a password" delegate:self cancelButtonTitle:@"cancel" otherButtonTitles: nil];
        [alertView show];
    }
    else {
        QCAccount *account = [[QCAccount alloc] init];
        account.accountTitle = self.accountTextField.text;
        account.userName = self.userNameTextField.text;
        account.password = self.passwordTextField.text;
        account.comment = self.commentTextField.text;
        [self.delegate passwordAdded:account];
        [self.navigationController popViewControllerAnimated:YES];
    }
}

-(BOOL)textFieldShouldReturn:(UITextField *)textField
{
    [self.accountTextField resignFirstResponder];
    [self.userNameTextField resignFirstResponder];
    [self.passwordTextField resignFirstResponder];
    [self.commentTextField resignFirstResponder];
    return YES;
}

@end
