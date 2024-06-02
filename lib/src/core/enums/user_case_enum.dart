enum UserCaseEnum {
  following('following'),
  followers('followers'), 
  unfollow('unfollow');

  final String type;
  const UserCaseEnum(this.type);
}

extension ConvertFriend on String {
  UserCaseEnum toEnum() {
    switch (this) {
      case 'following':
      return UserCaseEnum.following;
      case 'followers':
      return UserCaseEnum.followers;
      case 'unfollow':
      return UserCaseEnum.unfollow;
      default:
      return UserCaseEnum.unfollow;
    }
  }
}
