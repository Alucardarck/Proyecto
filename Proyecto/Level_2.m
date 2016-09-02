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
int RGood;


@implementation Level_2



- (void)viewDidLoad {
    [super viewDidLoad];
    Contador =0;
    RGood=0;
    // Do any additional setup after loading the view.
    self.Picture_name   = [[NSMutableArray alloc] initWithObjects: @"A1.png",@"A2.png",@"A3.png",@"A4.png",@"A5.png",@"A6.png",@"A7.png",@"A8.png",nil];
    self.Animal_Name   = [[NSMutableArray alloc] initWithObjects: @"Lion",@"Dog",@"Dolphin",@"Zebra",@"Eagle",@"Monkey",@"Pig",@"Snake",nil];
    self.Animal_Name2  = [[NSMutableArray alloc] initWithObjects: @"Cat",@"Cat",@"Elephant",@"Horse",@"Toucan",@"Fish",@"Cow",@"Rhino",nil];
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
if(Contador < 8)
{
    if(Respuestas[Contador]==1)
    {
        [NSTimer scheduledTimerWithTimeInterval:1 target:self selector:@selector(Siguiente) userInfo:nil repeats:NO];
        self.Label_Lvl2.text = @"Correct";
        RGood++;
        [self.IMG_Lvl2 setImage:[UIImage imageNamed:@"Correct.png"]];
    }
    else
    {
        [NSTimer scheduledTimerWithTimeInterval:1 target:self selector:@selector(Siguiente) userInfo:nil repeats:NO];
        self.Label_Lvl2.text = @"Incorrect";
        [self.IMG_Lvl2 setImage:[UIImage imageNamed:@"Wrong"]];
    }
}
}



- (IBAction)Btt_2:(id)sender {
if(Contador < 8)
{
    if(Respuestas[Contador]==2)
    {
        [NSTimer scheduledTimerWithTimeInterval:1 target:self selector:@selector(Siguiente) userInfo:nil repeats:NO];
        self.Label_Lvl2.text = @"Correct";
        RGood++;
        [self.IMG_Lvl2 setImage:[UIImage imageNamed:@"Correct.png"]];
    }
    else
    {
        [NSTimer scheduledTimerWithTimeInterval:1 target:self selector:@selector(Siguiente) userInfo:nil repeats:NO];
        self.Label_Lvl2.text = @"Incorrect";
        [self.IMG_Lvl2 setImage:[UIImage imageNamed:@"Wrong.png"]];
    }
}
}

-(void) Siguiente{
    
    Contador++;
    if(Contador < 8)
    {
        self.Label_Lvl2.text = @"Chose an Option";
        [self.IMG_Lvl2 setImage:[UIImage imageNamed:@"Question.png"]];
        [self.Animal_Pic setImage:[UIImage imageNamed:self.Picture_name[Contador]]];
        [self.Btt_L2_1 setTitle:self.Animal_Name[Contador] forState:UIControlStateNormal];
        [self.Btt_L2_2 setTitle:self.Animal_Name2[Contador] forState:UIControlStateNormal];
    }
    else
    {
      if(RGood>4)
      {
          self.Label_Lvl2.text = @"Congratulations";
      }
      else
      {
         self.Label_Lvl2.text = @"Not Bad";

      }
    [self.Animal_Pic setImage:[UIImage imageNamed:@"Icon_1.png"]];
        
        
    }
    
    
    
}








@end