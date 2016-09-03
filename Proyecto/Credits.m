//
//  Credits.m
//  Proyecto
//
//  Created by Martin Leon Preciado on 02/09/16.
//  Copyright © 2016 UAG. All rights reserved.
//

#import "Credits.h"

@interface Credits ()

@end
char Parp_Counter;

@implementation Credits

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    Parp_Counter=0;
    [NSTimer scheduledTimerWithTimeInterval:0.5 target:self selector:@selector(Parpadeo) userInfo:nil repeats:YES];
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
- (IBAction)Go_Back_Again:(id)sender {
    [self performSegueWithIdentifier: @"Back_Cre" sender:self];
}

-(void) Parpadeo{
    
    switch(Parp_Counter){
        case 1:
            self.Lbl_Credits.textColor=[UIColor redColor];
            break;
        case 2:
            self.Lbl_Credits.textColor=[UIColor yellowColor];
            break;
        case 3:
            self.Lbl_Credits.textColor=[UIColor greenColor];
            break;
        case 4:
            self.Lbl_Credits.textColor=[UIColor orangeColor];
            Parp_Counter=0;
            break;
    }
    Parp_Counter++;   
}

@end
