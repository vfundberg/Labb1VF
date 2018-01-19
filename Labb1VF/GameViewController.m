//
//  GameViewController.m
//  Labb1VF
//
//  Created by Victor Fundberg on 2018-01-19.
//  Copyright © 2018 Victor Fundberg. All rights reserved.
//

#import "GameViewController.h"

@interface GameViewController ()
@property (weak, nonatomic) IBOutlet UITextField *userGuess;
@property (weak, nonatomic) IBOutlet UILabel *answerInfo;

@end

@implementation GameViewController{
    int hiddenNumber;
}
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    hiddenNumber = 1 + arc4random_uniform(100);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)guessButton:(id)sender {
    int guess = self.userGuess.text.intValue;
    if(hiddenNumber>guess){
        self.answerInfo.text=@"Higher";
    }else if (hiddenNumber<guess){
        self.answerInfo.text=@"Lower";
    }else if (hiddenNumber==guess){
        self.answerInfo.text=@"You won!";
    }
}
- (IBAction)generateNumber:(id)sender {
    hiddenNumber = 1 + arc4random_uniform(100);
    self.answerInfo.text= @" ";
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
