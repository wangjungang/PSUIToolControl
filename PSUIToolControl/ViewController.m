//
//  ViewController.m
//  PSUIToolControl
//
//  Created by 王俊钢 on 2017/11/25.
//  Copyright © 2017年 wangjungang. All rights reserved.
//

#import "ViewController.h"
#import "PSUIToolControl.h"

@interface ViewController ()<UITableViewDataSource,UITableViewDelegate>

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    [self createUI];
    // Do any additional setup after loading the view, typically from a nib.
}
- (void)createUI {
    UILabel *label = [PSUIToolControl createLabelFrame:CGRectMake(10, 50, 200, 30) text:@"label" color:[UIColor orangeColor] tont:13];
    [self.view addSubview:label];
    
    UIView *view = [PSUIToolControl createViewframe:CGRectMake(10, 90, 200, 30) color:[UIColor yellowColor]];
    [self.view addSubview:view];
    
    UIImageView *imageView = [PSUIToolControl createImageViewframe:CGRectMake(300, 130, 60, 60) imageName:@"MyGoddess"];
    [self.view addSubview:imageView];
    
    UIButton *button = [PSUIToolControl createButtonframe:CGRectMake(10, 170, 100, 30) imageName:nil target:self action:@selector(buttonClick) title:@"button" titleColor:[UIColor purpleColor]];
    [self.view addSubview:button];
    
    UITextField *textField = [PSUIToolControl createTextFieldframe:CGRectMake(10, 210, 200, 30) placeholder:@"password" passWord:YES font:13];
    [self.view addSubview:textField];
    
    UITextView *textView = [PSUIToolControl createTextViewframe:CGRectMake(10, 260, 200, 30) text:@"textView" color:[UIColor greenColor] font:13 edit:YES];
    [self.view addSubview:textView];
    
    UITableView *tableView = [PSUIToolControl createTableViewframe:CGRectMake(10, 330, 200, 200) target:self];
    [self.view addSubview:tableView];
    
}

- (void)buttonClick {
    NSLog(@"buttonClick");
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 9;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    static NSString *cellID = @"cellID";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellID];
    if (!cell) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellID];
    }
    
    cell.textLabel.text = [NSString stringWithFormat:@"row = %ld", (long)indexPath.row];
    
    return cell;
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
