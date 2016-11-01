//
//  RNSegment.m
//  RNSegment
//
//  Created by Mark Miyashita on 11/1/16.
//  Copyright © 2016 Mark Miyashita. All rights reserved.
//


#import "RNSegment.h"


@implementation RNSegment

RCT_EXPORT_MODULE();

- (dispatch_queue_t)methodQueue {
  return dispatch_get_main_queue();
}

@end
