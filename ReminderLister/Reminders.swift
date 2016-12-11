//
//  Lister.swift
//  ReminderLister
//
//  Created by Salieu Kamara on 11/12/2016.
//  Copyright © 2016 Salieu Kamara. All rights reserved.
//

import Foundation

public struct Reminder {
    var title: String
    var module: String
    var category: String
    var deadline: Date
}

enum ReminderError: Error {
    case emptyString
    case outOfRande(index: Int)
}

public class Reminders {
    
    var reminders:[Reminder]
    
    public static let sharedInstance = Reminders()
    
    private init() {
        self.reminders = []
    }
    
    public var count: Int {
        get {
            return self.reminders.count
        }
    }
    
    public func add(reminder: Reminder) throws {
        if (reminder.title.isEmpty || reminder.module.isEmpty || reminder.category.isEmpty) {
            throw ReminderError.emptyString
        }
        
        self.reminders.append(reminder)
    }
    
    public func getReminder(at index: Int) throws -> Reminder {
        return Reminder(title: "Hello", module: "301AEE", category: "Report", deadline: Date())
        // TODO: needs implementing
    }
    
    public func clearList() {
        self.reminders.removeAll()
    }
    
    public func insert(reminder: Reminder, at index: Int) throws {
        // TODO: needs implementing
    }
    
    public func update(reminder: Reminder, at index: Int) throws {
        // TODO: needs implementing
    }
    
    public func remove(at index: Int) throws {
        // TODO: needs implementing
    }
}
