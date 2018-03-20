//
//  CounterReducer.swift
//  Counter
//
//  Created by ckwanted on 20/3/18.
//  Copyright © 2018 ckwanted. All rights reserved.
//

import Foundation
import ReSwift

func counterReducer(action: Action, state: AppState?) -> AppState {
    
    // if no state has been provided, create the default state
    var state = state ?? AppState()
    
    switch action {
        case _ as increment:
            state.counter += 1
        case _ as decrement:
            state.counter -= 1
        default:
            break
    }
    
    return state
}
