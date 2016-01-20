//
//  EquipType.swift
//  RealSWPortugal
//
//  Created by Matapatos on 28/12/15.
//  Copyright © 2015 Matapatos. All rights reserved.
//

import Foundation

enum EquipType : String {
    case HIGH_PULL_UP_BAR = "high_pull_up_bar"
    case SMALL_PULL_UP_BAR = "small_pull_up_bar"
    case STRAIGHT_BAR_FOR_DIPS = "straight_bar_for_dips"
    case PARALLEL_BARS = "parallel_bars"
    case HIGH_PARALLEL_BARS = "high_parallel_bars"
    case RINGS = "rings"
    case MONKEY_BARS = "monkey_bars"
    case SWEDISH_WALL = "swedish_wall"
        
    static let allValues = ["high_pull_up_bar","small_pull_up_bar","straight_bar_for_dips","parallel_bars","high_parallel_bars","rings","monkey_bars","swedish_wall"];
}

let defaultEquips = ["high_pull_up_bar":false,"small_pull_up_bar":false,"straight_bar_for_dips":false,"parallel_bars":false,"high_parallel_bars":false,"rings":false,"monkey_bars":false,"swedish_wall":false]

