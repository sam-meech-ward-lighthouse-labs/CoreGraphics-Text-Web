//
//  ViewController.m
//  CoreGraphics
//
//  Created by Sam Meech-Ward on 2016-11-11.
//  Copyright © 2016 Sam Meech-Ward. All rights reserved.
//

#import "ViewController.h"
#import "DrawingView.h"

@interface ViewController () <UITextFieldDelegate, UITextViewDelegate>

@property (weak, nonatomic) IBOutlet DrawingView *drawingView;
@property (weak, nonatomic) IBOutlet UITextField *textField;
@property (weak, nonatomic) IBOutlet UITextView *textView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    self.drawingView.primaryColor = [UIColor redColor];
    
    UITapGestureRecognizer *tapGesture = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(dismissKeyboard)];
    
    [self.view addGestureRecognizer:tapGesture];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)someAction:(id)sender {
    self.drawingView.primaryColor = [UIColor cyanColor];
    [self.drawingView setNeedsDisplay];
    
    [self.view endEditing:YES];
}


- (void)dismissKeyboard {
    [self.view endEditing:YES];
}

#pragma mark - Text Delegate

- (BOOL)textFieldShouldReturn:(UITextField *)textField {
    
    [textField resignFirstResponder];
    
    return YES;
}

- (BOOL)textView:(UITextView *)textView shouldChangeTextInRange:(NSRange)range replacementText:(NSString *)text {
    
    NSLog(@"text: %@", text);
    
    if ([text isEqualToString:@"r"]) {
        return NO;
    }
    
    return YES;
}

@end
