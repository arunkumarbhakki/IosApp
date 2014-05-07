//
//  ViewController.m
//  Testapp
//
//  Created by AC INFOTECH INC on 5/5/14.
//  Copyright (c) 2014 __MyCompanyName__. All rights reserved.
//

#import "ViewController.h"
#import "view1.h"
@implementation ViewController

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    UILabel *lab = [[UILabel alloc]initWithFrame:CGRectMake(10, 50, 320, 30)];
    lab.text = @"First view";
    [self.view addSubview:lab];
    
	// Do any additional setup after loading the view, typically from a nib.
    UIButton *butt1 = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    butt1.frame = CGRectMake(10, 100, 100, 50);
    [butt1 setTitle:@"Next" forState:UIControlStateNormal];
    [self.view addSubview:butt1];
    [butt1 addTarget:self action:@selector(goToNext) forControlEvents:UIControlEventTouchUpInside];
}

- (void)goToNext
{
    view1 *v1 = [[view1 alloc]init];
    [self.navigationController pushViewController:v1 animated:YES];
}


- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
}

- (void)viewWillDisappear:(BOOL)animated
{
	[super viewWillDisappear:animated];
}

- (void)viewDidDisappear:(BOOL)animated
{
	[super viewDidDisappear:animated];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

@end
