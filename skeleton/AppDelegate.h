//
//  skeletonAppDelegate.h
//  skeleton
//
//  Created by David Petrie on 23/03/11.
//  Copyright 2011 n/a. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import "GLView.h"

@interface AppDelegate : NSObject <NSApplicationDelegate> {
@private
    IBOutlet NSWindow *window;
    IBOutlet GLView *glView;
}

@end
