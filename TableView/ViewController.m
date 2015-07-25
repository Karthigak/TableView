//
//  ViewController.m
//  TableView
//
//  Created by Sathish on 20/07/15.
//  Copyright (c) 2015 Optisol Business Solutions pvt ltd. All rights reserved.
//

#import "ViewController.h"
#import "secViewController.h"
@interface ViewController ()
@property (strong, nonatomic) IBOutlet UITableView *tableview;

@end

@implementation ViewController
{
    NSArray *tableData;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    tableData=[NSArray arrayWithObjects:@"TextField",@"Switches",@"Button",@"Sliders",@"Label",nil];
    
               
    // Do any additional setup after loading the view, typically from a nib.
}
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [tableData count];
}
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *simpleTableIdentifier=@"simpleTableItem";
    UITableViewCell *cell=[tableView dequeueReusableCellWithIdentifier:simpleTableIdentifier];
    if(cell==nil)
    {
        cell=[[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:simpleTableIdentifier];
    }
    cell.textLabel.text=[tableData objectAtIndex:indexPath.row];
    cell.imageView.image=[UIImage imageNamed: @"3d-arrow_small.jpg"];
    return cell;
}
-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSString *temp=[tableData objectAtIndex:indexPath.row];
    secViewController *obj=[self.storyboard instantiateViewControllerWithIdentifier:@"secViewController"];
    obj.temp=temp;
    [self.navigationController pushViewController:obj animated:YES];
}
-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 100;
}
@end
