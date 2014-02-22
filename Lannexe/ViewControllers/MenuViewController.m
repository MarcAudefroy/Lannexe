//
//  MenuViewController.m
//  Lannexe
//
//  Created by Marc Audefroy on 12/12/13.
//  Copyright (c) 2013 supinfo. All rights reserved.
//

#import "MenuViewController.h"

#import <MMDrawerController/MMDrawerController.h>
#import <MMDrawerController/UIViewController+MMDrawerController.h>

#import "NewsViewController.h"
#import "TwitterViewController.h"

@interface MenuViewController ()<UITableViewDataSource, UITableViewDelegate>

#pragma mark IBOutlets
@property (weak, nonatomic) IBOutlet UITableView *tableView;

#pragma mark Properties
@property (strong, nonatomic) NSArray *datasource;
@property (strong, nonatomic) MMDrawerController *drawerController;

@end

@implementation MenuViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
    
    self.drawerController = [self mm_drawerController];
    [self fillDataSource];
}

-(void)fillDataSource
{
    self.datasource =  @[@"News",
                        @"Twitter"
                        ];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark private mark
+(NSArray *)items
{
    return @[[NewsViewController class],
             [TwitterViewController class]];
}

    
#pragma mark - Table view delegate
    
-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"menuCell"];
    if(cell == nil)
    {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"menuCell"];
    }
    cell.textLabel.text = self.datasource[indexPath.row];
    
    return cell;
}
    
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return self.datasource.count;
    
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    // Return the number of sections.
    return 1;
}



- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSArray *viewControllers = [MenuViewController items];
    Class class = (Class) viewControllers[indexPath.row];
    UIViewController *viewController =  [UIViewController viewControllerFromStoryBoardWithClass:class];
    
    [self.drawerController setCenterViewController:viewController withCloseAnimation:YES completion:nil];
}

@end
