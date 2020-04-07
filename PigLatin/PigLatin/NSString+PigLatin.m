//
//  NSString+PigLatin.m
//  PigLatin
//
//  Created by WendaLi on 2020-04-07.
//  Copyright © 2020 WendaLi. All rights reserved.
//

#import "NSString+PigLatin.h"

@implementation NSString (PigLatin)

- (NSString*) stringByPigLatinization
{
    NSCharacterSet *vowel = [NSCharacterSet characterSetWithCharactersInString:@"aeiou"];
    NSArray *words = [self componentsSeparatedByString:@" "];
    NSMutableArray *result = [NSMutableArray new];
    
    for (NSString *word in words) {
        int index = 0;
        for (int i = 0; i < [word length]; i++) {
            if (![vowel characterIsMember:[word characterAtIndex:i]]) {
                index = i;
            }else {
                break;
            }
        }
        NSString *newWord = [word startToEnd:word until:index];
        [result addObject:[newWord addWaterMark]];
    }
    return [result componentsJoinedByString:@" "];
}

- (NSString*) startToEnd: (NSString*) word until: (int) index
{
    return [[word substringWithRange:NSMakeRange(index, [word length]-1)] stringByAppendingString:[word substringWithRange:NSMakeRange(0, index+1)]];
}

@end
