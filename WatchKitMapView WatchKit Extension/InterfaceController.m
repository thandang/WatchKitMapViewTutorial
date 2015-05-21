//
//  InterfaceController.m
//  WatchKitMapView WatchKit Extension
//
//  Created by Dang Thanh Than on 5/21/15.
//  Copyright (c) 2015 Than Dang. All rights reserved.
//

#import "InterfaceController.h"
#import <MapKit/MapKit.h>



@interface InterfaceController()
@property (weak, nonatomic) IBOutlet WKInterfaceMap *mapView;

@end


@implementation InterfaceController

- (void)awakeWithContext:(id)context {
    [super awakeWithContext:context];

    // Configure interface objects here.
}

- (void)willActivate {
    // This method is called when watch view controller is about to be visible to user
    [super willActivate];
    
    CLLocationCoordinate2D coordination = CLLocationCoordinate2DMake(10.7534035, 106.7037847);
    MKCoordinateSpan span = MKCoordinateSpanMake(0.05, 0.05);
    [self.mapView setRegion:MKCoordinateRegionMake(coordination, span)];
    
    [self.mapView addAnnotation:coordination withPinColor:WKInterfaceMapPinColorPurple];
}

- (void)didDeactivate {
    // This method is called when watch view controller is no longer visible
    [super didDeactivate];
}


@end



