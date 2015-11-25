//
//  PopOverVC.m
//  popovervc
//
//  Created by luluteam on 15/11/25.
//  Copyright © 2015年 tuyixin. All rights reserved.
//

#import "PopOverVC.h"

@interface PopOverVC ()

@end

@implementation PopOverVC

- (void)viewDidLoad {
    [super viewDidLoad];
    _tableView=[[UITableView alloc]initWithFrame:self.view.frame];
    [self.view addSubview:_tableView];
    _tableView.delegate=self;
    _tableView.dataSource=self;
    
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 3;
}
- (UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *cellId=@"cellId";
    UITableViewCell *cell=[tableView dequeueReusableCellWithIdentifier:cellId];
    if(!cell)
    {
        cell=[[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellId];
    }
    cell.textLabel.text=_array[indexPath.row];
    return cell;
}
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    
}
- (CGSize)preferredContentSize
{
    CGSize tempSize=self.presentingViewController.view.bounds.size;
    tempSize.width=150;
    CGSize size=[_tableView sizeThatFits:tempSize];
    return size;
    
}
-(void)setPreferredContentSize:(CGSize)preferredContentSize
{
    self.preferredContentSize=preferredContentSize;
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
