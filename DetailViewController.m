//
//  DetailViewController.m
//  PaddockDetails
//
//  Created by Dapheny Wono  on 5/12/15.
//  Copyright (c) 2015 Dapheny Wono . All rights reserved.
//

#import "DetailViewController.h"
#import "RWTPaddockDetailsDoc.h"
#import "RWTPaddockDetailsData.h"


@interface DetailViewController ()
- (void)configureView;

@end

@implementation DetailViewController

@synthesize  picker = _picker;

#pragma mark - Managing the detail item

- (void)setDetailItem:(id)newDetailItem {
    if (_detailItem != newDetailItem) {
        _detailItem = newDetailItem;
            
        // Update the view.
        [self configureView];
    }
}

- (void)configureView {
    // Update the user interface for the detail item.
    
    
//    if (self.detailItem) {
//        self.detailDescriptionLabel.text = [self.detailItem description];
//    }
    
    self.rateView.notSelectedImage = [UIImage imageNamed: @"star_outline.png"];
    self.rateView.halfSelectedImage = [UIImage imageNamed:@"star_outline.png"];
    self.rateView.fullSelectedImage = [UIImage imageNamed:@"star_outline.png"];
    
    self.rateView.editable =YES;
    self.rateView.maxRating = 5;
    self.rateView.delegate = self;
    
    if (self.detailItem) {
        self.titleField.text = self.detailItem.data.title;
        self.rateView.rating = self.detailItem.data.rating;
        self.imageView.image = self.detailItem.fullImage;
    }
    
}

- (BOOL)shouldAutorotateToInterfaceOrientation {
    return YES;
}

- (IBAction)titleFieldTextChanged:(id)sender {
    self.detailItem.data.title = self.titleField.text;
}

#pragma mar UITextFieldDelegate

- (BOOL)textFieldShouldReturn:(UITextField *)textField {
    [textField resignFirstResponder];
    return YES;
}

#pragma mark RWTRateViewDelegate

-(void)rateView: (RWTRateView *)rateView ratingDidChange:(float)rating {
    self.detailItem.data.rating = rating;
    
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [self configureView];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)addPictureTapped:(id)sender {
    if (self.picker == nil){
        self.picker = [[UIImagePickerController alloc] init];
        self.picker.delegate = self;
        self.picker.sourceType = UIImagePickerControllerSourceTypePhotoLibrary;
        self.picker.allowsEditing = NO;
    }
    [self presentViewController: _picker animated: YES completion:nil];
}

#pragma mark UIImagePickerControllerDelegate

-(void) imagePickerControllerDidCancel:(UIImagePickerController *)picker {
    [self dismissViewControllerAnimated:YES completion:nil];
}

- (void)imagePickerController: (UIImagePickerController *) picker didFinishPickingMediaWithInfo:(NSDictionary *)info {
    [self dismissViewControllerAnimated:YES completion:nil];
    
    UIImage *fullImage = (UIImage *) [info objectForKey: UIImagePickerControllerOriginalImage];
//    UIImage *thumbImage = [fullImage imageByScalingAndCroppingForSize:CGSizeMake (44,44)];
    self.detailItem.fullImage = fullImage;
//    self.detailItem.thumbImage = thumbImage;
    self.imageView.image = fullImage;
}


//- (IBAction)titleFieldChanged:(id)sender {
//}

@end
