//
//  QCAppDelegate.m
//  AccessCode_PasswordManager
//
//  Created by Eliot Arntz on 5/21/13.
//  Copyright (c) 2013 self.edu. All rights reserved.
//

#import "QCAppDelegate.h"

@implementation QCAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    // Override point for customization after application launch.
    
    QCSignInViewController *signInViewController = [[QCSignInViewController alloc] initWithNibName:nil bundle:nil];
    /* Add a UINavigationController which creates a special viewcontroller that manages our view hierarchy*/
    QCSettingViewController *settingViewController =
    [[QCSettingViewController alloc] init];
    
    UINavigationController *navigationController = [[UINavigationController alloc]initWithRootViewController: settingViewController];  //signInViewController];
    //self.window.rootViewController = navigationController;
    
    self.window.rootViewController = navigationController;//settingViewController;

    
    [self.window makeKeyAndVisible];
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application
{
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
