//
//  fbtestAppDelegate.h
//  fbtest
//
//  Created by Jerry Cheung on 12/20/10.
//  Copyright 2010 Jerry Cheung. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import <WebKit/WebKit.h>

@interface fbtestAppDelegate : NSObject <NSApplicationDelegate> {
  NSWindow *window;
  WebView *webView;
  NSTextView *logView;
}

@property (assign) IBOutlet NSWindow *window;
@property (assign) IBOutlet WebView *webView;
@property (assign) IBOutlet NSTextView *logView;

- (void)log:(NSString*) message;

@end
