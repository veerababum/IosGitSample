//
//  ViewController.h
//  sample
//
//  Created by veerababu mulugu on 8/26/16.
//  Copyright © 2016 veerababu m. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController<NSURLSessionDataDelegate,NSURLSessionDownloadDelegate,NSURLSessionTaskDelegate,NSURLSessionStreamDelegate>
@property (weak, nonatomic) IBOutlet UITextField *tem_text;
@property (weak, nonatomic) IBOutlet UITextView *hyperText;


@end

