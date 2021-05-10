#import "NSString+ValidNumber.h"

@implementation NSString (ValidNumber)

- (BOOL)isValidNumber {
    if ([self length] >= 0 && [self length] <= 100) {
//        int number = self.intValue;
//        if (number && @(number).stringValue.length == self.length) {
//            return true;
//        }
        NSError *error = NULL;
        NSRegularExpression *regex = [NSRegularExpression regularExpressionWithPattern:@"^[0-9]+$"
              options:NSRegularExpressionCaseInsensitive
              error:&error];
        NSTextCheckingResult *match = [regex firstMatchInString:self options:0 range:NSMakeRange(0, self.length)];
        return match ? true : false;
    }

    return false;
}

@end
