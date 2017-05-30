//
//  PrintPhotos.m
//  CongressPrint - ObjC
//
//  Created by Kadell on 5/24/17.
//  Copyright © 2017 Kadell. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface PrintPhotos : NSObject

@property (readonly) NSString *title;
@property (readonly) NSString *thumbnailUrl;
@property (readonly) NSString *fullImageUrl;

-(PrintPhotos *) eachprintPhoto:(NSData *)data;


@end
