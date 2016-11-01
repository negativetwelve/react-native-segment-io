//
//  RNSegment.m
//  RNSegment
//
//  Created by Mark Miyashita on 11/1/16.
//  Copyright © 2016 Mark Miyashita. All rights reserved.
//


#import "RNSegment.h"
#import <Analytics/SEGAnalytics.h>


@implementation RNSegment

RCT_EXPORT_MODULE();

- (dispatch_queue_t)methodQueue {
  return dispatch_get_main_queue();
}

RCT_EXPORT_METHOD(initialize:(NSDictionary *)options) {
  NSString *key = [RCTConvert NSString:options[@"key"]];
  BOOL debug = [RCTConvert BOOL:options[@"debug"]];
  BOOL useLocationServices = [RCTConvert BOOL:options[@"useLocationServices"]];

  SEGAnalyticsConfiguration *configuration = [SEGAnalyticsConfiguration configurationWithWriteKey:key];

  configuration.shouldUseLocationServices = useLocationServices;
  [SEGAnalytics setupWithConfiguration:configuration];
  [SEGAnalytics debug:debug];
}

RCT_EXPORT_METHOD(reset) {
  [[SEGAnalytics sharedAnalytics] reset];
}

RCT_EXPORT_METHOD(identify:(NSString *)userId withTraits:(NSDictionary *)traits) {
  [[SEGAnalytics sharedAnalytics] identify:userId traits:traits];
}

RCT_EXPORT_METHOD(alias:(NSString *)userId) {
  [[SEGAnalytics sharedAnalytics] alias:userId];
}

RCT_EXPORT_METHOD(track:(NSString *)name properties:(NSDictionary *)properties) {
  [[SEGAnalytics sharedAnalytics] track:name
                             properties:properties];
}

RCT_EXPORT_METHOD(screen:(NSString *)name properties:(NSDictionary *)properties) {
  [[SEGAnalytics sharedAnalytics] screen:name
                             properties:properties];
}

RCT_EXPORT_METHOD(flush) {
  [[SEGAnalytics sharedAnalytics] flush];
}

@end
