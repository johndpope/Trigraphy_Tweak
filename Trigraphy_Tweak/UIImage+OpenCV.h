//
//  UIImage+OpenCV.h
//  waterloguehook
//
//  Created by 洪阳熠 on 15/3/4.
//
//



#import <UIKit/UIKit.h>

#import <opencv2/opencv.hpp>
#import <opencv2/imgproc/imgproc_c.h>


@interface UIImage (UIImage_OpenCV)

+(UIImage *)imageWithCVMat:(const cv::Mat&)cvMat;
-(id)initWithCVMat:(const cv::Mat&)cvMat;

+(UIImage *)imageWithIplImage:(IplImage *)iplimage;
-(id)initWithIplImage:(IplImage *)iplimage;


@property(nonatomic, readonly) cv::Mat CVMat;
@property(nonatomic, readonly) cv::Mat CVGrayscaleMat;

@end