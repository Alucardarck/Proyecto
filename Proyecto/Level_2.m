//
//  Level_2.m
//  Proyecto
//
//  Created by Martin Leon Preciado on 02/09/16.
//  Copyright © 2016 UAG. All rights reserved.
//

#import "Level_2.h"

@interface Level_2 ()
@property NSMutableArray *Picture_name;
@property NSMutableArray *Animal_Name;
@property NSMutableArray *Animal_Name2;

@end

int Contador;
char Respuestas[8]={1,2,2,1,2,1,1,2};


@implementation Level_2

- (void)viewDidLoad {
    [super viewDidLoad];
    Contador =0;
    // Do any additional setup after loading the view.
    self.Picture_name   = [[NSMutableArray alloc] initWithObjects: @"A1.png",@"A2.png",@"A3.png",@"A4.png",@"A5.png",@"A6.png",@"A7.png",@"A8.png",nil];
    self.Animal_Name   = [[NSMutableArray alloc] initWithObjects: @"Lion",@"Dog",@"Dolphin",@"Zebra",@"Eagle"@"Monkey"@"Pig"@"Snake",nil];
    self.Animal_Name2  = [[NSMutableArray alloc] initWithObjects: @"Cat",@"Cat",@"Elephant",@"Horse",@"Toucan"@"Fish"@"Cow"@"Rhino",nil];
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
- (IBAction)Back_Level:(id)sender {
    [self performSegueWithIdentifier: @"Back_Level" sender:self];  //Se realiza la saga llamada a segunda ventada
}
- (IBAction)Btt1:(id)sender {
    if(Respuestas[Contador]==1)
    {
        
    }
}

- (IBAction)Btt_2:(id)sender {
}

@end
