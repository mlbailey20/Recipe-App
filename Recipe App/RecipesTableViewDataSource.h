//
//  RecipesTableViewDataSource.h
//  Recipe App
//
//  Created by Matthew Bailey on 7/8/15.
//  Copyright (c) 2015 DevMountain. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "RARecipes.h"
#import "RATableViewCell.h"

@interface RecipesTableViewDataSource : NSObject <UITableViewDataSource>

- (RecipesTableViewDataSource *)initWithTableView:(UITableView *)tableView;
@end
