// Copyright (c) 2013 Simon Fell
//
// Permission is hereby granted, free of charge, to any person obtaining a 
// copy of this software and associated documentation files (the "Software"), 
// to deal in the Software without restriction, including without limitation
// the rights to use, copy, modify, merge, publish, distribute, sublicense, 
// and/or sell copies of the Software, and to permit persons to whom the 
// Software is furnished to do so, subject to the following conditions:
//
// The above copyright notice and this permission notice shall be included 
// in all copies or substantial portions of the Software.
//
// THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS 
// OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, 
// FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE 
// AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER 
// LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, 
// OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN 
// THE SOFTWARE.
//
// 
// Note: This file was generated by WSDL2ZKSforce. 
//		  see https://github.com/superfell/WSDL2ZKSforce
//       DO NOT HAND EDIT.
//

#import "ZKSforceClient+Operations.h"
#import "ZKPartnerEnvelope.h"
#import "ZKDataCategoryGroupSobjectTypePair.h"
#import "ZKDeleteResult.h"
#import "ZKDescribeAppMenuResult.h"
#import "ZKDescribeApprovalLayoutResult.h"
#import "ZKDescribeAvailableQuickActionResult.h"
#import "ZKDescribeCompactLayout.h"
#import "ZKDescribeCompactLayoutsResult.h"
#import "ZKDescribeDataCategoryGroupResult.h"
#import "ZKDescribeDataCategoryGroupStructureResult.h"
#import "ZKDescribeFlexiPageResult.h"
#import "ZKDescribeGlobalTheme.h"
#import "ZKDescribeLayoutResult.h"
#import "ZKDescribeQuickActionResult.h"
#import "ZKDescribeSObject.h"
#import "ZKDescribeSearchLayoutResult.h"
#import "ZKDescribeSearchScopeOrderResult.h"
#import "ZKDescribeSoftphoneLayoutResult.h"
#import "ZKDescribeSoqlListViewResult.h"
#import "ZKDescribeSoqlListViewsRequest.h"
#import "ZKDescribeTab.h"
#import "ZKDescribeTabSetResult.h"
#import "ZKDescribeThemeResult.h"
#import "ZKEmail.h"
#import "ZKEmptyRecycleBinResult.h"
#import "ZKExecuteListViewRequest.h"
#import "ZKExecuteListViewResult.h"
#import "ZKGetDeletedResult.h"
#import "ZKGetServerTimestampResult.h"
#import "ZKGetUpdatedResult.h"
#import "ZKInvalidateSessionsResult.h"
#import "ZKKnowledgeSettings.h"
#import "ZKLeadConvert.h"
#import "ZKLeadConvertResult.h"
#import "ZKMergeRequest.h"
#import "ZKMergeResult.h"
#import "ZKPerformQuickActionRequest.h"
#import "ZKPerformQuickActionResult.h"
#import "ZKProcessRequest.h"
#import "ZKProcessResult.h"
#import "ZKQueryResult.h"
#import "ZKQuickActionTemplateResult.h"
#import "ZKResetPasswordResult.h"
#import "ZKSObject.h"
#import "ZKSendEmailResult.h"
#import "ZKSetPasswordResult.h"
#import "ZKUndeleteResult.h"
#import "ZKUpsertResult.h"
#import "ZKUserInfo.h"

@implementation ZKSforceClient (Operations)
// Describe a number sObjects
-(NSArray *)describeSObjects:(NSArray *)sObjectType {
	if (!authSource) return nil;
	[self checkSession];
	ZKEnvelope *env = [[[ZKPartnerEnvelope alloc] initWithSessionHeader:[authSource sessionId]] autorelease];
	[self addCallOptions:env];
	[self addPackageVersionHeader:env];
	[self addLocaleOptions:env];
	[env moveToBody];
	[env startElement:@"describeSObjects"];
	[env addElementArray:@"sObjectType" elemValue:sObjectType];
	[env endElement:@"describeSObjects"];
	zkElement *rn = [self sendRequest:[env end] name:NSStringFromSelector(_cmd)];
	ZKXmlDeserializer *deser = [[[ZKXmlDeserializer alloc] initWithXmlElement:rn] autorelease];
	return [deser complexTypeArrayFromElements:@"result" cls:[ZKDescribeSObject class]];
}

// Describe all the data category groups available for a given set of types
-(NSArray *)describeDataCategoryGroups:(NSArray *)sObjectType {
	if (!authSource) return nil;
	[self checkSession];
	ZKEnvelope *env = [[[ZKPartnerEnvelope alloc] initWithSessionHeader:[authSource sessionId]] autorelease];
	[self addCallOptions:env];
	[self addPackageVersionHeader:env];
	[self addLocaleOptions:env];
	[env moveToBody];
	[env startElement:@"describeDataCategoryGroups"];
	[env addElementArray:@"sObjectType" elemValue:sObjectType];
	[env endElement:@"describeDataCategoryGroups"];
	zkElement *rn = [self sendRequest:[env end] name:NSStringFromSelector(_cmd)];
	ZKXmlDeserializer *deser = [[[ZKXmlDeserializer alloc] initWithXmlElement:rn] autorelease];
	return [deser complexTypeArrayFromElements:@"result" cls:[ZKDescribeDataCategoryGroupResult class]];
}

// Describe the data category group structures for a given set of pair of types and data category group name
-(NSArray *)describeDataCategoryGroupStructures:(NSArray *)pairs topCategoriesOnly:(BOOL)topCategoriesOnly {
	if (!authSource) return nil;
	[self checkSession];
	ZKEnvelope *env = [[[ZKPartnerEnvelope alloc] initWithSessionHeader:[authSource sessionId]] autorelease];
	[self addCallOptions:env];
	[self addPackageVersionHeader:env];
	[self addLocaleOptions:env];
	[env moveToBody];
	[env startElement:@"describeDataCategoryGroupStructures"];
	[env addElementArray:@"pairs"            elemValue:pairs];
	[env addBoolElement:@"topCategoriesOnly" elemValue:topCategoriesOnly];
	[env endElement:@"describeDataCategoryGroupStructures"];
	zkElement *rn = [self sendRequest:[env end] name:NSStringFromSelector(_cmd)];
	ZKXmlDeserializer *deser = [[[ZKXmlDeserializer alloc] initWithXmlElement:rn] autorelease];
	return [deser complexTypeArrayFromElements:@"result" cls:[ZKDescribeDataCategoryGroupStructureResult class]];
}

// Describes your Knowledge settings, such as if knowledgeEnabled is on or off, its default language and supported languages
-(ZKKnowledgeSettings *)describeKnowledgeSettings {
	if (!authSource) return nil;
	[self checkSession];
	ZKEnvelope *env = [[[ZKPartnerEnvelope alloc] initWithSessionHeader:[authSource sessionId]] autorelease];
	[self addCallOptions:env];
	[self addPackageVersionHeader:env];
	[self addLocaleOptions:env];
	[env moveToBody];
	[env startElement:@"describeKnowledgeSettings"];
	[env endElement:@"describeKnowledgeSettings"];
	zkElement *rn = [self sendRequest:[env end] name:NSStringFromSelector(_cmd)];
	ZKXmlDeserializer *deser = [[[ZKXmlDeserializer alloc] initWithXmlElement:rn] autorelease];
	return [[deser complexTypeArrayFromElements:@"result" cls:[ZKKnowledgeSettings class]] lastObject];
}

// Describe a list of FlexiPage and their contents
-(NSArray *)describeFlexiPages:(NSArray *)flexiPages {
	if (!authSource) return nil;
	[self checkSession];
	ZKEnvelope *env = [[[ZKPartnerEnvelope alloc] initWithSessionHeader:[authSource sessionId]] autorelease];
	[self addCallOptions:env];
	[self addPackageVersionHeader:env];
	[env moveToBody];
	[env startElement:@"describeFlexiPages"];
	[env addElementArray:@"flexiPages" elemValue:flexiPages];
	[env endElement:@"describeFlexiPages"];
	zkElement *rn = [self sendRequest:[env end] name:NSStringFromSelector(_cmd)];
	ZKXmlDeserializer *deser = [[[ZKXmlDeserializer alloc] initWithXmlElement:rn] autorelease];
	return [deser complexTypeArrayFromElements:@"result" cls:[ZKDescribeFlexiPageResult class]];
}

// Describe the items in an AppMenu
-(ZKDescribeAppMenuResult *)describeAppMenu:(NSString *)appMenuType {
	if (!authSource) return nil;
	[self checkSession];
	ZKEnvelope *env = [[[ZKPartnerEnvelope alloc] initWithSessionHeader:[authSource sessionId]] autorelease];
	[self addCallOptions:env];
	[self addPackageVersionHeader:env];
	[env moveToBody];
	[env startElement:@"describeAppMenu"];
	[env addElement:@"appMenuType" elemValue:appMenuType nillable:NO  optional:NO];
	[env endElement:@"describeAppMenu"];
	zkElement *rn = [self sendRequest:[env end] name:NSStringFromSelector(_cmd)];
	ZKXmlDeserializer *deser = [[[ZKXmlDeserializer alloc] initWithXmlElement:rn] autorelease];
	return [[deser complexTypeArrayFromElements:@"result" cls:[ZKDescribeAppMenuResult class]] lastObject];
}

// Describe Gloal and Themes
-(ZKDescribeGlobalTheme *)describeGlobalTheme {
	if (!authSource) return nil;
	[self checkSession];
	ZKEnvelope *env = [[[ZKPartnerEnvelope alloc] initWithSessionHeader:[authSource sessionId]] autorelease];
	[self addCallOptions:env];
	[self addPackageVersionHeader:env];
	[env moveToBody];
	[env startElement:@"describeGlobalTheme"];
	[env endElement:@"describeGlobalTheme"];
	zkElement *rn = [self sendRequest:[env end] name:NSStringFromSelector(_cmd)];
	ZKXmlDeserializer *deser = [[[ZKXmlDeserializer alloc] initWithXmlElement:rn] autorelease];
	return [[deser complexTypeArrayFromElements:@"result" cls:[ZKDescribeGlobalTheme class]] lastObject];
}

// Describe Themes
-(ZKDescribeThemeResult *)describeTheme:(NSArray *)sobjectType {
	if (!authSource) return nil;
	[self checkSession];
	ZKEnvelope *env = [[[ZKPartnerEnvelope alloc] initWithSessionHeader:[authSource sessionId]] autorelease];
	[self addCallOptions:env];
	[self addPackageVersionHeader:env];
	[env moveToBody];
	[env startElement:@"describeTheme"];
	[env addElementArray:@"sobjectType" elemValue:sobjectType];
	[env endElement:@"describeTheme"];
	zkElement *rn = [self sendRequest:[env end] name:NSStringFromSelector(_cmd)];
	ZKXmlDeserializer *deser = [[[ZKXmlDeserializer alloc] initWithXmlElement:rn] autorelease];
	return [[deser complexTypeArrayFromElements:@"result" cls:[ZKDescribeThemeResult class]] lastObject];
}

// Describe the layout of the given sObject or the given actionable global page.
-(ZKDescribeLayoutResult *)describeLayout:(NSString *)sObjectType layoutName:(NSString *)layoutName recordTypeIds:(NSArray *)recordTypeIds {
	if (!authSource) return nil;
	[self checkSession];
	ZKEnvelope *env = [[[ZKPartnerEnvelope alloc] initWithSessionHeader:[authSource sessionId]] autorelease];
	[self addCallOptions:env];
	[self addPackageVersionHeader:env];
	[env moveToBody];
	[env startElement:@"describeLayout"];
	[env addElement:@"sObjectType"        elemValue:sObjectType   nillable:NO  optional:NO];
	[env addElement:@"layoutName"         elemValue:layoutName    nillable:YES optional:NO];
	[env addElementArray:@"recordTypeIds" elemValue:recordTypeIds];
	[env endElement:@"describeLayout"];
	zkElement *rn = [self sendRequest:[env end] name:NSStringFromSelector(_cmd)];
	ZKXmlDeserializer *deser = [[[ZKXmlDeserializer alloc] initWithXmlElement:rn] autorelease];
	return [[deser complexTypeArrayFromElements:@"result" cls:[ZKDescribeLayoutResult class]] lastObject];
}

// Describe the layout of the SoftPhone
-(ZKDescribeSoftphoneLayoutResult *)describeSoftphoneLayout {
	if (!authSource) return nil;
	[self checkSession];
	ZKEnvelope *env = [[[ZKPartnerEnvelope alloc] initWithSessionHeader:[authSource sessionId]] autorelease];
	[self addCallOptions:env];
	[self addPackageVersionHeader:env];
	[env moveToBody];
	[env startElement:@"describeSoftphoneLayout"];
	[env endElement:@"describeSoftphoneLayout"];
	zkElement *rn = [self sendRequest:[env end] name:NSStringFromSelector(_cmd)];
	ZKXmlDeserializer *deser = [[[ZKXmlDeserializer alloc] initWithXmlElement:rn] autorelease];
	return [[deser complexTypeArrayFromElements:@"result" cls:[ZKDescribeSoftphoneLayoutResult class]] lastObject];
}

// Describe the search view of an sObject
-(NSArray *)describeSearchLayouts:(NSArray *)sObjectType {
	if (!authSource) return nil;
	[self checkSession];
	ZKEnvelope *env = [[[ZKPartnerEnvelope alloc] initWithSessionHeader:[authSource sessionId]] autorelease];
	[self addCallOptions:env];
	[self addPackageVersionHeader:env];
	[env moveToBody];
	[env startElement:@"describeSearchLayouts"];
	[env addElementArray:@"sObjectType" elemValue:sObjectType];
	[env endElement:@"describeSearchLayouts"];
	zkElement *rn = [self sendRequest:[env end] name:NSStringFromSelector(_cmd)];
	ZKXmlDeserializer *deser = [[[ZKXmlDeserializer alloc] initWithXmlElement:rn] autorelease];
	return [deser complexTypeArrayFromElements:@"result" cls:[ZKDescribeSearchLayoutResult class]];
}

// Describe a list of objects representing the order and scope of objects on a users search result page
-(NSArray *)describeSearchScopeOrder {
	if (!authSource) return nil;
	[self checkSession];
	ZKEnvelope *env = [[[ZKPartnerEnvelope alloc] initWithSessionHeader:[authSource sessionId]] autorelease];
	[self addCallOptions:env];
	[self addPackageVersionHeader:env];
	[env moveToBody];
	[env startElement:@"describeSearchScopeOrder"];
	[env endElement:@"describeSearchScopeOrder"];
	zkElement *rn = [self sendRequest:[env end] name:NSStringFromSelector(_cmd)];
	ZKXmlDeserializer *deser = [[[ZKXmlDeserializer alloc] initWithXmlElement:rn] autorelease];
	return [deser complexTypeArrayFromElements:@"result" cls:[ZKDescribeSearchScopeOrderResult class]];
}

// Describe the compact layouts of the given sObject
-(ZKDescribeCompactLayoutsResult *)describeCompactLayouts:(NSString *)sObjectType recordTypeIds:(NSArray *)recordTypeIds {
	if (!authSource) return nil;
	[self checkSession];
	ZKEnvelope *env = [[[ZKPartnerEnvelope alloc] initWithSessionHeader:[authSource sessionId]] autorelease];
	[self addCallOptions:env];
	[self addPackageVersionHeader:env];
	[env moveToBody];
	[env startElement:@"describeCompactLayouts"];
	[env addElement:@"sObjectType"        elemValue:sObjectType   nillable:NO  optional:NO];
	[env addElementArray:@"recordTypeIds" elemValue:recordTypeIds];
	[env endElement:@"describeCompactLayouts"];
	zkElement *rn = [self sendRequest:[env end] name:NSStringFromSelector(_cmd)];
	ZKXmlDeserializer *deser = [[[ZKXmlDeserializer alloc] initWithXmlElement:rn] autorelease];
	return [[deser complexTypeArrayFromElements:@"result" cls:[ZKDescribeCompactLayoutsResult class]] lastObject];
}

// Describe the approval layouts of the given sObject
-(ZKDescribeApprovalLayoutResult *)describeApprovalLayout:(NSString *)sObjectType approvalProcessNames:(NSArray *)approvalProcessNames {
	if (!authSource) return nil;
	[self checkSession];
	ZKEnvelope *env = [[[ZKPartnerEnvelope alloc] initWithSessionHeader:[authSource sessionId]] autorelease];
	[self addCallOptions:env];
	[self addPackageVersionHeader:env];
	[env moveToBody];
	[env startElement:@"describeApprovalLayout"];
	[env addElement:@"sObjectType"               elemValue:sObjectType          nillable:NO  optional:NO];
	[env addElementArray:@"approvalProcessNames" elemValue:approvalProcessNames];
	[env endElement:@"describeApprovalLayout"];
	zkElement *rn = [self sendRequest:[env end] name:NSStringFromSelector(_cmd)];
	ZKXmlDeserializer *deser = [[[ZKXmlDeserializer alloc] initWithXmlElement:rn] autorelease];
	return [[deser complexTypeArrayFromElements:@"result" cls:[ZKDescribeApprovalLayoutResult class]] lastObject];
}

// Describe the ListViews as SOQL metadata for the generation of SOQL.
-(ZKDescribeSoqlListViewResult *)describeSoqlListViews:(ZKDescribeSoqlListViewsRequest *)request {
	if (!authSource) return nil;
	[self checkSession];
	ZKEnvelope *env = [[[ZKPartnerEnvelope alloc] initWithSessionHeader:[authSource sessionId]] autorelease];
	[self addCallOptions:env];
	[self addPackageVersionHeader:env];
	[env moveToBody];
	[env startElement:@"describeSoqlListViews"];
	[env addElement:@"request" elemValue:request nillable:NO  optional:NO];
	[env endElement:@"describeSoqlListViews"];
	zkElement *rn = [self sendRequest:[env end] name:NSStringFromSelector(_cmd)];
	ZKXmlDeserializer *deser = [[[ZKXmlDeserializer alloc] initWithXmlElement:rn] autorelease];
	return [[deser complexTypeArrayFromElements:@"result" cls:[ZKDescribeSoqlListViewResult class]] lastObject];
}

// Execute the specified list view and return the presentation-ready results.
-(ZKExecuteListViewResult *)executeListView:(ZKExecuteListViewRequest *)request {
	if (!authSource) return nil;
	[self checkSession];
	ZKEnvelope *env = [[[ZKPartnerEnvelope alloc] initWithSessionHeader:[authSource sessionId]] autorelease];
	[self addCallOptions:env];
	[self addMruHeader:env];
	[env moveToBody];
	[env startElement:@"executeListView"];
	[env addElement:@"request" elemValue:request nillable:NO  optional:NO];
	[env endElement:@"executeListView"];
	zkElement *rn = [self sendRequest:[env end] name:NSStringFromSelector(_cmd)];
	ZKXmlDeserializer *deser = [[[ZKXmlDeserializer alloc] initWithXmlElement:rn] autorelease];
	return [[deser complexTypeArrayFromElements:@"result" cls:[ZKExecuteListViewResult class]] lastObject];
}

// Describe the tabs that appear on a users page
-(NSArray *)describeTabs {
	if (!authSource) return nil;
	[self checkSession];
	ZKEnvelope *env = [[[ZKPartnerEnvelope alloc] initWithSessionHeader:[authSource sessionId]] autorelease];
	[self addCallOptions:env];
	[self addPackageVersionHeader:env];
	[env moveToBody];
	[env startElement:@"describeTabs"];
	[env endElement:@"describeTabs"];
	zkElement *rn = [self sendRequest:[env end] name:NSStringFromSelector(_cmd)];
	ZKXmlDeserializer *deser = [[[ZKXmlDeserializer alloc] initWithXmlElement:rn] autorelease];
	return [deser complexTypeArrayFromElements:@"result" cls:[ZKDescribeTabSetResult class]];
}

// Describe all tabs available to a user
-(NSArray *)describeAllTabs {
	if (!authSource) return nil;
	[self checkSession];
	ZKEnvelope *env = [[[ZKPartnerEnvelope alloc] initWithSessionHeader:[authSource sessionId]] autorelease];
	[self addCallOptions:env];
	[self addPackageVersionHeader:env];
	[env moveToBody];
	[env startElement:@"describeAllTabs"];
	[env endElement:@"describeAllTabs"];
	zkElement *rn = [self sendRequest:[env end] name:NSStringFromSelector(_cmd)];
	ZKXmlDeserializer *deser = [[[ZKXmlDeserializer alloc] initWithXmlElement:rn] autorelease];
	return [deser complexTypeArrayFromElements:@"result" cls:[ZKDescribeTab class]];
}

// Describe the primary compact layouts for the sObjects requested
-(NSArray *)describePrimaryCompactLayouts:(NSArray *)sObjectTypes {
	if (!authSource) return nil;
	[self checkSession];
	ZKEnvelope *env = [[[ZKPartnerEnvelope alloc] initWithSessionHeader:[authSource sessionId]] autorelease];
	[self addCallOptions:env];
	[self addPackageVersionHeader:env];
	[env moveToBody];
	[env startElement:@"describePrimaryCompactLayouts"];
	[env addElementArray:@"sObjectTypes" elemValue:sObjectTypes];
	[env endElement:@"describePrimaryCompactLayouts"];
	zkElement *rn = [self sendRequest:[env end] name:NSStringFromSelector(_cmd)];
	ZKXmlDeserializer *deser = [[[ZKXmlDeserializer alloc] initWithXmlElement:rn] autorelease];
	return [deser complexTypeArrayFromElements:@"result" cls:[ZKDescribeCompactLayout class]];
}

// Update or insert a set of sObjects based on object id
-(NSArray *)upsert:(NSString *)externalIDFieldName sObjects:(NSArray *)sObjects {
	if (!authSource) return nil;
	[self checkSession];
	ZKEnvelope *env = [[[ZKPartnerEnvelope alloc] initWithSessionHeader:[authSource sessionId]] autorelease];
	[self addCallOptions:env];
	[self addAssignmentRuleHeader:env];
	[self addMruHeader:env];
	[self addAllowFieldTruncationHeader:env];
	[self addDisableFeedTrackingHeader:env];
	[self addStreamingEnabledHeader:env];
	[self addAllOrNoneHeader:env];
	[self addLocaleOptions:env];
	[self addDebuggingHeader:env];
	[self addPackageVersionHeader:env];
	[self addEmailHeader:env];
	[self addOwnerChangeOptions:env];
	[env moveToBody];
	[env startElement:@"upsert"];
	[env addElement:@"externalIDFieldName" elemValue:externalIDFieldName nillable:NO  optional:NO];
	[env addElementArray:@"sObjects"       elemValue:sObjects];
	[env endElement:@"upsert"];
	zkElement *rn = [self sendRequest:[env end] name:NSStringFromSelector(_cmd)];
	ZKXmlDeserializer *deser = [[[ZKXmlDeserializer alloc] initWithXmlElement:rn] autorelease];
	return [deser complexTypeArrayFromElements:@"result" cls:[ZKUpsertResult class]];
}

// Merge and update a set of sObjects based on object id
-(NSArray *)merge:(NSArray *)request {
	if (!authSource) return nil;
	[self checkSession];
	ZKEnvelope *env = [[[ZKPartnerEnvelope alloc] initWithSessionHeader:[authSource sessionId]] autorelease];
	[self addCallOptions:env];
	[self addAssignmentRuleHeader:env];
	[self addMruHeader:env];
	[self addAllowFieldTruncationHeader:env];
	[self addDisableFeedTrackingHeader:env];
	[self addStreamingEnabledHeader:env];
	[self addLocaleOptions:env];
	[self addDebuggingHeader:env];
	[self addPackageVersionHeader:env];
	[self addEmailHeader:env];
	[env moveToBody];
	[env startElement:@"merge"];
	[env addElementArray:@"request" elemValue:request];
	[env endElement:@"merge"];
	zkElement *rn = [self sendRequest:[env end] name:NSStringFromSelector(_cmd)];
	ZKXmlDeserializer *deser = [[[ZKXmlDeserializer alloc] initWithXmlElement:rn] autorelease];
	return [deser complexTypeArrayFromElements:@"result" cls:[ZKMergeResult class]];
}

// Delete a set of sObjects
-(NSArray *)delete:(NSArray *)ids {
	if (!authSource) return nil;
	[self checkSession];
	ZKEnvelope *env = [[[ZKPartnerEnvelope alloc] initWithSessionHeader:[authSource sessionId]] autorelease];
	[self addCallOptions:env];
	[self addPackageVersionHeader:env];
	[self addUserTerritoryDeleteHeader:env];
	[self addEmailHeader:env];
	[self addAllowFieldTruncationHeader:env];
	[self addDisableFeedTrackingHeader:env];
	[self addStreamingEnabledHeader:env];
	[self addAllOrNoneHeader:env];
	[self addLocaleOptions:env];
	[self addDebuggingHeader:env];
	[env moveToBody];
	[env startElement:@"delete"];
	[env addElementArray:@"ids" elemValue:ids];
	[env endElement:@"delete"];
	zkElement *rn = [self sendRequest:[env end] name:NSStringFromSelector(_cmd)];
	ZKXmlDeserializer *deser = [[[ZKXmlDeserializer alloc] initWithXmlElement:rn] autorelease];
	return [deser complexTypeArrayFromElements:@"result" cls:[ZKDeleteResult class]];
}

// Undelete a set of sObjects
-(NSArray *)undelete:(NSArray *)ids {
	if (!authSource) return nil;
	[self checkSession];
	ZKEnvelope *env = [[[ZKPartnerEnvelope alloc] initWithSessionHeader:[authSource sessionId]] autorelease];
	[self addCallOptions:env];
	[self addAllowFieldTruncationHeader:env];
	[self addDisableFeedTrackingHeader:env];
	[self addStreamingEnabledHeader:env];
	[self addAllOrNoneHeader:env];
	[self addLocaleOptions:env];
	[self addDebuggingHeader:env];
	[self addPackageVersionHeader:env];
	[env moveToBody];
	[env startElement:@"undelete"];
	[env addElementArray:@"ids" elemValue:ids];
	[env endElement:@"undelete"];
	zkElement *rn = [self sendRequest:[env end] name:NSStringFromSelector(_cmd)];
	ZKXmlDeserializer *deser = [[[ZKXmlDeserializer alloc] initWithXmlElement:rn] autorelease];
	return [deser complexTypeArrayFromElements:@"result" cls:[ZKUndeleteResult class]];
}

// Empty a set of sObjects from the recycle bin
-(NSArray *)emptyRecycleBin:(NSArray *)ids {
	if (!authSource) return nil;
	[self checkSession];
	ZKEnvelope *env = [[[ZKPartnerEnvelope alloc] initWithSessionHeader:[authSource sessionId]] autorelease];
	[self addCallOptions:env];
	[env moveToBody];
	[env startElement:@"emptyRecycleBin"];
	[env addElementArray:@"ids" elemValue:ids];
	[env endElement:@"emptyRecycleBin"];
	zkElement *rn = [self sendRequest:[env end] name:NSStringFromSelector(_cmd)];
	ZKXmlDeserializer *deser = [[[ZKXmlDeserializer alloc] initWithXmlElement:rn] autorelease];
	return [deser complexTypeArrayFromElements:@"result" cls:[ZKEmptyRecycleBinResult class]];
}

// Submit an entity to a workflow process or process a workitem
-(NSArray *)process:(NSArray *)actions {
	if (!authSource) return nil;
	[self checkSession];
	ZKEnvelope *env = [[[ZKPartnerEnvelope alloc] initWithSessionHeader:[authSource sessionId]] autorelease];
	[self addCallOptions:env];
	[self addAllowFieldTruncationHeader:env];
	[self addDisableFeedTrackingHeader:env];
	[self addStreamingEnabledHeader:env];
	[self addLocaleOptions:env];
	[self addDebuggingHeader:env];
	[self addPackageVersionHeader:env];
	[env moveToBody];
	[env startElement:@"process"];
	[env addElementArray:@"actions" elemValue:actions];
	[env endElement:@"process"];
	zkElement *rn = [self sendRequest:[env end] name:NSStringFromSelector(_cmd)];
	ZKXmlDeserializer *deser = [[[ZKXmlDeserializer alloc] initWithXmlElement:rn] autorelease];
	return [deser complexTypeArrayFromElements:@"result" cls:[ZKProcessResult class]];
}

// convert a set of leads
-(NSArray *)convertLead:(NSArray *)leadConverts {
	if (!authSource) return nil;
	[self checkSession];
	ZKEnvelope *env = [[[ZKPartnerEnvelope alloc] initWithSessionHeader:[authSource sessionId]] autorelease];
	[self addCallOptions:env];
	[self addAllowFieldTruncationHeader:env];
	[self addDisableFeedTrackingHeader:env];
	[self addStreamingEnabledHeader:env];
	[self addLocaleOptions:env];
	[self addDebuggingHeader:env];
	[self addPackageVersionHeader:env];
	[env moveToBody];
	[env startElement:@"convertLead"];
	[env addElementArray:@"leadConverts" elemValue:leadConverts];
	[env endElement:@"convertLead"];
	zkElement *rn = [self sendRequest:[env end] name:NSStringFromSelector(_cmd)];
	ZKXmlDeserializer *deser = [[[ZKXmlDeserializer alloc] initWithXmlElement:rn] autorelease];
	return [deser complexTypeArrayFromElements:@"result" cls:[ZKLeadConvertResult class]];
}

// Logout the current user, invalidating the current session.
-(void)logout {
	if (!authSource) return ;
	[self checkSession];
	ZKEnvelope *env = [[[ZKPartnerEnvelope alloc] initWithSessionHeader:[authSource sessionId]] autorelease];
	[self addCallOptions:env];
	[env moveToBody];
	[env startElement:@"logout"];
	[env endElement:@"logout"];
	[self sendRequest:[env end] name:NSStringFromSelector(_cmd)];
}

// Logs out and invalidates session ids
-(NSArray *)invalidateSessions:(NSArray *)sessionIds {
	if (!authSource) return nil;
	[self checkSession];
	ZKEnvelope *env = [[[ZKPartnerEnvelope alloc] initWithSessionHeader:[authSource sessionId]] autorelease];
	[self addCallOptions:env];
	[env moveToBody];
	[env startElement:@"invalidateSessions"];
	[env addElementArray:@"sessionIds" elemValue:sessionIds];
	[env endElement:@"invalidateSessions"];
	zkElement *rn = [self sendRequest:[env end] name:NSStringFromSelector(_cmd)];
	ZKXmlDeserializer *deser = [[[ZKXmlDeserializer alloc] initWithXmlElement:rn] autorelease];
	return [deser complexTypeArrayFromElements:@"result" cls:[ZKInvalidateSessionsResult class]];
}

// Get the IDs for deleted sObjects
-(ZKGetDeletedResult *)getDeleted:(NSString *)sObjectType startDate:(NSDate *)startDate endDate:(NSDate *)endDate {
	if (!authSource) return nil;
	[self checkSession];
	ZKEnvelope *env = [[[ZKPartnerEnvelope alloc] initWithSessionHeader:[authSource sessionId]] autorelease];
	[self addCallOptions:env];
	[env moveToBody];
	[env startElement:@"getDeleted"];
	[env addElement:@"sObjectType" elemValue:sObjectType nillable:NO  optional:NO];
	[env addElement:@"startDate"   elemValue:startDate   nillable:NO  optional:NO];
	[env addElement:@"endDate"     elemValue:endDate     nillable:NO  optional:NO];
	[env endElement:@"getDeleted"];
	zkElement *rn = [self sendRequest:[env end] name:NSStringFromSelector(_cmd)];
	ZKXmlDeserializer *deser = [[[ZKXmlDeserializer alloc] initWithXmlElement:rn] autorelease];
	return [[deser complexTypeArrayFromElements:@"result" cls:[ZKGetDeletedResult class]] lastObject];
}

// Get the IDs for updated sObjects
-(ZKGetUpdatedResult *)getUpdated:(NSString *)sObjectType startDate:(NSDate *)startDate endDate:(NSDate *)endDate {
	if (!authSource) return nil;
	[self checkSession];
	ZKEnvelope *env = [[[ZKPartnerEnvelope alloc] initWithSessionHeader:[authSource sessionId]] autorelease];
	[self addCallOptions:env];
	[env moveToBody];
	[env startElement:@"getUpdated"];
	[env addElement:@"sObjectType" elemValue:sObjectType nillable:NO  optional:NO];
	[env addElement:@"startDate"   elemValue:startDate   nillable:NO  optional:NO];
	[env addElement:@"endDate"     elemValue:endDate     nillable:NO  optional:NO];
	[env endElement:@"getUpdated"];
	zkElement *rn = [self sendRequest:[env end] name:NSStringFromSelector(_cmd)];
	ZKXmlDeserializer *deser = [[[ZKXmlDeserializer alloc] initWithXmlElement:rn] autorelease];
	return [[deser complexTypeArrayFromElements:@"result" cls:[ZKGetUpdatedResult class]] lastObject];
}

// Create a Query Cursor
-(ZKQueryResult *)query:(NSString *)queryString {
	if (!authSource) return nil;
	[self checkSession];
	ZKEnvelope *env = [[[ZKPartnerEnvelope alloc] initWithSessionHeader:[authSource sessionId]] autorelease];
	[self addCallOptions:env];
	[self addQueryOptions:env];
	[self addMruHeader:env];
	[self addPackageVersionHeader:env];
	[env moveToBody];
	[env startElement:@"query"];
	[env addElement:@"queryString" elemValue:queryString nillable:NO  optional:NO];
	[env endElement:@"query"];
	zkElement *rn = [self sendRequest:[env end] name:NSStringFromSelector(_cmd)];
	ZKXmlDeserializer *deser = [[[ZKXmlDeserializer alloc] initWithXmlElement:rn] autorelease];
	return [deser queryResult:@"result"];
}

// Create a Query Cursor, including deleted sObjects
-(ZKQueryResult *)queryAll:(NSString *)queryString {
	if (!authSource) return nil;
	[self checkSession];
	ZKEnvelope *env = [[[ZKPartnerEnvelope alloc] initWithSessionHeader:[authSource sessionId]] autorelease];
	[self addCallOptions:env];
	[self addQueryOptions:env];
	[env moveToBody];
	[env startElement:@"queryAll"];
	[env addElement:@"queryString" elemValue:queryString nillable:NO  optional:NO];
	[env endElement:@"queryAll"];
	zkElement *rn = [self sendRequest:[env end] name:NSStringFromSelector(_cmd)];
	ZKXmlDeserializer *deser = [[[ZKXmlDeserializer alloc] initWithXmlElement:rn] autorelease];
	return [deser queryResult:@"result"];
}

// Gets the next batch of sObjects from a query
-(ZKQueryResult *)queryMore:(NSString *)queryLocator {
	if (!authSource) return nil;
	[self checkSession];
	ZKEnvelope *env = [[[ZKPartnerEnvelope alloc] initWithSessionHeader:[authSource sessionId]] autorelease];
	[self addCallOptions:env];
	[self addQueryOptions:env];
	[env moveToBody];
	[env startElement:@"queryMore"];
	[env addElement:@"queryLocator" elemValue:queryLocator nillable:NO  optional:NO];
	[env endElement:@"queryMore"];
	zkElement *rn = [self sendRequest:[env end] name:NSStringFromSelector(_cmd)];
	ZKXmlDeserializer *deser = [[[ZKXmlDeserializer alloc] initWithXmlElement:rn] autorelease];
	return [deser queryResult:@"result"];
}

// Gets server timestamp
-(ZKGetServerTimestampResult *)getServerTimestamp {
	if (!authSource) return nil;
	[self checkSession];
	ZKEnvelope *env = [[[ZKPartnerEnvelope alloc] initWithSessionHeader:[authSource sessionId]] autorelease];
	[self addCallOptions:env];
	[env moveToBody];
	[env startElement:@"getServerTimestamp"];
	[env endElement:@"getServerTimestamp"];
	zkElement *rn = [self sendRequest:[env end] name:NSStringFromSelector(_cmd)];
	ZKXmlDeserializer *deser = [[[ZKXmlDeserializer alloc] initWithXmlElement:rn] autorelease];
	return [[deser complexTypeArrayFromElements:@"result" cls:[ZKGetServerTimestampResult class]] lastObject];
}

// Set a user's password
-(ZKSetPasswordResult *)setPassword:(NSString *)userId password:(NSString *)password {
	if (!authSource) return nil;
	[self checkSession];
	ZKEnvelope *env = [[[ZKPartnerEnvelope alloc] initWithSessionHeader:[authSource sessionId]] autorelease];
	[self addCallOptions:env];
	[env moveToBody];
	[env startElement:@"setPassword"];
	[env addElement:@"userId"   elemValue:userId   nillable:NO  optional:NO];
	[env addElement:@"password" elemValue:password nillable:NO  optional:NO];
	[env endElement:@"setPassword"];
	zkElement *rn = [self sendRequest:[env end] name:NSStringFromSelector(_cmd)];
	ZKXmlDeserializer *deser = [[[ZKXmlDeserializer alloc] initWithXmlElement:rn] autorelease];
	return [[deser complexTypeArrayFromElements:@"result" cls:[ZKSetPasswordResult class]] lastObject];
}

// Reset a user's password
-(ZKResetPasswordResult *)resetPassword:(NSString *)userId {
	if (!authSource) return nil;
	[self checkSession];
	ZKEnvelope *env = [[[ZKPartnerEnvelope alloc] initWithSessionHeader:[authSource sessionId]] autorelease];
	[self addCallOptions:env];
	[self addEmailHeader:env];
	[env moveToBody];
	[env startElement:@"resetPassword"];
	[env addElement:@"userId" elemValue:userId nillable:NO  optional:NO];
	[env endElement:@"resetPassword"];
	zkElement *rn = [self sendRequest:[env end] name:NSStringFromSelector(_cmd)];
	ZKXmlDeserializer *deser = [[[ZKXmlDeserializer alloc] initWithXmlElement:rn] autorelease];
	return [[deser complexTypeArrayFromElements:@"result" cls:[ZKResetPasswordResult class]] lastObject];
}

// Returns standard information relevant to the current user
-(ZKUserInfo *)getUserInfo {
	if (!authSource) return nil;
	[self checkSession];
	ZKEnvelope *env = [[[ZKPartnerEnvelope alloc] initWithSessionHeader:[authSource sessionId]] autorelease];
	[self addCallOptions:env];
	[env moveToBody];
	[env startElement:@"getUserInfo"];
	[env endElement:@"getUserInfo"];
	zkElement *rn = [self sendRequest:[env end] name:NSStringFromSelector(_cmd)];
	ZKXmlDeserializer *deser = [[[ZKXmlDeserializer alloc] initWithXmlElement:rn] autorelease];
	return [[deser complexTypeArrayFromElements:@"result" cls:[ZKUserInfo class]] lastObject];
}

// Send existing draft EmailMessage
-(NSArray *)sendEmailMessage:(NSArray *)ids {
	if (!authSource) return nil;
	[self checkSession];
	ZKEnvelope *env = [[[ZKPartnerEnvelope alloc] initWithSessionHeader:[authSource sessionId]] autorelease];
	[self addCallOptions:env];
	[env moveToBody];
	[env startElement:@"sendEmailMessage"];
	[env addElementArray:@"ids" elemValue:ids];
	[env endElement:@"sendEmailMessage"];
	zkElement *rn = [self sendRequest:[env end] name:NSStringFromSelector(_cmd)];
	ZKXmlDeserializer *deser = [[[ZKXmlDeserializer alloc] initWithXmlElement:rn] autorelease];
	return [deser complexTypeArrayFromElements:@"result" cls:[ZKSendEmailResult class]];
}

// Send outbound email
-(NSArray *)sendEmail:(NSArray *)messages {
	if (!authSource) return nil;
	[self checkSession];
	ZKEnvelope *env = [[[ZKPartnerEnvelope alloc] initWithSessionHeader:[authSource sessionId]] autorelease];
	[self addCallOptions:env];
	[env moveToBody];
	[env startElement:@"sendEmail"];
	[env addElementArray:@"messages" elemValue:messages];
	[env endElement:@"sendEmail"];
	zkElement *rn = [self sendRequest:[env end] name:NSStringFromSelector(_cmd)];
	ZKXmlDeserializer *deser = [[[ZKXmlDeserializer alloc] initWithXmlElement:rn] autorelease];
	return [deser complexTypeArrayFromElements:@"result" cls:[ZKSendEmailResult class]];
}

// Perform a series of predefined actions such as quick create or log a task
-(NSArray *)performQuickActions:(NSArray *)quickActions {
	if (!authSource) return nil;
	[self checkSession];
	ZKEnvelope *env = [[[ZKPartnerEnvelope alloc] initWithSessionHeader:[authSource sessionId]] autorelease];
	[self addCallOptions:env];
	[self addAssignmentRuleHeader:env];
	[self addMruHeader:env];
	[self addAllowFieldTruncationHeader:env];
	[self addDisableFeedTrackingHeader:env];
	[self addStreamingEnabledHeader:env];
	[self addAllOrNoneHeader:env];
	[self addLocaleOptions:env];
	[self addDebuggingHeader:env];
	[self addPackageVersionHeader:env];
	[self addEmailHeader:env];
	[self addOwnerChangeOptions:env];
	[env moveToBody];
	[env startElement:@"performQuickActions"];
	[env addElementArray:@"quickActions" elemValue:quickActions];
	[env endElement:@"performQuickActions"];
	zkElement *rn = [self sendRequest:[env end] name:NSStringFromSelector(_cmd)];
	ZKXmlDeserializer *deser = [[[ZKXmlDeserializer alloc] initWithXmlElement:rn] autorelease];
	return [deser complexTypeArrayFromElements:@"result" cls:[ZKPerformQuickActionResult class]];
}

// Describe the details of a series of quick actions
-(NSArray *)describeQuickActions:(NSArray *)quickActions {
	if (!authSource) return nil;
	[self checkSession];
	ZKEnvelope *env = [[[ZKPartnerEnvelope alloc] initWithSessionHeader:[authSource sessionId]] autorelease];
	[self addCallOptions:env];
	[self addPackageVersionHeader:env];
	[self addLocaleOptions:env];
	[env moveToBody];
	[env startElement:@"describeQuickActions"];
	[env addElementArray:@"quickActions" elemValue:quickActions];
	[env endElement:@"describeQuickActions"];
	zkElement *rn = [self sendRequest:[env end] name:NSStringFromSelector(_cmd)];
	ZKXmlDeserializer *deser = [[[ZKXmlDeserializer alloc] initWithXmlElement:rn] autorelease];
	return [deser complexTypeArrayFromElements:@"result" cls:[ZKDescribeQuickActionResult class]];
}

// Describe the details of a series of quick actions available for the given contextType
-(NSArray *)describeAvailableQuickActions:(NSString *)contextType {
	if (!authSource) return nil;
	[self checkSession];
	ZKEnvelope *env = [[[ZKPartnerEnvelope alloc] initWithSessionHeader:[authSource sessionId]] autorelease];
	[self addCallOptions:env];
	[self addPackageVersionHeader:env];
	[self addLocaleOptions:env];
	[env moveToBody];
	[env startElement:@"describeAvailableQuickActions"];
	[env addElement:@"contextType" elemValue:contextType nillable:YES optional:NO];
	[env endElement:@"describeAvailableQuickActions"];
	zkElement *rn = [self sendRequest:[env end] name:NSStringFromSelector(_cmd)];
	ZKXmlDeserializer *deser = [[[ZKXmlDeserializer alloc] initWithXmlElement:rn] autorelease];
	return [deser complexTypeArrayFromElements:@"result" cls:[ZKDescribeAvailableQuickActionResult class]];
}

// Retreive the template sobjects, if appropriate, for the given quick action names in a given context
-(NSArray *)retrieveQuickActionTemplates:(NSArray *)quickActionNames contextId:(NSString *)contextId {
	if (!authSource) return nil;
	[self checkSession];
	ZKEnvelope *env = [[[ZKPartnerEnvelope alloc] initWithSessionHeader:[authSource sessionId]] autorelease];
	[self addCallOptions:env];
	[self addPackageVersionHeader:env];
	[self addLocaleOptions:env];
	[env moveToBody];
	[env startElement:@"retrieveQuickActionTemplates"];
	[env addElementArray:@"quickActionNames" elemValue:quickActionNames];
	[env addElement:@"contextId"             elemValue:contextId        nillable:YES optional:NO];
	[env endElement:@"retrieveQuickActionTemplates"];
	zkElement *rn = [self sendRequest:[env end] name:NSStringFromSelector(_cmd)];
	ZKXmlDeserializer *deser = [[[ZKXmlDeserializer alloc] initWithXmlElement:rn] autorelease];
	return [deser complexTypeArrayFromElements:@"result" cls:[ZKQuickActionTemplateResult class]];
}

@end
