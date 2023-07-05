// Note: 비회원
ChannelIO("boot", {
  pluginKey: "1efbfcc5-e202-4a9e-b764-806bc2103a43",
  zIndex: 200,
});

// Note: 회원
ChannelIO("boot", {
  pluginKey: "1efbfcc5-e202-4a9e-b764-806bc2103a43",
  memberId: "USER_MEMBER_ID", // fill user's member id
  zIndex: 200,
  profile: {
    // fill user's profile
    name: "USER_NAME", // fill user's name
    mobileNumber: "USER_MOBILE_NUMBER", // fill user's mobile number
    landlineNumber: "USER_LANDLINE_NUMBER", // fill user's landline number
    CUSTOM_VALUE_1: "VALUE_1", // custom property
    CUSTOM_VALUE_2: "VALUE_2", // custom property
  },
});
