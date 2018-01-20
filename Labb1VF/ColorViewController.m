//
//  ColorViewController.m
//  Labb1VF
//
//  Created by Victor Fundberg on 2018-01-20.
//  Copyright © 2018 Victor Fundberg. All rights reserved.
//

#import "ColorViewController.h"

@interface ColorViewController ()
@property (weak, nonatomic) IBOutlet UISwitch *colorSwitch;

@end

@implementation ColorViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)switchClick:(id)sender {
    if(_colorSwitch.on){
        self.view.backgroundColor = [UIColor blackColor];
    }else{
        self.view.backgroundColor = [UIColor whiteColor];
    }
}


#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
    UIViewController *color = [segue destinationViewController];
    if(_colorSwitch.on){
        color.view.backgroundColor = [UIColor blackColor];
    }else{
        color.view.backgroundColor = [UIColor whiteColor];
    }
}


@end
