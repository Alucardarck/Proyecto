//
//  Second_Display.m
//  Proyecto
//
//  Created by Martin Leon Preciado on 01/09/16.
//  Copyright © 2016 UAG. All rights reserved.
//

#import "Second_Display.h"

@interface Second_Display ()

@end

@implementation Second_Display

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/
- (IBAction)Go_Home:(id)sender {
    [self performSegueWithIdentifier: @"Go_Home" sender:self];  //Se realiza la saga llamada a Home
}

@end
