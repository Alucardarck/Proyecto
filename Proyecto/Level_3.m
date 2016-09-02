//
//  Level_3.m
//  Proyecto
//
//  Created by Martin Leon Preciado on 02/09/16.
//  Copyright © 2016 UAG. All rights reserved.
//

#import "Level_3.h"

@interface Level_3 ()

@end

@implementation Level_3

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
- (IBAction)Return_From_Lv3:(id)sender {
    [self performSegueWithIdentifier: @"Back_From_Lv3" sender:self];  //Se realiza la saga llamada a segunda ventada
}

@end
