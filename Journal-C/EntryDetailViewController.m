//
//  EntryDetailViewController.m
//  Journal-C
//
//  Created by Thang H Tong on 12/1/15.
//  Copyright © 2015 Thang. All rights reserved.
//

#import "EntryDetailViewController.h"

@interface EntryDetailViewController () <UITextFieldDelegate>

@property (weak, nonatomic) IBOutlet UITextField *titleTextField;
@property (weak, nonatomic) IBOutlet UITextView *textTextView;

@end

@implementation EntryDetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
}

//updateWithEntry

- (IBAction)clearButtonTapped:(id)sender {
    
}
- (IBAction)saveButtonTapped:(id)sender {
    
}

#pragma Mark: -TextField delegat]
-(BOOL)textFieldShouldReturn:(UITextField *)textField {
    [textField resignFirstResponder];
    return true;
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
