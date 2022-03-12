//
//  ViewController.m
//  ObjCFizzBuzz
//
//  Created by Bruno Gomez on 3/12/22.
//

#import "ViewController.h"
#import "FizzBuzz.h"
@interface ViewController () <UITableViewDelegate, UITableViewDataSource>

@property (strong, nonatomic) UITableView *myTableView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.myTableView = [[UITableView alloc] initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height)];
    
    
    self.myTableView.dataSource = self;
    self.myTableView.delegate = self;
    
    [self.view addSubview:self.myTableView];
    
    FizzBuzz *obj = [FizzBuzz alloc];
    [obj NumsFromTo:1 to:100];
    // Do any additional setup after loading the view.
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 10;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell"];
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"cell"];
    }
    
    if (indexPath.row % 2 == 0) {
        cell.textLabel.text = @"Odd";
    } else {
        cell.textLabel.text = @"Even";
    }
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    NSLog(@"%ld", (long)indexPath.row);
}
@end
