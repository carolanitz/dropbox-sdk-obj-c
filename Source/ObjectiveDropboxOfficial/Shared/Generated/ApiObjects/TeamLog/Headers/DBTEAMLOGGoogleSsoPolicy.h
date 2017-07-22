///
/// Copyright (c) 2016 Dropbox, Inc. All rights reserved.
///
/// Auto-generated by Stone, do not modify.
///

#import <Foundation/Foundation.h>

#import "DBSerializableProtocol.h"

@class DBTEAMLOGGoogleSsoPolicy;

NS_ASSUME_NONNULL_BEGIN

#pragma mark - API Object

///
/// The `GoogleSsoPolicy` union.
///
/// Google SSO policy
///
/// This class implements the `DBSerializable` protocol (serialize and
/// deserialize instance methods), which is required for all Obj-C SDK API route
/// objects.
///
@interface DBTEAMLOGGoogleSsoPolicy : NSObject <DBSerializable, NSCopying>

#pragma mark - Instance fields

/// The `DBTEAMLOGGoogleSsoPolicyTag` enum type represents the possible tag
/// states with which the `DBTEAMLOGGoogleSsoPolicy` union can exist.
typedef NS_ENUM(NSInteger, DBTEAMLOGGoogleSsoPolicyTag) {
  /// (no description).
  DBTEAMLOGGoogleSsoPolicyDisabled,

  /// (no description).
  DBTEAMLOGGoogleSsoPolicyEnabled,

  /// (no description).
  DBTEAMLOGGoogleSsoPolicyOther,

};

/// Represents the union's current tag state.
@property (nonatomic, readonly) DBTEAMLOGGoogleSsoPolicyTag tag;

#pragma mark - Constructors

///
/// Initializes union class with tag state of "disabled".
///
/// @return An initialized instance.
///
- (instancetype)initWithDisabled;

///
/// Initializes union class with tag state of "enabled".
///
/// @return An initialized instance.
///
- (instancetype)initWithEnabled;

///
/// Initializes union class with tag state of "other".
///
/// @return An initialized instance.
///
- (instancetype)initWithOther;

- (instancetype)init NS_UNAVAILABLE;

#pragma mark - Tag state methods

///
/// Retrieves whether the union's current tag state has value "disabled".
///
/// @return Whether the union's current tag state has value "disabled".
///
- (BOOL)isDisabled;

///
/// Retrieves whether the union's current tag state has value "enabled".
///
/// @return Whether the union's current tag state has value "enabled".
///
- (BOOL)isEnabled;

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
/// The serialization class for the `DBTEAMLOGGoogleSsoPolicy` union.
///
@interface DBTEAMLOGGoogleSsoPolicySerializer : NSObject

///
/// Serializes `DBTEAMLOGGoogleSsoPolicy` instances.
///
/// @param instance An instance of the `DBTEAMLOGGoogleSsoPolicy` API object.
///
/// @return A json-compatible dictionary representation of the
/// `DBTEAMLOGGoogleSsoPolicy` API object.
///
+ (NSDictionary *)serialize:(DBTEAMLOGGoogleSsoPolicy *)instance;

///
/// Deserializes `DBTEAMLOGGoogleSsoPolicy` instances.
///
/// @param dict A json-compatible dictionary representation of the
/// `DBTEAMLOGGoogleSsoPolicy` API object.
///
/// @return An instantiation of the `DBTEAMLOGGoogleSsoPolicy` object.
///
+ (DBTEAMLOGGoogleSsoPolicy *)deserialize:(NSDictionary *)dict;

@end

NS_ASSUME_NONNULL_END