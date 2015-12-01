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

-(void)addEntries:(Entry *)entry {
    [self.entries addObject:entry];
    [self saveToPersistentStorage];
}

-(void)removeEntries:(Entry *)entry{
    [self.entries removeObject:entry];
    [self saveToPersistentStorage];
}

+ (EntryController *)shareInstance {
    static EntryController *sharedInstance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        sharedInstance = [EntryController new];
        [sharedInstance loadFromPersistent];
    });
    return sharedInstance;
}


-(void)saveToPersistentStorage {
    //take self.entries, covert entries to dictionaries, save dictionaries to NSUserDefaults, synchronize NSUserDefaults
    NSMutableArray *entryDictionaries = [NSMutableArray new];
    // use for in Entry *entry in self.entries to add object to dictionarycopy
    
    for (Entry *entry in self.entries) {
        [entryDictionaries addObject:entry.dictionaryCopy];
    }
    [[NSUserDefaults standardUserDefaults] setObject:entryDictionaries forKey:EntriesKey];
    [[NSUserDefaults standardUserDefaults] synchronize];
}

-(void)loadFromPersistent {
    
    
    NSMutableArray *entries = [NSMutableArray new];
    NSArray *entriesDictionary = [[NSUserDefaults standardUserDefaults] objectForKey:EntriesKey];
    
    for (NSDictionary *dictionary in entriesDictionary) {
        
        Entry *entry = [[Entry alloc]initWithDictionary:dictionary];
        
        [entries addObject:entry];
    }
    self.entries = entries;
}








@end
