//
//  FileManager.m
//  FileManagerSample
//
//  Created by yuan on 16/7/19.
//  Copyright © 2016年 yuan. All rights reserved.
//

#import "JureFileManager.h"

@implementation JureFileManager


- (BOOL)addFile:(id)data filePath:(NSString *)filePath  fileName:(NSString *)fileName
{
    return [self addFile:data ToBasePath:NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES)[0] filePath:filePath fileName:fileName];
}


- (BOOL)addFile:(id)data ToBasePath:(NSString *)basePath  filePath:(NSString *)filePath  fileName:(NSString *)fileName
{
    NSString *path = [basePath stringByAppendingString:[NSString stringWithFormat:@"/%@",filePath]];
    [self checkPathDirectory:path];
    if (![self checkPathDirectory:path]) {
        return NO;
    }
    return [self saveData:data ToPath:path fileName:fileName];
}




- (BOOL)checkPathDirectory:(NSString *)path
{
    NSFileManager *fileManager = [NSFileManager defaultManager];
    BOOL isDir = FALSE;
    BOOL isDirExist = [fileManager fileExistsAtPath:path isDirectory:&isDir];
    if(!(isDirExist && isDir))
    {
        BOOL bCreateDir = [fileManager createDirectoryAtPath:path  withIntermediateDirectories:YES attributes:nil error:nil];
        if(!bCreateDir){
            NSLog(@"Create Audio Directory Failed.");
//            [self checkPathDirectory:path];
            return NO;
        }
    }
    return YES;
}


- (BOOL)saveData:(id)data ToPath:(NSString *)path  fileName:(NSString *)name
{
    NSFileManager *fileManager = [NSFileManager defaultManager];
    NSString *filePath = [path stringByAppendingString:[NSString stringWithFormat:@"/%@",name]];
    BOOL isOk = [fileManager createFileAtPath:filePath contents:data attributes:nil];
    return isOk;
}



- (BOOL)deleteFileAtPath:(NSString *)filePath  fileName:(NSString *)fileName
{
    NSString *path = [NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES)[0] stringByAppendingString:[NSString stringWithFormat:@"/%@/%@",filePath,fileName]];
    NSFileManager *fileManager = [NSFileManager defaultManager];
    if ([fileManager fileExistsAtPath:path]) {
        NSError *error;
        if ([fileManager removeItemAtPath:path error:&error]) {
            NSLog(@"清除%@成功",path);
            return YES;
        }else
        {
            NSLog(@"*********%@",error);
        }
    }
    return YES;
}
@end


