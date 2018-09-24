//
//  AppDelegate.m
//  用xib来创建视图控制器
//
//  Created by apple on 15/12/14.
//  Copyright © 2015年 SUNCO. All rights reserved.
//

/**
 这个Demo无storyboard文件，是利用xib文件来创建视图控制器的。在项目的TARGETS中的General中的Deployment Info中的Main Interface后面填空，代表不用storyboard文件。
 */
#import "AppDelegate.h"
#import "ViewController.h"

@interface AppDelegate ()

@end

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    
    /**
     1、创建窗口：
     */
    self.window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
    
    /**
     2、用xib文件创建视图控制器：
     在项目中创建一个可视化的Empty文件，这个文件的名称以.xib为结尾，然后在这个文件中拖入view控件并且设置文件的拥有者(File’s Owner)为一个视图控制器，然后就要把这个文件拥有者的view属性和文件中的view控件进行连线。上述的意思是要确定.xib文件是代表某一个视图控制器并且文件里面的view控件代表的是这个视图控制器的视图；
     下面方法中的bundle:后面的参数也可以写为nil。
     */
    ViewController *viewController = [[ViewController alloc] initWithNibName:@"ViewController" bundle:[NSBundle mainBundle]];
    
    /**
     3、用上面创建的视图控制器来做窗口的根视图控制器，然后使窗口成为主窗口并显示出来：
     */
    self.window.rootViewController = viewController;
    [self.window makeKeyAndVisible];
    
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
