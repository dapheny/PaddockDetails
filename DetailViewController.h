//
//  DetailViewController.h
//  PaddockDetails
//
//  Created by Dapheny Wono  on 5/12/15.
//  Copyright (c) 2015 Dapheny Wono . All rights reserved.
//

#import <UIKit/UIKit.h>
#import "RWTRateView.h"

@class RWTPaddockDetailsDoc;

@interface DetailViewController : UIViewController <UITextFieldDelegate, RWTRateViewDelegate, UIImagePickerControllerDelegate, UINavigationControllerDelegate>

@property (strong, nonatomic) RWTPaddockDetailsDoc *detailItem;

@property (strong, nonatomic) IBOutlet UILabel *detailDescriptionLabel;
@property (weak, nonatomic) IBOutlet UITextField *titleField;
@property (weak, nonatomic) IBOutlet UIImageView *imageView;
@property (weak, nonatomic) IBOutlet RWTRateView *rateView;
@property (strong, nonatomic) UIImagePickerController *picker;

- (IBAction)addPictureTapped:(id)sender;
- (IBAction)titleFieldChanged:(id)sender;

@end

