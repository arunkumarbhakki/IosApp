//
//  view1.m
//  Testapp
//
//  Created by AC INFOTECH INC on 5/7/14.
//  Copyright (c) 2014 __MyCompanyName__. All rights reserved.
//

#import "view1.h"
#import "view2.h"

@implementation view1

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)didReceiveMemoryWarning
{
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

/*
// Implement loadView to create a view hierarchy programmatically, without using a nib.
- (void)loadView
{
}
*/


// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor redColor];
    UILabel *lab = [[UILabel alloc]initWithFrame:CGRectMake(10, 50, 320, 30)];
    lab.text = @"Second view";
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
    view2 *v1 = [[view2 alloc]init];
    [self.navigationController pushViewController:v1 animated:YES];
}



- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

@end
