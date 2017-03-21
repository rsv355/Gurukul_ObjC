//
//  VideoTableViewCell.m
//  Gurukul
//
//  Created by Masum Chauhan on 07/10/16.
//  Copyright © 2016 Webmyne Systems Pvt Ltd. All rights reserved.
//

#import "VideoTableViewCell.h"

@implementation VideoTableViewCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
    [self setViewCard];
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}
-(void)setViewCard {
    
    [self.contentView setAlpha:1];
    self.layer.masksToBounds = NO;
    self.layer.cornerRadius = 1; // if you like rounded corners
    self.layer.shadowOffset = CGSizeMake(1.0f, 1.0f);
    self.layer.shadowRadius = 1;
    
    self.layer.shadowOpacity = 0.5;
    self.layer.shadowColor = [UIColor grayColor].CGColor;
    
    UIBezierPath *path = [UIBezierPath bezierPathWithRect:self.bounds];
    self.imageView.layer.shadowPath = path.CGPath;
}

@end
