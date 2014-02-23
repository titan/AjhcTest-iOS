#import "RootViewController.h"

extern char * hello();

@interface RootViewController ()
#include "root.property.h"
@end

@implementation RootViewController
#include "root.synthesize.h"
- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    #include "root.view-did-load.h"
}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    #include "root.view-will-appear.h"
    self.content.text = [NSString stringWithCString:hello() encoding:NSASCIIStringEncoding];
}

- (void)viewWillLayoutSubviews {
    #include "root.view-will-layout-subviews.h"
}

@end
