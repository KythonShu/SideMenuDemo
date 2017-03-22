//
//  ViewController1.m
//  SlideMenu
//
//  Created by Kython Shu on 2017/3/22.
//  Copyright © 2017年 Kython Shu. All rights reserved.
//

#import "ViewController1.h"

#import "ViewController2.h"
#import "ViewController3.h"
#import "ViewController4.h"
#import "ViewController5.h"
#import "SlideNavigationController.h"
@interface ViewController1 ()<UITableViewDelegate,UITableViewDataSource>
{
    NSArray *title;
}
@property (weak, nonatomic) IBOutlet UITableView *tableView;

@end

@implementation ViewController1

- (void)viewDidLoad {
    [super viewDidLoad];

    title = @[@"控制器1",@"控制器2",@"控制器3",@"控制器4"];
    
    self.tableView.delegate = self;
    self.tableView.dataSource = self;
}
-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{

    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Cell"];
    if (cell==nil) {
        cell=[[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"Cell"];
    }
    [self configureCell:cell atIndexPath:indexPath];
    return cell;
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return title.count;
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    switch (indexPath.row) {
        case 0:
        {
            ViewController2 *vc = [ViewController2 new];
            vc.title = title[0];
            [[SlideNavigationController sharedInstance] popToRootAndSwitchToViewController:vc withSlideOutAnimation:NO andCompletion:nil];
        }
            break;
        case 1:
        {
            ViewController3 *vc = [ViewController3 new];
            vc.title = title[1];
            [[SlideNavigationController sharedInstance] popToRootAndSwitchToViewController:vc withSlideOutAnimation:NO andCompletion:nil];
        }
            break;
        case 2:
        {
            ViewController4 *vc = [ViewController4 new];
            vc.title = title[2];
            [[SlideNavigationController sharedInstance] popToRootAndSwitchToViewController:vc withSlideOutAnimation:NO andCompletion:nil];
        }
            break;
        case 3:
        {
            ViewController5 *vc = [ViewController5 new];
            vc.title = title[3];
            [[SlideNavigationController sharedInstance] popToRootAndSwitchToViewController:vc withSlideOutAnimation:NO andCompletion:nil];
        }
            break;
        default:
            break;
    }
}

- (void)configureCell:(UITableViewCell *)cell atIndexPath:(NSIndexPath *)indexPath
{
    cell.textLabel.text = title[indexPath.row];
}
@end
