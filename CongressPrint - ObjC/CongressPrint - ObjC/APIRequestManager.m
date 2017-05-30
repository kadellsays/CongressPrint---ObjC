//
//  APIRequestManager.m
//  CongressPrint - ObjC
//
//  Created by Kadell on 5/23/17.
//  Copyright © 2017 Kadell. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "APIRequestManager.h"


@implementation APIRequestManager

-(id)init {
    self = [super init];
    
    if (self) {
    
    }
    return self;
}

+(APIRequestManager *) manager{
    
    static APIRequestManager *manager = nil;
    
    return manager;
    
}



-(void)getdata:(NSString *)apiEndPoint callback:(void (^)(NSData *))callback {
    NSURL *myURL = [NSURL fileURLWithPath:apiEndPoint];
    NSURLSession *session = [NSURLSession sessionWithConfiguration:(NSURLSessionConfiguration.defaultSessionConfiguration)];
    [[session dataTaskWithURL:myURL completionHandler:^(NSData * _Nullable data, NSURLResponse * _Nullable response, NSError * _Nullable error) {
        
        if (error != nil) {
            NSLog(@"Error during session: %@", error);
        }
        
        NSData *validData = data;
        callback(validData);
    }] resume] ;
    
}


@end
