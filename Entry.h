//
//  Entry.h
//  Journal-C
//
//  Created by Thang H Tong on 12/1/15.
//  Copyright © 2015 Thang. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Entry : NSObject

@property (strong, nonatomic)NSString *title;
@property (strong, nonatomic)NSString *text;
@property (strong, nonatomic)NSDate *timestamp;

-(instancetype)initWithTitle: (NSString *)title text: (NSString *)text timepstamp: (NSDate *)timestamp;

@property (strong, nonatomic)NSDictionary *dictionaryCopy;

-(instancetype)initWithDictionary: (NSDictionary *)dictionary;
@end
