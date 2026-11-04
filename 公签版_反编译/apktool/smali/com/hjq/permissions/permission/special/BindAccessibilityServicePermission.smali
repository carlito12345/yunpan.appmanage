.class public final Lcom/hjq/permissions/permission/special/BindAccessibilityServicePermission;
.super Lcom/hjq/permissions/permission/common/SpecialPermission;
.source "SourceFile"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/hjq/permissions/permission/special/BindAccessibilityServicePermission;",
            ">;"
        }
    .end annotation
.end field

.field public static final PERMISSION_NAME:Ljava/lang/String; = "android.permission.BIND_ACCESSIBILITY_SERVICE"


# instance fields
.field private final mAccessibilityServiceClassName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/hjq/permissions/permission/special/BindAccessibilityServicePermission$1;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/hjq/permissions/permission/special/BindAccessibilityServicePermission$1;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/hjq/permissions/permission/special/BindAccessibilityServicePermission;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 7
    .line 8
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    .line 5
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0, p1}, Lcom/hjq/permissions/permission/special/BindAccessibilityServicePermission;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/os/Parcel;Lcom/hjq/permissions/permission/special/BindAccessibilityServicePermission$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/hjq/permissions/permission/special/BindAccessibilityServicePermission;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Landroid/accessibilityservice/AccessibilityService;",
            ">;)V"
        }
    .end annotation

    .line 2
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/hjq/permissions/permission/special/BindAccessibilityServicePermission;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 3
    invoke-direct {p0}, Lcom/hjq/permissions/permission/common/SpecialPermission;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/hjq/permissions/permission/special/BindAccessibilityServicePermission;->mAccessibilityServiceClassName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public checkCompliance(Landroid/app/Activity;Ljava/util/List;Lcom/hjq/permissions/manifest/AndroidManifestInfo;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/List<",
            "Lcom/hjq/permissions/permission/base/IPermission;",
            ">;",
            "Lcom/hjq/permissions/manifest/AndroidManifestInfo;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1, p2, p3}, Lcom/hjq/permissions/permission/base/BasePermission;->checkCompliance(Landroid/app/Activity;Ljava/util/List;Lcom/hjq/permissions/manifest/AndroidManifestInfo;)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Lcom/hjq/permissions/permission/special/BindAccessibilityServicePermission;->mAccessibilityServiceClassName:Ljava/lang/String;

    .line 5
    .line 6
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    if-nez p1, :cond_1

    .line 11
    .line 12
    iget-object p1, p0, Lcom/hjq/permissions/permission/special/BindAccessibilityServicePermission;->mAccessibilityServiceClassName:Ljava/lang/String;

    .line 13
    .line 14
    invoke-static {p1}, Lcom/hjq/permissions/tools/PermissionUtils;->isClassExist(Ljava/lang/String;)Z

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    if-eqz p1, :cond_0

    .line 19
    .line 20
    return-void

    .line 21
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 22
    .line 23
    new-instance p2, Ljava/lang/StringBuilder;

    .line 24
    .line 25
    const-string p3, "The passed-in "

    .line 26
    .line 27
    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    iget-object p3, p0, Lcom/hjq/permissions/permission/special/BindAccessibilityServicePermission;->mAccessibilityServiceClassName:Ljava/lang/String;

    .line 31
    .line 32
    const-string v0, " is an invalid class"

    .line 33
    .line 34
    invoke-static {p3, v0, p2}, Lg/b;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object p2

    .line 38
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    throw p1

    .line 42
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 43
    .line 44
    const-string p2, "Pass the ServiceClass parameter as empty"

    .line 45
    .line 46
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    throw p1
.end method

.method public checkSelfByManifestFile(Landroid/app/Activity;Ljava/util/List;Lcom/hjq/permissions/manifest/AndroidManifestInfo;Ljava/util/List;Lcom/hjq/permissions/manifest/node/PermissionManifestInfo;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/List<",
            "Lcom/hjq/permissions/permission/base/IPermission;",
            ">;",
            "Lcom/hjq/permissions/manifest/AndroidManifestInfo;",
            "Ljava/util/List<",
            "Lcom/hjq/permissions/manifest/node/PermissionManifestInfo;",
            ">;",
            "Lcom/hjq/permissions/manifest/node/PermissionManifestInfo;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-super/range {p0 .. p5}, Lcom/hjq/permissions/permission/base/BasePermission;->checkSelfByManifestFile(Landroid/app/Activity;Ljava/util/List;Lcom/hjq/permissions/manifest/AndroidManifestInfo;Ljava/util/List;Lcom/hjq/permissions/manifest/node/PermissionManifestInfo;)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p3, Lcom/hjq/permissions/manifest/AndroidManifestInfo;->serviceInfoList:Ljava/util/List;

    .line 5
    .line 6
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 11
    .line 12
    .line 13
    move-result p2

    .line 14
    if-eqz p2, :cond_7

    .line 15
    .line 16
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object p2

    .line 20
    check-cast p2, Lcom/hjq/permissions/manifest/node/ServiceManifestInfo;

    .line 21
    .line 22
    if-nez p2, :cond_0

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    iget-object p3, p0, Lcom/hjq/permissions/permission/special/BindAccessibilityServicePermission;->mAccessibilityServiceClassName:Ljava/lang/String;

    .line 26
    .line 27
    iget-object p4, p2, Lcom/hjq/permissions/manifest/node/ServiceManifestInfo;->name:Ljava/lang/String;

    .line 28
    .line 29
    invoke-static {p3, p4}, Lcom/hjq/permissions/tools/PermissionUtils;->reverseEqualsString(Ljava/lang/String;Ljava/lang/String;)Z

    .line 30
    .line 31
    .line 32
    move-result p3

    .line 33
    if-nez p3, :cond_1

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_1
    iget-object p1, p2, Lcom/hjq/permissions/manifest/node/ServiceManifestInfo;->permission:Ljava/lang/String;

    .line 37
    .line 38
    if-eqz p1, :cond_6

    .line 39
    .line 40
    invoke-static {p0, p1}, Lcom/hjq/permissions/tools/PermissionUtils;->equalsPermission(Lcom/hjq/permissions/permission/base/IPermission;Ljava/lang/String;)Z

    .line 41
    .line 42
    .line 43
    move-result p1

    .line 44
    if-eqz p1, :cond_6

    .line 45
    .line 46
    iget-object p1, p2, Lcom/hjq/permissions/manifest/node/ServiceManifestInfo;->intentFilterInfoList:Ljava/util/List;

    .line 47
    .line 48
    if-eqz p1, :cond_5

    .line 49
    .line 50
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    :cond_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 55
    .line 56
    .line 57
    move-result p3

    .line 58
    if-eqz p3, :cond_5

    .line 59
    .line 60
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object p3

    .line 64
    check-cast p3, Lcom/hjq/permissions/manifest/node/IntentFilterManifestInfo;

    .line 65
    .line 66
    iget-object p3, p3, Lcom/hjq/permissions/manifest/node/IntentFilterManifestInfo;->actionList:Ljava/util/List;

    .line 67
    .line 68
    const-string p4, "android.accessibilityservice.AccessibilityService"

    .line 69
    .line 70
    invoke-interface {p3, p4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 71
    .line 72
    .line 73
    move-result p3

    .line 74
    if-eqz p3, :cond_2

    .line 75
    .line 76
    iget-object p1, p2, Lcom/hjq/permissions/manifest/node/ServiceManifestInfo;->metaDataInfoList:Ljava/util/List;

    .line 77
    .line 78
    if-eqz p1, :cond_4

    .line 79
    .line 80
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 81
    .line 82
    .line 83
    move-result-object p1

    .line 84
    :cond_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 85
    .line 86
    .line 87
    move-result p2

    .line 88
    if-eqz p2, :cond_4

    .line 89
    .line 90
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 91
    .line 92
    .line 93
    move-result-object p2

    .line 94
    check-cast p2, Lcom/hjq/permissions/manifest/node/MetaDataManifestInfo;

    .line 95
    .line 96
    iget-object p3, p2, Lcom/hjq/permissions/manifest/node/MetaDataManifestInfo;->name:Ljava/lang/String;

    .line 97
    .line 98
    const-string p4, "android.accessibilityservice"

    .line 99
    .line 100
    invoke-virtual {p4, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 101
    .line 102
    .line 103
    move-result p3

    .line 104
    if-eqz p3, :cond_3

    .line 105
    .line 106
    iget p2, p2, Lcom/hjq/permissions/manifest/node/MetaDataManifestInfo;->resource:I

    .line 107
    .line 108
    if-eqz p2, :cond_3

    .line 109
    .line 110
    return-void

    .line 111
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 112
    .line 113
    new-instance p2, Ljava/lang/StringBuilder;

    .line 114
    .line 115
    const-string p3, "Please add an meta data for \""

    .line 116
    .line 117
    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 118
    .line 119
    .line 120
    iget-object p3, p0, Lcom/hjq/permissions/permission/special/BindAccessibilityServicePermission;->mAccessibilityServiceClassName:Ljava/lang/String;

    .line 121
    .line 122
    const-string p4, "\" in the AndroidManifest.xml file.\n\t\t<meta-data>\n\t\t    android:name=\"android.accessibilityservice\"\n\t\t    android:resource=\"@xml/accessibility_service_config\" />"

    .line 123
    .line 124
    invoke-static {p3, p4, p2}, Lg/b;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object p2

    .line 128
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 129
    .line 130
    .line 131
    throw p1

    .line 132
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 133
    .line 134
    new-instance p2, Ljava/lang/StringBuilder;

    .line 135
    .line 136
    const-string p3, "Please add an intent filter for \""

    .line 137
    .line 138
    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 139
    .line 140
    .line 141
    iget-object p3, p0, Lcom/hjq/permissions/permission/special/BindAccessibilityServicePermission;->mAccessibilityServiceClassName:Ljava/lang/String;

    .line 142
    .line 143
    const-string p4, "\" in the AndroidManifest.xml file.\n\t\t<intent-filter>\n\t\t    <action android:name=\"android.accessibilityservice.AccessibilityService\" />\n\t\t</intent-filter>"

    .line 144
    .line 145
    invoke-static {p3, p4, p2}, Lg/b;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 146
    .line 147
    .line 148
    move-result-object p2

    .line 149
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 150
    .line 151
    .line 152
    throw p1

    .line 153
    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 154
    .line 155
    new-instance p2, Ljava/lang/StringBuilder;

    .line 156
    .line 157
    const-string p3, "Please register permission node in the AndroidManifest.xml file, for example: <service android:name=\""

    .line 158
    .line 159
    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 160
    .line 161
    .line 162
    iget-object p3, p0, Lcom/hjq/permissions/permission/special/BindAccessibilityServicePermission;->mAccessibilityServiceClassName:Ljava/lang/String;

    .line 163
    .line 164
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 165
    .line 166
    .line 167
    const-string p3, "\" android:permission=\""

    .line 168
    .line 169
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 170
    .line 171
    .line 172
    invoke-virtual {p0}, Lcom/hjq/permissions/permission/special/BindAccessibilityServicePermission;->getPermissionName()Ljava/lang/String;

    .line 173
    .line 174
    .line 175
    move-result-object p3

    .line 176
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 177
    .line 178
    .line 179
    const-string p3, "\" />"

    .line 180
    .line 181
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 182
    .line 183
    .line 184
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 185
    .line 186
    .line 187
    move-result-object p2

    .line 188
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 189
    .line 190
    .line 191
    throw p1

    .line 192
    :cond_7
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 193
    .line 194
    new-instance p2, Ljava/lang/StringBuilder;

    .line 195
    .line 196
    const-string p3, "The \""

    .line 197
    .line 198
    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 199
    .line 200
    .line 201
    iget-object p3, p0, Lcom/hjq/permissions/permission/special/BindAccessibilityServicePermission;->mAccessibilityServiceClassName:Ljava/lang/String;

    .line 202
    .line 203
    const-string p4, "\" component is not registered in the AndroidManifest.xml file"

    .line 204
    .line 205
    invoke-static {p3, p4, p2}, Lg/b;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 206
    .line 207
    .line 208
    move-result-object p2

    .line 209
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 210
    .line 211
    .line 212
    goto :goto_2

    .line 213
    :goto_1
    throw p1

    .line 214
    :goto_2
    goto :goto_1
.end method

.method public getAccessibilityServiceClassName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hjq/permissions/permission/special/BindAccessibilityServicePermission;->mAccessibilityServiceClassName:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getFromAndroidVersion(Landroid/content/Context;)I
    .locals 0

    const/16 p1, 0x10

    return p1
.end method

.method public getPermissionName()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "android.permission.BIND_ACCESSIBILITY_SERVICE"

    .line 2
    .line 3
    return-object v0
.end method

.method public getPermissionSettingIntents(Landroid/content/Context;Z)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Z)",
            "Ljava/util/List<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance p1, Ljava/util/ArrayList;

    .line 2
    .line 3
    const/4 p2, 0x2

    .line 4
    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(I)V

    .line 5
    .line 6
    .line 7
    new-instance p2, Landroid/content/Intent;

    .line 8
    .line 9
    const-string v0, "android.settings.ACCESSIBILITY_SETTINGS"

    .line 10
    .line 11
    invoke-direct {p2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0}, Lcom/hjq/permissions/permission/base/BasePermission;->getAndroidSettingIntent()Landroid/content/Intent;

    .line 18
    .line 19
    .line 20
    move-result-object p2

    .line 21
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    return-object p1
.end method

.method public isGrantedPermission(Landroid/content/Context;Z)Z
    .locals 8

    .line 1
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 2
    .line 3
    .line 4
    move-result-object p2

    .line 5
    const-string v0, "enabled_accessibility_services"

    .line 6
    .line 7
    invoke-static {p2, v0}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p2

    .line 11
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    const/4 v1, 0x0

    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    return v1

    .line 19
    :cond_0
    iget-object v0, p0, Lcom/hjq/permissions/permission/special/BindAccessibilityServicePermission;->mAccessibilityServiceClassName:Ljava/lang/String;

    .line 20
    .line 21
    invoke-static {v0}, Lcom/hjq/permissions/tools/PermissionUtils;->isClassExist(Ljava/lang/String;)Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-eqz v0, :cond_1

    .line 26
    .line 27
    iget-object v0, p0, Lcom/hjq/permissions/permission/special/BindAccessibilityServicePermission;->mAccessibilityServiceClassName:Ljava/lang/String;

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_1
    const/4 v0, 0x0

    .line 31
    :goto_0
    const-string v2, ":"

    .line 32
    .line 33
    invoke-virtual {p2, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p2

    .line 37
    array-length v2, p2

    .line 38
    const/4 v3, 0x0

    .line 39
    :goto_1
    if-ge v3, v2, :cond_5

    .line 40
    .line 41
    aget-object v4, p2, v3

    .line 42
    .line 43
    invoke-static {v4}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    .line 44
    .line 45
    .line 46
    move-result-object v4

    .line 47
    if-nez v4, :cond_2

    .line 48
    .line 49
    goto :goto_2

    .line 50
    :cond_2
    const/4 v5, 0x1

    .line 51
    if-eqz v0, :cond_3

    .line 52
    .line 53
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v6

    .line 57
    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v7

    .line 61
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 62
    .line 63
    .line 64
    move-result v6

    .line 65
    if-eqz v6, :cond_4

    .line 66
    .line 67
    invoke-virtual {v4}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v4

    .line 71
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 72
    .line 73
    .line 74
    move-result v4

    .line 75
    if-eqz v4, :cond_4

    .line 76
    .line 77
    return v5

    .line 78
    :cond_3
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v6

    .line 82
    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v4

    .line 86
    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 87
    .line 88
    .line 89
    move-result v4

    .line 90
    if-eqz v4, :cond_4

    .line 91
    .line 92
    return v5

    .line 93
    :cond_4
    :goto_2
    add-int/lit8 v3, v3, 0x1

    .line 94
    .line 95
    goto :goto_1

    .line 96
    :cond_5
    return v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/hjq/permissions/permission/base/BasePermission;->writeToParcel(Landroid/os/Parcel;I)V

    .line 2
    .line 3
    .line 4
    iget-object p2, p0, Lcom/hjq/permissions/permission/special/BindAccessibilityServicePermission;->mAccessibilityServiceClassName:Ljava/lang/String;

    .line 5
    .line 6
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method
