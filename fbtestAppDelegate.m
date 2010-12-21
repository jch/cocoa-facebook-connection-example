//
//  fbtestAppDelegate.m
//  fbtest
//
//  Created by Jerry Cheung on 12/20/10.
//  Copyright 2010 Jerry Cheung. All rights reserved.
//

#import "fbtestAppDelegate.h"
#import "NSString+JCURLUtilities.h"

@implementation fbtestAppDelegate

@synthesize window, webView, logView;

- (void)awakeFromNib {
  NSString *clientId = @"YOUR_CLIENT_ID";
  NSString *scope = @"publish_stream"; // comma separated, no space, http://developers.facebook.com/docs/authentication/permissions
  NSString *urlString = [NSString stringWithFormat:@"https://graph.facebook.com/oauth/authorize?client_id=%@&scope=%@&redirect_uri=http://www.facebook.com/connect/login_success.html&type=user_agent&display=popup", clientId, scope];
  NSURL *url = [NSURL URLWithString:urlString];
  [[webView mainFrame] loadRequest:[NSURLRequest requestWithURL:url]];
}


- (void)webView:(WebView *)sender didStartProvisionalLoadForFrame:(WebFrame *)frame
{
  // Only report feedback for the main frame.
  if (frame == [sender mainFrame]){
    NSURL *url = [[[frame provisionalDataSource] request] URL];
    [self log:[NSString stringWithFormat:@"URL: %@", [url absoluteString]]];
    [self log:[NSString stringWithFormat:@"Fragment: %@", [[url fragment] queryStringDictionary]]];
    [self log:[NSString stringWithFormat:@"Query: %@", [[url query] queryStringDictionary]]];
    [self log:@"----------------------------"];
  }
}

- (void)log:(NSString *)message {
  NSTextStorage *textStorage;
  textStorage = [[self logView] textStorage];
  [textStorage beginEditing];
  [textStorage appendAttributedString:[[NSAttributedString alloc] initWithString:[message description]]];
  [textStorage endEditing];
  [[self logView] insertLineBreak:nil];
  [[self logView] insertLineBreak:nil];
}

@end
