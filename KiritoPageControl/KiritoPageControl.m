//
//  KirotoPageControl.m
//  YiBaiSong
//
//  Created by kirito_song on 16/4/14.
//  Copyright © 2016年 yibaisong. All rights reserved.
//

#import "KiritoPageControl.h"

@implementation KiritoPageControl

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/


-(instancetype)initWithFrame:(CGRect)frame pageSize:(CGSize )pageSize currentImage:(UIImage *)currentImage andDefaultImage:(UIImage *)defaultImage {
    
    self = [super initWithFrame:frame];
    self.currentImage = currentImage;
    self.defaultImage = defaultImage;
    self.clearBackgroundColorColor = YES;
    if (pageSize.width > 0  && pageSize.height > 0 )
        self.pageSize =pageSize;
    else self.pageSize = CGSizeMake(7, 7);
    
    return self;
}

-(instancetype) init {
    self = [super init];

    self.pageSize = CGSizeMake(7, 7);
    self.clearBackgroundColorColor = YES;
    return self;
}

-(void) updateDots

{
    for (int i=0; i<[self.subviews count]; i++) {
        
        UIView* dot = [self.subviews objectAtIndex:i];
        if ([dot.subviews count] >0) {
            [dot.subviews[0] removeFromSuperview];
        }
        [dot setFrame:CGRectMake(dot.frame.origin.x, dot.frame.origin.y, self.pageSize.width, self.pageSize.width)];
        if ([dot.subviews count] == 0) {
            UIImageView * view = [[UIImageView alloc]initWithFrame:dot.bounds];
            [dot addSubview:view];
            if (self.clearBackgroundColorColor) dot.backgroundColor = [UIColor clearColor];
        };
        UIImageView * view = dot.subviews[0];
        
        if (i==self.currentPage) {
            if (self.currentImage) {
                view.image=self.currentImage;
            }
        }else if (self.defaultImage) {
            view.image=self.defaultImage;
        }
    }
}


-(void) setCurrentPage:(NSInteger)page

{
    
    [super setCurrentPage:page];
    
    [self updateDots];
    
}



@end
