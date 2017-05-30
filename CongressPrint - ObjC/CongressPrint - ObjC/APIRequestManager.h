//
//  APIRequestManager.m
//  CongressPrint - ObjC
//
//  Created by Kadell on 5/23/17.
//  Copyright © 2017 Kadell. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface APIRequestManager: NSObject


+ (APIRequestManager *) manager;


-(void) getdata:(NSString *)apiEndPoint callback:(void(^)(NSData *))data;

@end


