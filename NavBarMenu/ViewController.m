//
//  ViewController.m
//  NavBarMenu
//
//  Created by RexJason on 3/9/13.
//  Copyright (c) 2013 RexJason. All rights reserved.
//

#import "ViewController.h"
#import "KxMenu.h"

@interface ViewController ()

@end

@implementation ViewController {
        UINavigationBar* navBar;
        UIButton* navBtn;
        UIBarButtonItem* rightBtn;
}

- (id)init
{
    self = [super initWithNibName:nil bundle:nil];
    if (self) {
    }
    return self;
}

- (void) dealloc {
    if(navBar) {
        navBar = nil;
    }
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    [self.view setBackgroundColor:[UIColor whiteColor  ]];
    //    const CGFloat W = self.view.bounds.size.width;
    
    rightBtn = [[UIBarButtonItem alloc]initWithTitle:@"Menu" style:UIBarButtonItemStylePlain target:self action:@selector(showMenu:)];
    [self.navigationItem setRightBarButtonItem:rightBtn];


    
    /*

    navBar = [[UINavigationBar alloc]initWithFrame:CGRectMake(0, 0, CGRectGetWidth(self.view.frame),44)];
    navBtn = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    navBtn.frame = CGRectMake(W-50,2,100,50);
    [navBtn setTitle:@"nav Butn" forState:UIControlStateNormal];
    [navBtn addTarget:self action:@selector(showMenu:) forControlEvents:UIControlEventTouchUpInside];
    [navBar addSubview:navBtn];
    
    sel
    
    [self.view addSubview:navBar];
     */
	// Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)showMenu:(UIBarButtonItem*)sender
{
    NSLog(@"showMenu");
    NSArray *menuItems =
    @[
      
      
      [KxMenuItem menuItem:@"Go home"
                     image:nil
                    target:self
                    action:@selector(showTwitter:)],
      ];
    
    KxMenuItem *first = menuItems[0];
  //  first.foreColor = [UIColor colorWithRed:47/255.0f green:112/255.0f blue:225/255.0f alpha:1.0];
    first.alignment = NSTextAlignmentCenter;
    

 
    
    [KxMenu showMenuInView:self.view
                  fromRect:CGRectMake(280, 0, 0, 0)
                 menuItems:menuItems];
}

- (void) showTwitter:(id)sender {
    UIAlertView* uIAlertView = [[UIAlertView alloc]initWithTitle:@"Twitter" message:@"Share on twitter" delegate:self cancelButtonTitle:@"Cool" otherButtonTitles:nil];
    [uIAlertView show];
}

@end
