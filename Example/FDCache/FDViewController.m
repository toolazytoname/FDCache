//
//  FDViewController.m
//  FDCache
//
//  Created by toolazytoname on 06/23/2018.
//  Copyright (c) 2018 toolazytoname. All rights reserved.
//

#import "FDViewController.h"
#import "FDCache.h"
static NSString *demoKey = @"demoKey";
static NSString *foldName = @"FDCache";


@interface FDViewController ()
@property(nonatomic, strong)FDCache *cache;

@end

@implementation FDViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (IBAction)store:(id)sender {
    NSArray *arrayToStore = @[@"1",@"demoString"];
    FDCache *cache = [FDCache sharedCache];
    [cache storeAsyncToDiskWithArray:arrayToStore forKey:demoKey withCompletion:^{
        NSLog(@"store complete");
    }];
}

- (IBAction)remove:(id)sender {
    FDCache *cache = [FDCache sharedCache];
    [cache removeForKey:demoKey withCompletion:^{
        NSLog(@"remove complete");
    }];
}

- (IBAction)isExist:(id)sender {
    FDCache *cache = [FDCache sharedCache];
    [cache isExistForKey:demoKey withCompletion:^(BOOL isExist) {
        NSLog(@"key %@ isExist:%d",demoKey,isExist);
    }];
}

- (IBAction)query:(id)sender {
    FDCache *cache = [FDCache sharedCache];
    [cache queryAsyncforKey:demoKey withCompletion:^(NSArray *dataArray) {
        NSLog(@"result dataArray:%@",dataArray);
    }];
}

-(IBAction)clearAll:(id)sender {
    FDCache *cache = [FDCache sharedCache];
    [cache clearDiskOnCompletion:^{
        NSLog(@"clear complete");
    }];
}
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
