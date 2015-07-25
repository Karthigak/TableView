//
//  secViewController.m
//  TableView
//
//  Created by Sathish on 20/07/15.
//  Copyright (c) 2015 Optisol Business Solutions pvt ltd. All rights reserved.
//

#import "secViewController.h"

@interface secViewController ()<UITextFieldDelegate>
{
    BOOL IsClick;
}
@end

@implementation secViewController

- (void)viewDidLoad
{
    [super viewDidLoad];


    
    // Do any additional setup after loading the view.
}
-(void)viewWillAppear:(BOOL)animated
{
    IsClick=YES;
    NSLog(@"SUCCESS");
if([self.temp isEqualToString:@"TextField"])
{
    UITextField *textField = [[UITextField  alloc] initWithFrame:
                              CGRectMake(20, 70, 280, 30)];
    textField.borderStyle = UITextBorderStyleRoundedRect;
    
    textField.contentVerticalAlignment =
    
    UIControlContentVerticalAlignmentCenter;
    
    [textField setFont:[UIFont boldSystemFontOfSize:12]];
    
    textField.placeholder = @"Simple Text field";
    
    
    [self.view addSubview:textField];
    
    
    textField.delegate = self;

}
else if([self.temp isEqualToString:@"Switches"])
{
    
   UISwitch *mySwitch = [[UISwitch alloc] init];
    [self.view addSubview:mySwitch];
    mySwitch.center = CGPointMake(150, 200);
    [mySwitch addTarget:self action:@selector(switched:)
       forControlEvents:UIControlEventValueChanged];
    
    
}
else if([self.temp isEqualToString:@"Sliders"])
{
 UISlider *mySlider = [[UISlider alloc] initWithFrame:CGRectMake(50, 200, 200, 23)];
    [self.view addSubview:mySlider];
    mySlider.minimumValue = 10.0;
    mySlider.maximumValue = 99.0;
    mySlider.continuous = NO;
    [mySlider addTarget:self action:@selector(sliderValueChanged:) forControlEvents:UIControlEventValueChanged];

    }
else if([self.temp isEqualToString:@"Button"])
{
    UIButton *roundRectButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [roundRectButton setFrame:CGRectMake(60, 50, 200, 40)];
    
    [roundRectButton setTitle:@"Rounded Rect Button" forState:
     UIControlStateNormal];
    
    [self.view addSubview:roundRectButton];
    
    UIButton *customButton = [UIButton buttonWithType: UIButtonTypeCustom];
    
    [customButton setBackgroundColor: [UIColor lightGrayColor]];
    [customButton setTitleColor:[UIColor blackColor] forState:
     UIControlStateHighlighted];
    
     [customButton addTarget:self action:@selector(customButton:)
        forControlEvents:UIControlEventTouchUpInside];
    [customButton setFrame:CGRectMake(60, 100, 200, 40)];
    
    [customButton setTitle:@"Custom Button" forState:UIControlStateNormal];
    [self.view addSubview:customButton];
    
    UIButton *detailDisclosureButton = [UIButton buttonWithType:
                                        UIButtonTypeDetailDisclosure];
    [detailDisclosureButton setFrame:CGRectMake(60, 150, 200, 40)];
    [detailDisclosureButton setTitle:@"Detail disclosure" forState:
     UIControlStateNormal];
    
    [self.view addSubview:detailDisclosureButton];
    
    UIButton *contactButton = [UIButton buttonWithType:
                               UIButtonTypeContactAdd];
    
    [contactButton setFrame:CGRectMake(60, 200, 200, 40)];
    [self.view addSubview:contactButton];
    
    UIButton *infoDarkButton = [UIButton buttonWithType:
                                UIButtonTypeInfoDark];
    [infoDarkButton setFrame:CGRectMake(60, 250, 200, 40)];
    [self.view addSubview:infoDarkButton];
    
    UIButton *infoLightButton = [UIButton buttonWithType:
                                 UIButtonTypeInfoLight];
    [infoLightButton setFrame:CGRectMake(60, 300, 200, 40)];
    [self.view addSubview:infoLightButton];
}
 

    else
    {
        UILabel *aLabel = [[UILabel alloc]initWithFrame:
                           CGRectMake(20, 200, 280, 80)];
        aLabel.numberOfLines = 0;
        aLabel.textColor = [UIColor blueColor];
        aLabel.backgroundColor = [UIColor clearColor];
        aLabel.textAlignment = NSTextAlignmentCenter;
        aLabel.text = @"Name";
        [self.view addSubview:aLabel];
    }
}
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(IBAction)sliderValueChanged:(UISlider *)sender
{
    NSLog(@"slider value = %f", sender.value);
}
/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/
-(void)switched:(id)swit
{
    UISwitch *switt=(UISwitch *)swit;
    if(switt.isOn)
    {
        self.view.backgroundColor=[UIColor redColor];
    }else
    {
        self.view.backgroundColor=[UIColor lightGrayColor];

    }
}
-(void)customButton:(id)customBt
{
//    UIButton *customButton=(UIButton *)customBt;
if(IsClick)
{
    self.view.backgroundColor=[UIColor redColor];
    IsClick=NO;
    

}
else
{
    self.view.backgroundColor=[UIColor lightGrayColor];
    IsClick=YES;

}
}
@end
