//
//  https://github.com/jch/NSStringURLUtilities
//
//  NSString+JCUtilities.h
//
//  Returns a dictionary of query string and fragment string parameters.
//  Example:
//  NSURL *url = [NSURL URLWithString:@"http://Jerry Cheung.com/?foo=bar#baz=garply"];
//  [[url fragment] queryStringDictionary];  # { 'foo' = 'bar'; }
//  [[url query] queryStringDictionary];  # { 'baz' = 'garply'; }
//
//  Created by Jerry Cheung on 12/20/10.
//  Copyright 2010 Jerry Cheung. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface NSString(JCURLUtilities)

- (NSMutableDictionary*) queryStringDictionary;

@end