//
//  TestExpand+Additions.m
//  TestBlock
//
//  Created by shavekevin on 2019/8/14.
//  Copyright © 2019 shavekevin. All rights reserved.
//

#import "TestExpand+Additions.h"
#import<objc/runtime.h>
static const char * thisisname = "thisisname";

@implementation TestExpand (Additions)
// 使用runtime来给分类添加属性
- (void)setMustProperty:(NSString *)mustProperty {
    NSLog(@"这是延展里面的mustProperty");

    objc_setAssociatedObject(self, thisisname, mustProperty, OBJC_ASSOCIATION_COPY);
}

- (NSString *)mustProperty {
    NSLog(@"这是延展里面的");
    return objc_getAssociatedObject(self, thisisname);
}
- (void)testExpanded {
    NSLog(@"这是延展里面的=======testExpanded");
}
@end
