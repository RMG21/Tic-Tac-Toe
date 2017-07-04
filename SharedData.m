//
//  SharedData.m
//  Tic Tac Toe M
//
//  Created by Richard Magnus-George on 01/01/2016.
//  Copyright © 2016 Richard Magnus-George. All rights reserved.
//

#import "SharedData.h"

@interface SharedData ()

@end

@implementation SharedData

@synthesize playerScore;
@synthesize computerScore;

- (void)viewDidLoad {
    [super viewDidLoad];
    
    playerScore = 0;
    computerScore = 0;
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
