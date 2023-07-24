//
// ChatResponse.swift
// Copyright (c) 2022 ChatCore
//
// Created by Hamed Hosseini on 12/16/22

import Foundation

protocol ChatResponseProtocol {}

public struct ChatResponse<T> {
    public var uniqueId: String?
    public var result: T?
    public var error: ChatError?
    public var contentCount: Int?
    public var hasNext: Bool
    public var cache: Bool = false
    public var subjectId: Int?
    public var time: Int?

    public init(uniqueId: String? = nil, result: T? = nil, error: ChatError? = nil, contentCount: Int? = nil, hasNext: Bool = false, cache: Bool = false, subjectId: Int? = nil, time: Int? = nil) {
        self.uniqueId = uniqueId
        self.result = result
        self.error = error
        self.contentCount = contentCount
        self.hasNext = hasNext
        self.cache = cache
        self.subjectId = subjectId
        self.time = time
    }

    public init<OLDType>(response: ChatResponse<OLDType>, result: T) {
        self.result = result
        self.uniqueId = response.uniqueId
        self.error = response.error
        self.contentCount = response.contentCount
        self.hasNext = response.hasNext
        self.cache = response.cache
        self.subjectId = response.subjectId
        self.time = response.time
    }
}
