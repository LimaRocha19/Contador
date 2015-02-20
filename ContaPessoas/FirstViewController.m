//
//  FirstViewController.m
//  ContaPessoas
//
//  Created by Vinicius Miana on 2/18/15.
//  Copyright (c) 2015 Vinicius Miana. All rights reserved.
//

#import "FirstViewController.h"
#import "Contador.h"


@implementation FirstViewController

- (void)viewDidLoad {
    NSURL *Menino = [NSURL fileURLWithPath:[[NSBundle mainBundle] pathForResource:@"Vermelho" ofType:@"mp3"]];
    menino = [[AVAudioPlayer alloc] initWithContentsOfURL:Menino error:nil];
    
    NSURL *Menina = [NSURL fileURLWithPath:[[NSBundle mainBundle] pathForResource:@"Verde " ofType:@"mp3"]];
    menina = [[AVAudioPlayer alloc] initWithContentsOfURL:Menina error:nil];
    
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)clickBoy:(id)sender {
    [menino play];
    Contador *contador = [Contador instancia];
    [contador maisUmCueca];
    NSLog(@"Meninos - %i",[contador getBoys]);
}

- (IBAction)clickGirl:(id)sender {
    [menina play];
    Contador *contador = [Contador instancia];
    [contador maisUmaGata];
    NSLog(@"Meninas - %i",[contador getGirls]);
}

@end
