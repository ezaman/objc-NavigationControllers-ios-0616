//
//  TeamDetailViewController.m
//  NavigationControllers
//
//  Created by Ehsan Zaman on 6/21/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

#import "TeamDetailViewController.h"

@interface TeamDetailViewController ()

@property (weak, nonatomic) IBOutlet UILabel *name;
@property (weak, nonatomic) IBOutlet UILabel *phoneNumber;
@property (weak, nonatomic) IBOutlet UILabel *birthSpot;
@property (weak, nonatomic) IBOutlet UILabel *favoriteBand;
@property (weak, nonatomic) IBOutlet UIImageView *memberPic;



@end

@implementation TeamDetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.name.text = self.teamMember.name;
    self.memberPic.image = self.teamMember.photo;
    self.phoneNumber.text = self.teamMember.phoneNumber;
    self.favoriteBand.text = self.teamMember.favoriteBand;
    self.birthSpot.text = [NSString stringWithFormat:@"%@, %@",self.teamMember.birthCity, self.teamMember.birthState];
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
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
