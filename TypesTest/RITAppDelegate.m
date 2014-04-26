//
//  RITAppDelegate.m
//  TypesTest
//
//  Created by Pronin Alexander on 24.12.13.
//  Copyright (c) 2013 Pronin Alexander. All rights reserved.
//

#import "RITAppDelegate.h"
#import "RITStudent.h"

@implementation RITAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    // Override point for customization after application launch.
    self.window.backgroundColor = [UIColor whiteColor];
    [self.window makeKeyAndVisible];
    
    
    
    // примитивные типы
     
    /*
    BOOL boolVar = YES;
    
    NSInteger intVar = 10;
    
    NSUInteger uIntVar = 100;
    
    CGFloat floatVar = 1234.5f;
    
    double doubleVar = 2.5f;
    
     NSLog(@"boolVar = %d, intVar = %d, uIntVar = %d, floatVar = %.2f, doubleVar = %.3f", boolVar, intVar, uIntVar, floatVar, doubleVar);
     
     NSLog(@"sizeof(boolVar) = %ld, sizeof(intVar) = %ld, sizeof(uIntVar) = %ld, sizeof(floatVar) = %ld, sizeof(doubleVar) = %ld", sizeof(boolVar), sizeof(intVar), sizeof(uIntVar), sizeof(floatVar), sizeof(doubleVar));
    */
    
    /*
    NSNumber* boolObject = [NSNumber numberWithBool:boolVar];
    NSNumber* intObject = [NSNumber numberWithInteger:intVar];
    NSNumber* uintObject = [NSNumber numberWithUnsignedInteger:uIntVar];
    NSNumber* floatObject = [NSNumber numberWithFloat:floatVar];
    NSNumber* doubleObject = [NSNumber numberWithDouble:doubleVar];
    
    
    NSArray* array = [NSArray arrayWithObjects:boolObject, intObject, uintObject, floatObject, doubleObject, nil];
    
    NSLog(@"boolVar = %d, intVar = %d, uIntVar = %d, floatVar = %f, doubleVar = %f",
          [[array objectAtIndex:0] boolValue],
          [[array objectAtIndex:1] integerValue],
          [[array objectAtIndex:2] unsignedIntegerValue],
          [[array objectAtIndex:3] floatValue],
          [[array objectAtIndex:4] doubleValue]);
    */
    
    /*
    RITStudent* studentA = [[RITStudent alloc] init];
    
    studentA.name = @"Best Student";
    
    
    NSLog(@"StudentA name = %@", studentA.name);
    
    RITStudent* studentB = studentA;
    
    studentB.name = @"Bad Student";
    
    NSLog(@"StudentA name = %@", studentA.name);
    
    */
    
    
    /*
    NSInteger a = 10;
    
    NSLog(@"a = %d", a);
    
    NSInteger b = a;
    
    b = 5;
    
    NSLog(@"a = %d, b = %d", a, b);
    
    NSInteger* c = &a;
    
    *c = 8;
    
    NSLog(@"a = %d, b = %d", a, b);
    
    NSInteger test = 0;
    
    NSInteger result = [self test:a testPointer:&test];
    
    NSLog(@"result = %d, test = %d", result, test);
    */
    
    
    /*
    RITStudent* student = [[RITStudent alloc] init];
    //student.isMale = NO;
    [student setGender:RITGenderFemale];
    
    //UIViewAutoresizing
    */
    
    
    
    // структуры - типы определены в фреймворке CoreGraphics
    CGPoint point;
    point.x = 5.5f;
    point.y = 10;
    point = CGPointMake(6, 3);
    
        CGFloat b;
    
    CGSize size;
    size.width = 8;
    size.height = 7;
    size = CGSizeMake(3, 3);
    
    CGRect rect;
    rect.origin = point;
    rect.size = size;
    rect = CGRectMake(0, 0, 30, 60);
    
    // возвращает прямоугольник пересечения
    CGRectIntersection(rect, rect);
    // возвращает булевое значение, если прямоуголоники пересекаются
    CGRectIntersectsRect(rect, rect);
    // возвращает истину, если прямоугольник содержит точку
    CGRectContainsPoint(rect, point);
    
    
    
    CGPoint point1 = CGPointMake(0, 5);
    CGPoint point2 = CGPointMake(3, 4);
    CGPoint point3 = CGPointMake(2, 8);
    CGPoint point4 = CGPointMake(7, 1);
    CGPoint point5 = CGPointMake(4, 4);
    
    NSArray* array2 = [NSArray arrayWithObjects:
                       [NSValue valueWithCGPoint:point1],
                       [NSValue valueWithCGPoint:point2],
                       [NSValue valueWithCGPoint:point3],
                       [NSValue valueWithCGPoint:point4],
                       [NSValue valueWithCGPoint:point5],
                       nil];
    for (NSValue* value in array2) {
        CGPoint p = [value CGPointValue];
        NSLog(@"point = %@", NSStringFromCGPoint(p));
    }
    
    // Types in objective-c on iPhone
    // http://stackoverflow.com/questions/2107544/types-in-objective-c-on-iphone
    // 32 bit process
    NSLog(@"Types in objective-c on iPhone")
    NSLog(@"\n");
    NSLog(@"Primitive sizes:");
    NSLog(@"The size of a char is: %d.", sizeof(char));
    NSLog(@"The size of short is: %d.", sizeof(short));
    NSLog(@"The size of int is: %d.", sizeof(int));
    NSLog(@"The size of long is: %d.", sizeof(long));
    NSLog(@"The size of long long is: %d.", sizeof(long long));
    NSLog(@"The size of a unsigned char is: %d.", sizeof(unsigned char));
    NSLog(@"The size of unsigned short is: %d.", sizeof(unsigned short));
    NSLog(@"The size of unsigned int is: %d.", sizeof(unsigned int));
    NSLog(@"The size of unsigned long is: %d.", sizeof(unsigned long));
    NSLog(@"The size of unsigned long long is: %d.", sizeof(unsigned long long));
    NSLog(@"The size of a float is: %d.", sizeof(float));
    NSLog(@"The size of a double is %d.", sizeof(double));
    
    NSLog(@"Ranges:");
    NSLog(@"CHAR_MIN:   %c",   CHAR_MIN);
    NSLog(@"CHAR_MAX:   %c",   CHAR_MAX);
    NSLog(@"SHRT_MIN:   %hi",  SHRT_MIN);    // signed short int
    NSLog(@"SHRT_MAX:   %hi",  SHRT_MAX);
    NSLog(@"INT_MIN:    %i",   INT_MIN);
    NSLog(@"INT_MAX:    %i",   INT_MAX);
    NSLog(@"LONG_MIN:   %li",  LONG_MIN);    // signed long int
    NSLog(@"LONG_MAX:   %li",  LONG_MAX);
    NSLog(@"ULONG_MAX:  %lu",  ULONG_MAX);   // unsigned long int
    NSLog(@"LLONG_MIN:  %lli", LLONG_MIN);   // signed long long int
    NSLog(@"LLONG_MAX:  %lli", LLONG_MAX);
    NSLog(@"ULLONG_MAX: %llu", ULLONG_MAX);  // unsigned long long int
    
    return YES;
}

- (NSInteger) test:(NSInteger) test testPointer:(NSInteger*) testPointer {
    *testPointer = 5;
    return test;
}

- (void)applicationWillResignActive:(UIApplication *)application
{
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
