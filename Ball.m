//
//  Ball.m
//  Soccer
//
//  Created by Administrator on 1/5/13.
//  Copyright (c) 2013 Ruby4Kids. All rights reserved.
//

#import "Ball.h"

@implementation Ball

-(id) init {
    
    if(self=[super init]){
        UIImage *ball = [UIImage imageNamed:@"ball.png"];
        self.imageView = [[UIImageView alloc] initWithImage:ball];
        [self.imageView setFrame:CGRectMake(50,50,30,30)];
    }
    return self;
}

- (void) advance {
    self.imageView.frame = CGRectMake(self.imageView.frame.origin.x + 2, self.imageView.frame.origin.y + 2, 30, 30);
}

@end
