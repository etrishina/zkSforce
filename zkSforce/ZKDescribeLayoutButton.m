// Copyright (c) 2010 Ron Hess
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

#import "ZKDescribeLayoutButton.h"
#import "ZKDescribeColor.h"
#import "ZKDescribeIcon.h"

@implementation ZKDescribeLayoutButton

-(NSString *)behavior {
    return [self string:@"behavior"];
}
			
-(NSArray *)colors {
    return [self complexTypeArrayFromElements:@"colors" cls:[ZKDescribeColor class]];
}
			
-(NSString *)content {
    return [self string:@"content"];
}
			
-(NSString *)contentSource {
    return [self string:@"contentSource"];
}
			
-(BOOL)custom {
    return [self boolean:@"custom"];
}
			
-(NSString *)encoding {
    return [self string:@"encoding"];
}
			
-(NSInteger)height {
    return [self integer:@"height"];
}
			
-(NSArray *)icons {
    return [self complexTypeArrayFromElements:@"icons" cls:[ZKDescribeIcon class]];
}
			
-(NSString *)label {
    return [self string:@"label"];
}
			
-(BOOL)menubar {
    return [self boolean:@"menubar"];
}
			
-(NSString *)name {
    return [self string:@"name"];
}
			
-(BOOL)overridden {
    return [self boolean:@"overridden"];
}
			
-(BOOL)resizeable {
    return [self boolean:@"resizeable"];
}
			
-(BOOL)scrollbars {
    return [self boolean:@"scrollbars"];
}
			
-(BOOL)showsLocation {
    return [self boolean:@"showsLocation"];
}
			
-(BOOL)showsStatus {
    return [self boolean:@"showsStatus"];
}
			
-(BOOL)toolbar {
    return [self boolean:@"toolbar"];
}
			
-(NSString *)url {
    return [self string:@"url"];
}
			
-(NSInteger)width {
    return [self integer:@"width"];
}
			
-(NSString *)windowPosition {
    return [self string:@"windowPosition"];
}
			
@end
