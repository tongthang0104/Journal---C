//
//  Entry.m
//  Journal-C
//
//  Created by Thang H Tong on 12/1/15.
//  Copyright © 2015 Thang. All rights reserved.
//

#import "Entry.h"


static NSString *const TitleKey = @"title";
static NSString *const TextKey = @"text";
static NSString *const TimestampKey = @"timestamp";

@implementation Entry

-(instancetype)initWithTitle:(NSString *)title text:(NSString *)text timepstamp:(NSDate *)timestamp {
    if (self) {
        self.title = title;
        self.text = text;
        self.timestamp = timestamp;
    }
    return self;
}

-(NSDictionary *)dictionaryCopy {
    
    
    
    
}
    

@end

