//
//  GameViewController.h
//  decode:active_v2
//
//  Copyright © 2016 James R. Wootton.

#import <UIKit/UIKit.h>

@interface GameViewController : UIViewController


@property (strong, nonatomic) IBOutlet UIButton *gridButton;


@property (strong, nonatomic) IBOutlet UILabel *stateLabel;


@property (strong, nonatomic) IBOutlet UILabel *timeLabel;

@property (strong, nonatomic) IBOutlet UILabel *highLabel;


@property (strong, nonatomic) IBOutlet UILabel *scoreText;

@property (strong, nonatomic) IBOutlet UILabel *highText;


@property (strong, nonatomic) IBOutlet UIButton *buttonZ;

@property (strong, nonatomic) IBOutlet UIButton *buttonP;

@property (strong, nonatomic) IBOutlet UIButton *buttonM;



- (IBAction)bigDown:(id)sender forEvent:(UIEvent *)event;

- (IBAction)bigUp:(id)sender forEvent:(UIEvent *)event;

- (IBAction)bigOut:(id)sender forEvent:(UIEvent *)event;

- (IBAction)mediumZ:(id)sender;

- (IBAction)mediumP:(id)sender;

- (IBAction)menuButton:(id)sender;



@end

