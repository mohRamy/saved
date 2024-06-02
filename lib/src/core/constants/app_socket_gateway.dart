abstract class SocketGateway {
  static const ping = 'ping';
  static const pong = 'pong';

  static const sendFCMTokenCSS = 'sned-fcm-token-css';

  static const signIn = 'signin';

  // Is User Online
  static const isUserOnline = 'is-user-online';
  static const isedUserOnline = 'ised-user-online';
  static const isUserOnlineError = 'is-user-online-error';


  // Post

  // Get All Posts
  static const getAllPosts = 'get-all-posts';
  static const goneAllPosts = 'gone-all-posts';
  static const getAllPostsError = 'get-all-posts-error';

  // Post Like
  static const likePost = 'like-post';
  static const likedPost = 'liked-post';
  static const likePostError = 'like-post-error';

  // Post Comment
  static const commentPost = 'comment-post';
  static const commentedPost = 'commented-post';
  static const commentPostError = 'comment-post-error';

  // Post Comment Like
  static const commentLikePost = 'comment-like-post';
  static const commentLikedPost = 'commented-like-post';
  static const commentLikePostError = 'comment-like-post-error';

  // Post Share
  static const sharePost = 'share-post';
  static const sharedPost = 'shared-post';
  static const sharePostError = 'share-post-error';


  // Story

  // Story Like
  static const likeStory = 'like-story';
  static const likedStory = 'liked-story';
  static const likeStoryError = 'like-story-error';

  // Story Comment
  static const commentStory = 'comment-story';
  static const commentedStory = 'commented-story';
  static const commentStoryError = 'comment-story-error';

  // Story Comment Like
  static const commentLikeStory = 'comment-like-story';
  static const commentLikedStory = 'commented-like-story';
  static const commentLikeStoryError = 'comment-like-story-error';

  // Story Share
  static const shareStory = 'share-Story';
  static const sharedStory = 'shared-Story';
  static const shareStoryError = 'share-Story-error';


  // User

  // Update Avatar
  static const updateAvatar = 'update-avatar';
  static const updatedAvatar = 'updated-avatar';
  static const updateAvatarError = 'update-avatar-error';

  // Update User Info
  static const updateUserInfo = 'update-user-info';
  static const updatedUserInfo = 'updated-user-info';
  static const updateUserInfoError = 'update-user-info-error';

  // Follow User
  static const followUser = 'follow-user';
  static const followedUser = 'followed-user';
  static const followUserError = 'follow-user-error';

  // Unfollow User
  static const unfollowUser = 'unfollow-user';
  static const unfollowedUser = 'unfollowed-user';
  static const unfollowUserError = 'unfollow-user-error';

  // Remove User
  static const removeUser = 'remove-user';
  static const removedUser = 'removed-user';
  static const removeUserError = 'remove-user-error';


  // Chat

  // Rooms
  static const joinRoomChat = 'join-room-chat';
  static const leaveRoomChat = 'leave-room-chat';

  // Add Message
  static const addMessage = 'add-message';
  static const addedMessage = 'added-message';
  static const addMessageError = 'add-message-error';

  // Is Message Seen
  static const isMessageSeen = 'is-message-seen';
  static const isedMessageSeen = 'ised-message-seen';
  static const isMessageSeenError = 'is-message-seen-error';




  static List<String> isUserOnlinee = [
    "is-user-online",
    "ised-user-online",
    "is-user-online-error",
    "Error when Is user online",
  ];

  static List<String> getAllPostss = [
    "get-all-posts",
    "gone-all-posts",
    "get-all-posts-error",
    "Error when Get All Posts",
  ];

  static List<String> changePostLikee = [
    "change-post-like",
    "changed-post-like",
    "change-post-like-error",
    "Error when Change post like",
  ];

  static List<String> changeStoryLikee = [
    "change-story-like",
    "changed-story-like",
    "change-story-like-error",
    "Error when Change story like",
  ];

  static List<String> addCommentt = [
    "add-comment",
    "added-comment",
    "add-comment-error",
    "Error when add Comment",
  ];

  static List<String> changeCommentLikee = [
    "change-comment-like",
    "changed-comment-like",
    "change-comment-like-error",
    "Error when Change comment like",
  ];

  static List<String> addPostSharee = [
    "add-story-share",
    "added-story-share",
    "add-story-share-error",
    "Error when Add post share",
  ];

  static List<String> updateAvatarr = [
    "update-avatar",
    "updated-avatar",
    "update-avatar-error",
    "Error when Update avatar",
  ];

  static List<String> updateUserInfoo = [
    "update-user-info",
    "updated-user-info",
    "update-user-info-error",
    "Error when Update user info",
  ];

  static List<String> changeUserCasee = [
    "change-user-case",
    "changed-user-case",
    "change-user-case-error",
    "Error when Change user case",
  ];

  static List<String> room = [
    "join-room-chat",
    "leave-room-chat",
    "Error in Room",
  ];

  static List<String> addMessagee = [
    "add-message",
    "added-message",
    "add-message-error",
    "Error when Add Message",
  ];

  static List<String> isMessageSeenn = [
    "is-message-seen",
    "ised-message-seen",
    "is-message-seen-error",
    "Error when see Message",
  ];
}
