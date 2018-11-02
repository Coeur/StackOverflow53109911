//
//  ViewController.m
//  SO52413107
//
//  Created by Antoine Cœur on 2018/11/2.
//  Copyright © 2018 coeur. All rights reserved.
//

#import "ViewController.h"
@import AVFoundation;

@interface ViewController ()
@property AVAudioPlayer *titleMusic;
@end

@implementation ViewController
@synthesize titleMusic;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    AVAudioSession *title = [AVAudioSession sharedInstance];
    [title setCategory:AVAudioSessionCategoryAmbient error:nil];
    [title setActive:YES error:nil];
    
    //MUSIC
    NSString *path = [[NSBundle mainBundle] pathForResource:@"music_nature" ofType:@"mp3"];
    NSURL *url = [NSURL fileURLWithPath:path];
    titleMusic = [[AVAudioPlayer alloc] initWithContentsOfURL:url error:NULL];
    
    titleMusic.numberOfLoops = -1;
    [titleMusic setVolume:1.0];
    [titleMusic play];
}

@end
