//
//  FileManager.h
//  FileManagerSample
//
//  Created by yuan on 16/7/19.
//  Copyright © 2016年 yuan. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface JureFileManager : NSObject

- (BOOL)addFile:(id)data filePath:(NSString *)filePath  fileName:(NSString *)fileName;
- (BOOL)addFile:(NSData *)data ToBasePath:(NSString *)basePath  filePath:(NSString *)filePath  fileName:(NSString *)fileName;
- (BOOL)deleteFileAtPath:(NSString *)filePath  fileName:(NSString *)fileName;

@end
