//
//  Entity.m
//  GroupDates
//
//  Created by Kai Windle on 05/11/2014.
//  Copyright (c) 2014 Kai. All rights reserved.
//

#import "Entity.h"


@implementation Entity

@synthesize dates = _dates;


-(NSDate *)dateWithOutTime:(NSDate *)date {
    
    if (date == nil) {
        NSLog(@"Date is nil not continuing");
        return nil;
    }
    
    NSDateComponents* comps = [[NSCalendar currentCalendar] components:( NSCalendarUnitYear | NSCalendarUnitMonth | NSCalendarUnitDay ) fromDate:date];
    return [[NSCalendar currentCalendar] dateFromComponents:comps];
}


-(NSString *)sectionName {
    
    // Tom Curley (really good mate of mine) did the fix
    // All credits to him. Thanks Tom!
    // 07/11/2014
    
    _dates = [self dateWithOutTime:_dates];
    
    NSString *str = [NSDateFormatter localizedStringFromDate:_dates dateStyle:NSDateFormatterMediumStyle timeStyle:NSDateFormatterNoStyle];
    
    return str;
}


@end

