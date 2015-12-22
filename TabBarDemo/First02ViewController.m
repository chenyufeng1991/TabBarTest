


//
//  First02ViewController.m
//  TabBarDemo
//
//  Created by chenyufeng on 15/12/22.
//  Copyright © 2015年 chenyufengweb. All rights reserved.
//

#import "First02ViewController.h"

@interface First02ViewController ()

@end

@implementation First02ViewController

- (void)viewDidLoad {
    [super viewDidLoad];


  self.title = @"新闻";


}


- (IBAction)backButtonPressed:(id)sender {

  [self.navigationController popViewControllerAnimated:true];
}


@end
