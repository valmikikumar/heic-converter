// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserModel _$UserModelFromJson(Map<String, dynamic> json) => UserModel(
      id: json['id'] as String,
      email: json['email'] as String,
      displayName: json['displayName'] as String?,
      photoUrl: json['photoUrl'] as String?,
      isPro: json['isPro'] as bool? ?? false,
      totalConversions: json['totalConversions'] as int? ?? 0,
      monthlyConversions: json['monthlyConversions'] as int? ?? 0,
      lastConversionDate: json['lastConversionDate'] == null
          ? null
          : DateTime.parse(json['lastConversionDate'] as String),
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: DateTime.parse(json['updatedAt'] as String),
      subscriptionStatus: json['subscriptionStatus'] as String?,
      subscriptionExpiry: json['subscriptionExpiry'] == null
          ? null
          : DateTime.parse(json['subscriptionExpiry'] as String),
      purchaseHistory: (json['purchaseHistory'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$UserModelToJson(UserModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'email': instance.email,
      'displayName': instance.displayName,
      'photoUrl': instance.photoUrl,
      'isPro': instance.isPro,
      'totalConversions': instance.totalConversions,
      'monthlyConversions': instance.monthlyConversions,
      'lastConversionDate': instance.lastConversionDate?.toIso8601String(),
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt.toIso8601String(),
      'subscriptionStatus': instance.subscriptionStatus,
      'subscriptionExpiry': instance.subscriptionExpiry?.toIso8601String(),
      'purchaseHistory': instance.purchaseHistory,
    };
