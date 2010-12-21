//
//  NSString+JCUtilities
//
//  Created by Jerry Cheung on 12/20/10.
//  Copyright 2010 Jerry Cheung. All rights reserved.
//

#import "NSString+JCURLUtilities.h"


@implementation NSString(JCURLUtilities)

- (NSMutableDictionary*) queryStringDictionary {
  NSArray *elements = [self componentsSeparatedByString:@"&"];
  NSMutableDictionary *retval = [NSMutableDictionary dictionaryWithCapacity:[elements count]];
  for(NSString *e in elements) {
    NSArray *pair = [e componentsSeparatedByString:@"="];
    [retval setObject:[pair objectAtIndex:1] forKey:[pair objectAtIndex:0]];
  }
  return retval;
}

@end
