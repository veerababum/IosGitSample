//
//  ViewController.m
//  sample
//
//  Created by veerababu mulugu on 8/26/16.
//  Copyright © 2016 veerababu m. All rights reserved.
//

#import "ViewController.h"
#import "SecViewController.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    _tem_text.text =@"dfgsdfhgsfghshg";
    
  
    //testing 3 time
//    
//    NSDictionary *inventory = @{
//                                @"UserName" : @"ios",
//                                @"password" : @"123455678",
//                                };
//    NSError *error;
//    NSData *jsonData = [NSJSONSerialization dataWithJSONObject:inventory
//                                                       options:NSJSONWritingPrettyPrinted // Pass 0 if you don't care about the readability of the generated string
//                                                         error:&error];
//    UIImage
//    if (! jsonData) {
//        NSLog(@"Got an error: %@", error);
//    } else {
//        NSString *jsonString =[[NSString alloc]init];
//        jsonString = [[NSString alloc] initWithData:jsonData encoding:NSUTF8StringEncoding];
//        NSLog(@"post data %@",jsonString);
//    }
    
    
           NSURL *URL = [NSURL URLWithString:@"https://www.reddit.com/subreddits/search.json?q=reactjs"];
       NSMutableURLRequest *request = [NSMutableURLRequest requestWithURL:URL];
       
       NSURLSessionConfiguration *config = [NSURLSessionConfiguration defaultSessionConfiguration];
       
       
        NSURLSession *session = [NSURLSession sessionWithConfiguration:config];
        
        
        [request setHTTPMethod:@"GET"];
        
        NSURLSessionDataTask *dataTask = [session dataTaskWithRequest:request completionHandler:^(NSData *data, NSURLResponse *response, NSError *error) {
            dispatch_async(dispatch_get_main_queue(), ^{
                [self responseHandler:data Response:response Error:error tag:0];
           });
           /**
            NSDictionary *dataJSON = [NSJSONSerialization JSONObjectWithData:data options:0 error:&error];
            NSLog(@"%@", dataJSON);
            
           
            
            
            **/
       }];
       [dataTask resume];
       

        
        
    
    }
    
      
    
    
    
    
    
    
    
    /*
    NSString *myString = @"abcdefghijklmnopqrstuvwxyz";
    NSMutableString *reversedString = [NSMutableString stringWithCapacity:[myString length]];
    
    [myString enumerateSubstringsInRange:NSMakeRange(0,[myString length])
                                 options:(NSStringEnumerationReverse | NSStringEnumerationByComposedCharacterSequences)
                              usingBlock:^(NSString *substring, NSRange substringRange, NSRange enclosingRange, BOOL *stop) {
                                  [reversedString appendString:substring];
                              }];
     
     */
    
    // reversedString is now zyxwvutsrqponmlkjihgfedcba
    
    /*PALINDROME
    NSString *str=@"abba";
    int count=str.length-1;
    
    for (int i=0; i<count; i++) {
        char firstChar=[str characterAtIndex:i];
        char lastChar=[str characterAtIndex:count-i];
        NSLog(@"first=%c and last=%c",firstChar,lastChar);
        if (firstChar !=lastChar) {
            break;
        }
        else
            NSLog(@"Pailndrome");
    }
*/


-(void)responseHandler:(NSData *)data Response:(NSURLResponse *)response Error:(NSError *)error tag:(NSInteger)tag {
    
    NSDictionary *dataJSON = [NSJSONSerialization JSONObjectWithData:data options:0 error:&error];
    //NSLog(@"%@", dataJSON);
    //_hyperText.text =[NSString stringWithFormat:@"%@",dataJSON];
    NSDictionary *schedule_dict = [dataJSON objectForKey:@"data"];
   // NSLog(@"the schedule_dict %@", schedule_dict);
//    NSDictionary *children_dict = [[schedule_dict objectForKey:@"children"] objectAtIndex:1];
//
//    NSLog(@"the schedule_dict %@", children_dict);
//    NSDictionary *schedule_dict123 = [children_dict valueForKey:@"data"];
//    NSLog(@"the schedule_dict123 %@", schedule_dict123);
//
//    for(NSDictionary * dict in children_dict)
//    {
//        
////       //NSString *title = [dict valueForKey:@"title"];
//        NSLog(@"the title is : %@",[dict objectForKey:@"display_name"]);
////        //[periodArray addObject:[dict valueForKey:@"period"]];
////        
//    }

    
    }
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (void)URLSession:(NSURLSession *)session dataTask:(NSURLSessionDataTask *)dataTask
didReceiveResponse:(NSURLResponse *)response
 completionHandler:(void (^)(NSURLSessionResponseDisposition disposition))completionHandler;
{
    
    
    
}


    
    
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if ([segue.identifier isEqualToString:@"moveToSec"]) {
       // NSIndexPath *indexPath = [self.tableView indexPathForSelectedRow];
        SecViewController *destViewController = segue.destinationViewController;
       // destViewController.recipeName = [recipes objectAtIndex:indexPath.row];
    }
}




@end
