//
//  ViewController.m
//  StoryBoardTest
//
//  Created by Guo.JC on 2017/11/5.
//  Copyright © 2017年 Guo.JC. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UISwitch *switchButton;
@property (weak, nonatomic) IBOutlet UISlider *sliderBurron;
@property (weak, nonatomic) IBOutlet UIView *vv;

@end

@implementation ViewController
- (IBAction)slidAction:(UISlider *)sender {
    _vv.alpha = sender.value;
}
- (IBAction)close:(id)sender {
    [self dismissViewControllerAnimated:YES completion:nil];
}

+ (UIViewController *)creatVC{
    UIViewController *vc = [[UIStoryboard storyboardWithName:@"Test" bundle:[NSBundle mainBundle]] instantiateViewControllerWithIdentifier:@"testVC"];
    return vc;
}

- (IBAction)pushVC:(UIButton *)sender {
    [self presentViewController:[ViewController creatVC] animated:YES completion:nil];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
