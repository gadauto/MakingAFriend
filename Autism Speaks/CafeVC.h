//
//  CafeVC.h
//  Autism Speaks
//
//  Created by Gabriel Adauto on 4/13/13.
//

@interface CafeVC : UIViewController

@property (nonatomic, weak) IBOutlet UIImageView *cafeBackground;

@property (nonatomic, weak) IBOutlet UIImageView *boyBackground;
@property (nonatomic, weak) IBOutlet UIImageView *girlBackground;

@property (nonatomic, weak) IBOutlet UIView *introButton;
@property (nonatomic, weak) IBOutlet UIView *pointsView;
@property (nonatomic, weak) IBOutlet UILabel *pointsLabel;
@property (nonatomic, weak) IBOutlet UIView *confidencePointsView;
@property (nonatomic, weak) IBOutlet UILabel *confidencePointsLabel;

@end
