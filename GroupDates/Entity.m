//
//  Entity.m
//  GroupDates
//
//  Created by Kai Windle on 05/11/2014.
//  Copyright (c) 2014 Kai. All rights reserved.
//

#import "Entity.h"


@implementation Entity

@dynamic dates;


-(NSDate *)dateWithOutTime:(NSDate *)date {
    
    if (date == nil) {
        NSLog(@"Date is nil not continuing");
        return nil;
    }
    
    NSDateComponents* comps = [[NSCalendar currentCalendar] components:( NSCalendarUnitYear | NSCalendarUnitMonth | NSCalendarUnitDay ) fromDate:date];
    return [[NSCalendar currentCalendar] dateFromComponents:comps];
}


-(NSString *)sectionTitle {
    
    /*
     *  This method is being called all the time
     */
    
    self.dates = [self dateWithOutTime:self.dates];
    
    return [NSDateFormatter localizedStringFromDate:self.dates dateStyle:NSDateFormatterMediumStyle timeStyle:NSDateFormatterNoStyle];

}


@end

