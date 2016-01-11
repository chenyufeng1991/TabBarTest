

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

//声明TabBar
@property (nonatomic,strong)UITabBarController *tabBarController;

@end

@implementation RootViewController

- (void)viewDidLoad{

  [super viewDidLoad];
  UITabBarController *tabBarController = [[UITabBarController alloc]init];
  tabBarController.delegate = self;
  /**
   把两个界面加入到根视图中；
   两个界面也分别要导航栏；
   */
  FirstViewController *firstVC = [[FirstViewController alloc]init];
  UINavigationController *firstNav = [[UINavigationController alloc]initWithRootViewController:firstVC];
  firstNav.tabBarItem = [[UITabBarItem alloc]initWithTabBarSystemItem:UITabBarSystemItemRecents tag:0];

  SecondViewController *secondVC = [[SecondViewController alloc]init];
  UINavigationController *secondNav = [[UINavigationController alloc]initWithRootViewController:secondVC];
  secondNav.tabBarItem = [[UITabBarItem alloc]initWithTabBarSystemItem:UITabBarSystemItemSearch tag:1];

  //通过数组存储；
  tabBarController.viewControllers = [NSArray arrayWithObjects:firstNav,secondNav, nil];

  self.tabBarController = tabBarController;
  [self.view addSubview:tabBarController.view];
}

@end
