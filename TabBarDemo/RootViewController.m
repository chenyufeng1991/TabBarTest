

//
//  RootViewController.m
//  TabBarDemo
//
//  Created by chenyufeng on 15/12/22.
//  Copyright © 2015年 chenyufengweb. All rights reserved.
//

#import "RootViewController.h"
#import "FirstViewController.h"
#import "SecondViewController.h"

@interface RootViewController ()<UITabBarControllerDelegate>

@end

@implementation RootViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
  self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
  if (self) {

  }
  return self;
}

- (void)viewDidLoad
{
  [super viewDidLoad];

  UITabBarController *tabBarController = [[UITabBarController alloc]init];
  tabBarController.delegate = self;

  FirstViewController *firstVC = [[FirstViewController alloc]init];
  UINavigationController *firstNav = [[UINavigationController alloc]initWithRootViewController:firstVC];
  firstNav.tabBarItem = [[UITabBarItem alloc]initWithTabBarSystemItem:UITabBarSystemItemRecents tag:0];

  SecondViewController *secondVC = [[SecondViewController alloc]init];
  UINavigationController *secondNav = [[UINavigationController alloc]initWithRootViewController:secondVC];
  secondNav.tabBarItem = [[UITabBarItem alloc]initWithTabBarSystemItem:UITabBarSystemItemRecents tag:1];

  tabBarController.viewControllers = [NSArray arrayWithObjects:firstNav,secondNav, nil];

  // 重要：一定不能让 tabBarController 释放掉，否则会引起崩溃
  self.tabBarController = tabBarController;
  [self.view addSubview:tabBarController.view];
  self.view.backgroundColor = [UIColor whiteColor];
}

@end
