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

-(instancetype)initWithDictionary:(NSDictionary *)dictionary {
    self = [super init];
    if (self) {
        self.title = dictionary[TitleKey];
        self.text = dictionary[TextKey];
        self.timestamp = dictionary[TimestampKey];
    }
    return self;
}

-(NSDictionary *)dictionaryCopy {
    return @{
             TitleKey: self.title,
             TextKey: self.text,
             TimestampKey: self.timestamp
             };
}
    
@end

