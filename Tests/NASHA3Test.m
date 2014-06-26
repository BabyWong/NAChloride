//
//  NASHA3Test.m
//  NAChloride
//
//  Created by Gabriel on 6/23/14.
//  Copyright (c) 2014 Gabriel Handford. All rights reserved.
//

#import <GHUnit/GHUnit.h>

#import "NAChloride.h"

@interface NASHA3Test : GHTestCase { }
@end

@implementation NASHA3Test

- (void)test {
  NSData *data = [@"abc" dataUsingEncoding:NSUTF8StringEncoding];
 
  NSData *SHA3_384 = [NASHA3 SHA3ForData:data digestBitLength:384];
  NSData *expected384 = [@"f7df1165f033337be098e7d288ad6a2f74409d7a60b49c36642218de161b1f99f8c681e4afaf31a34db29fb763e3c28e" na_dataFromHexString];
  GHAssertEqualObjects(SHA3_384, expected384, nil);
  
  NSData *SHA3 = [NASHA3 SHA3ForData:data digestBitLength:512];
  NSData *expected = [@"18587dc2ea106b9a1563e32b3312421ca164c7f1f07bc922a9c83d77cea3a1e5d0c69910739025372dc14ac9642629379540c17e2a65b19d77aa511a9d00bb96" na_dataFromHexString];
  GHAssertEqualObjects(SHA3, expected, nil);
}


@end