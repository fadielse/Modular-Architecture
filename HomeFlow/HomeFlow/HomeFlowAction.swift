//
//  HomeFlowAction.swift
//  HomeFlow
//
//  Created by Mark Jarecki on 21/3/19.
//  Copyright © 2019 Mark Jarecki. All rights reserved.
//

// Common
import FLXFlow
import SharedEntities

// Features
import Home
import Category
import Profile

public enum HomeFlowAction: FlowAction {
    
    // Locally handled home flow actions
    case presentModalFeatureFromHome(from: HomeViewController, content: OriginEntity)
    case presentModalFeatureFromCategory(from: CategoryViewController, content: OriginEntity)
    case presentModalFeatureFromProfile(from: ProfileViewController, content: OriginEntity)
}

