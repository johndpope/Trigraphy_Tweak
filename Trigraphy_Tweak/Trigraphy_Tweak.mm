#include "Trigraphy_Tweak.h"

__int64 _module_base = 0;
void *Alamofire_base=nil;
typedef __int64 (*pfn_UpLoad)(__int64 a1, __int64 a2, __int64 a3, __int64 a4, __int64 a5);
    pfn_UpLoad fn_UpLoad=NULL;
__int64   (*Old_sub_10016C0E0)(__int64 a1);
__int64  New_sub_10016C0E0(__int64  a1);
__int64   New_sub_10016C0E0(__int64  a1)
{
    
    BOOL isDir = FALSE;
    BOOL ok =FALSE;
    static int iCount1=0;
    CGImage*  ret=nil;
    CGContext *bmContext=(CGContext*)(*(_QWORD*)(a1+0x70));
    CGImageRef cgimage = CGBitmapContextCreateImage(bmContext);
    UIImage *MyImage1 = [UIImage imageWithCGImage:cgimage];
    CGImageRelease(cgimage);
   
    NSArray *paths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
    NSString *documentsDirectory = [paths objectAtIndex:0];
    NSFileManager *fileManage = [NSFileManager defaultManager];
    NSString *myDirectory = [documentsDirectory stringByAppendingPathComponent:@"tempPic"];
    BOOL isDirExist =[fileManage fileExistsAtPath:myDirectory isDirectory:&isDir];
    if(!(isDirExist && isDir))
        
    {
        ok= [fileManage createDirectoryAtPath:myDirectory withIntermediateDirectories:YES attributes:nil error:nil];
    }
    else
    {
        ok=TRUE;
    }
    
    if (ok) {
        NSString* desPath1 =[NSString stringWithFormat:@"%@/MyImage_%03x.png",myDirectory,iCount1];
        [UIImagePNGRepresentation(MyImage1) writeToFile:desPath1 atomically:YES];
    }
    iCount1=iCount1+1;
    return Old_sub_10016C0E0(a1);
    
}
 void (*Old__CGContextDrawImage)(CGContextRef  c, CGRect rect,CGImageRef  image);
 void New__CGContextDrawImage(CGContextRef  c, CGRect rect,CGImageRef  image);
 void New__CGContextDrawImage(CGContextRef  c, CGRect rect,CGImageRef  image)
{
    
//    BOOL isDir = FALSE;
//    BOOL ok =FALSE;
//    static int iCount1=0;
//
//    
//    
//    //  CGImage *img=(CGImage*)(*(_QWORD*)((*(_QWORD*)(a1+0x20))+0x10));
//    CGImage *img=CGBitmapContextCreateImage(c);
//    UIImage *MyImage1 = [UIImage imageWithCGImage:img];
//    
//    
//    NSArray *paths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
//    NSString *documentsDirectory = [paths objectAtIndex:0];
//    NSFileManager *fileManage = [NSFileManager defaultManager];
//    NSString *myDirectory = [documentsDirectory stringByAppendingPathComponent:@"tempPic"];
//    BOOL isDirExist =[fileManage fileExistsAtPath:myDirectory isDirectory:&isDir];
//    
//    
//    if(!(isDirExist && isDir))
//        
//    {
//        ok= [fileManage createDirectoryAtPath:myDirectory withIntermediateDirectories:YES attributes:nil error:nil];
//    }
//    else
//    {
//        ok=TRUE;
//    }
//    
//    if (ok) {
//        NSString* desPath1 =[NSString stringWithFormat:@"%@/MyImage_%d.png",myDirectory,iCount1];
//        [UIImagePNGRepresentation(MyImage1) writeToFile:desPath1 atomically:YES];
//    }
//    
//    iCount1=iCount1+1;
//    Old__CGContextDrawImage(c,rect,image);

}


#pragma mark prisma


__int64   (*Old_sub_10008AD94)(__int64 a1);
__int64  New_sub_10008AD94(__int64  a1);
__int64   New_sub_10008AD94(__int64  a1)
{
    
    BOOL isDir = FALSE;
    BOOL ok =FALSE;
    static int iCount1=0;


    
//    NSArray *paths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
//    NSString *documentsDirectory = [paths objectAtIndex:0];
//    NSFileManager *fileManage = [NSFileManager defaultManager];
//    NSString *myDirectory = [documentsDirectory stringByAppendingPathComponent:@"DesPic"];
//    NSString *mySrcDirectory = [documentsDirectory stringByAppendingPathComponent:@"SrcPic"];
//    NSError *error = nil;
//    NSMutableArray *fileList  = [[fileManage contentsOfDirectoryAtPath:mySrcDirectory error:&error] mutableCopy] ;
//
//    
//    for (int i;i<fileList.count;i++) {
//        NSString *tempPic=[fileList objectAtIndex:i];
//        NSString *path=[NSString stringWithFormat:@"%@/%@",mySrcDirectory,tempPic];
//        UIImage  *myImage=[UIImage imageWithContentsOfFile:path];
//         *(__int64*)(a1+0x30)=(__int64)myImage;
//        Old_sub_10008AD94(a1);
//    }
//    
    
   
  //  NSString* desPath1 =[NSString stringWithFormat:@"%@/MyImage_%03x.png",myDirectory,iCount1];
   //UIImagePNGRepresentation(MyImage1) writeToFile:desPath1 atomically:YES];

    NSString *str=[[NSString alloc]initWithString:@"B177DECE-0740-4AF4-A3F6-6DCA814F51D6"];
    *(__int64*)(*(__int64*)(*(__int64*)(a1+0x10) +0x20)  +0x28)=(__int64)str;
   
    
    iCount1=iCount1+1;
    return Old_sub_10008AD94(a1);
    
}
__int64 ( *Old_sub_10003A568)(__int64 a1, __int64 a2);
__int64 New_sub_10003A568(__int64 a1, __int64 a2);
__int64 New_sub_10003A568(__int64 a1, __int64 a2)
{

    
    
    NSString *str1=[NSString stringWithString:   (NSString *)*(__int64*)(a1+0x28)];
    [YYHelper YYLog:str1,nil];
    NSString *str=[[NSString alloc]initWithString:@"B177DECE-0740-4AF4-A3F6-6DCA814F51D6"];
    *(__int64*)(a1+0x28)=(__int64)str;
     [YYHelper YYLog: (NSString *)*(__int64*)(a1+0x28),nil];
    return Old_sub_10003A568(a1,a2);
}

void upLoad1()
{
    NSString *srcPath=[[NSBundle mainBundle]pathForResource:@"preprocessed.jpg" ofType:nil];
    NSURL *fileURL = [[NSBundle mainBundle] URLForResource:@"preprocessed" withExtension:@"jpg"];
    NSData *imageData=[NSData dataWithContentsOfFile:srcPath];
    NSString *uploadURL=@"https://api2.neuralprisma.com/upload/image";
    NSMutableDictionary *baseDict=[NSMutableDictionary dictionary];
    [baseDict setObject:@"prisma-device-id" forKeyedSubscript:@"B177DECE-0740-4AF4-A3F6-6DCA814F51D6"];
    [baseDict setObject:@"prisma-image-sign"  forKeyedSubscript:@"s7Ggs9aGwSF9ovqo13fhAwMz7NWGMm1axqHmWYgZ168="];

       fn_UpLoad(3,(__int64)uploadURL,(__int64)baseDict,0,(__int64)fileURL);
}

void sub_hook(__int64 image_base)
{
      __int64 Addr_subFunc1=(image_base+0x10008AD94);
      __int64 Addr_subFunc2=(image_base+0x10003A568);
      __int64 Addr_subFunc3=(image_base+0x10003BB84);
   //  MSHookFunction((void *)Addr_subFunc1, (void *)&New_sub_10008AD94, (void **)&Old_sub_10008AD94);
    MSHookFunction((void *)Addr_subFunc2, (void *)&New_sub_10003A568, (void **)&Old_sub_10003A568);
    
 
}





MSInitialize
{
     _module_base =(__int64) _dyld_get_image_vmaddr_slide(0);
    Alamofire_base= dlopen("/System/Library/Frameworks/Alamofire.framework/Alamofire", RTLD_LAZY);

    if (_module_base == 0) {
        
    }else{
        fn_UpLoad=(pfn_UpLoad)dlsym(Alamofire_base,"_TFC9Alamofire7Manager6uploadfTOS_6MethodPS_20URLStringConvertible_7headersGSqGVs10DictionarySSSS__4fileCSo5NSURL_CS_7Request");
          sub_hook(_module_base);
    }
    
}