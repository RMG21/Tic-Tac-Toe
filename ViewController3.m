//
//  ViewController3.m
//  Tic Tac Toe M
//
//  Created by Rachel Lee on 12/11/2015.
//  Copyright © 2015 Richard Magnus-George. All rights reserved.
//

#import "ViewController3.h"
#import "ViewController2.h"

@interface ViewController3 ()

@end

@implementation ViewController3

@synthesize gameScores;
@synthesize playerScore;
@synthesize computerScore;

- (IBAction) PlaySoundButton:(id)sender{
    AudioServicesPlayAlertSound(PlaySound);
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    playerScore.text = [NSString stringWithFormat:@"%d",gameScores.playerScore];
    
    computerScore.text = [NSString stringWithFormat:@"%d",gameScores.computerScore];
    
    {
        NSURL *SoundURL = [NSURL fileURLWithPath:[[NSBundle mainBundle] pathForResource:@"button-3" ofType:@"wav"]];
        AudioServicesCreateSystemSoundID((__bridge CFURLRef)SoundURL, &PlaySound);
    }
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)prepareForSegue:(UIStoryboardSegue *) segue sender:(id) sender{
    
    if([segue.identifier isEqualToString: @"BackToMenu"] )
    {
        ViewController2 *sendDataBack = segue.destinationViewController;
        sendDataBack.savedScores = gameScores;
    }
}

@end