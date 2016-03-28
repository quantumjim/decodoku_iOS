//
//  Tut2ViewController.m
//  Decodoku
//
//  Copyright © 2016 James R. Wootton.

#import "Tut2ViewController.h"

@interface Tut2ViewController (){
    
    // declare global variables here
    UIButton *_buttonM;
    
    double wS, hS, fSize;
    
}
@end


@implementation Tut2ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    

    
    // size of screen
    CGRect screenRect = [[UIScreen mainScreen] bounds];
    wS = screenRect.size.width;
    hS = screenRect.size.height;
    
    [self makeBackground];
    
    [self addContent];
    
}

- (void) makeBackground {
    
    
    // background colour
    UIColor *backColour1 = [UIColor colorWithRed: 229.0/255.0 green:229.0/255.0 blue:229.0/255.0 alpha:.69]; // colour at sides
    UIColor *backColour2 = [UIColor colorWithRed: 229.0/255.0 green:229.0/255.0 blue:229.0/255.0 alpha:1]; // colour in center
    CAGradientLayer *gradient = [CAGradientLayer layer];
    gradient.frame = self.view.frame;
    gradient.colors = [NSArray arrayWithObjects:(id)[backColour1 CGColor], (id)[backColour2 CGColor], (id)[backColour1 CGColor], nil];
    gradient.startPoint = CGPointMake(0.0, 0.5);
    gradient.endPoint = CGPointMake(1, 0.5);
    [self.view.layer insertSublayer:gradient atIndex:0];
    
    // glyph sizes and positions
    double glyphWidth1 = wS * 0.1746;
    double glyphWidth2 = glyphWidth1 * 2768.0 / 1597.0;
    double glyphWidth3 = glyphWidth1 * 1724.0 / 1597.0;
    double glyphWidth4 = glyphWidth1 * 1694.0 / 1597.0;
    double glyphHeight1 = glyphWidth1 * 1854.0 / 1597.0;
    double glyphHeight2 = glyphHeight1 * 2807.0 / 1854.0;
    double glyphHeight3 = glyphHeight1 * 3899.0 / 1854.0;
    double glyphHeight4 = glyphHeight1 * 1928.0 / 1854.0;
    double glyphX1 = 0;
    double glyphX2 = wS - glyphWidth2;
    double glyphX3 = wS - glyphWidth4;
    double glyphX4 = 0;
    double glyphY1 = hS - glyphHeight1;
    double glyphY2 = hS - glyphHeight2;
    double glyphY3 = 0;
    double glyphY4 = glyphHeight4 / 2;
    
    
    // add glyphs
    UIImageView *glyph1 = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"glyph1.png"]]; // initialize and set image
    glyph1.frame = CGRectMake(glyphX1, glyphY1, glyphWidth1, glyphHeight1); //frame
    [self.view addSubview:glyph1];
    UIImageView *glyph2 = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"glyph2.png"]]; // initialize and set image
    glyph2.frame = CGRectMake(glyphX2, glyphY2, glyphWidth2, glyphHeight2); //frame
    [self.view addSubview:glyph2];
    UIImageView *glyph3 = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"glyph3.png"]]; // initialize and set image
    glyph3.frame = CGRectMake(glyphX3, glyphY3, glyphWidth3, glyphHeight3); //frame
    [self.view addSubview:glyph3];
    UIImageView *glyph4 = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"glyph4.png"]]; // initialize and set image
    glyph4.frame = CGRectMake(glyphX4, glyphY4, glyphWidth4, glyphHeight4); //frame
    [self.view addSubview:glyph4];
    
}

- (void)addContent {

    
    fSize = 0.035 * wS;
    
    // add next button
    double wB = 0.27*wS;
    double hB = 0.048*hS;
    _buttonM = [UIButton buttonWithType:UIButtonTypeSystem];  // initialize
    [_buttonM addTarget:self action:@selector(menuButton:) forControlEvents:UIControlEventTouchDown]; // action
    _buttonM.frame = CGRectMake(0.95 * wS - wB, 0.9 * hS, wB, hB); // frame
    _buttonM.backgroundColor = [UIColor colorWithRed: 219.0/255.0 green:119.0/255.0 blue:147.0/255.0 alpha:1.0];// background
    [_buttonM setTitle:[NSString stringWithFormat:NSLocalizedString(@"NEXT", nil), @(1000000)] forState:UIControlStateNormal]; // text
    [_buttonM setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal ]; // text colour
    _buttonM.titleLabel.font = [UIFont fontWithName:@"QuicksandBold-Regular" size:0.035 * wS]; // text font
    [self.view addSubview:_buttonM]; // add to view
    
    
    // add images
    double wG = 0.4*wS;
    double hG = wG * 2074.0 / 2094.0;
    double x1 = 0.05 * wS;
    double y1 = 0.05 * hS;
    double x2 = x1;//0.95 * wS - wG;
    double y2 = 0.35 * hS;
    double x3 = x1;//0.05 * wS;
    double y3 = 0.65 * hS;

    
    UIImageView *tut1 = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"tut3.png"]]; // initialize and set image
    tut1.frame = CGRectMake(x1, y1, wG, hG); //frame
    [self.view addSubview:tut1];
    
    
    UIImageView *tut2 = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"tut4.png"]]; // initialize and set image
    tut2.frame = CGRectMake(x2, y2, wG, hG); //frame
    [self.view addSubview:tut2];
    
    UIImageView *tut3 = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"tut5.png"]]; // initialize and set image
    tut3.frame = CGRectMake(x3, y3, wG, hG); //frame
    [self.view addSubview:tut3];
    
    
    // add text
    
    fSize = 0.045 * wS;
    
    UILabel *_text3 = [[UILabel alloc] init]; // initialize
    _text3.frame = CGRectMake(0.47 * wS, y1, 0.5*wS, 0.0); // frame
    _text3.text = [NSString stringWithFormat:NSLocalizedString(@"tuttext2", nil), @(1000000)]; // text
    _text3.textColor = [UIColor blackColor]; //text colour
    _text3.font = [UIFont fontWithName:@"QuicksandBook-Regular" size:MAX(0.035 * wS,14)]; // text font
    [_text3 setTextAlignment:NSTextAlignmentLeft]; // text alignment
    _text3.numberOfLines = 0; // word wrap
    [_text3 sizeToFit]; // height in frame is set to zero, but set to fit text here
    [self.view addSubview:_text3]; // add to view
    
}


- (IBAction)menuButton:(id)sender {
    
    [self performSegueWithIdentifier:@"fromTut2" sender:self];
    
}

@end
