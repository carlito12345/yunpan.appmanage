.class public final Lcom/hjq/permissions/manifest/AndroidManifestParser;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final ANDROID_MANIFEST_FILE_NAME:Ljava/lang/String; = "AndroidManifest.xml"

.field private static final ANDROID_NAMESPACE_URI:Ljava/lang/String; = "http://schemas.android.com/apk/res/android"

.field private static final ATTR_MAX_SDK_VERSION:Ljava/lang/String; = "maxSdkVersion"

.field private static final ATTR_MIN_SDK_VERSION:Ljava/lang/String; = "minSdkVersion"

.field private static final ATTR_NAME:Ljava/lang/String; = "name"

.field private static final ATTR_PACKAGE:Ljava/lang/String; = "package"

.field private static final ATTR_PERMISSION:Ljava/lang/String; = "permission"

.field private static final ATTR_REQUEST_LEGACY_EXTERNAL_STORAGE:Ljava/lang/String; = "requestLegacyExternalStorage"

.field private static final ATTR_RESOURCE:Ljava/lang/String; = "resource"

.field private static final ATTR_SUPPORTS_PICTURE_IN_PICTURE:Ljava/lang/String; = "supportsPictureInPicture"

.field private static final ATTR_USES_PERMISSION_FLAGS:Ljava/lang/String; = "usesPermissionFlags"

.field private static final ATTR_VALUE:Ljava/lang/String; = "value"

.field private static final TAG_ACTION:Ljava/lang/String; = "action"

.field private static final TAG_ACTIVITY:Ljava/lang/String; = "activity"

.field private static final TAG_ACTIVITY_ALIAS:Ljava/lang/String; = "activity-alias"

.field private static final TAG_APPLICATION:Ljava/lang/String; = "application"

.field private static final TAG_CATEGORY:Ljava/lang/String; = "category"

.field private static final TAG_INTENT_FILTER:Ljava/lang/String; = "intent-filter"

.field private static final TAG_MANIFEST:Ljava/lang/String; = "manifest"

.field private static final TAG_META_DATA:Ljava/lang/String; = "meta-data"

.field private static final TAG_QUERIES:Ljava/lang/String; = "queries"

.field private static final TAG_RECEIVER:Ljava/lang/String; = "receiver"

.field private static final TAG_SERVICE:Ljava/lang/String; = "service"

.field private static final TAG_USES_PERMISSION:Ljava/lang/String; = "uses-permission"

.field private static final TAG_USES_PERMISSION_SDK_23:Ljava/lang/String; = "uses-permission-sdk-23"

.field private static final TAG_USES_PERMISSION_SDK_M:Ljava/lang/String; = "uses-permission-sdk-m"

.field private static final TAG_USES_SDK:Ljava/lang/String; = "uses-sdk"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static findApkPathCookie(Landroid/content/Context;Ljava/lang/String;)I
    .locals 9
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "PrivateApi"
        }
    .end annotation

    .line 1
    const/4 v0, 0x2

    .line 2
    const/4 v1, 0x1

    .line 3
    const/4 v2, 0x0

    .line 4
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    .line 5
    .line 6
    .line 7
    move-result-object v3

    .line 8
    :try_start_0
    invoke-static {p0}, Lcom/hjq/permissions/tools/PermissionVersion;->getTargetSdkVersion(Landroid/content/Context;)I

    .line 9
    .line 10
    .line 11
    move-result v4
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    .line 12
    const/16 v5, 0x1c

    .line 13
    .line 14
    const-class v6, Ljava/lang/String;

    .line 15
    .line 16
    if-lt v4, v5, :cond_0

    .line 17
    .line 18
    :try_start_1
    invoke-static {}, Lcom/hjq/permissions/tools/PermissionVersion;->getSdkVersion()I

    .line 19
    .line 20
    .line 21
    move-result v4

    .line 22
    if-lt v4, v5, :cond_0

    .line 23
    .line 24
    invoke-static {}, Lcom/hjq/permissions/tools/PermissionVersion;->getSdkVersion()I

    .line 25
    .line 26
    .line 27
    move-result v4

    .line 28
    const/16 v5, 0x1e

    .line 29
    .line 30
    if-ge v4, v5, :cond_0

    .line 31
    .line 32
    const-class v4, Ljava/lang/Class;

    .line 33
    .line 34
    const-string v5, "getDeclaredMethod"

    .line 35
    .line 36
    new-array v7, v0, [Ljava/lang/Class;

    .line 37
    .line 38
    aput-object v6, v7, v2

    .line 39
    .line 40
    const-class v8, [Ljava/lang/Class;

    .line 41
    .line 42
    aput-object v8, v7, v1

    .line 43
    .line 44
    invoke-virtual {v4, v5, v7}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 45
    .line 46
    .line 47
    move-result-object v4

    .line 48
    invoke-virtual {v4, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 49
    .line 50
    .line 51
    const-class v5, Landroid/content/res/AssetManager;

    .line 52
    .line 53
    new-array v7, v1, [Ljava/lang/Class;

    .line 54
    .line 55
    aput-object v6, v7, v2

    .line 56
    .line 57
    new-array v0, v0, [Ljava/lang/Object;

    .line 58
    .line 59
    const-string v8, "findCookieForPath"

    .line 60
    .line 61
    aput-object v8, v0, v2

    .line 62
    .line 63
    aput-object v7, v0, v1

    .line 64
    .line 65
    invoke-virtual {v4, v5, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    check-cast v0, Ljava/lang/reflect/Method;

    .line 70
    .line 71
    if-eqz v0, :cond_0

    .line 72
    .line 73
    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    .line 77
    .line 78
    .line 79
    move-result-object p0

    .line 80
    new-array v4, v1, [Ljava/lang/Object;

    .line 81
    .line 82
    aput-object p1, v4, v2

    .line 83
    .line 84
    invoke-virtual {v0, p0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    move-result-object p0

    .line 88
    check-cast p0, Ljava/lang/Integer;

    .line 89
    .line 90
    if-eqz p0, :cond_0

    .line 91
    .line 92
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 93
    .line 94
    .line 95
    move-result p0

    .line 96
    return p0

    .line 97
    :catch_0
    move-exception p0

    .line 98
    goto :goto_0

    .line 99
    :catch_1
    move-exception p0

    .line 100
    goto :goto_1

    .line 101
    :catch_2
    move-exception p0

    .line 102
    goto :goto_2

    .line 103
    :cond_0
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 104
    .line 105
    .line 106
    move-result-object p0

    .line 107
    const-string v0, "addAssetPath"

    .line 108
    .line 109
    new-array v4, v1, [Ljava/lang/Class;

    .line 110
    .line 111
    aput-object v6, v4, v2

    .line 112
    .line 113
    invoke-virtual {p0, v0, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 114
    .line 115
    .line 116
    move-result-object p0

    .line 117
    new-array v0, v1, [Ljava/lang/Object;

    .line 118
    .line 119
    aput-object p1, v0, v2

    .line 120
    .line 121
    invoke-virtual {p0, v3, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    .line 123
    .line 124
    move-result-object p0

    .line 125
    check-cast p0, Ljava/lang/Integer;

    .line 126
    .line 127
    if-eqz p0, :cond_1

    .line 128
    .line 129
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 130
    .line 131
    .line 132
    move-result p0
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_0

    .line 133
    return p0

    .line 134
    :goto_0
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 135
    .line 136
    .line 137
    goto :goto_3

    .line 138
    :goto_1
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 139
    .line 140
    .line 141
    goto :goto_3

    .line 142
    :goto_2
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 143
    .line 144
    .line 145
    :cond_1
    :goto_3
    return v2
.end method

.method public static getAndroidManifestInfo(Landroid/content/Context;)Lcom/hjq/permissions/manifest/AndroidManifestInfo;
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    .line 6
    .line 7
    invoke-static {p0, v0}, Lcom/hjq/permissions/manifest/AndroidManifestParser;->findApkPathCookie(Landroid/content/Context;Ljava/lang/String;)I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    const/4 v1, 0x0

    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    return-object v1

    .line 15
    :cond_0
    :try_start_0
    invoke-static {p0, v0}, Lcom/hjq/permissions/manifest/AndroidManifestParser;->parseAndroidManifest(Landroid/content/Context;I)Lcom/hjq/permissions/manifest/AndroidManifestInfo;

    .line 16
    .line 17
    .line 18
    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_2

    .line 19
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    iget-object v2, v0, Lcom/hjq/permissions/manifest/AndroidManifestInfo;->packageName:Ljava/lang/String;

    .line 24
    .line 25
    invoke-static {p0, v2}, Lcom/hjq/permissions/tools/PermissionUtils;->reverseEqualsString(Ljava/lang/String;Ljava/lang/String;)Z

    .line 26
    .line 27
    .line 28
    move-result p0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0

    .line 29
    if-nez p0, :cond_1

    .line 30
    .line 31
    return-object v1

    .line 32
    :catch_0
    move-exception p0

    .line 33
    :goto_0
    move-object v1, v0

    .line 34
    goto :goto_1

    .line 35
    :catch_1
    move-exception p0

    .line 36
    goto :goto_0

    .line 37
    :catch_2
    move-exception p0

    .line 38
    goto :goto_1

    .line 39
    :catch_3
    move-exception p0

    .line 40
    :goto_1
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 41
    .line 42
    .line 43
    move-object v0, v1

    .line 44
    :cond_1
    return-object v0
.end method

.method private static parseActivityFromXml(Landroid/content/res/XmlResourceParser;)Lcom/hjq/permissions/manifest/node/ActivityManifestInfo;
    .locals 5

    .line 1
    new-instance v0, Lcom/hjq/permissions/manifest/node/ActivityManifestInfo;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/hjq/permissions/manifest/node/ActivityManifestInfo;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "name"

    .line 7
    .line 8
    const-string v2, "http://schemas.android.com/apk/res/android"

    .line 9
    .line 10
    invoke-interface {p0, v2, v1}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    if-eqz v1, :cond_0

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const-string v1, ""

    .line 18
    .line 19
    :goto_0
    iput-object v1, v0, Lcom/hjq/permissions/manifest/node/ActivityManifestInfo;->name:Ljava/lang/String;

    .line 20
    .line 21
    const-string v1, "supportsPictureInPicture"

    .line 22
    .line 23
    const/4 v3, 0x0

    .line 24
    invoke-interface {p0, v2, v1, v3}, Landroid/util/AttributeSet;->getAttributeBooleanValue(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    iput-boolean v1, v0, Lcom/hjq/permissions/manifest/node/ActivityManifestInfo;->supportsPictureInPicture:Z

    .line 29
    .line 30
    :cond_1
    :goto_1
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    const/4 v3, 0x3

    .line 39
    if-ne v1, v3, :cond_3

    .line 40
    .line 41
    const-string v3, "activity"

    .line 42
    .line 43
    invoke-static {v3, v2}, Lcom/hjq/permissions/tools/PermissionUtils;->equalsString(Ljava/lang/String;Ljava/lang/String;)Z

    .line 44
    .line 45
    .line 46
    move-result v3

    .line 47
    if-nez v3, :cond_2

    .line 48
    .line 49
    const-string v3, "activity-alias"

    .line 50
    .line 51
    invoke-static {v3, v2}, Lcom/hjq/permissions/tools/PermissionUtils;->equalsString(Ljava/lang/String;Ljava/lang/String;)Z

    .line 52
    .line 53
    .line 54
    move-result v3

    .line 55
    if-eqz v3, :cond_3

    .line 56
    .line 57
    :cond_2
    return-object v0

    .line 58
    :cond_3
    const/4 v3, 0x2

    .line 59
    if-ne v1, v3, :cond_5

    .line 60
    .line 61
    const-string v4, "intent-filter"

    .line 62
    .line 63
    invoke-static {v4, v2}, Lcom/hjq/permissions/tools/PermissionUtils;->equalsString(Ljava/lang/String;Ljava/lang/String;)Z

    .line 64
    .line 65
    .line 66
    move-result v4

    .line 67
    if-eqz v4, :cond_5

    .line 68
    .line 69
    iget-object v1, v0, Lcom/hjq/permissions/manifest/node/ActivityManifestInfo;->intentFilterInfoList:Ljava/util/List;

    .line 70
    .line 71
    if-nez v1, :cond_4

    .line 72
    .line 73
    new-instance v1, Ljava/util/ArrayList;

    .line 74
    .line 75
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 76
    .line 77
    .line 78
    iput-object v1, v0, Lcom/hjq/permissions/manifest/node/ActivityManifestInfo;->intentFilterInfoList:Ljava/util/List;

    .line 79
    .line 80
    :cond_4
    iget-object v1, v0, Lcom/hjq/permissions/manifest/node/ActivityManifestInfo;->intentFilterInfoList:Ljava/util/List;

    .line 81
    .line 82
    invoke-static {p0}, Lcom/hjq/permissions/manifest/AndroidManifestParser;->parseIntentFilterFromXml(Landroid/content/res/XmlResourceParser;)Lcom/hjq/permissions/manifest/node/IntentFilterManifestInfo;

    .line 83
    .line 84
    .line 85
    move-result-object v2

    .line 86
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 87
    .line 88
    .line 89
    goto :goto_1

    .line 90
    :cond_5
    if-ne v1, v3, :cond_1

    .line 91
    .line 92
    const-string v1, "meta-data"

    .line 93
    .line 94
    invoke-static {v1, v2}, Lcom/hjq/permissions/tools/PermissionUtils;->equalsString(Ljava/lang/String;Ljava/lang/String;)Z

    .line 95
    .line 96
    .line 97
    move-result v1

    .line 98
    if-eqz v1, :cond_1

    .line 99
    .line 100
    iget-object v1, v0, Lcom/hjq/permissions/manifest/node/ActivityManifestInfo;->metaDataInfoList:Ljava/util/List;

    .line 101
    .line 102
    if-nez v1, :cond_6

    .line 103
    .line 104
    new-instance v1, Ljava/util/ArrayList;

    .line 105
    .line 106
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 107
    .line 108
    .line 109
    iput-object v1, v0, Lcom/hjq/permissions/manifest/node/ActivityManifestInfo;->metaDataInfoList:Ljava/util/List;

    .line 110
    .line 111
    :cond_6
    iget-object v1, v0, Lcom/hjq/permissions/manifest/node/ActivityManifestInfo;->metaDataInfoList:Ljava/util/List;

    .line 112
    .line 113
    invoke-static {p0}, Lcom/hjq/permissions/manifest/AndroidManifestParser;->parseMetaDataFromXml(Landroid/content/res/XmlResourceParser;)Lcom/hjq/permissions/manifest/node/MetaDataManifestInfo;

    .line 114
    .line 115
    .line 116
    move-result-object v2

    .line 117
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 118
    .line 119
    .line 120
    goto :goto_1
.end method

.method public static parseAndroidManifest(Landroid/content/Context;I)Lcom/hjq/permissions/manifest/AndroidManifestInfo;
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    new-instance v2, Lcom/hjq/permissions/manifest/AndroidManifestInfo;

    .line 4
    .line 5
    invoke-direct {v2}, Lcom/hjq/permissions/manifest/AndroidManifestInfo;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    const-string v3, "AndroidManifest.xml"

    .line 13
    .line 14
    invoke-virtual {p0, p1, v3}, Landroid/content/res/AssetManager;->openXmlResourceParser(ILjava/lang/String;)Landroid/content/res/XmlResourceParser;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    :cond_0
    :try_start_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    .line 19
    .line 20
    .line 21
    move-result p1

    .line 22
    const/4 v3, 0x2

    .line 23
    if-eq p1, v3, :cond_1

    .line 24
    .line 25
    goto/16 :goto_1

    .line 26
    .line 27
    :cond_1
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    const-string v3, "manifest"

    .line 32
    .line 33
    invoke-static {v3, p1}, Lcom/hjq/permissions/tools/PermissionUtils;->equalsString(Ljava/lang/String;Ljava/lang/String;)Z

    .line 34
    .line 35
    .line 36
    move-result v3

    .line 37
    if-eqz v3, :cond_2

    .line 38
    .line 39
    invoke-static {p0}, Lcom/hjq/permissions/manifest/AndroidManifestParser;->parsePackageFromXml(Landroid/content/res/XmlResourceParser;)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v3

    .line 43
    iput-object v3, v2, Lcom/hjq/permissions/manifest/AndroidManifestInfo;->packageName:Ljava/lang/String;

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :catchall_0
    move-exception p1

    .line 47
    goto/16 :goto_2

    .line 48
    .line 49
    :cond_2
    :goto_0
    const-string v3, "uses-sdk"

    .line 50
    .line 51
    invoke-static {v3, p1}, Lcom/hjq/permissions/tools/PermissionUtils;->equalsString(Ljava/lang/String;Ljava/lang/String;)Z

    .line 52
    .line 53
    .line 54
    move-result v3

    .line 55
    if-eqz v3, :cond_3

    .line 56
    .line 57
    invoke-static {p0}, Lcom/hjq/permissions/manifest/AndroidManifestParser;->parseUsesSdkFromXml(Landroid/content/res/XmlResourceParser;)Lcom/hjq/permissions/manifest/node/UsesSdkManifestInfo;

    .line 58
    .line 59
    .line 60
    move-result-object v3

    .line 61
    iput-object v3, v2, Lcom/hjq/permissions/manifest/AndroidManifestInfo;->usesSdkInfo:Lcom/hjq/permissions/manifest/node/UsesSdkManifestInfo;

    .line 62
    .line 63
    :cond_3
    const-string v3, "uses-permission"

    .line 64
    .line 65
    invoke-static {v3, p1}, Lcom/hjq/permissions/tools/PermissionUtils;->equalsString(Ljava/lang/String;Ljava/lang/String;)Z

    .line 66
    .line 67
    .line 68
    move-result v3

    .line 69
    if-nez v3, :cond_4

    .line 70
    .line 71
    const-string v3, "uses-permission-sdk-23"

    .line 72
    .line 73
    invoke-static {v3, p1}, Lcom/hjq/permissions/tools/PermissionUtils;->equalsString(Ljava/lang/String;Ljava/lang/String;)Z

    .line 74
    .line 75
    .line 76
    move-result v3

    .line 77
    if-nez v3, :cond_4

    .line 78
    .line 79
    const-string v3, "uses-permission-sdk-m"

    .line 80
    .line 81
    invoke-static {v3, p1}, Lcom/hjq/permissions/tools/PermissionUtils;->equalsString(Ljava/lang/String;Ljava/lang/String;)Z

    .line 82
    .line 83
    .line 84
    move-result v3

    .line 85
    if-eqz v3, :cond_5

    .line 86
    .line 87
    :cond_4
    iget-object v3, v2, Lcom/hjq/permissions/manifest/AndroidManifestInfo;->permissionInfoList:Ljava/util/List;

    .line 88
    .line 89
    invoke-static {p0}, Lcom/hjq/permissions/manifest/AndroidManifestParser;->parsePermissionFromXml(Landroid/content/res/XmlResourceParser;)Lcom/hjq/permissions/manifest/node/PermissionManifestInfo;

    .line 90
    .line 91
    .line 92
    move-result-object v4

    .line 93
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 94
    .line 95
    .line 96
    :cond_5
    const-string v3, "queries"

    .line 97
    .line 98
    invoke-static {v3, p1}, Lcom/hjq/permissions/tools/PermissionUtils;->equalsString(Ljava/lang/String;Ljava/lang/String;)Z

    .line 99
    .line 100
    .line 101
    move-result v3

    .line 102
    if-eqz v3, :cond_6

    .line 103
    .line 104
    iget-object v3, v2, Lcom/hjq/permissions/manifest/AndroidManifestInfo;->queriesPackageList:Ljava/util/List;

    .line 105
    .line 106
    invoke-static {p0}, Lcom/hjq/permissions/manifest/AndroidManifestParser;->parsePackageFromXml(Landroid/content/res/XmlResourceParser;)Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v4

    .line 110
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 111
    .line 112
    .line 113
    :cond_6
    const-string v3, "application"

    .line 114
    .line 115
    invoke-static {v3, p1}, Lcom/hjq/permissions/tools/PermissionUtils;->equalsString(Ljava/lang/String;Ljava/lang/String;)Z

    .line 116
    .line 117
    .line 118
    move-result v3

    .line 119
    if-eqz v3, :cond_7

    .line 120
    .line 121
    invoke-static {p0}, Lcom/hjq/permissions/manifest/AndroidManifestParser;->parseApplicationFromXml(Landroid/content/res/XmlResourceParser;)Lcom/hjq/permissions/manifest/node/ApplicationManifestInfo;

    .line 122
    .line 123
    .line 124
    move-result-object v3

    .line 125
    iput-object v3, v2, Lcom/hjq/permissions/manifest/AndroidManifestInfo;->applicationInfo:Lcom/hjq/permissions/manifest/node/ApplicationManifestInfo;

    .line 126
    .line 127
    :cond_7
    const-string v3, "activity"

    .line 128
    .line 129
    invoke-static {v3, p1}, Lcom/hjq/permissions/tools/PermissionUtils;->equalsString(Ljava/lang/String;Ljava/lang/String;)Z

    .line 130
    .line 131
    .line 132
    move-result v3

    .line 133
    if-nez v3, :cond_8

    .line 134
    .line 135
    const-string v3, "activity-alias"

    .line 136
    .line 137
    invoke-static {v3, p1}, Lcom/hjq/permissions/tools/PermissionUtils;->equalsString(Ljava/lang/String;Ljava/lang/String;)Z

    .line 138
    .line 139
    .line 140
    move-result v3

    .line 141
    if-eqz v3, :cond_9

    .line 142
    .line 143
    :cond_8
    iget-object v3, v2, Lcom/hjq/permissions/manifest/AndroidManifestInfo;->activityInfoList:Ljava/util/List;

    .line 144
    .line 145
    invoke-static {p0}, Lcom/hjq/permissions/manifest/AndroidManifestParser;->parseActivityFromXml(Landroid/content/res/XmlResourceParser;)Lcom/hjq/permissions/manifest/node/ActivityManifestInfo;

    .line 146
    .line 147
    .line 148
    move-result-object v4

    .line 149
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 150
    .line 151
    .line 152
    :cond_9
    const-string v3, "service"

    .line 153
    .line 154
    invoke-static {v3, p1}, Lcom/hjq/permissions/tools/PermissionUtils;->equalsString(Ljava/lang/String;Ljava/lang/String;)Z

    .line 155
    .line 156
    .line 157
    move-result v3

    .line 158
    if-eqz v3, :cond_a

    .line 159
    .line 160
    iget-object v3, v2, Lcom/hjq/permissions/manifest/AndroidManifestInfo;->serviceInfoList:Ljava/util/List;

    .line 161
    .line 162
    invoke-static {p0}, Lcom/hjq/permissions/manifest/AndroidManifestParser;->parseServerFromXml(Landroid/content/res/XmlResourceParser;)Lcom/hjq/permissions/manifest/node/ServiceManifestInfo;

    .line 163
    .line 164
    .line 165
    move-result-object v4

    .line 166
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 167
    .line 168
    .line 169
    :cond_a
    const-string v3, "receiver"

    .line 170
    .line 171
    invoke-static {v3, p1}, Lcom/hjq/permissions/tools/PermissionUtils;->equalsString(Ljava/lang/String;Ljava/lang/String;)Z

    .line 172
    .line 173
    .line 174
    move-result v3

    .line 175
    if-eqz v3, :cond_b

    .line 176
    .line 177
    iget-object v3, v2, Lcom/hjq/permissions/manifest/AndroidManifestInfo;->receiverInfoList:Ljava/util/List;

    .line 178
    .line 179
    invoke-static {p0}, Lcom/hjq/permissions/manifest/AndroidManifestParser;->parseBroadcastReceiverFromXml(Landroid/content/res/XmlResourceParser;)Lcom/hjq/permissions/manifest/node/BroadcastReceiverManifestInfo;

    .line 180
    .line 181
    .line 182
    move-result-object v4

    .line 183
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 184
    .line 185
    .line 186
    :cond_b
    const-string v3, "meta-data"

    .line 187
    .line 188
    invoke-static {v3, p1}, Lcom/hjq/permissions/tools/PermissionUtils;->equalsString(Ljava/lang/String;Ljava/lang/String;)Z

    .line 189
    .line 190
    .line 191
    move-result p1

    .line 192
    if-eqz p1, :cond_d

    .line 193
    .line 194
    iget-object p1, v2, Lcom/hjq/permissions/manifest/AndroidManifestInfo;->applicationInfo:Lcom/hjq/permissions/manifest/node/ApplicationManifestInfo;

    .line 195
    .line 196
    if-eqz p1, :cond_d

    .line 197
    .line 198
    iget-object v3, p1, Lcom/hjq/permissions/manifest/node/ApplicationManifestInfo;->metaDataInfoList:Ljava/util/List;

    .line 199
    .line 200
    if-nez v3, :cond_c

    .line 201
    .line 202
    new-instance v3, Ljava/util/ArrayList;

    .line 203
    .line 204
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 205
    .line 206
    .line 207
    iput-object v3, p1, Lcom/hjq/permissions/manifest/node/ApplicationManifestInfo;->metaDataInfoList:Ljava/util/List;

    .line 208
    .line 209
    :cond_c
    iget-object p1, v2, Lcom/hjq/permissions/manifest/AndroidManifestInfo;->applicationInfo:Lcom/hjq/permissions/manifest/node/ApplicationManifestInfo;

    .line 210
    .line 211
    iget-object p1, p1, Lcom/hjq/permissions/manifest/node/ApplicationManifestInfo;->metaDataInfoList:Ljava/util/List;

    .line 212
    .line 213
    invoke-static {p0}, Lcom/hjq/permissions/manifest/AndroidManifestParser;->parseMetaDataFromXml(Landroid/content/res/XmlResourceParser;)Lcom/hjq/permissions/manifest/node/MetaDataManifestInfo;

    .line 214
    .line 215
    .line 216
    move-result-object v3

    .line 217
    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 218
    .line 219
    .line 220
    :cond_d
    :goto_1
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 221
    .line 222
    .line 223
    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 224
    if-ne p1, v1, :cond_0

    .line 225
    .line 226
    invoke-interface {p0}, Landroid/content/res/XmlResourceParser;->close()V

    .line 227
    .line 228
    .line 229
    return-object v2

    .line 230
    :goto_2
    if-eqz p0, :cond_e

    .line 231
    .line 232
    :try_start_1
    invoke-interface {p0}, Landroid/content/res/XmlResourceParser;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 233
    .line 234
    .line 235
    goto :goto_3

    .line 236
    :catchall_1
    move-exception p0

    .line 237
    const-class v2, Ljava/lang/Throwable;

    .line 238
    .line 239
    :try_start_2
    const-string v3, "addSuppressed"

    .line 240
    .line 241
    new-array v4, v1, [Ljava/lang/Class;

    .line 242
    .line 243
    aput-object v2, v4, v0

    .line 244
    .line 245
    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 246
    .line 247
    .line 248
    move-result-object v2

    .line 249
    new-array v1, v1, [Ljava/lang/Object;

    .line 250
    .line 251
    aput-object p0, v1, v0

    .line 252
    .line 253
    invoke-virtual {v2, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 254
    .line 255
    .line 256
    :catch_0
    :cond_e
    :goto_3
    goto :goto_5

    .line 257
    :goto_4
    throw p1

    .line 258
    :goto_5
    goto :goto_4
.end method

.method private static parseApplicationFromXml(Landroid/content/res/XmlResourceParser;)Lcom/hjq/permissions/manifest/node/ApplicationManifestInfo;
    .locals 4

    .line 1
    new-instance v0, Lcom/hjq/permissions/manifest/node/ApplicationManifestInfo;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/hjq/permissions/manifest/node/ApplicationManifestInfo;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "name"

    .line 7
    .line 8
    const-string v2, "http://schemas.android.com/apk/res/android"

    .line 9
    .line 10
    invoke-interface {p0, v2, v1}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    if-eqz v1, :cond_0

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const-string v1, ""

    .line 18
    .line 19
    :goto_0
    iput-object v1, v0, Lcom/hjq/permissions/manifest/node/ApplicationManifestInfo;->name:Ljava/lang/String;

    .line 20
    .line 21
    const-string v1, "requestLegacyExternalStorage"

    .line 22
    .line 23
    const/4 v3, 0x0

    .line 24
    invoke-interface {p0, v2, v1, v3}, Landroid/util/AttributeSet;->getAttributeBooleanValue(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 25
    .line 26
    .line 27
    move-result p0

    .line 28
    iput-boolean p0, v0, Lcom/hjq/permissions/manifest/node/ApplicationManifestInfo;->requestLegacyExternalStorage:Z

    .line 29
    .line 30
    return-object v0
.end method

.method private static parseBroadcastReceiverFromXml(Landroid/content/res/XmlResourceParser;)Lcom/hjq/permissions/manifest/node/BroadcastReceiverManifestInfo;
    .locals 5

    .line 1
    new-instance v0, Lcom/hjq/permissions/manifest/node/BroadcastReceiverManifestInfo;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/hjq/permissions/manifest/node/BroadcastReceiverManifestInfo;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "name"

    .line 7
    .line 8
    const-string v2, "http://schemas.android.com/apk/res/android"

    .line 9
    .line 10
    invoke-interface {p0, v2, v1}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    if-eqz v1, :cond_0

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const-string v1, ""

    .line 18
    .line 19
    :goto_0
    iput-object v1, v0, Lcom/hjq/permissions/manifest/node/BroadcastReceiverManifestInfo;->name:Ljava/lang/String;

    .line 20
    .line 21
    const-string v1, "permission"

    .line 22
    .line 23
    invoke-interface {p0, v2, v1}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    iput-object v1, v0, Lcom/hjq/permissions/manifest/node/BroadcastReceiverManifestInfo;->permission:Ljava/lang/String;

    .line 28
    .line 29
    :cond_1
    :goto_1
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    const/4 v3, 0x3

    .line 38
    if-ne v1, v3, :cond_2

    .line 39
    .line 40
    const-string v3, "receiver"

    .line 41
    .line 42
    invoke-static {v3, v2}, Lcom/hjq/permissions/tools/PermissionUtils;->equalsString(Ljava/lang/String;Ljava/lang/String;)Z

    .line 43
    .line 44
    .line 45
    move-result v3

    .line 46
    if-eqz v3, :cond_2

    .line 47
    .line 48
    return-object v0

    .line 49
    :cond_2
    const/4 v3, 0x2

    .line 50
    if-ne v1, v3, :cond_4

    .line 51
    .line 52
    const-string v4, "intent-filter"

    .line 53
    .line 54
    invoke-static {v4, v2}, Lcom/hjq/permissions/tools/PermissionUtils;->equalsString(Ljava/lang/String;Ljava/lang/String;)Z

    .line 55
    .line 56
    .line 57
    move-result v4

    .line 58
    if-eqz v4, :cond_4

    .line 59
    .line 60
    iget-object v1, v0, Lcom/hjq/permissions/manifest/node/BroadcastReceiverManifestInfo;->intentFilterInfoList:Ljava/util/List;

    .line 61
    .line 62
    if-nez v1, :cond_3

    .line 63
    .line 64
    new-instance v1, Ljava/util/ArrayList;

    .line 65
    .line 66
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 67
    .line 68
    .line 69
    iput-object v1, v0, Lcom/hjq/permissions/manifest/node/BroadcastReceiverManifestInfo;->intentFilterInfoList:Ljava/util/List;

    .line 70
    .line 71
    :cond_3
    iget-object v1, v0, Lcom/hjq/permissions/manifest/node/BroadcastReceiverManifestInfo;->intentFilterInfoList:Ljava/util/List;

    .line 72
    .line 73
    invoke-static {p0}, Lcom/hjq/permissions/manifest/AndroidManifestParser;->parseIntentFilterFromXml(Landroid/content/res/XmlResourceParser;)Lcom/hjq/permissions/manifest/node/IntentFilterManifestInfo;

    .line 74
    .line 75
    .line 76
    move-result-object v2

    .line 77
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 78
    .line 79
    .line 80
    goto :goto_1

    .line 81
    :cond_4
    if-ne v1, v3, :cond_1

    .line 82
    .line 83
    const-string v1, "meta-data"

    .line 84
    .line 85
    invoke-static {v1, v2}, Lcom/hjq/permissions/tools/PermissionUtils;->equalsString(Ljava/lang/String;Ljava/lang/String;)Z

    .line 86
    .line 87
    .line 88
    move-result v1

    .line 89
    if-eqz v1, :cond_1

    .line 90
    .line 91
    iget-object v1, v0, Lcom/hjq/permissions/manifest/node/BroadcastReceiverManifestInfo;->metaDataInfoList:Ljava/util/List;

    .line 92
    .line 93
    if-nez v1, :cond_5

    .line 94
    .line 95
    new-instance v1, Ljava/util/ArrayList;

    .line 96
    .line 97
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 98
    .line 99
    .line 100
    iput-object v1, v0, Lcom/hjq/permissions/manifest/node/BroadcastReceiverManifestInfo;->metaDataInfoList:Ljava/util/List;

    .line 101
    .line 102
    :cond_5
    iget-object v1, v0, Lcom/hjq/permissions/manifest/node/BroadcastReceiverManifestInfo;->metaDataInfoList:Ljava/util/List;

    .line 103
    .line 104
    invoke-static {p0}, Lcom/hjq/permissions/manifest/AndroidManifestParser;->parseMetaDataFromXml(Landroid/content/res/XmlResourceParser;)Lcom/hjq/permissions/manifest/node/MetaDataManifestInfo;

    .line 105
    .line 106
    .line 107
    move-result-object v2

    .line 108
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 109
    .line 110
    .line 111
    goto :goto_1
.end method

.method private static parseIntentFilterFromXml(Landroid/content/res/XmlResourceParser;)Lcom/hjq/permissions/manifest/node/IntentFilterManifestInfo;
    .locals 5

    .line 1
    new-instance v0, Lcom/hjq/permissions/manifest/node/IntentFilterManifestInfo;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/hjq/permissions/manifest/node/IntentFilterManifestInfo;-><init>()V

    .line 4
    .line 5
    .line 6
    :cond_0
    :goto_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    const/4 v3, 0x3

    .line 15
    if-ne v1, v3, :cond_1

    .line 16
    .line 17
    const-string v3, "intent-filter"

    .line 18
    .line 19
    invoke-static {v3, v2}, Lcom/hjq/permissions/tools/PermissionUtils;->equalsString(Ljava/lang/String;Ljava/lang/String;)Z

    .line 20
    .line 21
    .line 22
    move-result v3

    .line 23
    if-eqz v3, :cond_1

    .line 24
    .line 25
    return-object v0

    .line 26
    :cond_1
    const/4 v3, 0x2

    .line 27
    if-eq v1, v3, :cond_2

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_2
    const-string v1, "action"

    .line 31
    .line 32
    invoke-static {v1, v2}, Lcom/hjq/permissions/tools/PermissionUtils;->equalsString(Ljava/lang/String;Ljava/lang/String;)Z

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    const-string v3, "name"

    .line 37
    .line 38
    const-string v4, "http://schemas.android.com/apk/res/android"

    .line 39
    .line 40
    if-eqz v1, :cond_3

    .line 41
    .line 42
    iget-object v1, v0, Lcom/hjq/permissions/manifest/node/IntentFilterManifestInfo;->actionList:Ljava/util/List;

    .line 43
    .line 44
    invoke-interface {p0, v4, v3}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v2

    .line 48
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 49
    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_3
    const-string v1, "category"

    .line 53
    .line 54
    invoke-static {v1, v2}, Lcom/hjq/permissions/tools/PermissionUtils;->equalsString(Ljava/lang/String;Ljava/lang/String;)Z

    .line 55
    .line 56
    .line 57
    move-result v1

    .line 58
    if-eqz v1, :cond_0

    .line 59
    .line 60
    iget-object v1, v0, Lcom/hjq/permissions/manifest/node/IntentFilterManifestInfo;->categoryList:Ljava/util/List;

    .line 61
    .line 62
    invoke-interface {p0, v4, v3}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v2

    .line 66
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 67
    .line 68
    .line 69
    goto :goto_0
.end method

.method private static parseMetaDataFromXml(Landroid/content/res/XmlResourceParser;)Lcom/hjq/permissions/manifest/node/MetaDataManifestInfo;
    .locals 4

    .line 1
    new-instance v0, Lcom/hjq/permissions/manifest/node/MetaDataManifestInfo;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/hjq/permissions/manifest/node/MetaDataManifestInfo;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "name"

    .line 7
    .line 8
    const-string v2, "http://schemas.android.com/apk/res/android"

    .line 9
    .line 10
    invoke-interface {p0, v2, v1}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    iput-object v1, v0, Lcom/hjq/permissions/manifest/node/MetaDataManifestInfo;->name:Ljava/lang/String;

    .line 15
    .line 16
    const-string v1, "value"

    .line 17
    .line 18
    invoke-interface {p0, v2, v1}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    iput-object v1, v0, Lcom/hjq/permissions/manifest/node/MetaDataManifestInfo;->value:Ljava/lang/String;

    .line 23
    .line 24
    const-string v1, "resource"

    .line 25
    .line 26
    const/4 v3, 0x0

    .line 27
    invoke-interface {p0, v2, v1, v3}, Landroid/util/AttributeSet;->getAttributeResourceValue(Ljava/lang/String;Ljava/lang/String;I)I

    .line 28
    .line 29
    .line 30
    move-result p0

    .line 31
    iput p0, v0, Lcom/hjq/permissions/manifest/node/MetaDataManifestInfo;->resource:I

    .line 32
    .line 33
    return-object v0
.end method

.method private static parsePackageFromXml(Landroid/content/res/XmlResourceParser;)Ljava/lang/String;
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    const-string v1, "package"

    .line 3
    .line 4
    invoke-interface {p0, v0, v1}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    if-eqz p0, :cond_0

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const-string p0, ""

    .line 12
    .line 13
    :goto_0
    return-object p0
.end method

.method private static parsePermissionFromXml(Landroid/content/res/XmlResourceParser;)Lcom/hjq/permissions/manifest/node/PermissionManifestInfo;
    .locals 4

    .line 1
    new-instance v0, Lcom/hjq/permissions/manifest/node/PermissionManifestInfo;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/hjq/permissions/manifest/node/PermissionManifestInfo;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "name"

    .line 7
    .line 8
    const-string v2, "http://schemas.android.com/apk/res/android"

    .line 9
    .line 10
    invoke-interface {p0, v2, v1}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    iput-object v1, v0, Lcom/hjq/permissions/manifest/node/PermissionManifestInfo;->name:Ljava/lang/String;

    .line 15
    .line 16
    const-string v1, "maxSdkVersion"

    .line 17
    .line 18
    const v3, 0x7fffffff

    .line 19
    .line 20
    .line 21
    invoke-interface {p0, v2, v1, v3}, Landroid/util/AttributeSet;->getAttributeIntValue(Ljava/lang/String;Ljava/lang/String;I)I

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    iput v1, v0, Lcom/hjq/permissions/manifest/node/PermissionManifestInfo;->maxSdkVersion:I

    .line 26
    .line 27
    const-string v1, "usesPermissionFlags"

    .line 28
    .line 29
    const/4 v3, 0x0

    .line 30
    invoke-interface {p0, v2, v1, v3}, Landroid/util/AttributeSet;->getAttributeIntValue(Ljava/lang/String;Ljava/lang/String;I)I

    .line 31
    .line 32
    .line 33
    move-result p0

    .line 34
    iput p0, v0, Lcom/hjq/permissions/manifest/node/PermissionManifestInfo;->usesPermissionFlags:I

    .line 35
    .line 36
    return-object v0
.end method

.method private static parseServerFromXml(Landroid/content/res/XmlResourceParser;)Lcom/hjq/permissions/manifest/node/ServiceManifestInfo;
    .locals 5

    .line 1
    new-instance v0, Lcom/hjq/permissions/manifest/node/ServiceManifestInfo;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/hjq/permissions/manifest/node/ServiceManifestInfo;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "name"

    .line 7
    .line 8
    const-string v2, "http://schemas.android.com/apk/res/android"

    .line 9
    .line 10
    invoke-interface {p0, v2, v1}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    if-eqz v1, :cond_0

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const-string v1, ""

    .line 18
    .line 19
    :goto_0
    iput-object v1, v0, Lcom/hjq/permissions/manifest/node/ServiceManifestInfo;->name:Ljava/lang/String;

    .line 20
    .line 21
    const-string v1, "permission"

    .line 22
    .line 23
    invoke-interface {p0, v2, v1}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    iput-object v1, v0, Lcom/hjq/permissions/manifest/node/ServiceManifestInfo;->permission:Ljava/lang/String;

    .line 28
    .line 29
    :cond_1
    :goto_1
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    const/4 v3, 0x3

    .line 38
    if-ne v1, v3, :cond_2

    .line 39
    .line 40
    const-string v3, "service"

    .line 41
    .line 42
    invoke-static {v3, v2}, Lcom/hjq/permissions/tools/PermissionUtils;->equalsString(Ljava/lang/String;Ljava/lang/String;)Z

    .line 43
    .line 44
    .line 45
    move-result v3

    .line 46
    if-eqz v3, :cond_2

    .line 47
    .line 48
    return-object v0

    .line 49
    :cond_2
    const/4 v3, 0x2

    .line 50
    if-ne v1, v3, :cond_4

    .line 51
    .line 52
    const-string v4, "intent-filter"

    .line 53
    .line 54
    invoke-static {v4, v2}, Lcom/hjq/permissions/tools/PermissionUtils;->equalsString(Ljava/lang/String;Ljava/lang/String;)Z

    .line 55
    .line 56
    .line 57
    move-result v4

    .line 58
    if-eqz v4, :cond_4

    .line 59
    .line 60
    iget-object v1, v0, Lcom/hjq/permissions/manifest/node/ServiceManifestInfo;->intentFilterInfoList:Ljava/util/List;

    .line 61
    .line 62
    if-nez v1, :cond_3

    .line 63
    .line 64
    new-instance v1, Ljava/util/ArrayList;

    .line 65
    .line 66
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 67
    .line 68
    .line 69
    iput-object v1, v0, Lcom/hjq/permissions/manifest/node/ServiceManifestInfo;->intentFilterInfoList:Ljava/util/List;

    .line 70
    .line 71
    :cond_3
    iget-object v1, v0, Lcom/hjq/permissions/manifest/node/ServiceManifestInfo;->intentFilterInfoList:Ljava/util/List;

    .line 72
    .line 73
    invoke-static {p0}, Lcom/hjq/permissions/manifest/AndroidManifestParser;->parseIntentFilterFromXml(Landroid/content/res/XmlResourceParser;)Lcom/hjq/permissions/manifest/node/IntentFilterManifestInfo;

    .line 74
    .line 75
    .line 76
    move-result-object v2

    .line 77
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 78
    .line 79
    .line 80
    goto :goto_1

    .line 81
    :cond_4
    if-ne v1, v3, :cond_1

    .line 82
    .line 83
    const-string v1, "meta-data"

    .line 84
    .line 85
    invoke-static {v1, v2}, Lcom/hjq/permissions/tools/PermissionUtils;->equalsString(Ljava/lang/String;Ljava/lang/String;)Z

    .line 86
    .line 87
    .line 88
    move-result v1

    .line 89
    if-eqz v1, :cond_1

    .line 90
    .line 91
    iget-object v1, v0, Lcom/hjq/permissions/manifest/node/ServiceManifestInfo;->metaDataInfoList:Ljava/util/List;

    .line 92
    .line 93
    if-nez v1, :cond_5

    .line 94
    .line 95
    new-instance v1, Ljava/util/ArrayList;

    .line 96
    .line 97
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 98
    .line 99
    .line 100
    iput-object v1, v0, Lcom/hjq/permissions/manifest/node/ServiceManifestInfo;->metaDataInfoList:Ljava/util/List;

    .line 101
    .line 102
    :cond_5
    iget-object v1, v0, Lcom/hjq/permissions/manifest/node/ServiceManifestInfo;->metaDataInfoList:Ljava/util/List;

    .line 103
    .line 104
    invoke-static {p0}, Lcom/hjq/permissions/manifest/AndroidManifestParser;->parseMetaDataFromXml(Landroid/content/res/XmlResourceParser;)Lcom/hjq/permissions/manifest/node/MetaDataManifestInfo;

    .line 105
    .line 106
    .line 107
    move-result-object v2

    .line 108
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 109
    .line 110
    .line 111
    goto :goto_1
.end method

.method private static parseUsesSdkFromXml(Landroid/content/res/XmlResourceParser;)Lcom/hjq/permissions/manifest/node/UsesSdkManifestInfo;
    .locals 4

    .line 1
    new-instance v0, Lcom/hjq/permissions/manifest/node/UsesSdkManifestInfo;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/hjq/permissions/manifest/node/UsesSdkManifestInfo;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "minSdkVersion"

    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    const-string v3, "http://schemas.android.com/apk/res/android"

    .line 10
    .line 11
    invoke-interface {p0, v3, v1, v2}, Landroid/util/AttributeSet;->getAttributeIntValue(Ljava/lang/String;Ljava/lang/String;I)I

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    iput p0, v0, Lcom/hjq/permissions/manifest/node/UsesSdkManifestInfo;->minSdkVersion:I

    .line 16
    .line 17
    return-object v0
.end method
