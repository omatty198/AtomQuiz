//
//  LastViewController.m
//  Atom Quiz
//
//  Created by santa naruse on 2014/10/25.
//  Copyright (c) 2014年 santa naruse. All rights reserved.
//

#import "LastViewController.h"
#import <Social/Social.h>

@interface LastViewController ()

@end

@implementation LastViewController
{
    //クイズ画面から正答数を受ける
    int correctPercentage;
    
    //各種ラベル
    IBOutlet UILabel *percentageLabel;
    IBOutlet UILabel *levelLabel;
}

@synthesize correctPercentage;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    //正答率に応じて「一般常識レベル」の位と画像を設定
    if (correctPercentage < 30) {
        levelLabel.text = @"まだまだ覚えきれていません。";
    } else if (correctPercentage >= 30 && correctPercentage < 90) {
        levelLabel.text = @"あともう少しで完璧です。";
    } else if (correctPercentage >= 90){
        levelLabel.text = @"文句無しに完璧です！";
    }

    //実際の正答率を表示
    percentageLabel.text = [NSString stringWithFormat:@"%d %%", correctPercentage];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

-(IBAction)face
{
    SLComposeViewController *fbVC =
    [SLComposeViewController composeViewControllerForServiceType:SLServiceTypeFacebook];
    
    [fbVC setInitialText:@"Let's play Quiz!"];
    [self presentViewController:fbVC animated:YES completion:nil];
}

-(IBAction)twitter
{
    SLComposeViewController*twVC =
    [SLComposeViewController composeViewControllerForServiceType:SLServiceTypeTwitter];
    
    [twVC setInitialText:@"Let's play Quiz!"];
    [self presentViewController:twVC animated:YES completion:nil];
}

-(IBAction)home
{
    [self dismissViewControllerAnimated:YES completion:nil]; //Topに戻る
}

@end
