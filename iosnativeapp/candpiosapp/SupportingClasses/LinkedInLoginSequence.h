#import "LoginSequenceBase.h"
#import "OAuthConsumer.h"
#import "OAConsumer.h"

@interface LinkedInLoginSequence : LoginSequenceBase {
    OAToken *requestToken;
}

@property (nonatomic, retain) OAToken *requestToken;

-(void)initiateLogin:(UIViewController*)mapViewController;
//-(void)handleResponseFromLinkedInLogin;
//-(void)handleResponseFromCandP:(NSDictionary*)json;

- (void)linkedInLogin;
- (void)loadLinkedInConnections;

@end