//
//  KirotoPageControl.h
//  YiBaiSong
//
//  Created by kirito_song on 16/4/14.
//  Copyright © 2016年 yibaisong. All rights reserved.
//

#import <UIKit/UIKit.h>
/**
    自定义UIPageControl圆点大小、以图片展示
 */
@interface KiritoPageControl : UIPageControl
/**
 *  如果直接使用init初始化、可以手动定义以下属性
 *  均可置nil。其中pageSize（默认7,7）/pageSize(默认Yes) 图片置nil则不覆盖系统原生
 *  之后调用一次UPdataDots方法更新控制器布局、不喜欢写set里
 */
@property (nonatomic)   UIImage * currentImage; //高亮图片
@property (nonatomic)   UIImage * defaultImage; //默认图片
@property (nonatomic) BOOL  clearBackgroundColorColor;   //是否清除底色
@property (nonatomic,assign)   CGSize pageSize; //图标大小


-(instancetype)initWithFrame:(CGRect)frame pageSize:(CGSize )pageSize currentImage:(UIImage *)currentImage andDefaultImage:(UIImage *)defaultImage ;

-(void) updateDots;


@end
