// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'conversion_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ConversionModel _$ConversionModelFromJson(Map<String, dynamic> json) =>
    ConversionModel(
      id: json['id'] as String,
      userId: json['userId'] as String,
      originalPath: json['originalPath'] as String,
      convertedPath: json['convertedPath'] as String,
      originalFormat: json['originalFormat'] as String,
      convertedFormat: json['convertedFormat'] as String,
      fileSize: json['fileSize'] as int,
      quality: (json['quality'] as num?)?.toDouble() ?? 0.8,
      timestamp: DateTime.parse(json['timestamp'] as String),
      status: json['status'] as String,
      errorMessage: json['errorMessage'] as String?,
      processingTime: json['processingTime'] as int?,
    );

Map<String, dynamic> _$ConversionModelToJson(ConversionModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'userId': instance.userId,
      'originalPath': instance.originalPath,
      'convertedPath': instance.convertedPath,
      'originalFormat': instance.originalFormat,
      'convertedFormat': instance.convertedFormat,
      'fileSize': instance.fileSize,
      'quality': instance.quality,
      'timestamp': instance.timestamp.toIso8601String(),
      'status': instance.status,
      'errorMessage': instance.errorMessage,
      'processingTime': instance.processingTime,
    };
