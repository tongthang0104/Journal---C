//
//  EntryController.m
//  Journal-C
//
//  Created by Thang H Tong on 12/1/15.
//  Copyright © 2015 Thang. All rights reserved.
//

#import "EntryController.h"


static NSString * const EntriesKey = @"entries";

@implementation EntryController

//called add Entry
    //addObject:
-(void)addEntries:(Entry *)entry {
    [self.entries addObject:entry];
    [self saveToPersistentStorage];
}
//called remove Entry
    //removeObject:
-(void)removeEntries:(Entry *)entry{
    [self.entries removeObject:entry];
    [self saveToPersistentStorage];
}



+ (EntryController *)sharedInstance {
    static EntryController *sharedInstance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        sharedInstance = [EntryController new];
    });
    
    return sharedInstance;
}

-(void)saveToPersistentStorage {
    //take self.entries, covert entries to dictionaries, save dictionaries to NSUserDefaults, synchronize NSUserDefaults
    
    //NSMutableArray *entryDictionaries = [NSMutableArray new];
    
    // use for in Entry *entry in self.entries to add object to dictionarycopy
    
    
    
//    [[NSUserDefaults standardUserDefaults] setObject:<#(nullable id)#> forKey:<#(nonnull NSString *)#>];
//    [[NSUserDefaults standardUserDefaults]] synchronize];
}

-(void)loadFromPersistent {
    
}








@end
