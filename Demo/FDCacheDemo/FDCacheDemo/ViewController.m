//
//  ViewController.m
//  FDCacheDemo
//
//  Created by weichao on 16/7/16.
//  Copyright © 2016年 chaowei. All rights reserved.
//

#import "ViewController.h"
#import "FDCache.h"

static NSString *demoKey = @"demoKey";
static NSString *foldName = @"FDCache";

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)store:(id)sender {
    NSArray *arrayToStore = @[@"1",@"demoString"];
    FDCache *cache = [[FDCache alloc] initWithFolderName:foldName];
    [cache storeAsyncToDiskWithArray:arrayToStore forKey:demoKey withCompletion:^{
        NSLog(@"store complete");
    }];
}

- (IBAction)remove:(id)sender {
    FDCache *cache = [[FDCache alloc] initWithFolderName:foldName];
    [cache removeForKey:demoKey withCompletion:^{
        NSLog(@"remove complete");
    }];
}

- (IBAction)isExist:(id)sender {
    FDCache *cache = [[FDCache alloc] initWithFolderName:foldName];
    [cache isExistForKey:demoKey withCompletion:^(BOOL isExist) {
        NSLog(@"key %@ isExist:%d",demoKey,isExist);
    }];
}

- (IBAction)query:(id)sender {
    FDCache *cache = [[FDCache alloc] initWithFolderName:foldName];
    [cache queryAsyncforKey:demoKey withCompletion:^(NSArray *dataArray) {
        NSLog(@"result dataArray:%@",dataArray);
    }];
}

-(IBAction)clearAll:(id)sender {
    FDCache *cache = [[FDCache alloc] initWithFolderName:foldName];
    [cache clearDiskOnCompletion:^{
        NSLog(@"clear complete");
    }];
}

@end
