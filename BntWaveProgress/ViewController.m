//
//  ViewController.m
//  BntWaveProgress
//
//  Created by Barnett Wu on 16/7/1.
//  Copyright © 2016年 Dante_Barnett. All rights reserved.
//

#import "ViewController.h"
#import "BntWaveView.h"
#import "BntWaveProgress.h"

@interface ViewController ()

@property BntWaveView *bgView;

@property BntWaveProgress *proView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self addBgView];
    [self addProView];
    [self addbutton];
}

- (void)addBgView{
    self.bgView = [[BntWaveView alloc] init];
    _bgView.frame = CGRectMake(0, 100, 375, 400);
    _bgView.percent = 0.3;
    [self.view addSubview:_bgView];
    [_bgView creatWave];
}

- (void)addProView
{
    self.proView = [[BntWaveProgress alloc] init];
    _proView.frame = CGRectMake((375 - 150) / 2, 100, 150, 150);
    _proView.waveViewMargin = UIEdgeInsetsMake(0, 0, 0, 0);
    _proView.percent = 0.9;
    _proView.numberLabel.text = @"90";
    _proView.numberLabel.font = [UIFont boldSystemFontOfSize:50];
    _proView.numberLabel.textColor = [UIColor whiteColor];
    _proView.unitLabel.text = @"%";
    _proView.unitLabel.font = [UIFont boldSystemFontOfSize:20];
    _proView.unitLabel.textColor = [UIColor whiteColor];
    _proView.explainLabel.text = @"Bnt";
    _proView.explainLabel.font = [UIFont systemFontOfSize:20];
    _proView.explainLabel.textColor = [UIColor whiteColor];
    [self.view addSubview:_proView];
    [_proView startWave];
}

- (void)addbutton
{
    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    button.backgroundColor = [UIColor colorWithRed:1.00 green:0.40 blue:0.53 alpha:1.00];
    button.frame = CGRectMake(150, 600, 80, 30);
    [button addTarget:self action:@selector(buttonClick) forControlEvents:UIControlEventTouchUpInside];
    [button setTitle:@"percent" forState:UIControlStateNormal];
    [self.view addSubview:button];
}


- (void)buttonClick
{
    NSLog(@"%@",_proView.numberLabel.text);
    _proView.percent = _proView.percent - 0.1;
    _proView.numberLabel.text = [NSString stringWithFormat:@"%d",(int)(_proView.percent * 100)];
    [_proView startWave];
}

@end
