

//
//  Second02ViewController.m
//  TabBarDemo
//
//  Created by chenyufeng on 15/12/22.
//  Copyright © 2015年 chenyufengweb. All rights reserved.
//

#import "Second02ViewController.h"

@interface Second02ViewController ()

@end

@implementation Second02ViewController

- (void)viewDidLoad {

  [super viewDidLoad];
}

- (IBAction)backButtonPressed:(id)sender {

  //通过dismiss返回modal过来的界面；
  [self dismissViewControllerAnimated:true completion:nil];
}

@end
