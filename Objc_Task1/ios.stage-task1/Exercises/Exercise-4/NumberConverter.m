#import "NumberConverter.h"

@implementation NumberConverter

- (NSArray *)numberConverter:(NSNumber *)number {
    //NSString * result = [[self valueForKey:@"description"] componentsJoinedByString:@""];
    //const char *array = [@(absNum).stringValue UTF8String];
    //NSArray *reversed = [[(NSArray*)array reverseObjectEnumerator] allObjects];
    
    NSInteger absNum = ABS(number.intValue);
    NSString *text = @(absNum).stringValue;
    NSMutableArray *characters = [[NSMutableArray alloc] initWithCapacity:text.length];
    
    for (int i=(int)text.length - 1; i >= 0; i--) {
        NSString *ichar  = [text substringWithRange:NSMakeRange(i, 1)];
        [characters addObject:ichar];
    }
    
    return characters;
}

@end
