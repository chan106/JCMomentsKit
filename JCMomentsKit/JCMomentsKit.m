//
//  ViewController.m
//  StoryBoardTest
//
//  Created by Guo.JC on 2017/11/5.
//  Copyright © 2017年 Guo.JC. All rights reserved.
//

#import "JCMomentsKit.h"

@interface  JCMomentsKit()
@property (weak, nonatomic) IBOutlet UISwitch *switchButton;
@property (weak, nonatomic) IBOutlet UISlider *sliderBurron;
@property (weak, nonatomic) IBOutlet UIView *vv;

@end

@implementation JCMomentsKit
- (IBAction)slidAction:(UISlider *)sender {
    _vv.alpha = sender.value;
}
- (IBAction)close:(id)sender {
    [self dismissViewControllerAnimated:YES completion:nil];
}

+ (UIViewController *)creatVC{
    UIViewController *vc = [[UIStoryboard storyboardWithName:@"JCMomentsKit" bundle:[NSBundle mainBundle]] instantiateViewControllerWithIdentifier:@"JCMomentsKit"];
    return vc;
}

- (IBAction)pushVC:(UIButton *)sender {
    [self presentViewController:[JCMomentsKit creatVC] animated:YES completion:nil];
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
