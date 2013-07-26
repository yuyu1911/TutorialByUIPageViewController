//
//  ALITutorialItemView.m
//  mData
//
//  Created by 俞雨 on 13-7-23.
//  Copyright (c) 2013年 俞雨. All rights reserved.
//

#import "ALITutorialItemView.h"

@interface ALITutorialItemView ()

@end

@implementation ALITutorialItemView
@synthesize index;
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    NSString *imageName = [NSString stringWithFormat:@"intro0%i",self.index+1];
    // Do any additional setup after loading the view from its nib.
    self.imageContainer.image = loadLocalImage(imageName, @"png");
    self.view.backgroundColor = UIColorFromRGB(0x27344f);
    if (self.index == 4) {
        UIButton *enterBtn = [[UIButton alloc] initWithFrame:CGRectMake(40, 346, 240, 42)];
        //enterBtn.titleLabel.text = @"立即体验";
        [enterBtn setTitle:@"立即体验" forState:UIControlStateNormal];
        [enterBtn setTitleColor:UIColorFromRGB(0xFFFFFF) forState:UIControlStateNormal];
        [enterBtn.titleLabel setFont:[UIFont boldSystemFontOfSize:16]];
        [enterBtn setBackgroundImage:[[UIImage imageNamed:@"btn-login.png"] stretchableImageWithLeftCapWidth:12.5 topCapHeight:0.0] forState:UIControlStateNormal];
        [enterBtn addTarget:self action:@selector(enter) forControlEvents:UIControlEventTouchUpInside];
        [self.view addSubview:enterBtn];
    }
}
- (void)enter
{
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:nil
                                                    message:@"进入APP啦"
                                                   delegate:self
                                          cancelButtonTitle:@"确定"
                                          otherButtonTitles:nil, nil];
    [alert show];
}
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)viewDidUnload {
    [self setImageContainer:nil];
    [super viewDidUnload];
}
@end
