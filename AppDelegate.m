//
//  AppDelegate.m
//  PaddockDetails
//
//  Created by Dapheny Wono  on 5/12/15.
//  Copyright (c) 2015 Dapheny Wono . All rights reserved.
//

#import "AppDelegate.h"
#import "DetailViewController.h"
#import "MasterViewController.h"
#import "RWTPaddockDetailsDoc.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
        RWTPaddockDetailsDoc *paddock1 = [[RWTPaddockDetailsDoc alloc] initWithTitle:@"Paddock A" rating: 4 thumbImage:[UIImage imageNamed:@""] fullImage:[UIImage imageNamed:@"paddock.jpg"]];
        RWTPaddockDetailsDoc *paddock2 = [[RWTPaddockDetailsDoc alloc] initWithTitle:@"Paddock B" rating: 4 thumbImage:[UIImage imageNamed:@""] fullImage:[UIImage imageNamed:@"paddock.jpg"]];
        RWTPaddockDetailsDoc *paddock3 = [[RWTPaddockDetailsDoc alloc] initWithTitle:@"Paddock C" rating: 4 thumbImage:[UIImage imageNamed:@""] fullImage:[UIImage imageNamed:@"paddock.jpg"]];
        RWTPaddockDetailsDoc *paddock4 = [[RWTPaddockDetailsDoc alloc] initWithTitle:@"Paddock D" rating: 4 thumbImage:[UIImage imageNamed:@""] fullImage:[UIImage imageNamed:@"paddock.jpg"]];
    NSMutableArray *paddocks = [NSMutableArray arrayWithObjects:paddock1, paddock2, paddock3, paddock4, nil];
    
    UINavigationController *navController = (UINavigationController *) self.window.rootViewController;
    MasterViewController *masterController = [navController.viewControllers objectAtIndex:0];
    masterController.paddocks = paddocks;
    
    // Override point for customization after application launch.
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
