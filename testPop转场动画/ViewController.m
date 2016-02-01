//
//  ViewController.m
//  testPop转场动画
//
//  Created by 王迎博 on 16/2/1.
//  Copyright © 2016年 王迎博. All rights reserved.
//

#import "ViewController.h"
#import "MenuView.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
   
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
   
}

- (void)touchesEnded:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    NSLog(@"调皮嘛么么哒");
    [self showMenu];
}

- (void)showMenu
{
    NSMutableArray *items = [[NSMutableArray alloc] initWithCapacity:3];
    MenuItem *menuItem = [[MenuItem alloc] initWithTitle:@"Flickr" iconName:@"post_type_bubble_flickr" glowColor:[UIColor grayColor] index:0];
    [items addObject:menuItem];
    
    menuItem = [[MenuItem alloc] initWithTitle:@"Googleplus" iconName:@"post_type_bubble_googleplus" glowColor:[UIColor colorWithRed:0.000 green:0.840 blue:0.000 alpha:1.000] index:0];
    [items addObject:menuItem];
    
    menuItem = [[MenuItem alloc] initWithTitle:@"Instagram" iconName:@"post_type_bubble_instagram" glowColor:[UIColor colorWithRed:0.687 green:0.000 blue:0.000 alpha:1.000] index:0];
    [items addObject:menuItem];
    
    menuItem = [[MenuItem alloc] initWithTitle:@"Twitter" iconName:@"post_type_bubble_twitter" glowColor:[UIColor colorWithRed:0.687 green:0.000 blue:0.000 alpha:1.000] index:0];
    [items addObject:menuItem];
    
    menuItem = [[MenuItem alloc] initWithTitle:@"Youtube" iconName:@"post_type_bubble_youtube" glowColor:[UIColor colorWithRed:0.687 green:0.000 blue:0.000 alpha:1.000] index:0];
    [items addObject:menuItem];
    
    menuItem = [[MenuItem alloc] initWithTitle:@"Facebook" iconName:@"post_type_bubble_facebook" glowColor:[UIColor colorWithRed:0.687 green:0.000 blue:0.000 alpha:1.000] index:0];
    [items addObject:menuItem];
    
    MenuView *centerButton = [[MenuView alloc] initWithFrame:self.view.bounds items:items];
    centerButton.didSelectedItemCompletion = ^(MenuItem *selectedItem) {
        
    };
    [centerButton showMenuAtView:self.view];
}

@end
