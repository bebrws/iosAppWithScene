//
//  main.m
//  iosAppWithScene
//
//  Created by Brad Barrows on 4/20/20.
//  Copyright © 2020 bbarrows. All rights reserved.
//
//#import <Foundation/NSObjCRuntime.h>

#import <objc/runtime.h>
#include <objc/message.h>

#import "NSTask.h"
#import <UIKit/UIKit.h>



@interface AppDelegate : UIResponder <UIApplicationDelegate>


@end



@interface ViewController : UIViewController


@end



@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}


@end




@interface SceneDelegate : UIResponder <UIWindowSceneDelegate>

@property (strong, nonatomic) UIWindow * window;

@end


@implementation SceneDelegate


- (void)scene:(UIScene *)scene willConnectToSession:(UISceneSession *)session options:(UISceneConnectionOptions *)connectionOptions {
    // Use this method to optionally configure and attach the UIWindow `window` to the provided UIWindowScene `scene`.
    // If using a storyboard, the `window` property will automatically be initialized and attached to the scene.
    // This delegate does not imply the connecting scene or session are new (see `application:configurationForConnectingSceneSession` instead).
    
    CGRect rect = UIScreen.mainScreen.bounds;
    self.window =  [[UIWindow alloc] initWithFrame:rect];
    
    self.window.windowScene = (UIWindowScene *)scene;
    
    UIView *contView = [[UIView alloc] initWithFrame:rect];
    contView.backgroundColor = UIColor.greenColor;
    
    UIViewController *controller = [[UIViewController alloc] init];
    controller.view = contView;
    
    self.window.rootViewController = controller;
    
    // next line isnt necessary
    // application.keyWindo = window;
    [self.window makeKeyAndVisible];
}


- (void)sceneDidDisconnect:(UIScene *)scene {
    // Called as the scene is being released by the system.
    // This occurs shortly after the scene enters the background, or when its session is discarded.
    // Release any resources associated with this scene that can be re-created the next time the scene connects.
    // The scene may re-connect later, as its session was not neccessarily discarded (see `application:didDiscardSceneSessions` instead).
}


- (void)sceneDidBecomeActive:(UIScene *)scene {
    // Called when the scene has moved from an inactive state to an active state.
    // Use this method to restart any tasks that were paused (or not yet started) when the scene was inactive.
}


- (void)sceneWillResignActive:(UIScene *)scene {
    // Called when the scene will move from an active state to an inactive state.
    // This may occur due to temporary interruptions (ex. an incoming phone call).
}


- (void)sceneWillEnterForeground:(UIScene *)scene {
    // Called as the scene transitions from the background to the foreground.
    // Use this method to undo the changes made on entering the background.
}


- (void)sceneDidEnterBackground:(UIScene *)scene {
    // Called as the scene transitions from the foreground to the background.
    // Use this method to save data, release shared resources, and store enough scene-specific state information
    // to restore the scene back to its current state.
}


@end






@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    
    return YES;
}


#pragma mark - UISceneSession lifecycle


- (UISceneConfiguration *)application:(UIApplication *)application configurationForConnectingSceneSession:(UISceneSession *)connectingSceneSession options:(UISceneConnectionOptions *)options {
    // Called when a new scene session is being created.
    // Use this method to select a configuration to create the new scene with.
    return [[UISceneConfiguration alloc] initWithName:@"Default Configuration" sessionRole:connectingSceneSession.role];
}


- (void)application:(UIApplication *)application didDiscardSceneSessions:(NSSet<UISceneSession *> *)sceneSessions {
    // Called when the user discards a scene session.
    // If any sessions were discarded while the application was not running, this will be called shortly after application:didFinishLaunchingWithOptions.
    // Use this method to release any resources that were specific to the discarded scenes, as they will not return.
}


@end



int main(int argc, char * argv[]) {
    //    NSTask *task = [[NSTask alloc] init];
    
    NSString * appDelegateClassName;
    
    
    //    dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0), ^{
    //        //Here your non-main thread.
    //        [NSThread sleepForTimeInterval:2.0f];
    //
    //        //[task setLaunchPath:@"/usr/bin/cycript"];
    //        //void (*objc_msgSendLaunchPath)(id self, SEL _cmd, NSString *path) = (void*)objc_msgSend;
    //        //objc_msgSend(task, sel_getUid("setLaunchPath:"), @"/usr/bin/cycript");
    //        typedef void (*sendLaunchPathType)(id, SEL, NSString *);
    //        sendLaunchPathType sendLaunchPathMessage = (sendLaunchPathType)objc_msgSend;
    //        sendLaunchPathMessage(task, sel_getUid("setLaunchPath:"), @"/usr/bin/cycript");
    //
    //        [task setArguments:@[@"-p", [NSString stringWithFormat:@"%d", getpid()], @"script.cy"]];
    //
    //
    //        //[task launch];
    //
    //        typedef void (*sendLaunchType)(id, SEL);
    //        sendLaunchType sendLaunchTypeMessage = (sendLaunchType)objc_msgSend;
    //        sendLaunchTypeMessage(task, sel_getUid("launch"));
    //
    //
    //        dispatch_async(dispatch_get_main_queue(), ^{
    //            //Here you returns to main thread.
    //
    //        });
    //    });
    
    
    // [task waitUntilExit];
    
    @autoreleasepool {
        // Setup code that might create autoreleased objects goes here.
        appDelegateClassName = NSStringFromClass([AppDelegate class]);
    }
    return UIApplicationMain(argc, argv, nil, appDelegateClassName);
}
