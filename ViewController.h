//
//  ViewController.h
//  Tic Tac Toe M
//
//  Created by Rachel Lee on 12/11/2015.
//  Copyright © 2015 Richard Magnus-George. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <AudioToolbox/AudioToolbox.h>
#import "ViewController2.h"
#import "SharedData.h"


@interface ViewController : UIViewController

{
    SystemSoundID PlaySound;
}

- (IBAction) PlaySoundButton:(id)sender;

@property int player;


@property (nonatomic, retain) IBOutlet UIButton *part1;
@property (nonatomic, retain) IBOutlet UIButton *part2;
@property (nonatomic, retain) IBOutlet UIButton *part3;

@property (nonatomic, retain) IBOutlet UIButton *part4;
@property (nonatomic, retain) IBOutlet UIButton *part5;
@property (nonatomic, retain) IBOutlet UIButton *part6;

@property (nonatomic, retain) IBOutlet UIButton *part7;
@property (nonatomic, retain) IBOutlet UIButton *part8;
@property (nonatomic, retain) IBOutlet UIButton *part9;
@property (nonatomic, retain) IBOutlet UIActivityIndicatorView *loader;

@property (weak, nonatomic)IBOutlet UILabel *Label;

@property (strong, nonatomic) NSMutableArray *positions;
@property (strong, nonatomic) NSMutableArray *images;
@property (strong, nonatomic) NSMutableArray *parts;

//@property NSString *choice;

@property (weak, nonatomic) IBOutlet UIImageView *image1;
@property (weak, nonatomic) IBOutlet UIImageView *image2;
@property (weak, nonatomic) IBOutlet UIImageView *image3;
@property (weak, nonatomic) IBOutlet UIImageView *image4;
@property (weak, nonatomic) IBOutlet UIImageView *image5;
@property (weak, nonatomic) IBOutlet UIImageView *image6;
@property (weak, nonatomic) IBOutlet UIImageView *image7;
@property (weak, nonatomic) IBOutlet UIImageView *image8;
@property (weak, nonatomic) IBOutlet UIImageView *image9;

@property SharedData *dataShared;

@property (weak, nonatomic) UIImage *X;
@property (weak, nonatomic) UIImage *O;


- (IBAction)backToMenu:(id)sender;



@end


