//
//  NASecretBox.h
//  NACL
//
//  Created by Gabriel Handford on 1/16/14.
//  Copyright (c) 2014 Gabriel Handford. All rights reserved.
//

@interface NASecretBox : NSObject

+ (NSData *)encrypt:(NSData *)data key:(NSData *)key error:(NSError * __autoreleasing *)error;

+ (NSData *)decrypt:(NSData *)data key:(NSData *)key error:(NSError * __autoreleasing *)error;


+ (NSData *)encrypt:(NSData *)data nonce:(NSData *)data key:(NSData *)key error:(NSError * __autoreleasing *)error;

+ (NSData *)decrypt:(NSData *)data nonce:(NSData *)data key:(NSData *)key error:(NSError * __autoreleasing *)error;


@end
