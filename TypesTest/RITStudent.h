//
//  RITStudent.h
//  TypesTest
//
//  Created by Pronin Alexander on 24.12.13.
//  Copyright (c) 2013 Pronin Alexander. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef enum {
    RITGenderMale,
    RITGenderFemale
} RITGender;

typedef NSInteger RITTaburetka;

@interface RITStudent : NSObject

@property (strong, nonatomic) NSString* name;

@property (assign, nonatomic) RITGender gender;

@end
