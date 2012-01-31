//
//  SimpleSpec2.m
//  KiwiTestProj
//
//  Created by takeshi.kawai on 12/01/31.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import "Kiwi.h"

SPEC_BEGIN(SimpleSpec2)

describe(@"Arrayのテスト：", ^{
  __block NSMutableArray *arr = nil;
  context(@"新しく作り", ^{
    beforeEach(^{
      arr = [NSMutableArray array];
    });
    
    context(@"2つの要素を入れたとき", ^{
      beforeEach(^{
        [arr addObject:@"a"];
        [arr addObject:@"b"];
      });
      
      it(@"2つの要素を持つこと", ^{
        [[theValue([arr count]) should] equal:theValue(1)];
        arr = nil;
      });
    });
  });
});

SPEC_END