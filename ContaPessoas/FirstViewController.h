//
//  FirstViewController.h
//  ContaPessoas
//  Esse programa é muito ruim
//
//  Created by Isaías Lima on 02/19/15.
//  Copyright (c) 2015 Vinicius Miana. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <AVFoundation/AVFoundation.h>

@interface FirstViewController : UIViewController {
    AVAudioPlayer *menino;
    AVAudioPlayer *menina;
}

- (IBAction)clickBoy:(id)sender;
- (IBAction)clickGirl:(id)sender;

@end

