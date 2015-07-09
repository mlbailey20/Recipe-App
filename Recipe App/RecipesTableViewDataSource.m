//
//  RecipesTableViewDataSource.m
//  Recipe App
//
//  Created by Matthew Bailey on 7/8/15.
//  Copyright (c) 2015 DevMountain. All rights reserved.
//

#import "RecipesTableViewDataSource.h"

static NSString *cellID = @"cellID";

@implementation RecipesTableViewDataSource

- (RecipesTableViewDataSource *)initWithTableView:(UITableView *)tableView{
    self = [super init];
    [tableView registerClass:[UITableViewCell class] forCellReuseIdentifier:cellID];
    return self;
    
}


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    
    return [RARecipes count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellID forIndexPath:indexPath];
    cell = [cell initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:cellID];
    
    cell.textLabel.text = [RARecipes titleAtIndex:indexPath.row];
    cell.detailTextLabel.text = [RARecipes descriptionAtIndex:indexPath.row];
    return cell;
}

@end
