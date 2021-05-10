#import "LeaderBoardTracker.h"

@interface LeaderBoardTracker()

@property (nonatomic, strong) NSArray <NSNumber *> *playersPlaces;

@end

@implementation LeaderBoardTracker

- (NSArray <NSNumber *> *)trackLeaderBoard:(NSArray <NSNumber *> *)rankedArray
                               playerArray:(NSArray <NSNumber *> *)playerArray {
    
    // NSArray *uniqueRankedArray = [rankedArray valueForKeyPath:@"@distinctUnionOfObjects.self"]
    NSArray *uniqueRankedArray = [[NSOrderedSet orderedSetWithArray:rankedArray] array];
    NSMutableArray *leaderBoard = [[NSMutableArray alloc] init];
    
    for (int playerI=0; playerI < playerArray.count; playerI++) {
        NSInteger currentRank = 1;
        
        for (NSNumber *rank in uniqueRankedArray) {
            if ((playerArray[playerI].intValue >= rank.intValue) || currentRank == rankedArray.count) {
                break;
            }
            currentRank++;
        }
        leaderBoard[playerI] = @(currentRank);
    }
    
    return leaderBoard;
}

@end
