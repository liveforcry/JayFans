//
//  ViewController.m
//  BaseProject
//
//  Created by jiyingxin on 15/10/22.
//  Copyright © 2015年 Tarena. All rights reserved.
//

#import "ViewController.h"
#import "JieInfroMationViewModel.h"
#import "OnePicCell.h"
#import "JieMessageModel.h"
#import "TwoPicCell.h"
@interface ViewController ()<UITableViewDataSource,UITableViewDelegate>

@property (weak, nonatomic) IBOutlet UITableView *tableView;


@property(nonatomic,strong)JieInfroMationViewModel *jieViewModel;

@end

@implementation ViewController

- (JieInfroMationViewModel *)jieViewModel {
    if(_jieViewModel == nil) {
        _jieViewModel = [[JieInfroMationViewModel alloc] init];
        
        //设置tableView背景色
        self.tableView.backgroundColor = [UIColor lightGrayColor];
    }
    return _jieViewModel;
}



- (void)viewDidLoad {
    [super viewDidLoad];

     self.tableView.header = [MJRefreshNormalHeader headerWithRefreshingBlock:^{
         [self.jieViewModel refreshDataCompletionHandle:^(NSError *error) {
             if (error) {
                 NSLog(@"%@", error.description);
             }
             [self.tableView reloadData];
             [self.tableView.header endRefreshing];
         }];
     }];
    
    self.tableView.footer = [MJRefreshBackNormalFooter footerWithRefreshingBlock:^{
        [self.jieViewModel getMoreDataCompletionHandle:^(NSError *error) {
            if (error) {
                NSLog(@"%@", error.description);
            }
            [self.tableView reloadData];
            [self.tableView.footer endRefreshing];
        }];
    }];

    [self.tableView.header beginRefreshing];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return self.jieViewModel.rowNumber;
}
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return 1;
}
-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    NSInteger resction = indexPath.section;
    //只有一张图片
  if ([self.jieViewModel isOnePic:resction]) {
    OnePicCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell1"];
        cell.titleLb.text = [self.jieViewModel titleForrRow:resction];
        [cell.picView setImageWithURL:[self.jieViewModel imageCoverForRow:resction] placeholderImage:[UIImage imageNamed:@"cell_bg_noData_3"]];
        cell.commentLb.text = [NSString stringWithFormat:@"%ld",[self.jieViewModel commentsForRow:resction]];
        cell.flowerLb.text = [NSString stringWithFormat:@"%ld",[self.jieViewModel flowersFoRow:resction]];
        [cell.picUserView setImageWithURL:[self.jieViewModel  imageUserForRow:resction]];
        cell.flowerUserLB.text = [self.jieViewModel flowersUserForRow:resction];
        cell.peopleLb.text = [self.jieViewModel peopleNumForRow:resction];
        return cell;
    }else{
        TwoPicCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell2"];
        
        cell.titleLb.text = [self.jieViewModel titleForrRow:resction];

        cell.phtot = self.jieViewModel.picArrays;

        
        cell.commentLb.text= [NSString stringWithFormat:@"%ld",[self.jieViewModel commentsForRow:resction]];
       
        cell.flowerLb.text = [NSString stringWithFormat:@"%ld",[self.jieViewModel flowersFoRow:resction]];
        
        [cell.picUser setImageWithURL:[self.jieViewModel  imageUserForRow:resction]];
        
        cell.userFlower.text = [self.jieViewModel flowersUserForRow:resction];
        
        cell.peopleLb.text = [self.jieViewModel peopleNumForRow:resction];
           return cell;
    }

    
  
}
-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
}
-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    if ([self.jieViewModel isOnePic:indexPath.section]) {
        return 148.5;
    }else{
    return 220;
    }
}





@end
