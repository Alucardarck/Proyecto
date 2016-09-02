//
//  ViewController.m
//  Proyecto
//
//  Created by Martin Leon Preciado on 01/09/16.
//  Copyright © 2016 UAG. All rights reserved.
//

#import "Start.h"

@interface Start ()

@end

@implementation Start

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)Btt_Start:(id)sender {
    
    [self performSegueWithIdentifier: @"Second_Display" sender:self];  //Se realiza la saga llamada a segunda ventada
}

@end
