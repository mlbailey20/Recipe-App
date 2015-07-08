//
//  RecipeViewController.h
//  Recipe App
//
//  Created by Matthew Bailey on 7/8/15.
//  Copyright (c) 2015 DevMountain. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "RecipesTableViewDataSource.h"

@interface RecipeViewController : UIViewController

@property (strong, nonatomic) UITableView *tableView;
@property (nonatomic) RecipesTableViewDataSource *dataSource;
@end
