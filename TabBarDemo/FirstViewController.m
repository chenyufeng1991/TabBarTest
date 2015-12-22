

//
//  FirstViewController.m
//  TabBarDemo
//
//  Created by chenyufeng on 15/12/22.
//  Copyright © 2015年 chenyufengweb. All rights reserved.
//

#import "FirstViewController.h"
#import "First02ViewController.h"

@interface FirstViewController ()

@end

@implementation FirstViewController

- (void)viewDidLoad {
    [super viewDidLoad];

  self.title = @"1111";

}


- (IBAction)buttonPressed:(id)sender {

  First02ViewController *first02 = [[First02ViewController alloc] init];
  [self.navigationController pushViewController:first02 animated:true];


}



@end
