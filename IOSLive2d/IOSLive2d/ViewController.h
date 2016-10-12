//
//  ViewController.h
//  IOSLive2DSample
//
//  Created by huang on 2016/10/10.
//  Copyright © 2016年 huang. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController


@end

@interface MenuView : UIView
{
    ViewController* parentController;
}

-(void)setParentController:(ViewController*)parent;

@end
