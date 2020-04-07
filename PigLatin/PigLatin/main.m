//
//  main.m
//  PigLatin
//
//  Created by WendaLi on 2020-04-07.
//  Copyright © 2020 WendaLi. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "NSString+WaterMark.h"
#import "NSString+PigLatin.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSString *name = @"Daniel";
        NSLog(@"%@", [name addWaterMark]);
        
        NSString *words = @"Chips Kale";
        NSLog(@"%@", [words stringByPigLatinization]);
    }
    return 0;
}
