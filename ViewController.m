//
//  ViewController.m
//  Tic Tac Toe M
//
//  Created by Rachel Lee on 12/11/2015.
//  Copyright © 2015 Richard Magnus-George. All rights reserved.
//

#import "ViewController.h"
#import "ViewController2.h"

@interface ViewController ()

@end

@implementation ViewController
int counterO = 0;
int counterX = 0;
int c = 0;

- (IBAction) PlaySoundButton:(id)sender{
    AudioServicesPlayAlertSound(PlaySound);
}
//synthesize is so we dont have to call variables wit a pre_
@synthesize player;
@synthesize part1, part2, part3, part4, part5, part6, part7, part8, part9, loader;
@synthesize image1, image2, image3, image4, image5, image6, image7, image8, image9;
@synthesize Label;
@synthesize X, O;
@synthesize images;
@synthesize parts;
@synthesize positions;
@synthesize dataShared;
int count = 0;

//@synthesize Label1;
//@synthesize Label2;

// all .h veribles must be synthesized here

// this lets player take turn and disables button after selected

- (IBAction)playerTurn:(id)sender {
    O = [UIImage imageNamed: @"Oimage 2.png"];
    X = [UIImage imageNamed: @"Ximage 2.jpeg"];
    Label.text = @" ";
    UIButton *pressedPart = (UIButton *)sender;
    [pressedPart setEnabled:NO]; //
    UIImage *iconToChange;
    //
    switch (player) {
        case 1: [pressedPart setTitle:@"X" forState:UIControlStateNormal]; iconToChange = X;
            for(int i = 0; i < [parts count]; i++) // need from here onwords, may mean i need to use arrays to make it simple.
            {
                if([parts objectAtIndex:i] == pressedPart)
                {
                    //[[parts objectAtIndex:i] setTitle:gameParameters.playerChoice];
                    //[positions replaceObjectAtIndex:i withObject:gameParameters.playerChoice];
                    [[images objectAtIndex:i] setImage:iconToChange];
                    [pressedPart setEnabled:NO];
                    count = count+1;
                   // playersTurn.text = [NSString stringWithFormat:@"Good Luck!"];
                }
            }
            player = 2; break;
            
        case 2: [pressedPart setTitle:@"O" forState:UIControlStateNormal]; iconToChange = O;
            for(int i = 0; i < [parts count]; i++) // need from here onwords, may mean i need to use arrays to make it simple.
            {
                if([parts objectAtIndex:i] == pressedPart)
                {
                    //[[parts objectAtIndex:i] setTitle:gameParameters.playerChoice];
                    //[positions replaceObjectAtIndex:i withObject:gameParameters.playerChoice];
                    [[images objectAtIndex:i] setImage:iconToChange];
                    [pressedPart setEnabled:NO];
                     count = count+1;
                    // playersTurn.text = [NSString stringWithFormat:@"Good Luck!"];
                }
            }
            player = 1; break;
            
        default:exit(0); break;
    }
    
    
    [self performSelector:@selector(checkForWin) withObject:nil afterDelay:0.5f];
}


- (void)checkForWin {
    // Winning statements for X
    
    if ((([[part1 titleLabel]text] == [[part2 titleLabel]text]) && ([[part1 titleLabel]text] == [[part3 titleLabel]text]) && ([[[part1 titleLabel]text]  isEqual:@"X"])) ||
        
        (([[part4 titleLabel]text] == [[part5 titleLabel]text]) && ([[part4 titleLabel]text] == [[part6 titleLabel]text]) && ([[[part4 titleLabel]text]  isEqual:@"X"])) ||
        
        (([[part7 titleLabel]text] == [[part8 titleLabel]text]) && ([[part7 titleLabel]text] == [[part9 titleLabel]text]) && ([[[part7 titleLabel]text]  isEqual:@"X"])) ||
        
        (([[part1 titleLabel]text] == [[part5 titleLabel]text]) && ([[part1 titleLabel]text] == [[part9 titleLabel]text]) && ([[[part1 titleLabel]text]  isEqual:@"X"])) ||
        
        (([[part3 titleLabel]text] == [[part5 titleLabel]text]) && ([[part3 titleLabel]text] == [[part7 titleLabel]text]) && ([[[part3 titleLabel]text]  isEqual:@"X"])) ||
        
        (([[part1 titleLabel]text] == [[part4 titleLabel]text]) && ([[part1 titleLabel]text] == [[part7 titleLabel]text]) && ([[[part1 titleLabel]text]  isEqual:@"X"])) ||
        
        (([[part2 titleLabel]text] == [[part5 titleLabel]text]) && ([[part2 titleLabel]text] == [[part8 titleLabel]text]) && ([[[part2 titleLabel]text]  isEqual:@"X"])) ||
        
        (([[part3 titleLabel]text] == [[part6 titleLabel]text]) && ([[part3 titleLabel]text] == [[part9 titleLabel]text]) && ([[[part3 titleLabel]text]  isEqual:@"X"]))) {
        part1.enabled = NO; part2.enabled = NO; part3.enabled = NO; part4.enabled = NO; part5.enabled = NO; part6.enabled = NO; part1.enabled = NO; part1.enabled = NO; part1.enabled = NO;
        
        Label.text = @"X WON!";
        
        UIActionSheet *actionSheet = [[UIActionSheet alloc] initWithTitle:@"Draw would you like to rematch?" delegate: self cancelButtonTitle:@"No" destructiveButtonTitle:@"Yes" otherButtonTitles:nil];
        [actionSheet showInView:self.view];
        
        //[self performSelector:@selector(resetBoard) withObject:nil afterDelay:2.0f]; // whats the "f" for ?
        
        [loader startAnimating];
        loader.hidden = NO;
        NSLog(@"X WON!");
        count =0;
        counterX++;
        
        NSLog(@"%dX ",counterX); /// look at label change of x1
        
        NSString *input;
        input=[NSString stringWithFormat:@"%d ", counterX];
        //Label1.text = input;
    }
    
    
    
    // Winning statements for O
    if ((([[part1 titleLabel]text] == [[part2 titleLabel]text]) && ([[part1 titleLabel]text] == [[part3 titleLabel]text]) && ([[[part1 titleLabel]text]  isEqual:@"O"])) ||
        
        (([[part4 titleLabel]text] == [[part5 titleLabel]text]) && ([[part4 titleLabel]text] == [[part6 titleLabel]text]) && ([[[part4 titleLabel]text]  isEqual:@"O"])) ||
        
        (([[part7 titleLabel]text] == [[part8 titleLabel]text]) && ([[part7 titleLabel]text] == [[part9 titleLabel]text]) && ([[[part7 titleLabel]text]  isEqual:@"O"])) ||
        
        (([[part1 titleLabel]text] == [[part5 titleLabel]text]) && ([[part1 titleLabel]text] == [[part9 titleLabel]text]) && ([[[part1 titleLabel]text]  isEqual:@"O"])) ||
        
        (([[part3 titleLabel]text] == [[part5 titleLabel]text]) && ([[part3 titleLabel]text] == [[part7 titleLabel]text]) && ([[[part3 titleLabel]text]  isEqual:@"O"])) ||
        
        (([[part1 titleLabel]text] == [[part4 titleLabel]text]) && ([[part1 titleLabel]text] == [[part7 titleLabel]text]) && ([[[part1 titleLabel]text]  isEqual:@"O"])) ||
        
        (([[part2 titleLabel]text] == [[part5 titleLabel]text]) && ([[part2 titleLabel]text] == [[part8 titleLabel]text]) && ([[[part2 titleLabel]text]  isEqual:@"O"])) ||
        
        (([[part3 titleLabel]text] == [[part6 titleLabel]text]) && ([[part3 titleLabel]text] == [[part9 titleLabel]text]) && ([[[part3 titleLabel]text]  isEqual:@"O"]))) {
        part1.enabled = NO; part2.enabled = NO; part3.enabled = NO; part4.enabled = NO; part5.enabled = NO; part6.enabled = NO; part7.enabled = NO; part8.enabled = NO; part9.enabled = NO;
        
        Label.text = @"O WON!";
        
        UIActionSheet *actionSheet = [[UIActionSheet alloc] initWithTitle:@"Draw would you like to rematch?" delegate: self cancelButtonTitle:@"No" destructiveButtonTitle:@"Yes" otherButtonTitles:nil];
        [actionSheet showInView:self.view];
        
       // [self performSelector:@selector(resetBoard) withObject:nil afterDelay:2.0f]; // delay "f"?
        
        [loader startAnimating];
        loader.hidden = NO;
        NSLog(@"O WON!");
        count =0;
        //counterO++;
        
        c++;
        
        NSLog(@"%dO ", c);
        
        NSString *input;
        input=[NSString stringWithFormat:@"%d ", c];
        // Label1.text = input; // try doing this in the ViewController2 view as c is global
    }
    // Check for a draw may be effect by other check
    else{
        
        // DRAW !!!!!!!!!! DRAW !!!!!!!!!!!! DRAW !!!!!!!!!!!!!!!!
    
        if(count == 9)
        {
            count =0;
            
            UIActionSheet *actionSheet = [[UIActionSheet alloc] initWithTitle:@"Draw would you like to rematch?" delegate: self cancelButtonTitle:@"No" destructiveButtonTitle:@"Yes" otherButtonTitles:nil];
            [actionSheet showInView:self.view];
            
            Label.text = @"Draw!";
            //[self performSelector:@selector(resetBoard) withObject:nil afterDelay:2.0f]; // delay "f"?
            
            [loader startAnimating];
            loader.hidden = NO;
            NSLog(@"draw");
            
        }
        
    }
    
}
// used to reset the game all of the buttions and allow them to be pressed. title must be set 2 " "
-(void) actionSheet:(UIActionSheet *)actionSheet didDismissWithButtonIndex:(NSInteger)buttonIndex{ if(buttonIndex==[actionSheet destructiveButtonIndex]){
    [loader stopAnimating];
    loader.hidden = YES;
    [part1 setTitle:@" " forState:UIControlStateNormal]; [part1 setEnabled:YES];
    [part2 setTitle:@" " forState:UIControlStateNormal]; [part2 setEnabled:YES];
    [part3 setTitle:@" " forState:UIControlStateNormal]; [part3 setEnabled:YES];
    
    [part4 setTitle:@" " forState:UIControlStateNormal]; [part4 setEnabled:YES];
    [part5 setTitle:@" " forState:UIControlStateNormal]; [part5 setEnabled:YES];
    [part6 setTitle:@" " forState:UIControlStateNormal]; [part6 setEnabled:YES];
    
    [part7 setTitle:@" " forState:UIControlStateNormal]; [part7 setEnabled:YES];
    [part8 setTitle:@" " forState:UIControlStateNormal]; [part8 setEnabled:YES];
    [part9 setTitle:@" " forState:UIControlStateNormal]; [part9 setEnabled:YES];
    
    image1.image = nil;
    image2.image = nil;
    image3.image = nil;
    image4.image = nil;
    image5.image = nil;
    image6.image = nil;
    image7.image = nil;
    image8.image = nil;
    image9.image = nil;
}
}

- (void)viewDidLoad {
    positions = [[NSMutableArray alloc] initWithObjects:@" ", @"  ",@"   ",@"    ",@"     ",@"      ",@"       ",@"        ",@"         ",nil];
    images = [[NSMutableArray alloc] initWithObjects:image1,image2,image3,image4,image5,image6,image7,image8,image9, nil];
    parts = [[NSMutableArray alloc] initWithObjects:part1,part2,part3,part4,part5,part6,part7,part8,part9, nil];
    //  playersTurn.text = [NSString stringWithFormat:@"%@'s Turn", gameParameters.playerName1];// just says whos turn it is
    player = 1;//if set 2 zero will be defult switch
    
    {
        NSURL *SoundURL = [NSURL fileURLWithPath:[[NSBundle mainBundle] pathForResource:@"button-3" ofType:@"wav"]];
        AudioServicesCreateSystemSoundID((__bridge CFURLRef)SoundURL, &PlaySound);
    }
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)backToMenu:(id)sender {
}

// This here needs to be 1!!! segue

- (void)prepareForSegue:(UIStoryboardSegue *) segue sender:(id) sender{
    
    //if([gameParameters.type  isEqual: @"One Player"])
    {
        int value;
        if(player == 1){
            value = dataShared.playerScore;
            value +=1;
        }else{
            value = dataShared.computerScore;
            value +=1;
        }
        
        if([segue.identifier isEqualToString:@"BackToMenu2"])
        {
            ViewController2 *storeScores = segue.destinationViewController;
            dataShared.playerScore = value;
            storeScores.savedScores = dataShared;
        }
    }
}


@end
