//
//  ViewController.m
//  popovervc
//
//  Created by luluteam on 15/11/25.
//  Copyright © 2015年 tuyixin. All rights reserved.
//

#import "ViewController.h"
#import "PopOverVC.h"
@interface ViewController ()<UIPopoverPresentationControllerDelegate>
@property(nonatomic,strong)PopOverVC *popMenu;//弹出窗口
@property(nonatomic)BOOL fellow;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    [self setRightMenu];
    _fellow=YES;
    // Do any additional setup after loading the view, typically from a nib.
}
-(void)setRightMenu
{
    UIBarButtonItem *rightBtn=[[UIBarButtonItem alloc]initWithBarButtonSystemItem:UIBarButtonSystemItemBookmarks target:self action:@selector(popOver:)];
    self.navigationItem.rightBarButtonItem=rightBtn;
}
-(void)popOver:(id)sender
{
    [self setGuesture];
    _popMenu=[[PopOverVC alloc]init];
    if(_fellow)
    {
        _popMenu.array=[[NSArray alloc]initWithObjects:@"1",@"2",@"3",nil];
    }
    else
    {
        _popMenu.array=[NSArray arrayWithObjects:@"3",@"4",@"5",nil];
    }
    _popMenu.modalPresentationStyle=UIModalPresentationPopover;
    _popMenu.popoverPresentationController.permittedArrowDirections=UIPopoverArrowDirectionUnknown;
    _popMenu.popoverPresentationController.delegate=self;
    _popMenu.popoverPresentationController.barButtonItem=self.navigationItem.rightBarButtonItem;
    [self presentViewController:_popMenu animated:YES completion:nil];
}
-(void)setGuesture
{
    self.view.userInteractionEnabled=YES;
    UITapGestureRecognizer *tapGusture=[[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(resign)];
    [self.view addGestureRecognizer:tapGusture];
}
-(void)resign
{
    [_popMenu resignFirstResponder];

}
-(UIModalPresentationStyle)adaptivePresentationStyleForPresentationController:(UIPresentationController *)controller
{
    return UIModalPresentationNone;
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
