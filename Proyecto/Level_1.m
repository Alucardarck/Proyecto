//
//  Level_1.m
//  Proyecto
//
//  Created by Martin Leon Preciado on 01/09/16.
//  Copyright © 2016 UAG. All rights reserved.
//

#import "Level_1.h"

@interface Level_1 ()
@property NSMutableArray *Picture_name;
@property NSMutableArray *Fruit_Name;
@property NSMutableArray *Actual;

@end

@implementation Level_1

int Counter;
int Global;
char Control[12]={0};
char Cartas[2]={0};

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    Counter=0;
    Global=0;
    Clear();
    self.Picture_name   = [[NSMutableArray alloc] initWithObjects: @"Fruta_5.png",@"Fruta_2.png",@"Fruta_5.png",@"Fruta_3.png",@"Fruta_4.png",@"Fruta_6.png",@"Fruta_1.png",@"Fruta_1.png",@"Fruta_4.png",@"Fruta_2.png",@"Fruta_6.png",@"Fruta_3.png",nil];
    self.Fruit_Name   = [[NSMutableArray alloc] initWithObjects: @"Pineapple",@"Apple",@"Pineapple",@"strawberry",@"Orange",@"Kiwi",@"Watermelon",@"Watermelon",@"Orange",@"Apple",@"Kiwi",@"strawberry",nil];

    
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
- (IBAction)Back_2:(id)sender {
    [self performSegueWithIdentifier: @"Back_Second" sender:self];  //Se realiza la saga llamada a segunda ventada
}

- (IBAction)IM_1:(id)sender {
    Global=0;
    [self Game];
}

- (IBAction)IM_2:(id)sender {
    Global=1;
    [self Game];
}

- (IBAction)IM_3:(id)sender {
    Global=2;
    [self Game];
}

- (IBAction)IM_4:(id)sender {
    Global=3;
    [self Game];
}

- (IBAction)IM_5:(id)sender {
    Global=4;
    [self Game];
}

- (IBAction)IM_6:(id)sender {
    Global=5;
    [self Game];
}

- (IBAction)IM_7:(id)sender {
    Global=6;
    [self Game];
}

- (IBAction)IM_8:(id)sender {
    Global=7;
    [self Game];
}

- (IBAction)IM_9:(id)sender {
    Global=8;
    [self Game];
}

- (IBAction)IM_10:(id)sender {
    Global=9;
    [self Game];
}

- (IBAction)IM_11:(id)sender {
    Global=10;
    [self Game];
}

- (IBAction)IM_12:(id)sender {
    Global=11;
    [self Game];
}

-(void) Game{
    
    if (Control [Global] == 0) {
        Cartas[Counter]=Global;
        Counter++;
        switch(Global)
        {
            case 0:
                [self.IM1 setImage:[UIImage imageNamed:self.Picture_name [Global]] forState:UIControlStateNormal];
                break;
            case 1:
                [self.IM2 setImage:[UIImage imageNamed:self.Picture_name [Global]] forState:UIControlStateNormal];
                break;
            case 2:
                [self.IM3 setImage:[UIImage imageNamed:self.Picture_name [Global]] forState:UIControlStateNormal];
                break;
            case 3:
                [self.IM4 setImage:[UIImage imageNamed:self.Picture_name [Global]] forState:UIControlStateNormal];
                break;
            case 4:
                [self.IM5 setImage:[UIImage imageNamed:self.Picture_name [Global]] forState:UIControlStateNormal];
                break;
            case 5:
                [self.IM6 setImage:[UIImage imageNamed:self.Picture_name [Global]] forState:UIControlStateNormal];
                break;
            case 6:
                [self.IM7 setImage:[UIImage imageNamed:self.Picture_name [Global]] forState:UIControlStateNormal];
                break;
            case 7:
                [self.IM8 setImage:[UIImage imageNamed:self.Picture_name [Global]] forState:UIControlStateNormal];
                break;
            case 8:
                [self.IM9 setImage:[UIImage imageNamed:self.Picture_name [Global]] forState:UIControlStateNormal];
                break;
            case 9:
                [self.IM10 setImage:[UIImage imageNamed:self.Picture_name [Global]] forState:UIControlStateNormal];
                break;
            case 10:
                [self.IM11 setImage:[UIImage imageNamed:self.Picture_name [Global]] forState:UIControlStateNormal];
                break;
            case 11:
                [self.IM12 setImage:[UIImage imageNamed:self.Picture_name [Global]] forState:UIControlStateNormal];
                break;
        }        
        Control [Global]=1;
        self.Lbl_1.text = self.Fruit_Name[Global];
    }
    if(Counter==2)
    {
        char time=2;
        if(self.Picture_name [Cartas[0]]==self.Picture_name [Cartas[1]])
        {
           self.Lbl_1.text = @"Perfect";
        [NSTimer scheduledTimerWithTimeInterval:time target:self selector:@selector(Game_3) userInfo:nil repeats:NO];
        }
        else
        {
            [NSTimer scheduledTimerWithTimeInterval:time target:self selector:@selector(Game_2) userInfo:nil repeats:NO];
            Control [Cartas[0]]=0;
            Control [Cartas[1]]=0;
            self.Lbl_1.text = @"Incorrect";
        }
        Counter=0;
    }
 
}

-(void) Game_2{
    
    char i;
    for(i=0;i<2;i++)
    {
        Global=Cartas[i];
        switch(Global)
        {
            case 0:
                [self.IM1 setImage:[UIImage imageNamed:@"SQR1.png"] forState:UIControlStateNormal];
                break;
            case 1:
                [self.IM2 setImage:[UIImage imageNamed:@"SQR1.png"] forState:UIControlStateNormal];
                break;
            case 2:
                [self.IM3 setImage:[UIImage imageNamed:@"SQR1.png"] forState:UIControlStateNormal];
                break;
            case 3:
                [self.IM4 setImage:[UIImage imageNamed:@"SQR1.png"] forState:UIControlStateNormal];
                break;
            case 4:
                [self.IM5 setImage:[UIImage imageNamed:@"SQR1.png"] forState:UIControlStateNormal];
                break;
            case 5:
                [self.IM6 setImage:[UIImage imageNamed:@"SQR1.png"] forState:UIControlStateNormal];
                break;
            case 6:
                [self.IM7 setImage:[UIImage imageNamed:@"SQR1.png"] forState:UIControlStateNormal];
                break;
            case 7:
                [self.IM8 setImage:[UIImage imageNamed:@"SQR1.png"] forState:UIControlStateNormal];
                break;
            case 8:
                [self.IM9 setImage:[UIImage imageNamed:@"SQR1.png"] forState:UIControlStateNormal];
                break;
            case 9:
                [self.IM10 setImage:[UIImage imageNamed:@"SQR1.png"] forState:UIControlStateNormal];
                break;
            case 10:
                [self.IM11 setImage:[UIImage imageNamed:@"SQR1.png"] forState:UIControlStateNormal];
                break;
            case 11:
                [self.IM12 setImage:[UIImage imageNamed:@"SQR1.png"] forState:UIControlStateNormal];
                break;
        }
    }
    self.Lbl_1.text = @"Select a Card";
}

-(void)Game_3{
    
        self.Lbl_1.text = @"Select a Card";
}


void Clear(){
    char i;
    for(i=0;i<12;i++)
    {
        Control[i]=0;
    }
    
}

@end


