abstract class AppApiGateway {
  // Base Url
  static const baseUrl = "http://192.168.204.79:8000/";

  // Upload File
  static const uploadFilePath = "api/up-load-file";
  static const getFileInfo = "$uploadFilePath/";
  static const uploadSingleFile = "$uploadFilePath/upload";
  static const uploadMulipleFile = "$uploadFilePath/uploads";

  // Auth
  static const authPath = "api/authentication";
  static const register = "$authPath/register";
  static const login = "$authPath/login";
  static const isTokenValid = "$authPath/is-token-valid";
  static const deleteAccount = "$authPath/delete";

  // User
  static const userPath = "api/user";
  static const searchUser = "$userPath/search";
  static const getUserInfo = "$userPath/";
  static const getUserInfoById = "$userPath/user-by-id";
  static const getUserPosts = "$userPath/get-user-posts";
  static const getAnotherUserPosts = "$userPath/get-another-user-posts";
  // static const updateUserInfo = "$userPath/update-user-info";
  static const updateAvatar = "$userPath/avatar";
  static const followUser = "$userPath/follow-user";
  static const unfollowUser = "$userPath/unfollow-user";
  static const getFollowers = "$userPath/get-followers";
  static const getFollowing = "$userPath/get-following";
  static const private = "$userPath/private";
  static const changePassword = "$userPath/change-password";
  static const saveUserTokenFcm = "$userPath/save-user-fcm-token";

  // Post
  static const postPath = "api/post";
  static const getPosts = "$postPath/";
  static const addPost = "$postPath/add-post";
  static const updatePost = "$postPath/update-post";
  static const deletePost = "$postPath/delete-post";

  static const addLikePost = "$postPath/add-like";

  static const getPostComments = "$postPath/get-post-comments";
  static const addCommentPost = "$postPath/add-comment";

  static const addLikeCommentPost = "$postPath/like-comment";

  // Story
  static const storyPath = "api/story";
  static const getStory = "$storyPath/";
  static const addStory = "$storyPath/add-story";
  static const updateStory = "$storyPath/update-story";
  static const deleteStory = "$storyPath/delete-story";

  static const addLikeStory = "$storyPath/add-like";

  static const getStoryComments = "$storyPath/get-story-comments";
  static const addCommentStory = "$storyPath/add-comment";

  static const addLikeCommentStory = "$storyPath/like-comment";

  // Chat
  static const chatPath = "api/chat";
  static const getUserChat = "$chatPath/";
  static const addChat = "$chatPath/add-chat";

  static const addMessage = "$chatPath/add-message";
  static const seenMessage = "$chatPath/seen-message";

  // Notification
  static const notificationPath = "api/notification";
  static const getNotifications = "$notificationPath/";
  static const pushNotification = "$notificationPath/send-notification";
  static const notificationSeen = "$notificationPath/seen-notification";
}
