//
//  WebViewController.m
//  CoreGraphics
//
//  Created by Sam Meech-Ward on 2016-11-11.
//  Copyright © 2016 Sam Meech-Ward. All rights reserved.
//

#import "WebViewController.h"
@import WebKit;
@import SafariServices;

@interface WebViewController ()

@property (weak, nonatomic) IBOutlet UIWebView *webView;

@property (nonatomic, strong) WKWebView *webKitView;

@end

@implementation WebViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    NSURL *url = [NSURL URLWithString:@"https://google.ca"];
    NSURLRequest *urlRequest = [NSURLRequest requestWithURL:url];
    
    
    
    
    [self.webView loadRequest:urlRequest];
    
    self.webKitView = [[WKWebView alloc] initWithFrame:CGRectMake(0, 200, self.view.frame.size.width, 200)];
    [self.view addSubview:self.webKitView];
    
    [self.webKitView loadRequest:urlRequest];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/
- (IBAction)openWebPage:(id)sender {
    NSURL *url = [NSURL URLWithString:@"https://developer.apple.com/reference/safariservices/sfsafariviewcontroller"];
    
    SFSafariViewController *safari = [[SFSafariViewController alloc] initWithURL:url];
    
    [self presentViewController:safari animated:YES completion:nil];
}

@end
