//
//  LASAppDelegate.h
//  Lannexe
//
//  Created by Marc Audefroy on 22/02/14.
//  Copyright (c) 2014 Supinfo. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface LASAppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (readonly, strong, nonatomic) NSManagedObjectContext *managedObjectContext;
@property (readonly, strong, nonatomic) NSManagedObjectModel *managedObjectModel;
@property (readonly, strong, nonatomic) NSPersistentStoreCoordinator *persistentStoreCoordinator;

- (void)saveContext;
- (NSURL *)applicationDocumentsDirectory;

@end
