//
//  AppDelegate.m
//  TabBarDemo
//
//  Created by chenyufeng on 15/12/22.
//  Copyright © 2015年 chenyufengweb. All rights reserved.
//

#import "AppDelegate.h"
#import "RootViewController.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {


  self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];

  RootViewController *root = [[RootViewController alloc]init];
  self.window.rootViewController = root;

  self.window.backgroundColor = [UIColor whiteColor];
  [self.window makeKeyAndVisible];




  return YES;
}


@end
