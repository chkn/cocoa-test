//
//  main.m
//  foo
//
//  Created by Alexander Corrado on 2/5/13.
//  Copyright (c) 2013 Xamarin. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import "SSAppDelegate.h"

int main(int argc, char *argv[])
{
	NSApplication* app = [NSApplication sharedApplication];
	[app setDelegate:[[SSAppDelegate alloc] init]];
	[app run];
}
