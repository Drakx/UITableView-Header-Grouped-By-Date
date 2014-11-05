//
//  Entity.h
//  GroupDates
//
//  Created by Kai Windle on 05/11/2014.
//  Copyright (c) 2014 Kai. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>


@interface Entity : NSManagedObject

@property (nonatomic, retain) NSDate * dates;
@property (nonatomic, readonly) NSString *sectionTitle;

@end
