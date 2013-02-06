//
//  SSAppDelegate.m
//  foo
//
//  Created by Alexander Corrado on 2/5/13.
//  Copyright (c) 2013 Xamarin. All rights reserved.
//

#import "SSAppDelegate.h"

@interface FooWindow : NSWindow
@end

@implementation FooWindow

-(BOOL)canBecomeKeyWindow
{
	return YES;
}

@end

@implementation SSAppDelegate

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification
{
	win = [[FooWindow alloc] initWithContentRect:NSMakeRect(0, 0, 100, 100) styleMask:NSTitledWindowMask|NSClosableWindowMask|NSMiniaturizableWindowMask|NSResizableWindowMask backing:NSBackingStoreBuffered defer:NO];
	
	[win makeKeyAndOrderFront:self];
	[NSTimer scheduledTimerWithTimeInterval:2 target:self selector:@selector(fire:) userInfo:nil repeats:NO];
}

-(void)fire:(id)timer
{
    NSLog(@"TIMER FIRED: %@", win);
    [win setStyleMask:NSResizableWindowMask];
}

@end
