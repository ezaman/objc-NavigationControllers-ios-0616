//
//  TeamViewController.m
//  NavigationControllers
//
//  Created by Ehsan Zaman on 6/21/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

#import "TeamViewController.h"
#import "TeamDetailViewController.h"

@interface TeamViewController ()

@end

@implementation TeamViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    
    if ([segue.identifier isEqualToString:@"alSegue"]) {
      NSLog(@" This is Al's segue");
        TeamMember *al = [[TeamMember alloc]initWithName:@"Al" PhoneNumber:@"5551212" BirthCity:@"Detroit" BirthState:@"Michigan" FavoriteBand:@"The Beatles" Photo:[UIImage imageNamed: @"al"]];
        TeamDetailViewController *alVC = (TeamDetailViewController *)segue.destinationViewController;
        alVC.teamMember = al;
    }
    
    if ([segue.identifier isEqualToString:@"aviSegue"]) {
        NSLog(@" This is Avi's segue");
        TeamMember *avi = [[TeamMember alloc]initWithName:@"Avi" PhoneNumber:@"1234567" BirthCity:@"Somewhere" BirthState:@"Somewhere else" FavoriteBand:@"Something" Photo:[UIImage imageNamed: @"avi"]];
        TeamDetailViewController *aviVC = (TeamDetailViewController *)segue.destinationViewController;
        aviVC.teamMember = avi;
    }

    
    if ([segue.identifier isEqualToString:@"joeSegue"]) {
        NSLog(@" This is Joe's segue");
        TeamMember *joe = [[TeamMember alloc]initWithName:@"Joe" PhoneNumber:@"98765432" BirthCity:@"IDK" BirthState:@"IDK" FavoriteBand:@"NSYNC" Photo:[UIImage imageNamed: @"joe"]];
        TeamDetailViewController *joeVC = (TeamDetailViewController *)segue.destinationViewController;
        joeVC.teamMember = joe;
    }

    if ([segue.identifier isEqualToString:@"chrisSegue"]) {
        NSLog(@" This is Chris' segue");
        TeamMember *chris = [[TeamMember alloc]initWithName:@"Chris" PhoneNumber:@"5551234" BirthCity:@"NYC" BirthState:@"New York" FavoriteBand:@"Backstreet Boys" Photo:[UIImage imageNamed: @"chris"]];
        TeamDetailViewController *chrisVC = (TeamDetailViewController *)segue.destinationViewController;
        chrisVC.teamMember = chris;
    }

    
 }

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
