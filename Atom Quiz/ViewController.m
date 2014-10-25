//
//  ViewController.m
//  Atom Quiz
//
//  Created by santa naruse on 2014/10/21.
//  Copyright (c) 2014年 santa naruse. All rights reserved.
//

#import "ViewController.h"
#import <Social/Social.h>

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

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

@end
