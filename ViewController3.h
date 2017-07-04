//
//  ViewController3.h
//  Tic Tac Toe M
//
//  Created by Rachel Lee on 12/11/2015.
//  Copyright © 2015 Richard Magnus-George. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <AudioToolbox/AudioToolbox.h>
#import "SharedData.h"

@interface ViewController3 : UIViewController

{
    SystemSoundID PlaySound;
}

@property SharedData *gameScores;
@property (weak, nonatomic) IBOutlet UITextField *playerScore;
@property (weak, nonatomic) IBOutlet UITextField *computerScore;

- (IBAction) PlaySoundButton:(id)sender;

@end