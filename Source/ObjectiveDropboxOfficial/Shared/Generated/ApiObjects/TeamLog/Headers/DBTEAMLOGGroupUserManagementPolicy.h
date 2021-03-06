///
/// Copyright (c) 2016 Dropbox, Inc. All rights reserved.
///
/// Auto-generated by Stone, do not modify.
///

#import <Foundation/Foundation.h>

#import "DBSerializableProtocol.h"

@class DBTEAMLOGGroupUserManagementPolicy;

NS_ASSUME_NONNULL_BEGIN

#pragma mark - API Object

///
/// The `GroupUserManagementPolicy` union.
///
/// This class implements the `DBSerializable` protocol (serialize and
/// deserialize instance methods), which is required for all Obj-C SDK API route
/// objects.
///
@interface DBTEAMLOGGroupUserManagementPolicy : NSObject <DBSerializable, NSCopying>

#pragma mark - Instance fields

/// The `DBTEAMLOGGroupUserManagementPolicyTag` enum type represents the
/// possible tag states with which the `DBTEAMLOGGroupUserManagementPolicy`
/// union can exist.
typedef NS_ENUM(NSInteger, DBTEAMLOGGroupUserManagementPolicyTag) {
  /// (no description).
  DBTEAMLOGGroupUserManagementPolicyAllUsers,

  /// (no description).
  DBTEAMLOGGroupUserManagementPolicyOnlyAdmins,

  /// (no description).
  DBTEAMLOGGroupUserManagementPolicyOther,

};

/// Represents the union's current tag state.
@property (nonatomic, readonly) DBTEAMLOGGroupUserManagementPolicyTag tag;

#pragma mark - Constructors

///
/// Initializes union class with tag state of "all_users".
///
/// @return An initialized instance.
///
- (instancetype)initWithAllUsers;

///
/// Initializes union class with tag state of "only_admins".
///
/// @return An initialized instance.
///
- (instancetype)initWithOnlyAdmins;

///
/// Initializes union class with tag state of "other".
///
/// @return An initialized instance.
///
- (instancetype)initWithOther;

- (instancetype)init NS_UNAVAILABLE;

#pragma mark - Tag state methods

///
/// Retrieves whether the union's current tag state has value "all_users".
///
/// @return Whether the union's current tag state has value "all_users".
///
- (BOOL)isAllUsers;

///
/// Retrieves whether the union's current tag state has value "only_admins".
///
/// @return Whether the union's current tag state has value "only_admins".
///
- (BOOL)isOnlyAdmins;

///
/// Retrieves whether the union's current tag state has value "other".
///
/// @return Whether the union's current tag state has value "other".
///
- (BOOL)isOther;

///
/// Retrieves string value of union's current tag state.
///
/// @return A human-readable string representing the union's current tag state.
///
- (NSString *)tagName;

@end

#pragma mark - Serializer Object

///
/// The serialization class for the `DBTEAMLOGGroupUserManagementPolicy` union.
///
@interface DBTEAMLOGGroupUserManagementPolicySerializer : NSObject

///
/// Serializes `DBTEAMLOGGroupUserManagementPolicy` instances.
///
/// @param instance An instance of the `DBTEAMLOGGroupUserManagementPolicy` API
/// object.
///
/// @return A json-compatible dictionary representation of the
/// `DBTEAMLOGGroupUserManagementPolicy` API object.
///
+ (NSDictionary *)serialize:(DBTEAMLOGGroupUserManagementPolicy *)instance;

///
/// Deserializes `DBTEAMLOGGroupUserManagementPolicy` instances.
///
/// @param dict A json-compatible dictionary representation of the
/// `DBTEAMLOGGroupUserManagementPolicy` API object.
///
/// @return An instantiation of the `DBTEAMLOGGroupUserManagementPolicy` object.
///
+ (DBTEAMLOGGroupUserManagementPolicy *)deserialize:(NSDictionary *)dict;

@end

NS_ASSUME_NONNULL_END
