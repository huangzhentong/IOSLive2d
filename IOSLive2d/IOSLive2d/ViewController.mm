//
//  ViewController.m
//  IOSLive2DSample
//
//  Created by huang on 2016/10/10.
//  Copyright © 2016年 huang. All rights reserved.
//

#import "ViewController.h"
#import "IPhoneUtil.h"
#import "LAppModel.h"
#import "LAppDefine.h"
#include "LAppLive2DManager.h"

@interface ViewController ()
{
    LAppLive2DManager* live2DMgr;
}
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    live2DMgr=new LAppLive2DManager();
    
    
    
    
    CGRect screen = [IPhoneUtil getScreenRect];
    LAppView* view = live2DMgr->createView(screen);
    
    live2DMgr->changeModel();
    
    
    [self.view addSubview:(UIView*)view] ;
    
    
    MenuView *target = [[MenuView alloc] initWithFrame:CGRectMake(20, screen.size.height-50, 50, 50)] ;
    [target setParentController:self];
    [self.view addSubview:target];
    [target becomeFirstResponder];

    // Do any additional setup after loading the view, typically from a nib.
}


- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    if (LAppDefine::DEBUG_LOG) NSLog(@"viewDidUnload @ViewController");
    delete live2DMgr;
    live2DMgr=nil;
}



- (void)viewWillDisappear:(BOOL)animated
{
    if (LAppDefine::DEBUG_LOG) NSLog(@"viewWillDisappear @ViewController");
    live2DMgr->onPause();
    [super viewWillDisappear:animated];
}



- (void)viewWillAppear:(BOOL)animated
{
    if (LAppDefine::DEBUG_LOG) NSLog(@"viewWillAppear @ViewController");
    live2DMgr->onResume();
    [super viewWillAppear:animated];
}



-(void)event
{
    if (LAppDefine::DEBUG_LOG)NSLog(@"change model");
    live2DMgr->changeModel();
}

@end



@implementation MenuView


- (id)initWithFrame:(CGRect)frame
{
    if ((self = [super initWithFrame:frame]))
    {
        UIImageView* image=[[UIImageView alloc]initWithImage:[UIImage imageNamed:@"icon_gear.png"]];
        [self addSubview:image];
    }
    return self;
}



- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
    UIMenuController *menu = [UIMenuController sharedMenuController];
    [menu setTargetRect:CGRectZero inView:self];
    menu.arrowDirection = UIMenuControllerArrowRight;
    
    UIMenuItem *item1 = [[UIMenuItem alloc] initWithTitle:@"change model" action:@selector(event:)] ;
    
    menu.menuItems = [NSArray arrayWithObjects:item1, nil];
    [menu setMenuVisible:YES animated:YES];
}


- (BOOL)canPerformAction:(SEL)action withSender:(id)sender
{
    if ( action == @selector(event:))
    {
        return YES;
    }
    return NO;
}


- (void)event:(id)sender
{
    [parentController event];
}


-(void)setParentController:(ViewController*)parent
{
    parentController=parent;
}


- (BOOL)canBecomeFirstResponder
{
    return YES;
}

@end
