//
//  Contador.m
//  ContaPessoas
//
//  Created by Vinicius Miana on 2/18/15.
//  Copyright (c) 2015 Vinicius Miana. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Contador.h"


@implementation Contador {
    int boy;
    int girl;
}

static Contador *_instancia = nil;

+(Contador *) instancia {
    if(_instancia == nil)
        _instancia = [super allocWithZone:nil];
    return _instancia;
}

+(id)allocWithZone:(struct _NSZone *)zone {
    return [self instancia];
}

-(id)init {
    self = [super init];
    if (self) {
        boy = 0;
        girl = 0;
    }
    return self;
}

- (void)maisUmCueca {
    boy++;
    [_update atualiza];
}
- (void)maisUmaGata {
    girl++;
    [_update atualiza];
}

-(int)getBoys {
    return boy;
}

-(int)getGirls {
    return girl;
}

-(int)total {
    return boy + girl;
}



@end

