// Copyright (c) 2014 Simon Fell
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

#import "ZKLocation.h"
#import "zkEnvelope.h"
#import "ZKXmlDeserializer.h"
#import "zkParser.h"

@implementation ZKLocation

@synthesize latitude, longitude;

-(id)init {
    self = [super init];
    return self;
}

-(id)initWithZKXmlDeserializer:(ZKXmlDeserializer *)d {
    self = [super init];
	self.latitude = [d double:@"latitude"];
	self.longitude = [d double:@"longitude"];
    return self;
}

-(id)initWithXmlElement:(zkElement *)e {
    ZKXmlDeserializer *d = [[[ZKXmlDeserializer alloc] initWithXmlElement:e] autorelease];
    return [self initWithZKXmlDeserializer:d];
}

-(void)dealloc {
	[super dealloc];
}

-(void)serializeToEnvelope:(ZKEnvelope *)env elemName:(NSString *)elemName {
	[env startElement:elemName];
	[env addDoubleElement:@"latitude"  elemValue:self.latitude];
	[env addDoubleElement:@"longitude" elemValue:self.longitude];
	[env endElement:elemName];
}
@end
