

//
//  SecondViewController.m
//  TabBarDemo
//
//  Created by chenyufeng on 15/12/22.
//  Copyright © 2015年 chenyufengweb. All rights reserved.
//

#import "SecondViewController.h"
#import "Second02ViewController.h"

@interface SecondViewController ()

@end

@implementation SecondViewController

- (void)viewDidLoad {
  [super viewDidLoad];

  self.title = @"2222";

}

- (IBAction)buttonPressed:(id)sender {

  //通过modal方式跳转，跳过去后的界面没有导航栏；
  Second02ViewController *second02 = [[Second02ViewController alloc] init];
  [self presentViewController:second02 animated:true completion:nil];

}

@end
