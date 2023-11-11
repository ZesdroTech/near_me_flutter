class ProfileModel {
  String menuString;
  String iconString;


  ProfileModel({required this.menuString, required this.iconString,});
}

class ProfileMenuList {
 static List<ProfileModel> profilePaymentMenu = [
    ProfileModel(menuString: 'Payment & Purchase', iconString: ''),
  ];

 static List<ProfileModel> profileSettingsMenu = [
    ProfileModel(menuString: 'Notification', iconString: ''),
    ProfileModel(menuString: 'Language', iconString: ''),
    ProfileModel(menuString: 'Security', iconString: ''),
    ProfileModel(menuString: 'Dark Mode', iconString: '')
  ];
 static List<ProfileModel> profileYourAccountMenu = [
    ProfileModel(menuString: 'Accounts Center', iconString: ''),
    ProfileModel(menuString: 'Accounts Privacy', iconString: ''),
    ProfileModel(menuString: 'Business Details', iconString: ''),
    ProfileModel(menuString: 'Personalise Interests', iconString: '')
  ];

 static List<ProfileModel> profileYourActivityMenu = [
    ProfileModel(menuString: 'Saved Deals', iconString: ''),
    ProfileModel(menuString: 'Time Spent', iconString: ''),
    ProfileModel(menuString: 'Creator Tools & Controls', iconString: ''),
  ];

 static List<ProfileModel> profileSupportMenu = [
    ProfileModel(menuString: 'Help Center', iconString: ''),
    ProfileModel(menuString: 'Report a Bug', iconString: ''),
    ProfileModel(menuString: 'Invite Friends', iconString: ''),
    ProfileModel(menuString: 'Terms & Services', iconString: ''),
    ProfileModel(menuString: 'Privacy Policy', iconString: ''),
    ProfileModel(menuString: 'About', iconString: ''),
  ];
}
