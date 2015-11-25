//
//  PopOverVC.h
//  popovervc
//
//  Created by luluteam on 15/11/25.
//  Copyright © 2015年 tuyixin. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface PopOverVC : UIViewController<UITableViewDataSource,UITableViewDelegate>
@property(nonatomic,strong)UITableView *tableView;
@property(nonatomic,strong)NSArray *array;
@end
