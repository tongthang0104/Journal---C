//
//  EntryDetailViewController.m
//  Journal-C
//
//  Created by Thang H Tong on 12/1/15.
//  Copyright © 2015 Thang. All rights reserved.
//

#import "EntryDetailViewController.h"
#import "EntryController.h"
#import "Entry.h"

@interface EntryDetailViewController () <UITextFieldDelegate>

#pragma mark - Properties
@property (weak, nonatomic) IBOutlet UITextField *titleTextField;
@property (weak, nonatomic) IBOutlet UITextView *textTextView;

@end

@implementation EntryDetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self updateWithEntry: self.entry];
}

#pragma mark - UpdateWithEntry

-(void)updateWithEntry: (Entry *)entry {
    
    if (entry) {
        self.entry = entry;
        self.titleTextField.text = entry.title;
        self.textTextView.text = entry.text;
    }
}

#pragma mark: - Action
- (IBAction)clearButtonTapped:(id)sender {
    self.titleTextField.text = @"";
    self.textTextView.text = @"";
}

- (IBAction)saveButtonTapped:(id)sender {
    if (self.entry) {
        
        self.entry.title = self.titleTextField.text;
        self.entry.text = self.textTextView.text;
        self.entry.timestamp = [NSDate date];
        
    } else {
        Entry *newEntry = [[Entry alloc] initWithTitle:self.titleTextField.text text:self.textTextView.text timepstamp: [NSDate date]];
        [[EntryController shareInstance] addEntries:newEntry];
        self.entry = newEntry;
    }
    
    [self.navigationController popViewControllerAnimated:true];
}

#pragma mark: -TextField delegate
-(BOOL)textFieldShouldReturn:(UITextField *)textField {
    [textField resignFirstResponder];
    return true;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
