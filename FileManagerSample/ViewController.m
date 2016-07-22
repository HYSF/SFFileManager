//
//  ViewController.m
//  FileManagerSample
//
//  Created by yuan on 16/7/19.
//  Copyright © 2016年 yuan. All rights reserved.
//

#import "ViewController.h"
#import "JureFileManager.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    UIImage *image = [UIImage imageNamed:@"4跟唱－开始前－1.jpg"];
    NSData *data = UIImagePNGRepresentation(image);
    JureFileManager *manager = [[JureFileManager alloc]init];
    [manager addFile:data filePath:@"image" fileName:@"image1.jpg"];
    
    
    
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
