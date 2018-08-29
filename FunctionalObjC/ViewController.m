//
//  ViewController.m
//  FunctionalObjC
//
//  Created by John on 8/29/18.
//  Copyright © 2018 John. All rights reserved.
//

#import "ViewController.h"
#import "FBLFunctional.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UILabel *firstArrayLabel;
@property (weak, nonatomic) IBOutlet UILabel *secondArrayLabel;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    NSArray *firstArray = @[@1,@2,@3];
    NSArray *secondArray = [firstArray fbl_map:^id(NSNumber *value) {
        return [self addNSNumber:value secondNumber:@1];
    }];
    self.firstArrayLabel.text = [NSString stringWithFormat:@"%@", firstArray];
    self.secondArrayLabel.text = [NSString stringWithFormat:@"%@", secondArray];
    
}

- (NSNumber *)addNSNumber:(NSNumber *)firstNumber secondNumber:(NSNumber *)secondNumber {
    NSNumber *sum = [NSNumber numberWithFloat:([firstNumber floatValue] + [secondNumber floatValue])];
    return sum;
}


@end
