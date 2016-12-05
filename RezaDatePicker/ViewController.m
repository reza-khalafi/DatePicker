//
//  ViewController.m
//  RezaDatePicker
//
//  Created by Reza Khalafi on 12/5/16.
//  Copyright © 2016 Reza Khalafi. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (strong, nonatomic) IBOutlet UIDatePicker *datePicker;
@property (strong,nonatomic)NSString *selectedDateStr;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    //Set locale
    [self.datePicker setLocale:[self getCurrentLocale]];
    
    //Set persian calendar
    NSCalendar *persCalendar = [[NSCalendar alloc] initWithCalendarIdentifier:NSCalendarIdentifierPersian];
    [self.datePicker setCalendar:persCalendar];
    
    //set minimum date
    [self.datePicker setMinimumDate:[NSDate date]];
    
}

#pragma mark - Method Handlers
-(NSLocale *)getCurrentLocale{
    return [[NSLocale alloc] initWithLocaleIdentifier:@"fa_IR"];
}

#pragma mark - Changes
- (IBAction)datePickerHasChanged:(UIDatePicker *)sender {
    
    

    
    NSDateFormatter *f = [NSDateFormatter new];
    [f setLocale:[self getCurrentLocale]];
    NSCalendar *persian = [[NSCalendar alloc] initWithCalendarIdentifier:@"persian"];
    [f setCalendar:persian];
    [f setDateFormat:@"EE dd LLLL yyyy"];
    
    NSString *formattedDate = [f stringFromDate:sender.date];
    
    NSLog(@"formattedDate is: %@",formattedDate);
    
    

    
    
}




@end
