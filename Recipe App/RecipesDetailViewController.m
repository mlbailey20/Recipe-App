//
//  RecipesViewController.m
//  Recipe App
//
//  Created by Matthew Bailey on 7/9/15.
//  Copyright (c) 2015 DevMountain. All rights reserved.
//

#import "RecipesDetailViewController.h"

@interface RecipesDetailViewController ()

@end

@implementation RecipesDetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    float titleHeight = 0;
    float descriptionHeight = 50;
    float ingredientHeight = 50 + descriptionHeight;
    float ingredientTableHeight = 44 * ([RARecipes ingredientCountAtIndex:self.index] - 1);
    float directionsTableHeight = [[RARecipes directionsAtIndex:self.index] count] * 44;
    // Do any additional setup after loading the view.
    
    UIScrollView *scroll = [[UIScrollView alloc] initWithFrame:self.view.frame];
    [self.view addSubview:scroll];
    //for syncing verticallity of labels/views
    
    //***Recipe Title Subview***
    UILabel *title = [[UILabel alloc] initWithFrame:CGRectMake(15, titleHeight, CGRectGetWidth(self.view.frame) - 15, 50)];
    title.text = [RARecipes titleAtIndex:self.index];
    
    float width = (CGRectGetWidth(self.view.frame) - 15);
    float halfway = width/2;
    
   
    
    //***Recipe DescriptionSubview***
    UILabel *description = [[UILabel alloc] initWithFrame:CGRectMake(15, descriptionHeight, width, 50)];
    description.text = [RARecipes descriptionAtIndex:self.index];
    
    
        //***Ingredient Type Subview***
    UIView *ingredientType = [[UILabel alloc] initWithFrame:CGRectMake(15, ingredientHeight, halfway, ingredientTableHeight)];
   // ingredientType.backgroundColor = [UIColor redColor];
  
    float x = 0;
    for(int i = 0; i < [RARecipes ingredientCountAtIndex:self.index]; i++)
    {
      
        UILabel *tempLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, x, ingredientType.bounds.size.width, 44)];
        x += 44;
        tempLabel.textAlignment = NSTextAlignmentLeft;
        tempLabel.text = tempLabel.text = [RARecipes ingredientTypeAtIndex:i inRecipeAtIndex:self.index];
        [ingredientType addSubview:tempLabel];
    
    }
    
    //***Ingredient Volume Subview***
    UIView *ingredientVolume = [[UILabel alloc] initWithFrame:CGRectMake(15 + halfway, ingredientHeight, halfway, ingredientTableHeight)];
   // ingredientVolume.backgroundColor = [UIColor blueColor];
    //ingredients.text = [
    float y = 0;
    for(int i = 0; i < [RARecipes ingredientCountAtIndex:self.index]; i++)
    {
        
        
        UILabel *tempLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, y, ingredientType.bounds.size.width, 44)];
         y += 44;
        tempLabel.text = [RARecipes ingredientVolumeAtIndex:i inRecipeAtIndex:self.index];
        tempLabel.textColor = [UIColor blackColor];
        [ingredientVolume addSubview:tempLabel];
   
        
    }
   
       //***Recipe instructions Subview***
    UIView *directions = [[UILabel alloc] initWithFrame:CGRectMake(15, ingredientTableHeight + ingredientHeight, width, directionsTableHeight)];
   // directions.backgroundColor = [UIColor yellowColor];
     float z = 0;
    for(int i = 0; i < [[RARecipes directionsAtIndex:self.index] count]; i++)
    {
         z += 44;
        UILabel *tempLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, z, directions.bounds.size.width, 44)];
        tempLabel.text = [RARecipes directionsAtIndex:self.index][i];
        [directions addSubview:tempLabel];
    }

    //Add all subviews
    scroll.contentSize = CGSizeMake(self.view.bounds.size.width, directionsTableHeight + ingredientTableHeight + ingredientHeight);
    [scroll addSubview:title];
    [scroll addSubview:description];
    [scroll addSubview:ingredientType];
    [scroll addSubview:ingredientVolume];
    [scroll addSubview:directions];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
