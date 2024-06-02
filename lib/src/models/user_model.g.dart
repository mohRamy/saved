// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserModell _$UserModellFromJson(Map<String, dynamic> json) => UserModell(
      id: json['id'] as String,
      name: json['name'] as String,
      email: json['email'] as String,
      bio: json['bio'] as String,
      following:
          (json['following'] as List<dynamic>).map((e) => e as String).toList(),
      followers:
          (json['followers'] as List<dynamic>).map((e) => e as String).toList(),
      photo: json['photo'] as String,
      photoHash: json['photohash'] as String,
      phone: json['phone'] as String,
      password: json['password'] as String,
      address: json['address'] as String,
      type: json['type'] as String,
      private: json['private'] as bool,
      isOnline: json['isonline'] as bool,
      token: json['token'] as String,
      fcmToken: json['fcmtoken'] as String,
    );

Map<String, dynamic> _$UserModellToJson(UserModell instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'email': instance.email,
      'bio': instance.bio,
      'following': instance.following,
      'followers': instance.followers,
      'photo': instance.photo,
      'photohash': instance.photoHash,
      'phone': instance.phone,
      'password': instance.password,
      'address': instance.address,
      'type': instance.type,
      'private': instance.private,
      'isonline': instance.isOnline,
      'token': instance.token,
      'fcmtoken': instance.fcmToken,
    };
