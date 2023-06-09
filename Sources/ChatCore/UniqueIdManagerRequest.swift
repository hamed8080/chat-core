//
// UniqueIdManagerRequest.swift
// Copyright (c) 2022 ChatCore
//
// Created by Hamed Hosseini on 12/16/22

import Foundation

open class UniqueIdManagerRequest {
    public var uniqueId: String
    public var isAutoGenratedUniqueId = false

    public init(uniqueId: String? = nil) {
        isAutoGenratedUniqueId = uniqueId == nil
        self.uniqueId = uniqueId ?? UUID().uuidString
    }
}
