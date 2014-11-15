//
//  AddressBookViewController.m
//  BadEggManager
//
//  Created by admin on 11/15/14.
//  Copyright (c) 2014 admin. All rights reserved.
//

#import "AddressBookViewController.h"
#import <AddressBook/AddressBook.h>
#import <AddressBookUI/AddressBookUI.h>

@interface AddressBookViewController (){
    NSMutableArray *phonebookList;
    ABAddressBookRef addressBook;
}

@end

@implementation AddressBookViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    phonebookList = [[NSMutableArray alloc] init];
    
    addressBook = ABAddressBookCreateWithOptions(NULL, NULL);
    
    [self grantPhoneBookAccess];
    
    if (ABAddressBookGetAuthorizationStatus() == kABAuthorizationStatusAuthorized) {
        [self getPhoneBookContacts];
        //NSLog(@"%@",phonebookList);
    }
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void) grantPhoneBookAccess{
    ABAddressBookRequestAccessWithCompletion(addressBook, ^(bool granted, CFErrorRef error) {
        if (!granted) {
            NSLog(@"Denied access");
        }
    });
}

-(void) getPhoneBookContacts{
    CFArrayRef allContacts = ABAddressBookCopyArrayOfAllPeople(addressBook);
    CFIndex allContactsCount = ABAddressBookGetPersonCount(addressBook);
    
    for (int i = 0; i < allContactsCount; i++) {
        NSMutableDictionary *personDict = [[NSMutableDictionary alloc] init];
        
        ABRecordRef ref = CFArrayGetValueAtIndex(allContacts, i);
        
        //getting only the names from address book
        CFStringRef firstName = ABRecordCopyValue(ref, kABPersonFirstNameProperty);
        CFStringRef lastName = ABRecordCopyValue(ref, kABPersonLastNameProperty);
        
        [personDict setObject:[NSString stringWithFormat:@"%@,%@",firstName,lastName] forKey:@"name"];
        
        [phonebookList addObject:personDict];
    }
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
