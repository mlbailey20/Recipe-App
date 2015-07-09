//
//  RATableViewCell.m
//  Recipe App
//
//  Created by Matthew Bailey on 7/8/15.
//  Copyright (c) 2015 DevMountain. All rights reserved.
//

#import "RATableViewCell.h"

@implementation RATableViewCell : UITableViewCell


-(RATableViewCell *)initWithStyle:(UITableViewCellStyle) style reuseIdentifier:(NSString *)reuseIdentifier
{

    return [super initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:reuseIdentifier];
    
}
    


@end
