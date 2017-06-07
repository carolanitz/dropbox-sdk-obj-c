///
/// Copyright (c) 2016 Dropbox, Inc. All rights reserved.
///
/// Auto-generated by Stone, do not modify.
///

/// Arguments, results, and errors for the `Async` namespace.

#import "DBASYNCLaunchResultBase.h"
#import "DBStoneSerializers.h"
#import "DBStoneValidators.h"

#pragma mark - API Object

@implementation DBASYNCLaunchResultBase

@synthesize asyncJobId = _asyncJobId;

#pragma mark - Constructors

- (instancetype)initWithAsyncJobId:(NSString *)asyncJobId {
  self = [super init];
  if (self) {
    _tag = DBASYNCLaunchResultBaseAsyncJobId;
    _asyncJobId = asyncJobId;
  }
  return self;
}

#pragma mark - Instance field accessors

- (NSString *)asyncJobId {
  if (![self isAsyncJobId]) {
    [NSException raise:@"IllegalStateException"
                format:@"Invalid tag: required DBASYNCLaunchResultBaseAsyncJobId, but was %@.", [self tagName]];
  }
  return _asyncJobId;
}

#pragma mark - Tag state methods

- (BOOL)isAsyncJobId {
  return _tag == DBASYNCLaunchResultBaseAsyncJobId;
}

- (NSString *)tagName {
  switch (_tag) {
  case DBASYNCLaunchResultBaseAsyncJobId:
    return @"DBASYNCLaunchResultBaseAsyncJobId";
  }

  @throw([NSException exceptionWithName:@"InvalidTag" reason:@"Tag has an unknown value." userInfo:nil]);
}

#pragma mark - Serialization methods

+ (NSDictionary *)serialize:(id)instance {
  return [DBASYNCLaunchResultBaseSerializer serialize:instance];
}

+ (id)deserialize:(NSDictionary *)dict {
  return [DBASYNCLaunchResultBaseSerializer deserialize:dict];
}

#pragma mark - Description method

- (NSString *)description {
  return [[DBASYNCLaunchResultBaseSerializer serialize:self] description];
}

#pragma mark - Copyable method

- (instancetype)copyWithZone:(NSZone *)zone {
#pragma unused(zone)
  /// object is immutable
  return self;
}

#pragma mark - Hash method

- (NSUInteger)hash {
  NSUInteger prime = 31;
  NSUInteger result = 1;

  switch (_tag) {
  case DBASYNCLaunchResultBaseAsyncJobId:
    result = prime * result + [self.asyncJobId hash];
  }

  return prime * result;
}

#pragma mark - Equality method

- (BOOL)isEqual:(id)other {
  if (other == self) {
    return YES;
  }
  if (!other || ![other isKindOfClass:[self class]]) {
    return NO;
  }
  return [self isEqualToLaunchResultBase:other];
}

- (BOOL)isEqualToLaunchResultBase:(DBASYNCLaunchResultBase *)aLaunchResultBase {
  if (self == aLaunchResultBase) {
    return YES;
  }
  if (self.tag != aLaunchResultBase.tag) {
    return NO;
  }
  switch (_tag) {
  case DBASYNCLaunchResultBaseAsyncJobId:
    return [self.asyncJobId isEqual:aLaunchResultBase.asyncJobId];
  }
  return YES;
}

@end

#pragma mark - Serializer Object

@implementation DBASYNCLaunchResultBaseSerializer

+ (NSDictionary *)serialize:(DBASYNCLaunchResultBase *)valueObj {
  NSMutableDictionary *jsonDict = [[NSMutableDictionary alloc] init];

  if ([valueObj isAsyncJobId]) {
    jsonDict[@"async_job_id"] = valueObj.asyncJobId;
    jsonDict[@".tag"] = @"async_job_id";
  } else {
    @throw([NSException exceptionWithName:@"InvalidTag"
                                   reason:@"Object not properly initialized. Tag has an unknown value."
                                 userInfo:nil]);
  }

  return jsonDict;
}

+ (DBASYNCLaunchResultBase *)deserialize:(NSDictionary *)valueDict {
  NSString *tag = valueDict[@".tag"];

  if ([tag isEqualToString:@"async_job_id"]) {
    NSString *asyncJobId = valueDict[@"async_job_id"];
    return [[DBASYNCLaunchResultBase alloc] initWithAsyncJobId:asyncJobId];
  } else {
    @throw([NSException
        exceptionWithName:@"InvalidTag"
                   reason:[NSString stringWithFormat:@"Tag has an invalid value: \"%@\".", valueDict[@".tag"]]
                 userInfo:nil]);
  }
}

@end

#import "DBASYNCLaunchEmptyResult.h"
#import "DBASYNCLaunchResultBase.h"
#import "DBStoneSerializers.h"
#import "DBStoneValidators.h"

#pragma mark - API Object

@implementation DBASYNCLaunchEmptyResult

@synthesize asyncJobId = _asyncJobId;

#pragma mark - Constructors

- (instancetype)initWithAsyncJobId:(NSString *)asyncJobId {
  self = [super init];
  if (self) {
    _tag = DBASYNCLaunchEmptyResultAsyncJobId;
    _asyncJobId = asyncJobId;
  }
  return self;
}

- (instancetype)initWithComplete {
  self = [super init];
  if (self) {
    _tag = DBASYNCLaunchEmptyResultComplete;
  }
  return self;
}

#pragma mark - Instance field accessors

- (NSString *)asyncJobId {
  if (![self isAsyncJobId]) {
    [NSException raise:@"IllegalStateException"
                format:@"Invalid tag: required DBASYNCLaunchEmptyResultAsyncJobId, but was %@.", [self tagName]];
  }
  return _asyncJobId;
}

#pragma mark - Tag state methods

- (BOOL)isAsyncJobId {
  return _tag == DBASYNCLaunchEmptyResultAsyncJobId;
}

- (BOOL)isComplete {
  return _tag == DBASYNCLaunchEmptyResultComplete;
}

- (NSString *)tagName {
  switch (_tag) {
  case DBASYNCLaunchEmptyResultAsyncJobId:
    return @"DBASYNCLaunchEmptyResultAsyncJobId";
  case DBASYNCLaunchEmptyResultComplete:
    return @"DBASYNCLaunchEmptyResultComplete";
  }

  @throw([NSException exceptionWithName:@"InvalidTag" reason:@"Tag has an unknown value." userInfo:nil]);
}

#pragma mark - Serialization methods

+ (NSDictionary *)serialize:(id)instance {
  return [DBASYNCLaunchEmptyResultSerializer serialize:instance];
}

+ (id)deserialize:(NSDictionary *)dict {
  return [DBASYNCLaunchEmptyResultSerializer deserialize:dict];
}

#pragma mark - Description method

- (NSString *)description {
  return [[DBASYNCLaunchEmptyResultSerializer serialize:self] description];
}

#pragma mark - Copyable method

- (instancetype)copyWithZone:(NSZone *)zone {
#pragma unused(zone)
  /// object is immutable
  return self;
}

#pragma mark - Hash method

- (NSUInteger)hash {
  NSUInteger prime = 31;
  NSUInteger result = 1;

  switch (_tag) {
  case DBASYNCLaunchEmptyResultAsyncJobId:
    result = prime * result + [self.asyncJobId hash];
  case DBASYNCLaunchEmptyResultComplete:
    result = prime * result + [[self tagName] hash];
  }

  return prime * result;
}

#pragma mark - Equality method

- (BOOL)isEqual:(id)other {
  if (other == self) {
    return YES;
  }
  if (!other || ![other isKindOfClass:[self class]]) {
    return NO;
  }
  return [self isEqualToLaunchEmptyResult:other];
}

- (BOOL)isEqualToLaunchEmptyResult:(DBASYNCLaunchEmptyResult *)aLaunchEmptyResult {
  if (self == aLaunchEmptyResult) {
    return YES;
  }
  if (self.tag != aLaunchEmptyResult.tag) {
    return NO;
  }
  switch (_tag) {
  case DBASYNCLaunchEmptyResultAsyncJobId:
    return [self.asyncJobId isEqual:aLaunchEmptyResult.asyncJobId];
  case DBASYNCLaunchEmptyResultComplete:
    return [[self tagName] isEqual:[aLaunchEmptyResult tagName]];
  }
  return YES;
}

@end

#pragma mark - Serializer Object

@implementation DBASYNCLaunchEmptyResultSerializer

+ (NSDictionary *)serialize:(DBASYNCLaunchEmptyResult *)valueObj {
  NSMutableDictionary *jsonDict = [[NSMutableDictionary alloc] init];

  if ([valueObj isAsyncJobId]) {
    jsonDict[@"async_job_id"] = valueObj.asyncJobId;
    jsonDict[@".tag"] = @"async_job_id";
  } else if ([valueObj isComplete]) {
    jsonDict[@".tag"] = @"complete";
  } else {
    @throw([NSException exceptionWithName:@"InvalidTag"
                                   reason:@"Object not properly initialized. Tag has an unknown value."
                                 userInfo:nil]);
  }

  return jsonDict;
}

+ (DBASYNCLaunchEmptyResult *)deserialize:(NSDictionary *)valueDict {
  NSString *tag = valueDict[@".tag"];

  if ([tag isEqualToString:@"async_job_id"]) {
    NSString *asyncJobId = valueDict[@"async_job_id"];
    return [[DBASYNCLaunchEmptyResult alloc] initWithAsyncJobId:asyncJobId];
  } else if ([tag isEqualToString:@"complete"]) {
    return [[DBASYNCLaunchEmptyResult alloc] initWithComplete];
  } else {
    @throw([NSException
        exceptionWithName:@"InvalidTag"
                   reason:[NSString stringWithFormat:@"Tag has an invalid value: \"%@\".", valueDict[@".tag"]]
                 userInfo:nil]);
  }
}

@end

#import "DBASYNCPollArg.h"
#import "DBStoneSerializers.h"
#import "DBStoneValidators.h"

#pragma mark - API Object

@implementation DBASYNCPollArg

#pragma mark - Constructors

- (instancetype)initWithAsyncJobId:(NSString *)asyncJobId {
  [DBStoneValidators stringValidator:@(1) maxLength:nil pattern:nil](asyncJobId);

  self = [super init];
  if (self) {
    _asyncJobId = asyncJobId;
  }
  return self;
}

#pragma mark - Serialization methods

+ (NSDictionary *)serialize:(id)instance {
  return [DBASYNCPollArgSerializer serialize:instance];
}

+ (id)deserialize:(NSDictionary *)dict {
  return [DBASYNCPollArgSerializer deserialize:dict];
}

#pragma mark - Description method

- (NSString *)description {
  return [[DBASYNCPollArgSerializer serialize:self] description];
}

#pragma mark - Copyable method

- (instancetype)copyWithZone:(NSZone *)zone {
#pragma unused(zone)
  /// object is immutable
  return self;
}

#pragma mark - Hash method

- (NSUInteger)hash {
  NSUInteger prime = 31;
  NSUInteger result = 1;

  result = prime * result + [self.asyncJobId hash];

  return prime * result;
}

#pragma mark - Equality method

- (BOOL)isEqual:(id)other {
  if (other == self) {
    return YES;
  }
  if (!other || ![other isKindOfClass:[self class]]) {
    return NO;
  }
  return [self isEqualToPollArg:other];
}

- (BOOL)isEqualToPollArg:(DBASYNCPollArg *)aPollArg {
  if (self == aPollArg) {
    return YES;
  }
  if (![self.asyncJobId isEqual:aPollArg.asyncJobId]) {
    return NO;
  }
  return YES;
}

@end

#pragma mark - Serializer Object

@implementation DBASYNCPollArgSerializer

+ (NSDictionary *)serialize:(DBASYNCPollArg *)valueObj {
  NSMutableDictionary *jsonDict = [[NSMutableDictionary alloc] init];

  jsonDict[@"async_job_id"] = valueObj.asyncJobId;

  return jsonDict;
}

+ (DBASYNCPollArg *)deserialize:(NSDictionary *)valueDict {
  NSString *asyncJobId = valueDict[@"async_job_id"];

  return [[DBASYNCPollArg alloc] initWithAsyncJobId:asyncJobId];
}

@end

#import "DBASYNCPollResultBase.h"
#import "DBStoneSerializers.h"
#import "DBStoneValidators.h"

#pragma mark - API Object

@implementation DBASYNCPollResultBase

#pragma mark - Constructors

- (instancetype)initWithInProgress {
  self = [super init];
  if (self) {
    _tag = DBASYNCPollResultBaseInProgress;
  }
  return self;
}

#pragma mark - Instance field accessors

#pragma mark - Tag state methods

- (BOOL)isInProgress {
  return _tag == DBASYNCPollResultBaseInProgress;
}

- (NSString *)tagName {
  switch (_tag) {
  case DBASYNCPollResultBaseInProgress:
    return @"DBASYNCPollResultBaseInProgress";
  }

  @throw([NSException exceptionWithName:@"InvalidTag" reason:@"Tag has an unknown value." userInfo:nil]);
}

#pragma mark - Serialization methods

+ (NSDictionary *)serialize:(id)instance {
  return [DBASYNCPollResultBaseSerializer serialize:instance];
}

+ (id)deserialize:(NSDictionary *)dict {
  return [DBASYNCPollResultBaseSerializer deserialize:dict];
}

#pragma mark - Description method

- (NSString *)description {
  return [[DBASYNCPollResultBaseSerializer serialize:self] description];
}

#pragma mark - Copyable method

- (instancetype)copyWithZone:(NSZone *)zone {
#pragma unused(zone)
  /// object is immutable
  return self;
}

#pragma mark - Hash method

- (NSUInteger)hash {
  NSUInteger prime = 31;
  NSUInteger result = 1;

  switch (_tag) {
  case DBASYNCPollResultBaseInProgress:
    result = prime * result + [[self tagName] hash];
  }

  return prime * result;
}

#pragma mark - Equality method

- (BOOL)isEqual:(id)other {
  if (other == self) {
    return YES;
  }
  if (!other || ![other isKindOfClass:[self class]]) {
    return NO;
  }
  return [self isEqualToPollResultBase:other];
}

- (BOOL)isEqualToPollResultBase:(DBASYNCPollResultBase *)aPollResultBase {
  if (self == aPollResultBase) {
    return YES;
  }
  if (self.tag != aPollResultBase.tag) {
    return NO;
  }
  switch (_tag) {
  case DBASYNCPollResultBaseInProgress:
    return [[self tagName] isEqual:[aPollResultBase tagName]];
  }
  return YES;
}

@end

#pragma mark - Serializer Object

@implementation DBASYNCPollResultBaseSerializer

+ (NSDictionary *)serialize:(DBASYNCPollResultBase *)valueObj {
  NSMutableDictionary *jsonDict = [[NSMutableDictionary alloc] init];

  if ([valueObj isInProgress]) {
    jsonDict[@".tag"] = @"in_progress";
  } else {
    @throw([NSException exceptionWithName:@"InvalidTag"
                                   reason:@"Object not properly initialized. Tag has an unknown value."
                                 userInfo:nil]);
  }

  return jsonDict;
}

+ (DBASYNCPollResultBase *)deserialize:(NSDictionary *)valueDict {
  NSString *tag = valueDict[@".tag"];

  if ([tag isEqualToString:@"in_progress"]) {
    return [[DBASYNCPollResultBase alloc] initWithInProgress];
  } else {
    @throw([NSException
        exceptionWithName:@"InvalidTag"
                   reason:[NSString stringWithFormat:@"Tag has an invalid value: \"%@\".", valueDict[@".tag"]]
                 userInfo:nil]);
  }
}

@end

#import "DBASYNCPollEmptyResult.h"
#import "DBASYNCPollResultBase.h"
#import "DBStoneSerializers.h"
#import "DBStoneValidators.h"

#pragma mark - API Object

@implementation DBASYNCPollEmptyResult

#pragma mark - Constructors

- (instancetype)initWithInProgress {
  self = [super init];
  if (self) {
    _tag = DBASYNCPollEmptyResultInProgress;
  }
  return self;
}

- (instancetype)initWithComplete {
  self = [super init];
  if (self) {
    _tag = DBASYNCPollEmptyResultComplete;
  }
  return self;
}

#pragma mark - Instance field accessors

#pragma mark - Tag state methods

- (BOOL)isInProgress {
  return _tag == DBASYNCPollEmptyResultInProgress;
}

- (BOOL)isComplete {
  return _tag == DBASYNCPollEmptyResultComplete;
}

- (NSString *)tagName {
  switch (_tag) {
  case DBASYNCPollEmptyResultInProgress:
    return @"DBASYNCPollEmptyResultInProgress";
  case DBASYNCPollEmptyResultComplete:
    return @"DBASYNCPollEmptyResultComplete";
  }

  @throw([NSException exceptionWithName:@"InvalidTag" reason:@"Tag has an unknown value." userInfo:nil]);
}

#pragma mark - Serialization methods

+ (NSDictionary *)serialize:(id)instance {
  return [DBASYNCPollEmptyResultSerializer serialize:instance];
}

+ (id)deserialize:(NSDictionary *)dict {
  return [DBASYNCPollEmptyResultSerializer deserialize:dict];
}

#pragma mark - Description method

- (NSString *)description {
  return [[DBASYNCPollEmptyResultSerializer serialize:self] description];
}

#pragma mark - Copyable method

- (instancetype)copyWithZone:(NSZone *)zone {
#pragma unused(zone)
  /// object is immutable
  return self;
}

#pragma mark - Hash method

- (NSUInteger)hash {
  NSUInteger prime = 31;
  NSUInteger result = 1;

  switch (_tag) {
  case DBASYNCPollEmptyResultInProgress:
    result = prime * result + [[self tagName] hash];
  case DBASYNCPollEmptyResultComplete:
    result = prime * result + [[self tagName] hash];
  }

  return prime * result;
}

#pragma mark - Equality method

- (BOOL)isEqual:(id)other {
  if (other == self) {
    return YES;
  }
  if (!other || ![other isKindOfClass:[self class]]) {
    return NO;
  }
  return [self isEqualToPollEmptyResult:other];
}

- (BOOL)isEqualToPollEmptyResult:(DBASYNCPollEmptyResult *)aPollEmptyResult {
  if (self == aPollEmptyResult) {
    return YES;
  }
  if (self.tag != aPollEmptyResult.tag) {
    return NO;
  }
  switch (_tag) {
  case DBASYNCPollEmptyResultInProgress:
    return [[self tagName] isEqual:[aPollEmptyResult tagName]];
  case DBASYNCPollEmptyResultComplete:
    return [[self tagName] isEqual:[aPollEmptyResult tagName]];
  }
  return YES;
}

@end

#pragma mark - Serializer Object

@implementation DBASYNCPollEmptyResultSerializer

+ (NSDictionary *)serialize:(DBASYNCPollEmptyResult *)valueObj {
  NSMutableDictionary *jsonDict = [[NSMutableDictionary alloc] init];

  if ([valueObj isInProgress]) {
    jsonDict[@".tag"] = @"in_progress";
  } else if ([valueObj isComplete]) {
    jsonDict[@".tag"] = @"complete";
  } else {
    @throw([NSException exceptionWithName:@"InvalidTag"
                                   reason:@"Object not properly initialized. Tag has an unknown value."
                                 userInfo:nil]);
  }

  return jsonDict;
}

+ (DBASYNCPollEmptyResult *)deserialize:(NSDictionary *)valueDict {
  NSString *tag = valueDict[@".tag"];

  if ([tag isEqualToString:@"in_progress"]) {
    return [[DBASYNCPollEmptyResult alloc] initWithInProgress];
  } else if ([tag isEqualToString:@"complete"]) {
    return [[DBASYNCPollEmptyResult alloc] initWithComplete];
  } else {
    @throw([NSException
        exceptionWithName:@"InvalidTag"
                   reason:[NSString stringWithFormat:@"Tag has an invalid value: \"%@\".", valueDict[@".tag"]]
                 userInfo:nil]);
  }
}

@end

#import "DBASYNCPollError.h"
#import "DBStoneSerializers.h"
#import "DBStoneValidators.h"

#pragma mark - API Object

@implementation DBASYNCPollError

#pragma mark - Constructors

- (instancetype)initWithInvalidAsyncJobId {
  self = [super init];
  if (self) {
    _tag = DBASYNCPollErrorInvalidAsyncJobId;
  }
  return self;
}

- (instancetype)initWithInternalError {
  self = [super init];
  if (self) {
    _tag = DBASYNCPollErrorInternalError;
  }
  return self;
}

- (instancetype)initWithOther {
  self = [super init];
  if (self) {
    _tag = DBASYNCPollErrorOther;
  }
  return self;
}

#pragma mark - Instance field accessors

#pragma mark - Tag state methods

- (BOOL)isInvalidAsyncJobId {
  return _tag == DBASYNCPollErrorInvalidAsyncJobId;
}

- (BOOL)isInternalError {
  return _tag == DBASYNCPollErrorInternalError;
}

- (BOOL)isOther {
  return _tag == DBASYNCPollErrorOther;
}

- (NSString *)tagName {
  switch (_tag) {
  case DBASYNCPollErrorInvalidAsyncJobId:
    return @"DBASYNCPollErrorInvalidAsyncJobId";
  case DBASYNCPollErrorInternalError:
    return @"DBASYNCPollErrorInternalError";
  case DBASYNCPollErrorOther:
    return @"DBASYNCPollErrorOther";
  }

  @throw([NSException exceptionWithName:@"InvalidTag" reason:@"Tag has an unknown value." userInfo:nil]);
}

#pragma mark - Serialization methods

+ (NSDictionary *)serialize:(id)instance {
  return [DBASYNCPollErrorSerializer serialize:instance];
}

+ (id)deserialize:(NSDictionary *)dict {
  return [DBASYNCPollErrorSerializer deserialize:dict];
}

#pragma mark - Description method

- (NSString *)description {
  return [[DBASYNCPollErrorSerializer serialize:self] description];
}

#pragma mark - Copyable method

- (instancetype)copyWithZone:(NSZone *)zone {
#pragma unused(zone)
  /// object is immutable
  return self;
}

#pragma mark - Hash method

- (NSUInteger)hash {
  NSUInteger prime = 31;
  NSUInteger result = 1;

  switch (_tag) {
  case DBASYNCPollErrorInvalidAsyncJobId:
    result = prime * result + [[self tagName] hash];
  case DBASYNCPollErrorInternalError:
    result = prime * result + [[self tagName] hash];
  case DBASYNCPollErrorOther:
    result = prime * result + [[self tagName] hash];
  }

  return prime * result;
}

#pragma mark - Equality method

- (BOOL)isEqual:(id)other {
  if (other == self) {
    return YES;
  }
  if (!other || ![other isKindOfClass:[self class]]) {
    return NO;
  }
  return [self isEqualToPollError:other];
}

- (BOOL)isEqualToPollError:(DBASYNCPollError *)aPollError {
  if (self == aPollError) {
    return YES;
  }
  if (self.tag != aPollError.tag) {
    return NO;
  }
  switch (_tag) {
  case DBASYNCPollErrorInvalidAsyncJobId:
    return [[self tagName] isEqual:[aPollError tagName]];
  case DBASYNCPollErrorInternalError:
    return [[self tagName] isEqual:[aPollError tagName]];
  case DBASYNCPollErrorOther:
    return [[self tagName] isEqual:[aPollError tagName]];
  }
  return YES;
}

@end

#pragma mark - Serializer Object

@implementation DBASYNCPollErrorSerializer

+ (NSDictionary *)serialize:(DBASYNCPollError *)valueObj {
  NSMutableDictionary *jsonDict = [[NSMutableDictionary alloc] init];

  if ([valueObj isInvalidAsyncJobId]) {
    jsonDict[@".tag"] = @"invalid_async_job_id";
  } else if ([valueObj isInternalError]) {
    jsonDict[@".tag"] = @"internal_error";
  } else if ([valueObj isOther]) {
    jsonDict[@".tag"] = @"other";
  } else {
    jsonDict[@".tag"] = @"other";
  }

  return jsonDict;
}

+ (DBASYNCPollError *)deserialize:(NSDictionary *)valueDict {
  NSString *tag = valueDict[@".tag"];

  if ([tag isEqualToString:@"invalid_async_job_id"]) {
    return [[DBASYNCPollError alloc] initWithInvalidAsyncJobId];
  } else if ([tag isEqualToString:@"internal_error"]) {
    return [[DBASYNCPollError alloc] initWithInternalError];
  } else if ([tag isEqualToString:@"other"]) {
    return [[DBASYNCPollError alloc] initWithOther];
  } else {
    return [[DBASYNCPollError alloc] initWithOther];
  }
}

@end