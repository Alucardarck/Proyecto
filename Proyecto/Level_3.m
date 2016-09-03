//
//  Level_3.m
//  Proyecto
//
//  Created by Martin Leon Preciado on 02/09/16.
//  Copyright © 2016 UAG. All rights reserved.
//

#import "Level_3.h"

@interface Level_3 ()
@property NSMutableArray *LV3_Texto_1;
@property NSMutableArray *LV3_Texto_2;
@property NSMutableArray *LV3_Respuestas_1;
@property NSMutableArray *LV3_Respuestas_2;
@property NSMutableArray *LV3_Respuestas_3;
@property NSMutableArray *LV3_Respuestas_4;
@property NSMutableArray *LV3_Respuestas_5;
@property NSMutableArray *LV3_Respuestas_6;
@property NSMutableArray *LV3_Respuestas_Correctas;

@property NSMutableArray *LV3_Picture_Name;



@end

int Lv3_Contador;
char Lv3_Respuestas[8]={3,1,5,2,1,6,4,4};

@implementation Level_3

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    Lv3_Contador=0;
    self.LV3_Picture_Name   = [[NSMutableArray alloc] initWithObjects: @"V1.png",@"V2.png",@"V3.png",@"V4.png",@"V5.png",@"V6.png",@"V7.png",@"V8.png",nil];
    
    self.LV3_Texto_1   = [[NSMutableArray alloc] initWithObjects: @"Peter Loves to ",@"Mr. Abney was ",@"My mother will be ",@"Tanya enjoy to ",@"Martin's bird is ",@"My neighbor ",@"Robert wants to ",@"My friend's father ",nil];
    
    self.LV3_Texto_2   = [[NSMutableArray alloc] initWithObjects: @"vegetarina pizza",@"chocolate cookies",@"all the night",@"tennis with her friends",@"to the beach",@"horrible ",@"an orange juice",@"a lot",nil];
    
    
    self.LV3_Respuestas_1   = [[NSMutableArray alloc] initWithObjects: @"eating",@"cooking",@"buying",@"desing",@"traveling",@"talk",@"drive",@"drinks",nil];
    
    self.LV3_Respuestas_2   = [[NSMutableArray alloc] initWithObjects: @"jumping",@"develp",@"running",@"play",@"walking",@"eat",@"take",@"jumps",nil];
    
    self.LV3_Respuestas_3   = [[NSMutableArray alloc] initWithObjects: @"eat",@"draw",@"working",@"jumping",@"swimming",@"sleep",@"eat",@"works",nil];
    
    self.LV3_Respuestas_4   = [[NSMutableArray alloc] initWithObjects: @"sing",@"building",@"write",@"drink",@"climbing",@"fly",@"drink",@"smokes",nil];
    
    self.LV3_Respuestas_5   = [[NSMutableArray alloc] initWithObjects: @"driving",@"take",@"reading",@"cooking",@"moving",@"work",@"play",@"writes",nil];
    
    self.LV3_Respuestas_6   = [[NSMutableArray alloc] initWithObjects: @"play",@"read",@"playing",@"watching",@"jumping",@"sings",@"broke",@"develops",nil];
    
    self.LV3_Respuestas_Correctas   = [[NSMutableArray alloc] initWithObjects: @"eat",@"cooking",@"reading",@"play",@"traveling",@"sings",@"drink",@"smokes",nil];
    
    [self.Lv3_Btt_1 setTitle:self.LV3_Respuestas_1[Lv3_Contador] forState:UIControlStateNormal];
    [self.Lv3_Btt_2 setTitle:self.LV3_Respuestas_2[Lv3_Contador] forState:UIControlStateNormal];
    [self.Lv3_Btt_3 setTitle:self.LV3_Respuestas_3[Lv3_Contador] forState:UIControlStateNormal];
    [self.Lv3_Btt_4 setTitle:self.LV3_Respuestas_4[Lv3_Contador] forState:UIControlStateNormal];
    [self.Lv3_Btt_5 setTitle:self.LV3_Respuestas_5[Lv3_Contador] forState:UIControlStateNormal];
    [self.Lv3_Btt_6 setTitle:self.LV3_Respuestas_6[Lv3_Contador] forState:UIControlStateNormal];
    
    
    
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


- (IBAction)L3_btt_1:(id)sender {
    if(Lv3_Contador < 8){
        if(Lv3_Respuestas[Lv3_Contador]==1){
            [NSTimer scheduledTimerWithTimeInterval:1 target:self selector:@selector(Lv3_Siguiente) userInfo:nil repeats:NO];
            self.Lv3_Titulo.text = @"Correct";
            self.Lv3_Respuesta.text=self.LV3_Respuestas_Correctas[Lv3_Contador];
            [self.Lv3_Img_Titulo setImage:[UIImage imageNamed:@"Correct.png"]];
        }
        else{
            [NSTimer scheduledTimerWithTimeInterval:1 target:self selector:@selector(Lv3_Siguiente) userInfo:nil repeats:NO];
            self.Lv3_Titulo.text = @"Incorrect";
            self.Lv3_Respuesta.text=self.LV3_Respuestas_Correctas[Lv3_Contador];
            [self.Lv3_Img_Titulo setImage:[UIImage imageNamed:@"Wrong.png"]];
        }
    }
    
}

- (IBAction)L3_btt_2:(id)sender {
    if(Lv3_Contador < 8){
        if(Lv3_Respuestas[Lv3_Contador]==2){
            [NSTimer scheduledTimerWithTimeInterval:1 target:self selector:@selector(Lv3_Siguiente) userInfo:nil repeats:NO];
            self.Lv3_Titulo.text = @"Correct";
            self.Lv3_Respuesta.text=self.LV3_Respuestas_Correctas[Lv3_Contador];
            [self.Lv3_Img_Titulo setImage:[UIImage imageNamed:@"Correct.png"]];
        }
        else{
            [NSTimer scheduledTimerWithTimeInterval:1 target:self selector:@selector(Lv3_Siguiente) userInfo:nil repeats:NO];
            self.Lv3_Titulo.text = @"Incorrect";
            self.Lv3_Respuesta.text=self.LV3_Respuestas_Correctas[Lv3_Contador];
            [self.Lv3_Img_Titulo setImage:[UIImage imageNamed:@"Wrong.png"]];
        }
    }
    
}

- (IBAction)L3_btt_3:(id)sender {
    if(Lv3_Contador < 8){
        if(Lv3_Respuestas[Lv3_Contador]==3){
            [NSTimer scheduledTimerWithTimeInterval:1 target:self selector:@selector(Lv3_Siguiente) userInfo:nil repeats:NO];
            self.Lv3_Titulo.text = @"Correct";
            self.Lv3_Respuesta.text=self.LV3_Respuestas_Correctas[Lv3_Contador];
            [self.Lv3_Img_Titulo setImage:[UIImage imageNamed:@"Correct.png"]];
        }
        else{
            [NSTimer scheduledTimerWithTimeInterval:1 target:self selector:@selector(Lv3_Siguiente) userInfo:nil repeats:NO];
            self.Lv3_Titulo.text = @"Incorrect";
            self.Lv3_Respuesta.text=self.LV3_Respuestas_Correctas[Lv3_Contador];
            [self.Lv3_Img_Titulo setImage:[UIImage imageNamed:@"Wrong.png"]];
        }
    }
    
}

- (IBAction)L3_btt_4:(id)sender {
    if(Lv3_Contador < 8){
        if(Lv3_Respuestas[Lv3_Contador]==4){
            [NSTimer scheduledTimerWithTimeInterval:1 target:self selector:@selector(Lv3_Siguiente) userInfo:nil repeats:NO];
            self.Lv3_Titulo.text = @"Correct";
            self.Lv3_Respuesta.text=self.LV3_Respuestas_Correctas[Lv3_Contador];
            [self.Lv3_Img_Titulo setImage:[UIImage imageNamed:@"Correct.png"]];
        }
        else{
            [NSTimer scheduledTimerWithTimeInterval:1 target:self selector:@selector(Lv3_Siguiente) userInfo:nil repeats:NO];
            self.Lv3_Titulo.text = @"Incorrect";
            self.Lv3_Respuesta.text=self.LV3_Respuestas_Correctas[Lv3_Contador];
            [self.Lv3_Img_Titulo setImage:[UIImage imageNamed:@"Wrong.png"]];
        }
    }
    
}

- (IBAction)L3_btt_5:(id)sender {
    if(Lv3_Contador < 8){
        if(Lv3_Respuestas[Lv3_Contador]==5){
            [NSTimer scheduledTimerWithTimeInterval:1 target:self selector:@selector(Lv3_Siguiente) userInfo:nil repeats:NO];
            self.Lv3_Titulo.text = @"Correct";
            self.Lv3_Respuesta.text=self.LV3_Respuestas_Correctas[Lv3_Contador];
            [self.Lv3_Img_Titulo setImage:[UIImage imageNamed:@"Correct.png"]];
        }
        else{
            [NSTimer scheduledTimerWithTimeInterval:1 target:self selector:@selector(Lv3_Siguiente) userInfo:nil repeats:NO];
            self.Lv3_Titulo.text = @"Incorrect";
            self.Lv3_Respuesta.text=self.LV3_Respuestas_Correctas[Lv3_Contador];
            [self.Lv3_Img_Titulo setImage:[UIImage imageNamed:@"Wrong.png"]];
        }
    }
    
}

- (IBAction)L3_btt_6:(id)sender {
    if(Lv3_Contador < 8){
        if(Lv3_Respuestas[Lv3_Contador]==6){
            [NSTimer scheduledTimerWithTimeInterval:1 target:self selector:@selector(Lv3_Siguiente) userInfo:nil repeats:NO];
            self.Lv3_Titulo.text = @"Correct";
            self.Lv3_Respuesta.text=self.LV3_Respuestas_Correctas[Lv3_Contador];
            [self.Lv3_Img_Titulo setImage:[UIImage imageNamed:@"Correct.png"]];
        }
        else{
            [NSTimer scheduledTimerWithTimeInterval:1 target:self selector:@selector(Lv3_Siguiente) userInfo:nil repeats:NO];
            self.Lv3_Titulo.text = @"Incorrect";
            self.Lv3_Respuesta.text=self.LV3_Respuestas_Correctas[Lv3_Contador];
            [self.Lv3_Img_Titulo setImage:[UIImage imageNamed:@"Wrong.png"]];
        }
    }
    
}



-(void) Lv3_Siguiente{
    
    Lv3_Contador++;
    if(Lv3_Contador < 8)
    {
        self.Lv3_Titulo.text = @"Chose an Option";
        [self.Lv3_Img_Titulo setImage:[UIImage imageNamed:@"Question.png"]];
        [self.Lv3_Img_Principal setImage:[UIImage imageNamed:self.LV3_Picture_Name[Lv3_Contador]]];
        self.Lv3_Respuesta.text=@"";
        self.Lv3_Texto_1.text=self.LV3_Texto_1[Lv3_Contador];
        self.Lv3_Texto_2.text=self.LV3_Texto_2[Lv3_Contador];

        [self.Lv3_Btt_1 setTitle:self.LV3_Respuestas_1[Lv3_Contador] forState:UIControlStateNormal];
        [self.Lv3_Btt_2 setTitle:self.LV3_Respuestas_2[Lv3_Contador] forState:UIControlStateNormal];
        [self.Lv3_Btt_3 setTitle:self.LV3_Respuestas_3[Lv3_Contador] forState:UIControlStateNormal];
        [self.Lv3_Btt_4 setTitle:self.LV3_Respuestas_4[Lv3_Contador] forState:UIControlStateNormal];
        [self.Lv3_Btt_5 setTitle:self.LV3_Respuestas_5[Lv3_Contador] forState:UIControlStateNormal];
        [self.Lv3_Btt_6 setTitle:self.LV3_Respuestas_6[Lv3_Contador] forState:UIControlStateNormal];
    }
    else
    {
        self.Lv3_Titulo.text = @"Congratulations";
        [self.Lv3_Img_Principal setImage:[UIImage imageNamed:@"Icon_1.png"]];
    }
    
}

@end
