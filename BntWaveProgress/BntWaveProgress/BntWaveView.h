//
//  BntWaveView.h
//  BntWaveProgress
//
//  Created by Barnett Wu on 16/7/1.
//  Copyright © 2016年 Dante_Barnett. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface BntWaveView : UIView

@property (nonatomic, strong)   UIColor *firstWaveColor;
@property (nonatomic, strong)   UIColor *secondWaveColor;

@property (nonatomic, assign)   CGFloat percent;


-(void) startWave;

-(void) stopWave;

-(void) reset;

- (void)creatWave;


@end
