//
//  EntryController.m
//  Journal-C
//
//  Created by Thang H Tong on 12/1/15.
//  Copyright © 2015 Thang. All rights reserved.
//

#import "EntryController.h"

@implementation EntryController

//called add Entry
    //addObject:

//called remove Entry
    //removeObject:



+ (EntryController *)sharedInstance {
    static EntryController *sharedInstance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        sharedInstance = [EntryController new];
    });
    
    return sharedInstance;
}

-(void)persistEntries {
    //take self.entries, covert entries to dictionaries, save dictionaries to NSUserDefaults, synchronize NSUserDefaults
    
    //NSMutableArray *entryDictionaries = [NSMutableArray new];
    
    // use for in Entry *entry in self.entries to add object to dictionarycopy
    
    
    
//    [[NSUserDefaults standardUserDefaults] setObject:<#(nullable id)#> forKey:<#(nonnull NSString *)#>];
//    [[NSUserDefaults standardUserDefaults]] synchronize];
}

-(void)loadFromPersistent {
    
}








@end
