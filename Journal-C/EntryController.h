//
//  EntryController.h
//  Journal-C
//
//  Created by Thang H Tong on 12/1/15.
//  Copyright © 2015 Thang. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Entry.h"


@interface EntryController : NSObject


@property (strong, nonatomic)NSMutableArray *entries;

-(void)addEntries:(Entry *)entry;
-(void)removeEntries:(Entry *)entry;

+ (EntryController *)shareInstance;

@end




