//
//  DialogueManager.m
//  Autism Speaks
//
//  Created by Gabriel Adauto on 4/13/13.
//  Copyright (c) 2013 Motion Math. All rights reserved.
//

#import "DialogueManager.h"

@interface DialogueManager ()

@property (nonatomic, strong) NSMutableDictionary *allDialogue;
@property (nonatomic, strong) NSMutableArray *dialogueOptions;


@end

@implementation DialogueManager


- (NSDictionary *)resultsForHisChat:(NSString *)hisChat
{
	NSDictionary *result = [self.allDialogue objectForKey:hisChat];
	NSParameterAssert(result);
	return result;
}

- (NSArray *)allDialogueForBoy
{
	[self.dialogueOptions addObject:@{
		  KEY_NUM_FRIENDSHIP_POINTS: @5,
				KEY_NUM_HER_THOUGHT: @"Hmmm, interesting...."}
	 ];
    return self.allDialogue.allKeys;
}

- (NSArray *)randomOptionsForBoy:(int)numToGet
{
    self.dialogueOptions = [NSMutableArray array];
    
    
    
    
    
    NSMutableArray *shuffled = [NSMutableArray array];

   
    NSUInteger arcount = [_allDialogue count]; // gives a random array
    //return count;
    if (arcount > 0) {
        [shuffled addObject:[self.dialogueOptions objectAtIndex:0]];
        
        NSUInteger j;
        for (NSUInteger i = 1; i < arcount; ++i) {
            j = arc4random() % i; 
            [shuffled addObject:[self.dialogueOptions objectAtIndex:j]];
            [shuffled replaceObjectAtIndex:j
                                withObject:[self.dialogueOptions objectAtIndex:i]];
        }
        
        
        
        //      return shuffled; // still autoreleased
    }
    
    // numbtoget specifys the number to be in final array, must generate
    if (numToGet != 0){
        for (int count = 0; count <= numToGet; count++) {
            
        // pass that array index into array for output
//        [self.dialogueOptions insertObject:[shuffled objectAtIndex:count] atIndex:count];
        }
    }
    
    return self.dialogueOptions;
}

- (NSArray *)selectedDialogueByBoy
{
	return nil;
}


@end
