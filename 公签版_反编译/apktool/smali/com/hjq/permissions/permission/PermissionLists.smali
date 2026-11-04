.class public final Lcom/hjq/permissions/permission/PermissionLists;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final PERMISSION_CACHE_MAP:La0/m;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "La0/m;"
        }
    .end annotation
.end field

.field private static final PERMISSION_COUNT:I = 0x97


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, La0/m;

    .line 2
    .line 3
    const/16 v1, 0x97

    .line 4
    .line 5
    invoke-direct {v0, v1}, La0/m;-><init>(I)V

    .line 6
    .line 7
    .line 8
    sput-object v0, Lcom/hjq/permissions/permission/PermissionLists;->PERMISSION_CACHE_MAP:La0/m;

    .line 9
    .line 10
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static getAcceptHandoverPermission()Lcom/hjq/permissions/permission/base/IPermission;
    .locals 4

    .line 1
    const-string v0, "android.permission.ACCEPT_HANDOVER"

    .line 2
    .line 3
    invoke-static {v0}, Lcom/hjq/permissions/permission/PermissionLists;->getCachePermission(Ljava/lang/String;)Lcom/hjq/permissions/permission/base/IPermission;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    return-object v1

    .line 10
    :cond_0
    new-instance v1, Lcom/hjq/permissions/permission/dangerous/StandardDangerousPermission;

    .line 11
    .line 12
    const-string v2, "phone_group"

    .line 13
    .line 14
    const/16 v3, 0x1c

    .line 15
    .line 16
    invoke-direct {v1, v0, v2, v3}, Lcom/hjq/permissions/permission/dangerous/StandardDangerousPermission;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 17
    .line 18
    .line 19
    invoke-static {v1}, Lcom/hjq/permissions/permission/PermissionLists;->putCachePermission(Lcom/hjq/permissions/permission/base/IPermission;)Lcom/hjq/permissions/permission/base/IPermission;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    return-object v0
.end method

.method public static getAccessBackgroundLocationPermission()Lcom/hjq/permissions/permission/base/IPermission;
    .locals 1

    .line 1
    const-string v0, "android.permission.ACCESS_BACKGROUND_LOCATION"

    .line 2
    .line 3
    invoke-static {v0}, Lcom/hjq/permissions/permission/PermissionLists;->getCachePermission(Ljava/lang/String;)Lcom/hjq/permissions/permission/base/IPermission;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    return-object v0

    .line 10
    :cond_0
    new-instance v0, Lcom/hjq/permissions/permission/dangerous/AccessBackgroundLocationPermission;

    .line 11
    .line 12
    invoke-direct {v0}, Lcom/hjq/permissions/permission/dangerous/AccessBackgroundLocationPermission;-><init>()V

    .line 13
    .line 14
    .line 15
    invoke-static {v0}, Lcom/hjq/permissions/permission/PermissionLists;->putCachePermission(Lcom/hjq/permissions/permission/base/IPermission;)Lcom/hjq/permissions/permission/base/IPermission;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    return-object v0
.end method

.method public static getAccessCoarseLocationPermission()Lcom/hjq/permissions/permission/base/IPermission;
    .locals 4

    .line 1
    const-string v0, "android.permission.ACCESS_COARSE_LOCATION"

    .line 2
    .line 3
    invoke-static {v0}, Lcom/hjq/permissions/permission/PermissionLists;->getCachePermission(Ljava/lang/String;)Lcom/hjq/permissions/permission/base/IPermission;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    return-object v1

    .line 10
    :cond_0
    new-instance v1, Lcom/hjq/permissions/permission/dangerous/StandardDangerousPermission;

    .line 11
    .line 12
    const-string v2, "location_group"

    .line 13
    .line 14
    const/16 v3, 0x17

    .line 15
    .line 16
    invoke-direct {v1, v0, v2, v3}, Lcom/hjq/permissions/permission/dangerous/StandardDangerousPermission;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 17
    .line 18
    .line 19
    invoke-static {v1}, Lcom/hjq/permissions/permission/PermissionLists;->putCachePermission(Lcom/hjq/permissions/permission/base/IPermission;)Lcom/hjq/permissions/permission/base/IPermission;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    return-object v0
.end method

.method public static getAccessFineLocationPermission()Lcom/hjq/permissions/permission/base/IPermission;
    .locals 4

    .line 1
    const-string v0, "android.permission.ACCESS_FINE_LOCATION"

    .line 2
    .line 3
    invoke-static {v0}, Lcom/hjq/permissions/permission/PermissionLists;->getCachePermission(Ljava/lang/String;)Lcom/hjq/permissions/permission/base/IPermission;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    return-object v1

    .line 10
    :cond_0
    new-instance v1, Lcom/hjq/permissions/permission/dangerous/StandardDangerousPermission;

    .line 11
    .line 12
    const-string v2, "location_group"

    .line 13
    .line 14
    const/16 v3, 0x17

    .line 15
    .line 16
    invoke-direct {v1, v0, v2, v3}, Lcom/hjq/permissions/permission/dangerous/StandardDangerousPermission;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 17
    .line 18
    .line 19
    invoke-static {v1}, Lcom/hjq/permissions/permission/PermissionLists;->putCachePermission(Lcom/hjq/permissions/permission/base/IPermission;)Lcom/hjq/permissions/permission/base/IPermission;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    return-object v0
.end method

.method public static getAccessLocalNetworkPermission()Lcom/hjq/permissions/permission/base/IPermission;
    .locals 1

    .line 1
    const-string v0, "android.permission.ACCESS_LOCAL_NETWORK"

    .line 2
    .line 3
    invoke-static {v0}, Lcom/hjq/permissions/permission/PermissionLists;->getCachePermission(Ljava/lang/String;)Lcom/hjq/permissions/permission/base/IPermission;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    return-object v0

    .line 10
    :cond_0
    new-instance v0, Lcom/hjq/permissions/permission/dangerous/AccessLocalNetworkPermission;

    .line 11
    .line 12
    invoke-direct {v0}, Lcom/hjq/permissions/permission/dangerous/AccessLocalNetworkPermission;-><init>()V

    .line 13
    .line 14
    .line 15
    invoke-static {v0}, Lcom/hjq/permissions/permission/PermissionLists;->putCachePermission(Lcom/hjq/permissions/permission/base/IPermission;)Lcom/hjq/permissions/permission/base/IPermission;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    return-object v0
.end method

.method public static getAccessMediaLocationPermission()Lcom/hjq/permissions/permission/base/IPermission;
    .locals 1

    .line 1
    const-string v0, "android.permission.ACCESS_MEDIA_LOCATION"

    .line 2
    .line 3
    invoke-static {v0}, Lcom/hjq/permissions/permission/PermissionLists;->getCachePermission(Ljava/lang/String;)Lcom/hjq/permissions/permission/base/IPermission;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    return-object v0

    .line 10
    :cond_0
    new-instance v0, Lcom/hjq/permissions/permission/dangerous/AccessMediaLocationPermission;

    .line 11
    .line 12
    invoke-direct {v0}, Lcom/hjq/permissions/permission/dangerous/AccessMediaLocationPermission;-><init>()V

    .line 13
    .line 14
    .line 15
    invoke-static {v0}, Lcom/hjq/permissions/permission/PermissionLists;->putCachePermission(Lcom/hjq/permissions/permission/base/IPermission;)Lcom/hjq/permissions/permission/base/IPermission;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    return-object v0
.end method

.method public static getAccessNotificationPolicyPermission()Lcom/hjq/permissions/permission/base/IPermission;
    .locals 1

    .line 1
    const-string v0, "android.permission.ACCESS_NOTIFICATION_POLICY"

    .line 2
    .line 3
    invoke-static {v0}, Lcom/hjq/permissions/permission/PermissionLists;->getCachePermission(Ljava/lang/String;)Lcom/hjq/permissions/permission/base/IPermission;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    return-object v0

    .line 10
    :cond_0
    new-instance v0, Lcom/hjq/permissions/permission/special/AccessNotificationPolicyPermission;

    .line 11
    .line 12
    invoke-direct {v0}, Lcom/hjq/permissions/permission/special/AccessNotificationPolicyPermission;-><init>()V

    .line 13
    .line 14
    .line 15
    invoke-static {v0}, Lcom/hjq/permissions/permission/PermissionLists;->putCachePermission(Lcom/hjq/permissions/permission/base/IPermission;)Lcom/hjq/permissions/permission/base/IPermission;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    return-object v0
.end method

.method public static getActivityRecognitionPermission()Lcom/hjq/permissions/permission/base/IPermission;
    .locals 3

    .line 1
    const-string v0, "android.permission.ACTIVITY_RECOGNITION"

    .line 2
    .line 3
    invoke-static {v0}, Lcom/hjq/permissions/permission/PermissionLists;->getCachePermission(Ljava/lang/String;)Lcom/hjq/permissions/permission/base/IPermission;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    return-object v1

    .line 10
    :cond_0
    new-instance v1, Lcom/hjq/permissions/permission/dangerous/StandardDangerousPermission;

    .line 11
    .line 12
    const/16 v2, 0x1d

    .line 13
    .line 14
    invoke-direct {v1, v0, v2}, Lcom/hjq/permissions/permission/dangerous/StandardDangerousPermission;-><init>(Ljava/lang/String;I)V

    .line 15
    .line 16
    .line 17
    invoke-static {v1}, Lcom/hjq/permissions/permission/PermissionLists;->putCachePermission(Lcom/hjq/permissions/permission/base/IPermission;)Lcom/hjq/permissions/permission/base/IPermission;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    return-object v0
.end method

.method public static getAddVoicemailPermission()Lcom/hjq/permissions/permission/base/IPermission;
    .locals 4

    .line 1
    const-string v0, "com.android.voicemail.permission.ADD_VOICEMAIL"

    .line 2
    .line 3
    invoke-static {v0}, Lcom/hjq/permissions/permission/PermissionLists;->getCachePermission(Ljava/lang/String;)Lcom/hjq/permissions/permission/base/IPermission;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    return-object v1

    .line 10
    :cond_0
    new-instance v1, Lcom/hjq/permissions/permission/dangerous/StandardDangerousPermission;

    .line 11
    .line 12
    const-string v2, "phone_group"

    .line 13
    .line 14
    const/16 v3, 0x17

    .line 15
    .line 16
    invoke-direct {v1, v0, v2, v3}, Lcom/hjq/permissions/permission/dangerous/StandardDangerousPermission;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 17
    .line 18
    .line 19
    invoke-static {v1}, Lcom/hjq/permissions/permission/PermissionLists;->putCachePermission(Lcom/hjq/permissions/permission/base/IPermission;)Lcom/hjq/permissions/permission/base/IPermission;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    return-object v0
.end method

.method public static getAnswerPhoneCallsPermission()Lcom/hjq/permissions/permission/base/IPermission;
    .locals 4

    .line 1
    const-string v0, "android.permission.ANSWER_PHONE_CALLS"

    .line 2
    .line 3
    invoke-static {v0}, Lcom/hjq/permissions/permission/PermissionLists;->getCachePermission(Ljava/lang/String;)Lcom/hjq/permissions/permission/base/IPermission;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    return-object v1

    .line 10
    :cond_0
    new-instance v1, Lcom/hjq/permissions/permission/dangerous/StandardDangerousPermission;

    .line 11
    .line 12
    const-string v2, "phone_group"

    .line 13
    .line 14
    const/16 v3, 0x1a

    .line 15
    .line 16
    invoke-direct {v1, v0, v2, v3}, Lcom/hjq/permissions/permission/dangerous/StandardDangerousPermission;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 17
    .line 18
    .line 19
    invoke-static {v1}, Lcom/hjq/permissions/permission/PermissionLists;->putCachePermission(Lcom/hjq/permissions/permission/base/IPermission;)Lcom/hjq/permissions/permission/base/IPermission;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    return-object v0
.end method

.method public static getBindAccessibilityServicePermission(Ljava/lang/Class;)Lcom/hjq/permissions/permission/base/IPermission;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Landroid/accessibilityservice/AccessibilityService;",
            ">;)",
            "Lcom/hjq/permissions/permission/base/IPermission;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/hjq/permissions/permission/special/BindAccessibilityServicePermission;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/hjq/permissions/permission/special/BindAccessibilityServicePermission;-><init>(Ljava/lang/Class;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public static getBindDeviceAdminPermission(Ljava/lang/Class;)Lcom/hjq/permissions/permission/base/IPermission;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Landroid/app/admin/DeviceAdminReceiver;",
            ">;)",
            "Lcom/hjq/permissions/permission/base/IPermission;"
        }
    .end annotation

    .line 2
    new-instance v0, Lcom/hjq/permissions/permission/special/BindDeviceAdminPermission;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/hjq/permissions/permission/special/BindDeviceAdminPermission;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    return-object v0
.end method

.method public static getBindDeviceAdminPermission(Ljava/lang/Class;Ljava/lang/String;)Lcom/hjq/permissions/permission/base/IPermission;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Landroid/app/admin/DeviceAdminReceiver;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/hjq/permissions/permission/base/IPermission;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/hjq/permissions/permission/special/BindDeviceAdminPermission;

    invoke-direct {v0, p0, p1}, Lcom/hjq/permissions/permission/special/BindDeviceAdminPermission;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    return-object v0
.end method

.method public static getBindNotificationListenerServicePermission(Ljava/lang/Class;)Lcom/hjq/permissions/permission/base/IPermission;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Landroid/service/notification/NotificationListenerService;",
            ">;)",
            "Lcom/hjq/permissions/permission/base/IPermission;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/hjq/permissions/permission/special/BindNotificationListenerServicePermission;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/hjq/permissions/permission/special/BindNotificationListenerServicePermission;-><init>(Ljava/lang/Class;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public static getBindVpnServicePermission()Lcom/hjq/permissions/permission/base/IPermission;
    .locals 1

    .line 1
    const-string v0, "android.permission.BIND_VPN_SERVICE"

    .line 2
    .line 3
    invoke-static {v0}, Lcom/hjq/permissions/permission/PermissionLists;->getCachePermission(Ljava/lang/String;)Lcom/hjq/permissions/permission/base/IPermission;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    return-object v0

    .line 10
    :cond_0
    new-instance v0, Lcom/hjq/permissions/permission/special/BindVpnServicePermission;

    .line 11
    .line 12
    invoke-direct {v0}, Lcom/hjq/permissions/permission/special/BindVpnServicePermission;-><init>()V

    .line 13
    .line 14
    .line 15
    invoke-static {v0}, Lcom/hjq/permissions/permission/PermissionLists;->putCachePermission(Lcom/hjq/permissions/permission/base/IPermission;)Lcom/hjq/permissions/permission/base/IPermission;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    return-object v0
.end method

.method public static getBluetoothAdvertisePermission()Lcom/hjq/permissions/permission/base/IPermission;
    .locals 1

    .line 1
    const-string v0, "android.permission.BLUETOOTH_ADVERTISE"

    .line 2
    .line 3
    invoke-static {v0}, Lcom/hjq/permissions/permission/PermissionLists;->getCachePermission(Ljava/lang/String;)Lcom/hjq/permissions/permission/base/IPermission;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    return-object v0

    .line 10
    :cond_0
    new-instance v0, Lcom/hjq/permissions/permission/dangerous/BluetoothAdvertisePermission;

    .line 11
    .line 12
    invoke-direct {v0}, Lcom/hjq/permissions/permission/dangerous/BluetoothAdvertisePermission;-><init>()V

    .line 13
    .line 14
    .line 15
    invoke-static {v0}, Lcom/hjq/permissions/permission/PermissionLists;->putCachePermission(Lcom/hjq/permissions/permission/base/IPermission;)Lcom/hjq/permissions/permission/base/IPermission;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    return-object v0
.end method

.method public static getBluetoothConnectPermission()Lcom/hjq/permissions/permission/base/IPermission;
    .locals 1

    .line 1
    const-string v0, "android.permission.BLUETOOTH_CONNECT"

    .line 2
    .line 3
    invoke-static {v0}, Lcom/hjq/permissions/permission/PermissionLists;->getCachePermission(Ljava/lang/String;)Lcom/hjq/permissions/permission/base/IPermission;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    return-object v0

    .line 10
    :cond_0
    new-instance v0, Lcom/hjq/permissions/permission/dangerous/BluetoothConnectPermission;

    .line 11
    .line 12
    invoke-direct {v0}, Lcom/hjq/permissions/permission/dangerous/BluetoothConnectPermission;-><init>()V

    .line 13
    .line 14
    .line 15
    invoke-static {v0}, Lcom/hjq/permissions/permission/PermissionLists;->putCachePermission(Lcom/hjq/permissions/permission/base/IPermission;)Lcom/hjq/permissions/permission/base/IPermission;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    return-object v0
.end method

.method public static getBluetoothScanPermission()Lcom/hjq/permissions/permission/base/IPermission;
    .locals 1

    .line 1
    const-string v0, "android.permission.BLUETOOTH_SCAN"

    .line 2
    .line 3
    invoke-static {v0}, Lcom/hjq/permissions/permission/PermissionLists;->getCachePermission(Ljava/lang/String;)Lcom/hjq/permissions/permission/base/IPermission;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    return-object v0

    .line 10
    :cond_0
    new-instance v0, Lcom/hjq/permissions/permission/dangerous/BluetoothScanPermission;

    .line 11
    .line 12
    invoke-direct {v0}, Lcom/hjq/permissions/permission/dangerous/BluetoothScanPermission;-><init>()V

    .line 13
    .line 14
    .line 15
    invoke-static {v0}, Lcom/hjq/permissions/permission/PermissionLists;->putCachePermission(Lcom/hjq/permissions/permission/base/IPermission;)Lcom/hjq/permissions/permission/base/IPermission;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    return-object v0
.end method

.method public static getBodySensorsBackgroundPermission()Lcom/hjq/permissions/permission/base/IPermission;
    .locals 1

    .line 1
    const-string v0, "android.permission.BODY_SENSORS_BACKGROUND"

    .line 2
    .line 3
    invoke-static {v0}, Lcom/hjq/permissions/permission/PermissionLists;->getCachePermission(Ljava/lang/String;)Lcom/hjq/permissions/permission/base/IPermission;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    return-object v0

    .line 10
    :cond_0
    new-instance v0, Lcom/hjq/permissions/permission/dangerous/BodySensorsBackgroundPermission;

    .line 11
    .line 12
    invoke-direct {v0}, Lcom/hjq/permissions/permission/dangerous/BodySensorsBackgroundPermission;-><init>()V

    .line 13
    .line 14
    .line 15
    invoke-static {v0}, Lcom/hjq/permissions/permission/PermissionLists;->putCachePermission(Lcom/hjq/permissions/permission/base/IPermission;)Lcom/hjq/permissions/permission/base/IPermission;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    return-object v0
.end method

.method public static getBodySensorsPermission()Lcom/hjq/permissions/permission/base/IPermission;
    .locals 1

    .line 1
    const-string v0, "android.permission.BODY_SENSORS"

    .line 2
    .line 3
    invoke-static {v0}, Lcom/hjq/permissions/permission/PermissionLists;->getCachePermission(Ljava/lang/String;)Lcom/hjq/permissions/permission/base/IPermission;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    return-object v0

    .line 10
    :cond_0
    new-instance v0, Lcom/hjq/permissions/permission/dangerous/BodySensorsPermission;

    .line 11
    .line 12
    invoke-direct {v0}, Lcom/hjq/permissions/permission/dangerous/BodySensorsPermission;-><init>()V

    .line 13
    .line 14
    .line 15
    invoke-static {v0}, Lcom/hjq/permissions/permission/PermissionLists;->putCachePermission(Lcom/hjq/permissions/permission/base/IPermission;)Lcom/hjq/permissions/permission/base/IPermission;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    return-object v0
.end method

.method private static getCachePermission(Ljava/lang/String;)Lcom/hjq/permissions/permission/base/IPermission;
    .locals 1

    .line 1
    sget-object v0, Lcom/hjq/permissions/permission/PermissionLists;->PERMISSION_CACHE_MAP:La0/m;

    .line 2
    .line 3
    invoke-virtual {v0, p0}, La0/m;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/hjq/permissions/permission/base/IPermission;

    .line 8
    .line 9
    return-object p0
.end method

.method public static getCallPhonePermission()Lcom/hjq/permissions/permission/base/IPermission;
    .locals 4

    .line 1
    const-string v0, "android.permission.CALL_PHONE"

    .line 2
    .line 3
    invoke-static {v0}, Lcom/hjq/permissions/permission/PermissionLists;->getCachePermission(Ljava/lang/String;)Lcom/hjq/permissions/permission/base/IPermission;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    return-object v1

    .line 10
    :cond_0
    new-instance v1, Lcom/hjq/permissions/permission/dangerous/StandardDangerousPermission;

    .line 11
    .line 12
    const-string v2, "phone_group"

    .line 13
    .line 14
    const/16 v3, 0x17

    .line 15
    .line 16
    invoke-direct {v1, v0, v2, v3}, Lcom/hjq/permissions/permission/dangerous/StandardDangerousPermission;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 17
    .line 18
    .line 19
    invoke-static {v1}, Lcom/hjq/permissions/permission/PermissionLists;->putCachePermission(Lcom/hjq/permissions/permission/base/IPermission;)Lcom/hjq/permissions/permission/base/IPermission;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    return-object v0
.end method

.method public static getCameraPermission()Lcom/hjq/permissions/permission/base/IPermission;
    .locals 3

    .line 1
    const-string v0, "android.permission.CAMERA"

    .line 2
    .line 3
    invoke-static {v0}, Lcom/hjq/permissions/permission/PermissionLists;->getCachePermission(Ljava/lang/String;)Lcom/hjq/permissions/permission/base/IPermission;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    return-object v1

    .line 10
    :cond_0
    new-instance v1, Lcom/hjq/permissions/permission/dangerous/StandardDangerousPermission;

    .line 11
    .line 12
    const/16 v2, 0x17

    .line 13
    .line 14
    invoke-direct {v1, v0, v2}, Lcom/hjq/permissions/permission/dangerous/StandardDangerousPermission;-><init>(Ljava/lang/String;I)V

    .line 15
    .line 16
    .line 17
    invoke-static {v1}, Lcom/hjq/permissions/permission/PermissionLists;->putCachePermission(Lcom/hjq/permissions/permission/base/IPermission;)Lcom/hjq/permissions/permission/base/IPermission;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    return-object v0
.end method

.method public static getGetAccountsPermission()Lcom/hjq/permissions/permission/base/IPermission;
    .locals 4

    .line 1
    const-string v0, "android.permission.GET_ACCOUNTS"

    .line 2
    .line 3
    invoke-static {v0}, Lcom/hjq/permissions/permission/PermissionLists;->getCachePermission(Ljava/lang/String;)Lcom/hjq/permissions/permission/base/IPermission;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    return-object v1

    .line 10
    :cond_0
    new-instance v1, Lcom/hjq/permissions/permission/dangerous/StandardDangerousPermission;

    .line 11
    .line 12
    const-string v2, "contacts_group"

    .line 13
    .line 14
    const/16 v3, 0x17

    .line 15
    .line 16
    invoke-direct {v1, v0, v2, v3}, Lcom/hjq/permissions/permission/dangerous/StandardDangerousPermission;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 17
    .line 18
    .line 19
    invoke-static {v1}, Lcom/hjq/permissions/permission/PermissionLists;->putCachePermission(Lcom/hjq/permissions/permission/base/IPermission;)Lcom/hjq/permissions/permission/base/IPermission;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    return-object v0
.end method

.method public static getGetInstalledAppsPermission()Lcom/hjq/permissions/permission/base/IPermission;
    .locals 1

    .line 1
    const-string v0, "com.android.permission.GET_INSTALLED_APPS"

    .line 2
    .line 3
    invoke-static {v0}, Lcom/hjq/permissions/permission/PermissionLists;->getCachePermission(Ljava/lang/String;)Lcom/hjq/permissions/permission/base/IPermission;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    return-object v0

    .line 10
    :cond_0
    new-instance v0, Lcom/hjq/permissions/permission/dangerous/GetInstalledAppsPermission;

    .line 11
    .line 12
    invoke-direct {v0}, Lcom/hjq/permissions/permission/dangerous/GetInstalledAppsPermission;-><init>()V

    .line 13
    .line 14
    .line 15
    invoke-static {v0}, Lcom/hjq/permissions/permission/PermissionLists;->putCachePermission(Lcom/hjq/permissions/permission/base/IPermission;)Lcom/hjq/permissions/permission/base/IPermission;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    return-object v0
.end method

.method public static getManageExternalStoragePermission()Lcom/hjq/permissions/permission/base/IPermission;
    .locals 1

    .line 1
    const-string v0, "android.permission.MANAGE_EXTERNAL_STORAGE"

    .line 2
    .line 3
    invoke-static {v0}, Lcom/hjq/permissions/permission/PermissionLists;->getCachePermission(Ljava/lang/String;)Lcom/hjq/permissions/permission/base/IPermission;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    return-object v0

    .line 10
    :cond_0
    new-instance v0, Lcom/hjq/permissions/permission/special/ManageExternalStoragePermission;

    .line 11
    .line 12
    invoke-direct {v0}, Lcom/hjq/permissions/permission/special/ManageExternalStoragePermission;-><init>()V

    .line 13
    .line 14
    .line 15
    invoke-static {v0}, Lcom/hjq/permissions/permission/PermissionLists;->putCachePermission(Lcom/hjq/permissions/permission/base/IPermission;)Lcom/hjq/permissions/permission/base/IPermission;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    return-object v0
.end method

.method public static getManageMediaPermission()Lcom/hjq/permissions/permission/base/IPermission;
    .locals 1

    .line 1
    const-string v0, "android.permission.MANAGE_MEDIA"

    .line 2
    .line 3
    invoke-static {v0}, Lcom/hjq/permissions/permission/PermissionLists;->getCachePermission(Ljava/lang/String;)Lcom/hjq/permissions/permission/base/IPermission;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    return-object v0

    .line 10
    :cond_0
    new-instance v0, Lcom/hjq/permissions/permission/special/ManageMediaPermission;

    .line 11
    .line 12
    invoke-direct {v0}, Lcom/hjq/permissions/permission/special/ManageMediaPermission;-><init>()V

    .line 13
    .line 14
    .line 15
    invoke-static {v0}, Lcom/hjq/permissions/permission/PermissionLists;->putCachePermission(Lcom/hjq/permissions/permission/base/IPermission;)Lcom/hjq/permissions/permission/base/IPermission;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    return-object v0
.end method

.method public static getNearbyWifiDevicesPermission()Lcom/hjq/permissions/permission/base/IPermission;
    .locals 1

    .line 1
    const-string v0, "android.permission.NEARBY_WIFI_DEVICES"

    .line 2
    .line 3
    invoke-static {v0}, Lcom/hjq/permissions/permission/PermissionLists;->getCachePermission(Ljava/lang/String;)Lcom/hjq/permissions/permission/base/IPermission;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    return-object v0

    .line 10
    :cond_0
    new-instance v0, Lcom/hjq/permissions/permission/dangerous/NearbyWifiDevicesPermission;

    .line 11
    .line 12
    invoke-direct {v0}, Lcom/hjq/permissions/permission/dangerous/NearbyWifiDevicesPermission;-><init>()V

    .line 13
    .line 14
    .line 15
    invoke-static {v0}, Lcom/hjq/permissions/permission/PermissionLists;->putCachePermission(Lcom/hjq/permissions/permission/base/IPermission;)Lcom/hjq/permissions/permission/base/IPermission;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    return-object v0
.end method

.method public static getNotificationServicePermission()Lcom/hjq/permissions/permission/base/IPermission;
    .locals 1

    .line 2
    const-string v0, "android.permission.NOTIFICATION_SERVICE"

    invoke-static {v0}, Lcom/hjq/permissions/permission/PermissionLists;->getCachePermission(Ljava/lang/String;)Lcom/hjq/permissions/permission/base/IPermission;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 3
    :cond_0
    new-instance v0, Lcom/hjq/permissions/permission/special/NotificationServicePermission;

    invoke-direct {v0}, Lcom/hjq/permissions/permission/special/NotificationServicePermission;-><init>()V

    invoke-static {v0}, Lcom/hjq/permissions/permission/PermissionLists;->putCachePermission(Lcom/hjq/permissions/permission/base/IPermission;)Lcom/hjq/permissions/permission/base/IPermission;

    move-result-object v0

    return-object v0
.end method

.method public static getNotificationServicePermission(Ljava/lang/String;)Lcom/hjq/permissions/permission/base/IPermission;
    .locals 1

    .line 1
    new-instance v0, Lcom/hjq/permissions/permission/special/NotificationServicePermission;

    invoke-direct {v0, p0}, Lcom/hjq/permissions/permission/special/NotificationServicePermission;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static getPackageUsageStatsPermission()Lcom/hjq/permissions/permission/base/IPermission;
    .locals 1

    .line 1
    const-string v0, "android.permission.PACKAGE_USAGE_STATS"

    .line 2
    .line 3
    invoke-static {v0}, Lcom/hjq/permissions/permission/PermissionLists;->getCachePermission(Ljava/lang/String;)Lcom/hjq/permissions/permission/base/IPermission;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    return-object v0

    .line 10
    :cond_0
    new-instance v0, Lcom/hjq/permissions/permission/special/PackageUsageStatsPermission;

    .line 11
    .line 12
    invoke-direct {v0}, Lcom/hjq/permissions/permission/special/PackageUsageStatsPermission;-><init>()V

    .line 13
    .line 14
    .line 15
    invoke-static {v0}, Lcom/hjq/permissions/permission/PermissionLists;->putCachePermission(Lcom/hjq/permissions/permission/base/IPermission;)Lcom/hjq/permissions/permission/base/IPermission;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    return-object v0
.end method

.method public static getPictureInPicturePermission()Lcom/hjq/permissions/permission/base/IPermission;
    .locals 1

    .line 1
    const-string v0, "android.permission.PICTURE_IN_PICTURE"

    .line 2
    .line 3
    invoke-static {v0}, Lcom/hjq/permissions/permission/PermissionLists;->getCachePermission(Ljava/lang/String;)Lcom/hjq/permissions/permission/base/IPermission;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    return-object v0

    .line 10
    :cond_0
    new-instance v0, Lcom/hjq/permissions/permission/special/PictureInPicturePermission;

    .line 11
    .line 12
    invoke-direct {v0}, Lcom/hjq/permissions/permission/special/PictureInPicturePermission;-><init>()V

    .line 13
    .line 14
    .line 15
    invoke-static {v0}, Lcom/hjq/permissions/permission/PermissionLists;->putCachePermission(Lcom/hjq/permissions/permission/base/IPermission;)Lcom/hjq/permissions/permission/base/IPermission;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    return-object v0
.end method

.method public static getPostNotificationsPermission()Lcom/hjq/permissions/permission/base/IPermission;
    .locals 1

    .line 1
    const-string v0, "android.permission.POST_NOTIFICATIONS"

    .line 2
    .line 3
    invoke-static {v0}, Lcom/hjq/permissions/permission/PermissionLists;->getCachePermission(Ljava/lang/String;)Lcom/hjq/permissions/permission/base/IPermission;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    return-object v0

    .line 10
    :cond_0
    new-instance v0, Lcom/hjq/permissions/permission/dangerous/PostNotificationsPermission;

    .line 11
    .line 12
    invoke-direct {v0}, Lcom/hjq/permissions/permission/dangerous/PostNotificationsPermission;-><init>()V

    .line 13
    .line 14
    .line 15
    invoke-static {v0}, Lcom/hjq/permissions/permission/PermissionLists;->putCachePermission(Lcom/hjq/permissions/permission/base/IPermission;)Lcom/hjq/permissions/permission/base/IPermission;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    return-object v0
.end method

.method public static getProcessOutgoingCallsPermission()Lcom/hjq/permissions/permission/base/IPermission;
    .locals 4

    .line 1
    const-string v0, "android.permission.PROCESS_OUTGOING_CALLS"

    .line 2
    .line 3
    invoke-static {v0}, Lcom/hjq/permissions/permission/PermissionLists;->getCachePermission(Ljava/lang/String;)Lcom/hjq/permissions/permission/base/IPermission;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    return-object v1

    .line 10
    :cond_0
    invoke-static {}, Lcom/hjq/permissions/tools/PermissionVersion;->isAndroid9()Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-eqz v1, :cond_1

    .line 15
    .line 16
    const-string v1, "call_log_group"

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_1
    const-string v1, "phone_group"

    .line 20
    .line 21
    :goto_0
    new-instance v2, Lcom/hjq/permissions/permission/dangerous/StandardDangerousPermission;

    .line 22
    .line 23
    const/16 v3, 0x17

    .line 24
    .line 25
    invoke-direct {v2, v0, v1, v3}, Lcom/hjq/permissions/permission/dangerous/StandardDangerousPermission;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 26
    .line 27
    .line 28
    invoke-static {v2}, Lcom/hjq/permissions/permission/PermissionLists;->putCachePermission(Lcom/hjq/permissions/permission/base/IPermission;)Lcom/hjq/permissions/permission/base/IPermission;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    return-object v0
.end method

.method public static getReadActiveCaloriesBurnedPermission()Lcom/hjq/permissions/permission/base/IPermission;
    .locals 3

    .line 1
    const-string v0, "android.permission.health.READ_ACTIVE_CALORIES_BURNED"

    .line 2
    .line 3
    invoke-static {v0}, Lcom/hjq/permissions/permission/PermissionLists;->getCachePermission(Ljava/lang/String;)Lcom/hjq/permissions/permission/base/IPermission;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    return-object v1

    .line 10
    :cond_0
    new-instance v1, Lcom/hjq/permissions/permission/dangerous/StandardFitnessAndWellnessDataPermission;

    .line 11
    .line 12
    const/16 v2, 0x22

    .line 13
    .line 14
    invoke-direct {v1, v0, v2}, Lcom/hjq/permissions/permission/dangerous/StandardFitnessAndWellnessDataPermission;-><init>(Ljava/lang/String;I)V

    .line 15
    .line 16
    .line 17
    invoke-static {v1}, Lcom/hjq/permissions/permission/PermissionLists;->putCachePermission(Lcom/hjq/permissions/permission/base/IPermission;)Lcom/hjq/permissions/permission/base/IPermission;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    return-object v0
.end method

.method public static getReadActivityIntensityPermission()Lcom/hjq/permissions/permission/base/IPermission;
    .locals 3

    .line 1
    const-string v0, "android.permission.health.READ_ACTIVITY_INTENSITY"

    .line 2
    .line 3
    invoke-static {v0}, Lcom/hjq/permissions/permission/PermissionLists;->getCachePermission(Ljava/lang/String;)Lcom/hjq/permissions/permission/base/IPermission;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    return-object v1

    .line 10
    :cond_0
    new-instance v1, Lcom/hjq/permissions/permission/dangerous/StandardFitnessAndWellnessDataPermission;

    .line 11
    .line 12
    const/16 v2, 0x24

    .line 13
    .line 14
    invoke-direct {v1, v0, v2}, Lcom/hjq/permissions/permission/dangerous/StandardFitnessAndWellnessDataPermission;-><init>(Ljava/lang/String;I)V

    .line 15
    .line 16
    .line 17
    invoke-static {v1}, Lcom/hjq/permissions/permission/PermissionLists;->putCachePermission(Lcom/hjq/permissions/permission/base/IPermission;)Lcom/hjq/permissions/permission/base/IPermission;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    return-object v0
.end method

.method public static getReadBasalBodyTemperaturePermission()Lcom/hjq/permissions/permission/base/IPermission;
    .locals 3

    .line 1
    const-string v0, "android.permission.health.READ_BASAL_BODY_TEMPERATURE"

    .line 2
    .line 3
    invoke-static {v0}, Lcom/hjq/permissions/permission/PermissionLists;->getCachePermission(Ljava/lang/String;)Lcom/hjq/permissions/permission/base/IPermission;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    return-object v1

    .line 10
    :cond_0
    new-instance v1, Lcom/hjq/permissions/permission/dangerous/StandardFitnessAndWellnessDataPermission;

    .line 11
    .line 12
    const/16 v2, 0x22

    .line 13
    .line 14
    invoke-direct {v1, v0, v2}, Lcom/hjq/permissions/permission/dangerous/StandardFitnessAndWellnessDataPermission;-><init>(Ljava/lang/String;I)V

    .line 15
    .line 16
    .line 17
    invoke-static {v1}, Lcom/hjq/permissions/permission/PermissionLists;->putCachePermission(Lcom/hjq/permissions/permission/base/IPermission;)Lcom/hjq/permissions/permission/base/IPermission;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    return-object v0
.end method

.method public static getReadBasalMetabolicRatePermission()Lcom/hjq/permissions/permission/base/IPermission;
    .locals 3

    .line 1
    const-string v0, "android.permission.health.READ_BASAL_METABOLIC_RATE"

    .line 2
    .line 3
    invoke-static {v0}, Lcom/hjq/permissions/permission/PermissionLists;->getCachePermission(Ljava/lang/String;)Lcom/hjq/permissions/permission/base/IPermission;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    return-object v1

    .line 10
    :cond_0
    new-instance v1, Lcom/hjq/permissions/permission/dangerous/StandardFitnessAndWellnessDataPermission;

    .line 11
    .line 12
    const/16 v2, 0x22

    .line 13
    .line 14
    invoke-direct {v1, v0, v2}, Lcom/hjq/permissions/permission/dangerous/StandardFitnessAndWellnessDataPermission;-><init>(Ljava/lang/String;I)V

    .line 15
    .line 16
    .line 17
    invoke-static {v1}, Lcom/hjq/permissions/permission/PermissionLists;->putCachePermission(Lcom/hjq/permissions/permission/base/IPermission;)Lcom/hjq/permissions/permission/base/IPermission;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    return-object v0
.end method

.method public static getReadBloodGlucosePermission()Lcom/hjq/permissions/permission/base/IPermission;
    .locals 3

    .line 1
    const-string v0, "android.permission.health.READ_BLOOD_GLUCOSE"

    .line 2
    .line 3
    invoke-static {v0}, Lcom/hjq/permissions/permission/PermissionLists;->getCachePermission(Ljava/lang/String;)Lcom/hjq/permissions/permission/base/IPermission;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    return-object v1

    .line 10
    :cond_0
    new-instance v1, Lcom/hjq/permissions/permission/dangerous/StandardFitnessAndWellnessDataPermission;

    .line 11
    .line 12
    const/16 v2, 0x22

    .line 13
    .line 14
    invoke-direct {v1, v0, v2}, Lcom/hjq/permissions/permission/dangerous/StandardFitnessAndWellnessDataPermission;-><init>(Ljava/lang/String;I)V

    .line 15
    .line 16
    .line 17
    invoke-static {v1}, Lcom/hjq/permissions/permission/PermissionLists;->putCachePermission(Lcom/hjq/permissions/permission/base/IPermission;)Lcom/hjq/permissions/permission/base/IPermission;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    return-object v0
.end method

.method public static getReadBloodPressurePermission()Lcom/hjq/permissions/permission/base/IPermission;
    .locals 3

    .line 1
    const-string v0, "android.permission.health.READ_BLOOD_PRESSURE"

    .line 2
    .line 3
    invoke-static {v0}, Lcom/hjq/permissions/permission/PermissionLists;->getCachePermission(Ljava/lang/String;)Lcom/hjq/permissions/permission/base/IPermission;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    return-object v1

    .line 10
    :cond_0
    new-instance v1, Lcom/hjq/permissions/permission/dangerous/StandardFitnessAndWellnessDataPermission;

    .line 11
    .line 12
    const/16 v2, 0x22

    .line 13
    .line 14
    invoke-direct {v1, v0, v2}, Lcom/hjq/permissions/permission/dangerous/StandardFitnessAndWellnessDataPermission;-><init>(Ljava/lang/String;I)V

    .line 15
    .line 16
    .line 17
    invoke-static {v1}, Lcom/hjq/permissions/permission/PermissionLists;->putCachePermission(Lcom/hjq/permissions/permission/base/IPermission;)Lcom/hjq/permissions/permission/base/IPermission;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    return-object v0
.end method

.method public static getReadBodyFatPermission()Lcom/hjq/permissions/permission/base/IPermission;
    .locals 3

    .line 1
    const-string v0, "android.permission.health.READ_BODY_FAT"

    .line 2
    .line 3
    invoke-static {v0}, Lcom/hjq/permissions/permission/PermissionLists;->getCachePermission(Ljava/lang/String;)Lcom/hjq/permissions/permission/base/IPermission;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    return-object v1

    .line 10
    :cond_0
    new-instance v1, Lcom/hjq/permissions/permission/dangerous/StandardFitnessAndWellnessDataPermission;

    .line 11
    .line 12
    const/16 v2, 0x22

    .line 13
    .line 14
    invoke-direct {v1, v0, v2}, Lcom/hjq/permissions/permission/dangerous/StandardFitnessAndWellnessDataPermission;-><init>(Ljava/lang/String;I)V

    .line 15
    .line 16
    .line 17
    invoke-static {v1}, Lcom/hjq/permissions/permission/PermissionLists;->putCachePermission(Lcom/hjq/permissions/permission/base/IPermission;)Lcom/hjq/permissions/permission/base/IPermission;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    return-object v0
.end method

.method public static getReadBodyTemperaturePermission()Lcom/hjq/permissions/permission/base/IPermission;
    .locals 3

    .line 1
    const-string v0, "android.permission.health.READ_BODY_TEMPERATURE"

    .line 2
    .line 3
    invoke-static {v0}, Lcom/hjq/permissions/permission/PermissionLists;->getCachePermission(Ljava/lang/String;)Lcom/hjq/permissions/permission/base/IPermission;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    return-object v1

    .line 10
    :cond_0
    new-instance v1, Lcom/hjq/permissions/permission/dangerous/StandardFitnessAndWellnessDataPermission;

    .line 11
    .line 12
    const/16 v2, 0x22

    .line 13
    .line 14
    invoke-direct {v1, v0, v2}, Lcom/hjq/permissions/permission/dangerous/StandardFitnessAndWellnessDataPermission;-><init>(Ljava/lang/String;I)V

    .line 15
    .line 16
    .line 17
    invoke-static {v1}, Lcom/hjq/permissions/permission/PermissionLists;->putCachePermission(Lcom/hjq/permissions/permission/base/IPermission;)Lcom/hjq/permissions/permission/base/IPermission;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    return-object v0
.end method

.method public static getReadBodyWaterMassPermission()Lcom/hjq/permissions/permission/base/IPermission;
    .locals 3

    .line 1
    const-string v0, "android.permission.health.READ_BODY_WATER_MASS"

    .line 2
    .line 3
    invoke-static {v0}, Lcom/hjq/permissions/permission/PermissionLists;->getCachePermission(Ljava/lang/String;)Lcom/hjq/permissions/permission/base/IPermission;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    return-object v1

    .line 10
    :cond_0
    new-instance v1, Lcom/hjq/permissions/permission/dangerous/StandardFitnessAndWellnessDataPermission;

    .line 11
    .line 12
    const/16 v2, 0x22

    .line 13
    .line 14
    invoke-direct {v1, v0, v2}, Lcom/hjq/permissions/permission/dangerous/StandardFitnessAndWellnessDataPermission;-><init>(Ljava/lang/String;I)V

    .line 15
    .line 16
    .line 17
    invoke-static {v1}, Lcom/hjq/permissions/permission/PermissionLists;->putCachePermission(Lcom/hjq/permissions/permission/base/IPermission;)Lcom/hjq/permissions/permission/base/IPermission;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    return-object v0
.end method

.method public static getReadBoneMassPermission()Lcom/hjq/permissions/permission/base/IPermission;
    .locals 3

    .line 1
    const-string v0, "android.permission.health.READ_BONE_MASS"

    .line 2
    .line 3
    invoke-static {v0}, Lcom/hjq/permissions/permission/PermissionLists;->getCachePermission(Ljava/lang/String;)Lcom/hjq/permissions/permission/base/IPermission;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    return-object v1

    .line 10
    :cond_0
    new-instance v1, Lcom/hjq/permissions/permission/dangerous/StandardFitnessAndWellnessDataPermission;

    .line 11
    .line 12
    const/16 v2, 0x22

    .line 13
    .line 14
    invoke-direct {v1, v0, v2}, Lcom/hjq/permissions/permission/dangerous/StandardFitnessAndWellnessDataPermission;-><init>(Ljava/lang/String;I)V

    .line 15
    .line 16
    .line 17
    invoke-static {v1}, Lcom/hjq/permissions/permission/PermissionLists;->putCachePermission(Lcom/hjq/permissions/permission/base/IPermission;)Lcom/hjq/permissions/permission/base/IPermission;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    return-object v0
.end method

.method public static getReadCalendarPermission()Lcom/hjq/permissions/permission/base/IPermission;
    .locals 4

    .line 1
    const-string v0, "android.permission.READ_CALENDAR"

    .line 2
    .line 3
    invoke-static {v0}, Lcom/hjq/permissions/permission/PermissionLists;->getCachePermission(Ljava/lang/String;)Lcom/hjq/permissions/permission/base/IPermission;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    return-object v1

    .line 10
    :cond_0
    new-instance v1, Lcom/hjq/permissions/permission/dangerous/StandardDangerousPermission;

    .line 11
    .line 12
    const-string v2, "calendar_group"

    .line 13
    .line 14
    const/16 v3, 0x17

    .line 15
    .line 16
    invoke-direct {v1, v0, v2, v3}, Lcom/hjq/permissions/permission/dangerous/StandardDangerousPermission;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 17
    .line 18
    .line 19
    invoke-static {v1}, Lcom/hjq/permissions/permission/PermissionLists;->putCachePermission(Lcom/hjq/permissions/permission/base/IPermission;)Lcom/hjq/permissions/permission/base/IPermission;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    return-object v0
.end method

.method public static getReadCallLogPermission()Lcom/hjq/permissions/permission/base/IPermission;
    .locals 4

    .line 1
    const-string v0, "android.permission.READ_CALL_LOG"

    .line 2
    .line 3
    invoke-static {v0}, Lcom/hjq/permissions/permission/PermissionLists;->getCachePermission(Ljava/lang/String;)Lcom/hjq/permissions/permission/base/IPermission;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    return-object v1

    .line 10
    :cond_0
    invoke-static {}, Lcom/hjq/permissions/tools/PermissionVersion;->isAndroid9()Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-eqz v1, :cond_1

    .line 15
    .line 16
    const-string v1, "call_log_group"

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_1
    const-string v1, "phone_group"

    .line 20
    .line 21
    :goto_0
    new-instance v2, Lcom/hjq/permissions/permission/dangerous/StandardDangerousPermission;

    .line 22
    .line 23
    const/16 v3, 0x17

    .line 24
    .line 25
    invoke-direct {v2, v0, v1, v3}, Lcom/hjq/permissions/permission/dangerous/StandardDangerousPermission;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 26
    .line 27
    .line 28
    invoke-static {v2}, Lcom/hjq/permissions/permission/PermissionLists;->putCachePermission(Lcom/hjq/permissions/permission/base/IPermission;)Lcom/hjq/permissions/permission/base/IPermission;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    return-object v0
.end method

.method public static getReadCervicalMucusPermission()Lcom/hjq/permissions/permission/base/IPermission;
    .locals 3

    .line 1
    const-string v0, "android.permission.health.READ_CERVICAL_MUCUS"

    .line 2
    .line 3
    invoke-static {v0}, Lcom/hjq/permissions/permission/PermissionLists;->getCachePermission(Ljava/lang/String;)Lcom/hjq/permissions/permission/base/IPermission;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    return-object v1

    .line 10
    :cond_0
    new-instance v1, Lcom/hjq/permissions/permission/dangerous/StandardFitnessAndWellnessDataPermission;

    .line 11
    .line 12
    const/16 v2, 0x22

    .line 13
    .line 14
    invoke-direct {v1, v0, v2}, Lcom/hjq/permissions/permission/dangerous/StandardFitnessAndWellnessDataPermission;-><init>(Ljava/lang/String;I)V

    .line 15
    .line 16
    .line 17
    invoke-static {v1}, Lcom/hjq/permissions/permission/PermissionLists;->putCachePermission(Lcom/hjq/permissions/permission/base/IPermission;)Lcom/hjq/permissions/permission/base/IPermission;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    return-object v0
.end method

.method public static getReadContactsPermission()Lcom/hjq/permissions/permission/base/IPermission;
    .locals 4

    .line 1
    const-string v0, "android.permission.READ_CONTACTS"

    .line 2
    .line 3
    invoke-static {v0}, Lcom/hjq/permissions/permission/PermissionLists;->getCachePermission(Ljava/lang/String;)Lcom/hjq/permissions/permission/base/IPermission;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    return-object v1

    .line 10
    :cond_0
    new-instance v1, Lcom/hjq/permissions/permission/dangerous/StandardDangerousPermission;

    .line 11
    .line 12
    const-string v2, "contacts_group"

    .line 13
    .line 14
    const/16 v3, 0x17

    .line 15
    .line 16
    invoke-direct {v1, v0, v2, v3}, Lcom/hjq/permissions/permission/dangerous/StandardDangerousPermission;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 17
    .line 18
    .line 19
    invoke-static {v1}, Lcom/hjq/permissions/permission/PermissionLists;->putCachePermission(Lcom/hjq/permissions/permission/base/IPermission;)Lcom/hjq/permissions/permission/base/IPermission;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    return-object v0
.end method

.method public static getReadDistancePermission()Lcom/hjq/permissions/permission/base/IPermission;
    .locals 3

    .line 1
    const-string v0, "android.permission.health.READ_DISTANCE"

    .line 2
    .line 3
    invoke-static {v0}, Lcom/hjq/permissions/permission/PermissionLists;->getCachePermission(Ljava/lang/String;)Lcom/hjq/permissions/permission/base/IPermission;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    return-object v1

    .line 10
    :cond_0
    new-instance v1, Lcom/hjq/permissions/permission/dangerous/StandardFitnessAndWellnessDataPermission;

    .line 11
    .line 12
    const/16 v2, 0x22

    .line 13
    .line 14
    invoke-direct {v1, v0, v2}, Lcom/hjq/permissions/permission/dangerous/StandardFitnessAndWellnessDataPermission;-><init>(Ljava/lang/String;I)V

    .line 15
    .line 16
    .line 17
    invoke-static {v1}, Lcom/hjq/permissions/permission/PermissionLists;->putCachePermission(Lcom/hjq/permissions/permission/base/IPermission;)Lcom/hjq/permissions/permission/base/IPermission;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    return-object v0
.end method

.method public static getReadElevationGainedPermission()Lcom/hjq/permissions/permission/base/IPermission;
    .locals 3

    .line 1
    const-string v0, "android.permission.health.READ_ELEVATION_GAINED"

    .line 2
    .line 3
    invoke-static {v0}, Lcom/hjq/permissions/permission/PermissionLists;->getCachePermission(Ljava/lang/String;)Lcom/hjq/permissions/permission/base/IPermission;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    return-object v1

    .line 10
    :cond_0
    new-instance v1, Lcom/hjq/permissions/permission/dangerous/StandardFitnessAndWellnessDataPermission;

    .line 11
    .line 12
    const/16 v2, 0x22

    .line 13
    .line 14
    invoke-direct {v1, v0, v2}, Lcom/hjq/permissions/permission/dangerous/StandardFitnessAndWellnessDataPermission;-><init>(Ljava/lang/String;I)V

    .line 15
    .line 16
    .line 17
    invoke-static {v1}, Lcom/hjq/permissions/permission/PermissionLists;->putCachePermission(Lcom/hjq/permissions/permission/base/IPermission;)Lcom/hjq/permissions/permission/base/IPermission;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    return-object v0
.end method

.method public static getReadExercisePermission()Lcom/hjq/permissions/permission/base/IPermission;
    .locals 3

    .line 1
    const-string v0, "android.permission.health.READ_EXERCISE"

    .line 2
    .line 3
    invoke-static {v0}, Lcom/hjq/permissions/permission/PermissionLists;->getCachePermission(Ljava/lang/String;)Lcom/hjq/permissions/permission/base/IPermission;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    return-object v1

    .line 10
    :cond_0
    new-instance v1, Lcom/hjq/permissions/permission/dangerous/StandardFitnessAndWellnessDataPermission;

    .line 11
    .line 12
    const/16 v2, 0x22

    .line 13
    .line 14
    invoke-direct {v1, v0, v2}, Lcom/hjq/permissions/permission/dangerous/StandardFitnessAndWellnessDataPermission;-><init>(Ljava/lang/String;I)V

    .line 15
    .line 16
    .line 17
    invoke-static {v1}, Lcom/hjq/permissions/permission/PermissionLists;->putCachePermission(Lcom/hjq/permissions/permission/base/IPermission;)Lcom/hjq/permissions/permission/base/IPermission;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    return-object v0
.end method

.method public static getReadExerciseRoutesPermission()Lcom/hjq/permissions/permission/base/IPermission;
    .locals 3

    .line 1
    const-string v0, "android.permission.health.READ_EXERCISE_ROUTES"

    .line 2
    .line 3
    invoke-static {v0}, Lcom/hjq/permissions/permission/PermissionLists;->getCachePermission(Ljava/lang/String;)Lcom/hjq/permissions/permission/base/IPermission;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    return-object v1

    .line 10
    :cond_0
    new-instance v1, Lcom/hjq/permissions/permission/dangerous/StandardFitnessAndWellnessDataPermission;

    .line 11
    .line 12
    const/16 v2, 0x23

    .line 13
    .line 14
    invoke-direct {v1, v0, v2}, Lcom/hjq/permissions/permission/dangerous/StandardFitnessAndWellnessDataPermission;-><init>(Ljava/lang/String;I)V

    .line 15
    .line 16
    .line 17
    invoke-static {v1}, Lcom/hjq/permissions/permission/PermissionLists;->putCachePermission(Lcom/hjq/permissions/permission/base/IPermission;)Lcom/hjq/permissions/permission/base/IPermission;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    return-object v0
.end method

.method public static getReadExternalStoragePermission()Lcom/hjq/permissions/permission/base/IPermission;
    .locals 1

    .line 1
    const-string v0, "android.permission.READ_EXTERNAL_STORAGE"

    .line 2
    .line 3
    invoke-static {v0}, Lcom/hjq/permissions/permission/PermissionLists;->getCachePermission(Ljava/lang/String;)Lcom/hjq/permissions/permission/base/IPermission;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    return-object v0

    .line 10
    :cond_0
    new-instance v0, Lcom/hjq/permissions/permission/dangerous/ReadExternalStoragePermission;

    .line 11
    .line 12
    invoke-direct {v0}, Lcom/hjq/permissions/permission/dangerous/ReadExternalStoragePermission;-><init>()V

    .line 13
    .line 14
    .line 15
    invoke-static {v0}, Lcom/hjq/permissions/permission/PermissionLists;->putCachePermission(Lcom/hjq/permissions/permission/base/IPermission;)Lcom/hjq/permissions/permission/base/IPermission;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    return-object v0
.end method

.method public static getReadFloorsClimbedPermission()Lcom/hjq/permissions/permission/base/IPermission;
    .locals 3

    .line 1
    const-string v0, "android.permission.health.READ_FLOORS_CLIMBED"

    .line 2
    .line 3
    invoke-static {v0}, Lcom/hjq/permissions/permission/PermissionLists;->getCachePermission(Ljava/lang/String;)Lcom/hjq/permissions/permission/base/IPermission;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    return-object v1

    .line 10
    :cond_0
    new-instance v1, Lcom/hjq/permissions/permission/dangerous/StandardFitnessAndWellnessDataPermission;

    .line 11
    .line 12
    const/16 v2, 0x22

    .line 13
    .line 14
    invoke-direct {v1, v0, v2}, Lcom/hjq/permissions/permission/dangerous/StandardFitnessAndWellnessDataPermission;-><init>(Ljava/lang/String;I)V

    .line 15
    .line 16
    .line 17
    invoke-static {v1}, Lcom/hjq/permissions/permission/PermissionLists;->putCachePermission(Lcom/hjq/permissions/permission/base/IPermission;)Lcom/hjq/permissions/permission/base/IPermission;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    return-object v0
.end method

.method public static getReadHealthDataHistoryPermission()Lcom/hjq/permissions/permission/base/IPermission;
    .locals 1

    .line 1
    const-string v0, "android.permission.health.READ_HEALTH_DATA_HISTORY"

    .line 2
    .line 3
    invoke-static {v0}, Lcom/hjq/permissions/permission/PermissionLists;->getCachePermission(Ljava/lang/String;)Lcom/hjq/permissions/permission/base/IPermission;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    return-object v0

    .line 10
    :cond_0
    new-instance v0, Lcom/hjq/permissions/permission/dangerous/ReadHealthDataHistoryPermission;

    .line 11
    .line 12
    invoke-direct {v0}, Lcom/hjq/permissions/permission/dangerous/ReadHealthDataHistoryPermission;-><init>()V

    .line 13
    .line 14
    .line 15
    invoke-static {v0}, Lcom/hjq/permissions/permission/PermissionLists;->putCachePermission(Lcom/hjq/permissions/permission/base/IPermission;)Lcom/hjq/permissions/permission/base/IPermission;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    return-object v0
.end method

.method public static getReadHealthDataInBackgroundPermission()Lcom/hjq/permissions/permission/base/IPermission;
    .locals 1

    .line 1
    const-string v0, "android.permission.health.READ_HEALTH_DATA_IN_BACKGROUND"

    .line 2
    .line 3
    invoke-static {v0}, Lcom/hjq/permissions/permission/PermissionLists;->getCachePermission(Ljava/lang/String;)Lcom/hjq/permissions/permission/base/IPermission;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    return-object v0

    .line 10
    :cond_0
    new-instance v0, Lcom/hjq/permissions/permission/dangerous/ReadHealthDataInBackgroundPermission;

    .line 11
    .line 12
    invoke-direct {v0}, Lcom/hjq/permissions/permission/dangerous/ReadHealthDataInBackgroundPermission;-><init>()V

    .line 13
    .line 14
    .line 15
    invoke-static {v0}, Lcom/hjq/permissions/permission/PermissionLists;->putCachePermission(Lcom/hjq/permissions/permission/base/IPermission;)Lcom/hjq/permissions/permission/base/IPermission;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    return-object v0
.end method

.method public static getReadHeartRatePermission()Lcom/hjq/permissions/permission/base/IPermission;
    .locals 1

    .line 1
    const-string v0, "android.permission.health.READ_HEART_RATE"

    .line 2
    .line 3
    invoke-static {v0}, Lcom/hjq/permissions/permission/PermissionLists;->getCachePermission(Ljava/lang/String;)Lcom/hjq/permissions/permission/base/IPermission;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    return-object v0

    .line 10
    :cond_0
    new-instance v0, Lcom/hjq/permissions/permission/dangerous/ReadHealthRatePermission;

    .line 11
    .line 12
    invoke-direct {v0}, Lcom/hjq/permissions/permission/dangerous/ReadHealthRatePermission;-><init>()V

    .line 13
    .line 14
    .line 15
    invoke-static {v0}, Lcom/hjq/permissions/permission/PermissionLists;->putCachePermission(Lcom/hjq/permissions/permission/base/IPermission;)Lcom/hjq/permissions/permission/base/IPermission;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    return-object v0
.end method

.method public static getReadHeartRateVariabilityPermission()Lcom/hjq/permissions/permission/base/IPermission;
    .locals 3

    .line 1
    const-string v0, "android.permission.health.READ_HEART_RATE_VARIABILITY"

    .line 2
    .line 3
    invoke-static {v0}, Lcom/hjq/permissions/permission/PermissionLists;->getCachePermission(Ljava/lang/String;)Lcom/hjq/permissions/permission/base/IPermission;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    return-object v1

    .line 10
    :cond_0
    new-instance v1, Lcom/hjq/permissions/permission/dangerous/StandardFitnessAndWellnessDataPermission;

    .line 11
    .line 12
    const/16 v2, 0x22

    .line 13
    .line 14
    invoke-direct {v1, v0, v2}, Lcom/hjq/permissions/permission/dangerous/StandardFitnessAndWellnessDataPermission;-><init>(Ljava/lang/String;I)V

    .line 15
    .line 16
    .line 17
    invoke-static {v1}, Lcom/hjq/permissions/permission/PermissionLists;->putCachePermission(Lcom/hjq/permissions/permission/base/IPermission;)Lcom/hjq/permissions/permission/base/IPermission;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    return-object v0
.end method

.method public static getReadHeightPermission()Lcom/hjq/permissions/permission/base/IPermission;
    .locals 3

    .line 1
    const-string v0, "android.permission.health.READ_HEIGHT"

    .line 2
    .line 3
    invoke-static {v0}, Lcom/hjq/permissions/permission/PermissionLists;->getCachePermission(Ljava/lang/String;)Lcom/hjq/permissions/permission/base/IPermission;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    return-object v1

    .line 10
    :cond_0
    new-instance v1, Lcom/hjq/permissions/permission/dangerous/StandardFitnessAndWellnessDataPermission;

    .line 11
    .line 12
    const/16 v2, 0x22

    .line 13
    .line 14
    invoke-direct {v1, v0, v2}, Lcom/hjq/permissions/permission/dangerous/StandardFitnessAndWellnessDataPermission;-><init>(Ljava/lang/String;I)V

    .line 15
    .line 16
    .line 17
    invoke-static {v1}, Lcom/hjq/permissions/permission/PermissionLists;->putCachePermission(Lcom/hjq/permissions/permission/base/IPermission;)Lcom/hjq/permissions/permission/base/IPermission;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    return-object v0
.end method

.method public static getReadHydrationPermission()Lcom/hjq/permissions/permission/base/IPermission;
    .locals 3

    .line 1
    const-string v0, "android.permission.health.READ_HYDRATION"

    .line 2
    .line 3
    invoke-static {v0}, Lcom/hjq/permissions/permission/PermissionLists;->getCachePermission(Ljava/lang/String;)Lcom/hjq/permissions/permission/base/IPermission;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    return-object v1

    .line 10
    :cond_0
    new-instance v1, Lcom/hjq/permissions/permission/dangerous/StandardFitnessAndWellnessDataPermission;

    .line 11
    .line 12
    const/16 v2, 0x22

    .line 13
    .line 14
    invoke-direct {v1, v0, v2}, Lcom/hjq/permissions/permission/dangerous/StandardFitnessAndWellnessDataPermission;-><init>(Ljava/lang/String;I)V

    .line 15
    .line 16
    .line 17
    invoke-static {v1}, Lcom/hjq/permissions/permission/PermissionLists;->putCachePermission(Lcom/hjq/permissions/permission/base/IPermission;)Lcom/hjq/permissions/permission/base/IPermission;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    return-object v0
.end method

.method public static getReadIntermenstrualBleedingPermission()Lcom/hjq/permissions/permission/base/IPermission;
    .locals 3

    .line 1
    const-string v0, "android.permission.health.READ_INTERMENSTRUAL_BLEEDING"

    .line 2
    .line 3
    invoke-static {v0}, Lcom/hjq/permissions/permission/PermissionLists;->getCachePermission(Ljava/lang/String;)Lcom/hjq/permissions/permission/base/IPermission;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    return-object v1

    .line 10
    :cond_0
    new-instance v1, Lcom/hjq/permissions/permission/dangerous/StandardFitnessAndWellnessDataPermission;

    .line 11
    .line 12
    const/16 v2, 0x22

    .line 13
    .line 14
    invoke-direct {v1, v0, v2}, Lcom/hjq/permissions/permission/dangerous/StandardFitnessAndWellnessDataPermission;-><init>(Ljava/lang/String;I)V

    .line 15
    .line 16
    .line 17
    invoke-static {v1}, Lcom/hjq/permissions/permission/PermissionLists;->putCachePermission(Lcom/hjq/permissions/permission/base/IPermission;)Lcom/hjq/permissions/permission/base/IPermission;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    return-object v0
.end method

.method public static getReadLeanBodyMassPermission()Lcom/hjq/permissions/permission/base/IPermission;
    .locals 3

    .line 1
    const-string v0, "android.permission.health.READ_LEAN_BODY_MASS"

    .line 2
    .line 3
    invoke-static {v0}, Lcom/hjq/permissions/permission/PermissionLists;->getCachePermission(Ljava/lang/String;)Lcom/hjq/permissions/permission/base/IPermission;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    return-object v1

    .line 10
    :cond_0
    new-instance v1, Lcom/hjq/permissions/permission/dangerous/StandardFitnessAndWellnessDataPermission;

    .line 11
    .line 12
    const/16 v2, 0x22

    .line 13
    .line 14
    invoke-direct {v1, v0, v2}, Lcom/hjq/permissions/permission/dangerous/StandardFitnessAndWellnessDataPermission;-><init>(Ljava/lang/String;I)V

    .line 15
    .line 16
    .line 17
    invoke-static {v1}, Lcom/hjq/permissions/permission/PermissionLists;->putCachePermission(Lcom/hjq/permissions/permission/base/IPermission;)Lcom/hjq/permissions/permission/base/IPermission;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    return-object v0
.end method

.method public static getReadMediaAudioPermission()Lcom/hjq/permissions/permission/base/IPermission;
    .locals 1

    .line 1
    const-string v0, "android.permission.READ_MEDIA_AUDIO"

    .line 2
    .line 3
    invoke-static {v0}, Lcom/hjq/permissions/permission/PermissionLists;->getCachePermission(Ljava/lang/String;)Lcom/hjq/permissions/permission/base/IPermission;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    return-object v0

    .line 10
    :cond_0
    new-instance v0, Lcom/hjq/permissions/permission/dangerous/ReadMediaAudioPermission;

    .line 11
    .line 12
    invoke-direct {v0}, Lcom/hjq/permissions/permission/dangerous/ReadMediaAudioPermission;-><init>()V

    .line 13
    .line 14
    .line 15
    invoke-static {v0}, Lcom/hjq/permissions/permission/PermissionLists;->putCachePermission(Lcom/hjq/permissions/permission/base/IPermission;)Lcom/hjq/permissions/permission/base/IPermission;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    return-object v0
.end method

.method public static getReadMediaImagesPermission()Lcom/hjq/permissions/permission/base/IPermission;
    .locals 1

    .line 1
    const-string v0, "android.permission.READ_MEDIA_IMAGES"

    .line 2
    .line 3
    invoke-static {v0}, Lcom/hjq/permissions/permission/PermissionLists;->getCachePermission(Ljava/lang/String;)Lcom/hjq/permissions/permission/base/IPermission;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    return-object v0

    .line 10
    :cond_0
    new-instance v0, Lcom/hjq/permissions/permission/dangerous/ReadMediaImagesPermission;

    .line 11
    .line 12
    invoke-direct {v0}, Lcom/hjq/permissions/permission/dangerous/ReadMediaImagesPermission;-><init>()V

    .line 13
    .line 14
    .line 15
    invoke-static {v0}, Lcom/hjq/permissions/permission/PermissionLists;->putCachePermission(Lcom/hjq/permissions/permission/base/IPermission;)Lcom/hjq/permissions/permission/base/IPermission;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    return-object v0
.end method

.method public static getReadMediaVideoPermission()Lcom/hjq/permissions/permission/base/IPermission;
    .locals 1

    .line 1
    const-string v0, "android.permission.READ_MEDIA_VIDEO"

    .line 2
    .line 3
    invoke-static {v0}, Lcom/hjq/permissions/permission/PermissionLists;->getCachePermission(Ljava/lang/String;)Lcom/hjq/permissions/permission/base/IPermission;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    return-object v0

    .line 10
    :cond_0
    new-instance v0, Lcom/hjq/permissions/permission/dangerous/ReadMediaVideoPermission;

    .line 11
    .line 12
    invoke-direct {v0}, Lcom/hjq/permissions/permission/dangerous/ReadMediaVideoPermission;-><init>()V

    .line 13
    .line 14
    .line 15
    invoke-static {v0}, Lcom/hjq/permissions/permission/PermissionLists;->putCachePermission(Lcom/hjq/permissions/permission/base/IPermission;)Lcom/hjq/permissions/permission/base/IPermission;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    return-object v0
.end method

.method public static getReadMediaVisualUserSelectedPermission()Lcom/hjq/permissions/permission/base/IPermission;
    .locals 1

    .line 1
    const-string v0, "android.permission.READ_MEDIA_VISUAL_USER_SELECTED"

    .line 2
    .line 3
    invoke-static {v0}, Lcom/hjq/permissions/permission/PermissionLists;->getCachePermission(Ljava/lang/String;)Lcom/hjq/permissions/permission/base/IPermission;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    return-object v0

    .line 10
    :cond_0
    new-instance v0, Lcom/hjq/permissions/permission/dangerous/ReadMediaVisualUserSelectedPermission;

    .line 11
    .line 12
    invoke-direct {v0}, Lcom/hjq/permissions/permission/dangerous/ReadMediaVisualUserSelectedPermission;-><init>()V

    .line 13
    .line 14
    .line 15
    invoke-static {v0}, Lcom/hjq/permissions/permission/PermissionLists;->putCachePermission(Lcom/hjq/permissions/permission/base/IPermission;)Lcom/hjq/permissions/permission/base/IPermission;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    return-object v0
.end method

.method public static getReadMedicalDataAllergiesIntolerancesPermission()Lcom/hjq/permissions/permission/base/IPermission;
    .locals 3

    .line 1
    const-string v0, "android.permission.health.READ_MEDICAL_DATA_ALLERGIES_INTOLERANCES"

    .line 2
    .line 3
    invoke-static {v0}, Lcom/hjq/permissions/permission/PermissionLists;->getCachePermission(Ljava/lang/String;)Lcom/hjq/permissions/permission/base/IPermission;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    return-object v1

    .line 10
    :cond_0
    new-instance v1, Lcom/hjq/permissions/permission/dangerous/StandardHealthRecordsPermission;

    .line 11
    .line 12
    const/16 v2, 0x24

    .line 13
    .line 14
    invoke-direct {v1, v0, v2}, Lcom/hjq/permissions/permission/dangerous/StandardHealthRecordsPermission;-><init>(Ljava/lang/String;I)V

    .line 15
    .line 16
    .line 17
    invoke-static {v1}, Lcom/hjq/permissions/permission/PermissionLists;->putCachePermission(Lcom/hjq/permissions/permission/base/IPermission;)Lcom/hjq/permissions/permission/base/IPermission;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    return-object v0
.end method

.method public static getReadMedicalDataConditionsPermission()Lcom/hjq/permissions/permission/base/IPermission;
    .locals 3

    .line 1
    const-string v0, "android.permission.health.READ_MEDICAL_DATA_CONDITIONS"

    .line 2
    .line 3
    invoke-static {v0}, Lcom/hjq/permissions/permission/PermissionLists;->getCachePermission(Ljava/lang/String;)Lcom/hjq/permissions/permission/base/IPermission;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    return-object v1

    .line 10
    :cond_0
    new-instance v1, Lcom/hjq/permissions/permission/dangerous/StandardHealthRecordsPermission;

    .line 11
    .line 12
    const/16 v2, 0x24

    .line 13
    .line 14
    invoke-direct {v1, v0, v2}, Lcom/hjq/permissions/permission/dangerous/StandardHealthRecordsPermission;-><init>(Ljava/lang/String;I)V

    .line 15
    .line 16
    .line 17
    invoke-static {v1}, Lcom/hjq/permissions/permission/PermissionLists;->putCachePermission(Lcom/hjq/permissions/permission/base/IPermission;)Lcom/hjq/permissions/permission/base/IPermission;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    return-object v0
.end method

.method public static getReadMedicalDataLaboratoryResultsPermission()Lcom/hjq/permissions/permission/base/IPermission;
    .locals 3

    .line 1
    const-string v0, "android.permission.health.READ_MEDICAL_DATA_LABORATORY_RESULTS"

    .line 2
    .line 3
    invoke-static {v0}, Lcom/hjq/permissions/permission/PermissionLists;->getCachePermission(Ljava/lang/String;)Lcom/hjq/permissions/permission/base/IPermission;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    return-object v1

    .line 10
    :cond_0
    new-instance v1, Lcom/hjq/permissions/permission/dangerous/StandardHealthRecordsPermission;

    .line 11
    .line 12
    const/16 v2, 0x24

    .line 13
    .line 14
    invoke-direct {v1, v0, v2}, Lcom/hjq/permissions/permission/dangerous/StandardHealthRecordsPermission;-><init>(Ljava/lang/String;I)V

    .line 15
    .line 16
    .line 17
    invoke-static {v1}, Lcom/hjq/permissions/permission/PermissionLists;->putCachePermission(Lcom/hjq/permissions/permission/base/IPermission;)Lcom/hjq/permissions/permission/base/IPermission;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    return-object v0
.end method

.method public static getReadMedicalDataMedicationsPermission()Lcom/hjq/permissions/permission/base/IPermission;
    .locals 3

    .line 1
    const-string v0, "android.permission.health.READ_MEDICAL_DATA_MEDICATIONS"

    .line 2
    .line 3
    invoke-static {v0}, Lcom/hjq/permissions/permission/PermissionLists;->getCachePermission(Ljava/lang/String;)Lcom/hjq/permissions/permission/base/IPermission;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    return-object v1

    .line 10
    :cond_0
    new-instance v1, Lcom/hjq/permissions/permission/dangerous/StandardHealthRecordsPermission;

    .line 11
    .line 12
    const/16 v2, 0x24

    .line 13
    .line 14
    invoke-direct {v1, v0, v2}, Lcom/hjq/permissions/permission/dangerous/StandardHealthRecordsPermission;-><init>(Ljava/lang/String;I)V

    .line 15
    .line 16
    .line 17
    invoke-static {v1}, Lcom/hjq/permissions/permission/PermissionLists;->putCachePermission(Lcom/hjq/permissions/permission/base/IPermission;)Lcom/hjq/permissions/permission/base/IPermission;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    return-object v0
.end method

.method public static getReadMedicalDataPersonalDetailsPermission()Lcom/hjq/permissions/permission/base/IPermission;
    .locals 3

    .line 1
    const-string v0, "android.permission.health.READ_MEDICAL_DATA_PERSONAL_DETAILS"

    .line 2
    .line 3
    invoke-static {v0}, Lcom/hjq/permissions/permission/PermissionLists;->getCachePermission(Ljava/lang/String;)Lcom/hjq/permissions/permission/base/IPermission;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    return-object v1

    .line 10
    :cond_0
    new-instance v1, Lcom/hjq/permissions/permission/dangerous/StandardHealthRecordsPermission;

    .line 11
    .line 12
    const/16 v2, 0x24

    .line 13
    .line 14
    invoke-direct {v1, v0, v2}, Lcom/hjq/permissions/permission/dangerous/StandardHealthRecordsPermission;-><init>(Ljava/lang/String;I)V

    .line 15
    .line 16
    .line 17
    invoke-static {v1}, Lcom/hjq/permissions/permission/PermissionLists;->putCachePermission(Lcom/hjq/permissions/permission/base/IPermission;)Lcom/hjq/permissions/permission/base/IPermission;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    return-object v0
.end method

.method public static getReadMedicalDataPractitionerDetailsPermission()Lcom/hjq/permissions/permission/base/IPermission;
    .locals 3

    .line 1
    const-string v0, "android.permission.health.READ_MEDICAL_DATA_PRACTITIONER_DETAILS"

    .line 2
    .line 3
    invoke-static {v0}, Lcom/hjq/permissions/permission/PermissionLists;->getCachePermission(Ljava/lang/String;)Lcom/hjq/permissions/permission/base/IPermission;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    return-object v1

    .line 10
    :cond_0
    new-instance v1, Lcom/hjq/permissions/permission/dangerous/StandardHealthRecordsPermission;

    .line 11
    .line 12
    const/16 v2, 0x24

    .line 13
    .line 14
    invoke-direct {v1, v0, v2}, Lcom/hjq/permissions/permission/dangerous/StandardHealthRecordsPermission;-><init>(Ljava/lang/String;I)V

    .line 15
    .line 16
    .line 17
    invoke-static {v1}, Lcom/hjq/permissions/permission/PermissionLists;->putCachePermission(Lcom/hjq/permissions/permission/base/IPermission;)Lcom/hjq/permissions/permission/base/IPermission;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    return-object v0
.end method

.method public static getReadMedicalDataPregnancyPermission()Lcom/hjq/permissions/permission/base/IPermission;
    .locals 3

    .line 1
    const-string v0, "android.permission.health.READ_MEDICAL_DATA_PREGNANCY"

    .line 2
    .line 3
    invoke-static {v0}, Lcom/hjq/permissions/permission/PermissionLists;->getCachePermission(Ljava/lang/String;)Lcom/hjq/permissions/permission/base/IPermission;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    return-object v1

    .line 10
    :cond_0
    new-instance v1, Lcom/hjq/permissions/permission/dangerous/StandardHealthRecordsPermission;

    .line 11
    .line 12
    const/16 v2, 0x24

    .line 13
    .line 14
    invoke-direct {v1, v0, v2}, Lcom/hjq/permissions/permission/dangerous/StandardHealthRecordsPermission;-><init>(Ljava/lang/String;I)V

    .line 15
    .line 16
    .line 17
    invoke-static {v1}, Lcom/hjq/permissions/permission/PermissionLists;->putCachePermission(Lcom/hjq/permissions/permission/base/IPermission;)Lcom/hjq/permissions/permission/base/IPermission;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    return-object v0
.end method

.method public static getReadMedicalDataProceduresPermission()Lcom/hjq/permissions/permission/base/IPermission;
    .locals 3

    .line 1
    const-string v0, "android.permission.health.READ_MEDICAL_DATA_PROCEDURES"

    .line 2
    .line 3
    invoke-static {v0}, Lcom/hjq/permissions/permission/PermissionLists;->getCachePermission(Ljava/lang/String;)Lcom/hjq/permissions/permission/base/IPermission;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    return-object v1

    .line 10
    :cond_0
    new-instance v1, Lcom/hjq/permissions/permission/dangerous/StandardHealthRecordsPermission;

    .line 11
    .line 12
    const/16 v2, 0x24

    .line 13
    .line 14
    invoke-direct {v1, v0, v2}, Lcom/hjq/permissions/permission/dangerous/StandardHealthRecordsPermission;-><init>(Ljava/lang/String;I)V

    .line 15
    .line 16
    .line 17
    invoke-static {v1}, Lcom/hjq/permissions/permission/PermissionLists;->putCachePermission(Lcom/hjq/permissions/permission/base/IPermission;)Lcom/hjq/permissions/permission/base/IPermission;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    return-object v0
.end method

.method public static getReadMedicalDataSocialHistoryPermission()Lcom/hjq/permissions/permission/base/IPermission;
    .locals 3

    .line 1
    const-string v0, "android.permission.health.READ_MEDICAL_DATA_SOCIAL_HISTORY"

    .line 2
    .line 3
    invoke-static {v0}, Lcom/hjq/permissions/permission/PermissionLists;->getCachePermission(Ljava/lang/String;)Lcom/hjq/permissions/permission/base/IPermission;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    return-object v1

    .line 10
    :cond_0
    new-instance v1, Lcom/hjq/permissions/permission/dangerous/StandardHealthRecordsPermission;

    .line 11
    .line 12
    const/16 v2, 0x24

    .line 13
    .line 14
    invoke-direct {v1, v0, v2}, Lcom/hjq/permissions/permission/dangerous/StandardHealthRecordsPermission;-><init>(Ljava/lang/String;I)V

    .line 15
    .line 16
    .line 17
    invoke-static {v1}, Lcom/hjq/permissions/permission/PermissionLists;->putCachePermission(Lcom/hjq/permissions/permission/base/IPermission;)Lcom/hjq/permissions/permission/base/IPermission;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    return-object v0
.end method

.method public static getReadMedicalDataVaccinesPermission()Lcom/hjq/permissions/permission/base/IPermission;
    .locals 3

    .line 1
    const-string v0, "android.permission.health.READ_MEDICAL_DATA_VACCINES"

    .line 2
    .line 3
    invoke-static {v0}, Lcom/hjq/permissions/permission/PermissionLists;->getCachePermission(Ljava/lang/String;)Lcom/hjq/permissions/permission/base/IPermission;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    return-object v1

    .line 10
    :cond_0
    new-instance v1, Lcom/hjq/permissions/permission/dangerous/StandardHealthRecordsPermission;

    .line 11
    .line 12
    const/16 v2, 0x24

    .line 13
    .line 14
    invoke-direct {v1, v0, v2}, Lcom/hjq/permissions/permission/dangerous/StandardHealthRecordsPermission;-><init>(Ljava/lang/String;I)V

    .line 15
    .line 16
    .line 17
    invoke-static {v1}, Lcom/hjq/permissions/permission/PermissionLists;->putCachePermission(Lcom/hjq/permissions/permission/base/IPermission;)Lcom/hjq/permissions/permission/base/IPermission;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    return-object v0
.end method

.method public static getReadMedicalDataVisitsPermission()Lcom/hjq/permissions/permission/base/IPermission;
    .locals 3

    .line 1
    const-string v0, "android.permission.health.READ_MEDICAL_DATA_VISITS"

    .line 2
    .line 3
    invoke-static {v0}, Lcom/hjq/permissions/permission/PermissionLists;->getCachePermission(Ljava/lang/String;)Lcom/hjq/permissions/permission/base/IPermission;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    return-object v1

    .line 10
    :cond_0
    new-instance v1, Lcom/hjq/permissions/permission/dangerous/StandardHealthRecordsPermission;

    .line 11
    .line 12
    const/16 v2, 0x24

    .line 13
    .line 14
    invoke-direct {v1, v0, v2}, Lcom/hjq/permissions/permission/dangerous/StandardHealthRecordsPermission;-><init>(Ljava/lang/String;I)V

    .line 15
    .line 16
    .line 17
    invoke-static {v1}, Lcom/hjq/permissions/permission/PermissionLists;->putCachePermission(Lcom/hjq/permissions/permission/base/IPermission;)Lcom/hjq/permissions/permission/base/IPermission;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    return-object v0
.end method

.method public static getReadMedicalDataVitalSignsPermission()Lcom/hjq/permissions/permission/base/IPermission;
    .locals 3

    .line 1
    const-string v0, "android.permission.health.READ_MEDICAL_DATA_VITAL_SIGNS"

    .line 2
    .line 3
    invoke-static {v0}, Lcom/hjq/permissions/permission/PermissionLists;->getCachePermission(Ljava/lang/String;)Lcom/hjq/permissions/permission/base/IPermission;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    return-object v1

    .line 10
    :cond_0
    new-instance v1, Lcom/hjq/permissions/permission/dangerous/StandardHealthRecordsPermission;

    .line 11
    .line 12
    const/16 v2, 0x24

    .line 13
    .line 14
    invoke-direct {v1, v0, v2}, Lcom/hjq/permissions/permission/dangerous/StandardHealthRecordsPermission;-><init>(Ljava/lang/String;I)V

    .line 15
    .line 16
    .line 17
    invoke-static {v1}, Lcom/hjq/permissions/permission/PermissionLists;->putCachePermission(Lcom/hjq/permissions/permission/base/IPermission;)Lcom/hjq/permissions/permission/base/IPermission;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    return-object v0
.end method

.method public static getReadMenstruationPermission()Lcom/hjq/permissions/permission/base/IPermission;
    .locals 3

    .line 1
    const-string v0, "android.permission.health.READ_MENSTRUATION"

    .line 2
    .line 3
    invoke-static {v0}, Lcom/hjq/permissions/permission/PermissionLists;->getCachePermission(Ljava/lang/String;)Lcom/hjq/permissions/permission/base/IPermission;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    return-object v1

    .line 10
    :cond_0
    new-instance v1, Lcom/hjq/permissions/permission/dangerous/StandardFitnessAndWellnessDataPermission;

    .line 11
    .line 12
    const/16 v2, 0x22

    .line 13
    .line 14
    invoke-direct {v1, v0, v2}, Lcom/hjq/permissions/permission/dangerous/StandardFitnessAndWellnessDataPermission;-><init>(Ljava/lang/String;I)V

    .line 15
    .line 16
    .line 17
    invoke-static {v1}, Lcom/hjq/permissions/permission/PermissionLists;->putCachePermission(Lcom/hjq/permissions/permission/base/IPermission;)Lcom/hjq/permissions/permission/base/IPermission;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    return-object v0
.end method

.method public static getReadMindfulnessPermission()Lcom/hjq/permissions/permission/base/IPermission;
    .locals 3

    .line 1
    const-string v0, "android.permission.health.READ_MINDFULNESS"

    .line 2
    .line 3
    invoke-static {v0}, Lcom/hjq/permissions/permission/PermissionLists;->getCachePermission(Ljava/lang/String;)Lcom/hjq/permissions/permission/base/IPermission;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    return-object v1

    .line 10
    :cond_0
    new-instance v1, Lcom/hjq/permissions/permission/dangerous/StandardFitnessAndWellnessDataPermission;

    .line 11
    .line 12
    const/16 v2, 0x24

    .line 13
    .line 14
    invoke-direct {v1, v0, v2}, Lcom/hjq/permissions/permission/dangerous/StandardFitnessAndWellnessDataPermission;-><init>(Ljava/lang/String;I)V

    .line 15
    .line 16
    .line 17
    invoke-static {v1}, Lcom/hjq/permissions/permission/PermissionLists;->putCachePermission(Lcom/hjq/permissions/permission/base/IPermission;)Lcom/hjq/permissions/permission/base/IPermission;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    return-object v0
.end method

.method public static getReadNutritionPermission()Lcom/hjq/permissions/permission/base/IPermission;
    .locals 3

    .line 1
    const-string v0, "android.permission.health.READ_NUTRITION"

    .line 2
    .line 3
    invoke-static {v0}, Lcom/hjq/permissions/permission/PermissionLists;->getCachePermission(Ljava/lang/String;)Lcom/hjq/permissions/permission/base/IPermission;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    return-object v1

    .line 10
    :cond_0
    new-instance v1, Lcom/hjq/permissions/permission/dangerous/StandardFitnessAndWellnessDataPermission;

    .line 11
    .line 12
    const/16 v2, 0x22

    .line 13
    .line 14
    invoke-direct {v1, v0, v2}, Lcom/hjq/permissions/permission/dangerous/StandardFitnessAndWellnessDataPermission;-><init>(Ljava/lang/String;I)V

    .line 15
    .line 16
    .line 17
    invoke-static {v1}, Lcom/hjq/permissions/permission/PermissionLists;->putCachePermission(Lcom/hjq/permissions/permission/base/IPermission;)Lcom/hjq/permissions/permission/base/IPermission;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    return-object v0
.end method

.method public static getReadOvulationTestPermission()Lcom/hjq/permissions/permission/base/IPermission;
    .locals 3

    .line 1
    const-string v0, "android.permission.health.READ_OVULATION_TEST"

    .line 2
    .line 3
    invoke-static {v0}, Lcom/hjq/permissions/permission/PermissionLists;->getCachePermission(Ljava/lang/String;)Lcom/hjq/permissions/permission/base/IPermission;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    return-object v1

    .line 10
    :cond_0
    new-instance v1, Lcom/hjq/permissions/permission/dangerous/StandardFitnessAndWellnessDataPermission;

    .line 11
    .line 12
    const/16 v2, 0x22

    .line 13
    .line 14
    invoke-direct {v1, v0, v2}, Lcom/hjq/permissions/permission/dangerous/StandardFitnessAndWellnessDataPermission;-><init>(Ljava/lang/String;I)V

    .line 15
    .line 16
    .line 17
    invoke-static {v1}, Lcom/hjq/permissions/permission/PermissionLists;->putCachePermission(Lcom/hjq/permissions/permission/base/IPermission;)Lcom/hjq/permissions/permission/base/IPermission;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    return-object v0
.end method

.method public static getReadOxygenSaturationPermission()Lcom/hjq/permissions/permission/base/IPermission;
    .locals 3

    .line 1
    const-string v0, "android.permission.health.READ_OXYGEN_SATURATION"

    .line 2
    .line 3
    invoke-static {v0}, Lcom/hjq/permissions/permission/PermissionLists;->getCachePermission(Ljava/lang/String;)Lcom/hjq/permissions/permission/base/IPermission;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    return-object v1

    .line 10
    :cond_0
    new-instance v1, Lcom/hjq/permissions/permission/dangerous/StandardFitnessAndWellnessDataPermission;

    .line 11
    .line 12
    const/16 v2, 0x22

    .line 13
    .line 14
    invoke-direct {v1, v0, v2}, Lcom/hjq/permissions/permission/dangerous/StandardFitnessAndWellnessDataPermission;-><init>(Ljava/lang/String;I)V

    .line 15
    .line 16
    .line 17
    invoke-static {v1}, Lcom/hjq/permissions/permission/PermissionLists;->putCachePermission(Lcom/hjq/permissions/permission/base/IPermission;)Lcom/hjq/permissions/permission/base/IPermission;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    return-object v0
.end method

.method public static getReadPhoneNumbersPermission()Lcom/hjq/permissions/permission/base/IPermission;
    .locals 1

    .line 1
    const-string v0, "android.permission.READ_PHONE_NUMBERS"

    .line 2
    .line 3
    invoke-static {v0}, Lcom/hjq/permissions/permission/PermissionLists;->getCachePermission(Ljava/lang/String;)Lcom/hjq/permissions/permission/base/IPermission;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    return-object v0

    .line 10
    :cond_0
    new-instance v0, Lcom/hjq/permissions/permission/dangerous/ReadPhoneNumbersPermission;

    .line 11
    .line 12
    invoke-direct {v0}, Lcom/hjq/permissions/permission/dangerous/ReadPhoneNumbersPermission;-><init>()V

    .line 13
    .line 14
    .line 15
    invoke-static {v0}, Lcom/hjq/permissions/permission/PermissionLists;->putCachePermission(Lcom/hjq/permissions/permission/base/IPermission;)Lcom/hjq/permissions/permission/base/IPermission;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    return-object v0
.end method

.method public static getReadPhoneStatePermission()Lcom/hjq/permissions/permission/base/IPermission;
    .locals 4

    .line 1
    const-string v0, "android.permission.READ_PHONE_STATE"

    .line 2
    .line 3
    invoke-static {v0}, Lcom/hjq/permissions/permission/PermissionLists;->getCachePermission(Ljava/lang/String;)Lcom/hjq/permissions/permission/base/IPermission;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    return-object v1

    .line 10
    :cond_0
    new-instance v1, Lcom/hjq/permissions/permission/dangerous/StandardDangerousPermission;

    .line 11
    .line 12
    const-string v2, "phone_group"

    .line 13
    .line 14
    const/16 v3, 0x17

    .line 15
    .line 16
    invoke-direct {v1, v0, v2, v3}, Lcom/hjq/permissions/permission/dangerous/StandardDangerousPermission;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 17
    .line 18
    .line 19
    invoke-static {v1}, Lcom/hjq/permissions/permission/PermissionLists;->putCachePermission(Lcom/hjq/permissions/permission/base/IPermission;)Lcom/hjq/permissions/permission/base/IPermission;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    return-object v0
.end method

.method public static getReadPlannedExercisePermission()Lcom/hjq/permissions/permission/base/IPermission;
    .locals 3

    .line 1
    const-string v0, "android.permission.health.READ_PLANNED_EXERCISE"

    .line 2
    .line 3
    invoke-static {v0}, Lcom/hjq/permissions/permission/PermissionLists;->getCachePermission(Ljava/lang/String;)Lcom/hjq/permissions/permission/base/IPermission;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    return-object v1

    .line 10
    :cond_0
    new-instance v1, Lcom/hjq/permissions/permission/dangerous/StandardFitnessAndWellnessDataPermission;

    .line 11
    .line 12
    const/16 v2, 0x23

    .line 13
    .line 14
    invoke-direct {v1, v0, v2}, Lcom/hjq/permissions/permission/dangerous/StandardFitnessAndWellnessDataPermission;-><init>(Ljava/lang/String;I)V

    .line 15
    .line 16
    .line 17
    invoke-static {v1}, Lcom/hjq/permissions/permission/PermissionLists;->putCachePermission(Lcom/hjq/permissions/permission/base/IPermission;)Lcom/hjq/permissions/permission/base/IPermission;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    return-object v0
.end method

.method public static getReadPowerPermission()Lcom/hjq/permissions/permission/base/IPermission;
    .locals 3

    .line 1
    const-string v0, "android.permission.health.READ_POWER"

    .line 2
    .line 3
    invoke-static {v0}, Lcom/hjq/permissions/permission/PermissionLists;->getCachePermission(Ljava/lang/String;)Lcom/hjq/permissions/permission/base/IPermission;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    return-object v1

    .line 10
    :cond_0
    new-instance v1, Lcom/hjq/permissions/permission/dangerous/StandardFitnessAndWellnessDataPermission;

    .line 11
    .line 12
    const/16 v2, 0x22

    .line 13
    .line 14
    invoke-direct {v1, v0, v2}, Lcom/hjq/permissions/permission/dangerous/StandardFitnessAndWellnessDataPermission;-><init>(Ljava/lang/String;I)V

    .line 15
    .line 16
    .line 17
    invoke-static {v1}, Lcom/hjq/permissions/permission/PermissionLists;->putCachePermission(Lcom/hjq/permissions/permission/base/IPermission;)Lcom/hjq/permissions/permission/base/IPermission;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    return-object v0
.end method

.method public static getReadRespiratoryRatePermission()Lcom/hjq/permissions/permission/base/IPermission;
    .locals 3

    .line 1
    const-string v0, "android.permission.health.READ_RESPIRATORY_RATE"

    .line 2
    .line 3
    invoke-static {v0}, Lcom/hjq/permissions/permission/PermissionLists;->getCachePermission(Ljava/lang/String;)Lcom/hjq/permissions/permission/base/IPermission;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    return-object v1

    .line 10
    :cond_0
    new-instance v1, Lcom/hjq/permissions/permission/dangerous/StandardFitnessAndWellnessDataPermission;

    .line 11
    .line 12
    const/16 v2, 0x22

    .line 13
    .line 14
    invoke-direct {v1, v0, v2}, Lcom/hjq/permissions/permission/dangerous/StandardFitnessAndWellnessDataPermission;-><init>(Ljava/lang/String;I)V

    .line 15
    .line 16
    .line 17
    invoke-static {v1}, Lcom/hjq/permissions/permission/PermissionLists;->putCachePermission(Lcom/hjq/permissions/permission/base/IPermission;)Lcom/hjq/permissions/permission/base/IPermission;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    return-object v0
.end method

.method public static getReadRestingHeartRatePermission()Lcom/hjq/permissions/permission/base/IPermission;
    .locals 3

    .line 1
    const-string v0, "android.permission.health.READ_RESTING_HEART_RATE"

    .line 2
    .line 3
    invoke-static {v0}, Lcom/hjq/permissions/permission/PermissionLists;->getCachePermission(Ljava/lang/String;)Lcom/hjq/permissions/permission/base/IPermission;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    return-object v1

    .line 10
    :cond_0
    new-instance v1, Lcom/hjq/permissions/permission/dangerous/StandardFitnessAndWellnessDataPermission;

    .line 11
    .line 12
    const/16 v2, 0x22

    .line 13
    .line 14
    invoke-direct {v1, v0, v2}, Lcom/hjq/permissions/permission/dangerous/StandardFitnessAndWellnessDataPermission;-><init>(Ljava/lang/String;I)V

    .line 15
    .line 16
    .line 17
    invoke-static {v1}, Lcom/hjq/permissions/permission/PermissionLists;->putCachePermission(Lcom/hjq/permissions/permission/base/IPermission;)Lcom/hjq/permissions/permission/base/IPermission;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    return-object v0
.end method

.method public static getReadSexualActivityPermission()Lcom/hjq/permissions/permission/base/IPermission;
    .locals 3

    .line 1
    const-string v0, "android.permission.health.READ_SEXUAL_ACTIVITY"

    .line 2
    .line 3
    invoke-static {v0}, Lcom/hjq/permissions/permission/PermissionLists;->getCachePermission(Ljava/lang/String;)Lcom/hjq/permissions/permission/base/IPermission;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    return-object v1

    .line 10
    :cond_0
    new-instance v1, Lcom/hjq/permissions/permission/dangerous/StandardFitnessAndWellnessDataPermission;

    .line 11
    .line 12
    const/16 v2, 0x22

    .line 13
    .line 14
    invoke-direct {v1, v0, v2}, Lcom/hjq/permissions/permission/dangerous/StandardFitnessAndWellnessDataPermission;-><init>(Ljava/lang/String;I)V

    .line 15
    .line 16
    .line 17
    invoke-static {v1}, Lcom/hjq/permissions/permission/PermissionLists;->putCachePermission(Lcom/hjq/permissions/permission/base/IPermission;)Lcom/hjq/permissions/permission/base/IPermission;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    return-object v0
.end method

.method public static getReadSkinTemperaturePermission()Lcom/hjq/permissions/permission/base/IPermission;
    .locals 3

    .line 1
    const-string v0, "android.permission.health.READ_SKIN_TEMPERATURE"

    .line 2
    .line 3
    invoke-static {v0}, Lcom/hjq/permissions/permission/PermissionLists;->getCachePermission(Ljava/lang/String;)Lcom/hjq/permissions/permission/base/IPermission;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    return-object v1

    .line 10
    :cond_0
    new-instance v1, Lcom/hjq/permissions/permission/dangerous/StandardFitnessAndWellnessDataPermission;

    .line 11
    .line 12
    const/16 v2, 0x23

    .line 13
    .line 14
    invoke-direct {v1, v0, v2}, Lcom/hjq/permissions/permission/dangerous/StandardFitnessAndWellnessDataPermission;-><init>(Ljava/lang/String;I)V

    .line 15
    .line 16
    .line 17
    invoke-static {v1}, Lcom/hjq/permissions/permission/PermissionLists;->putCachePermission(Lcom/hjq/permissions/permission/base/IPermission;)Lcom/hjq/permissions/permission/base/IPermission;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    return-object v0
.end method

.method public static getReadSleepPermission()Lcom/hjq/permissions/permission/base/IPermission;
    .locals 3

    .line 1
    const-string v0, "android.permission.health.READ_SLEEP"

    .line 2
    .line 3
    invoke-static {v0}, Lcom/hjq/permissions/permission/PermissionLists;->getCachePermission(Ljava/lang/String;)Lcom/hjq/permissions/permission/base/IPermission;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    return-object v1

    .line 10
    :cond_0
    new-instance v1, Lcom/hjq/permissions/permission/dangerous/StandardFitnessAndWellnessDataPermission;

    .line 11
    .line 12
    const/16 v2, 0x22

    .line 13
    .line 14
    invoke-direct {v1, v0, v2}, Lcom/hjq/permissions/permission/dangerous/StandardFitnessAndWellnessDataPermission;-><init>(Ljava/lang/String;I)V

    .line 15
    .line 16
    .line 17
    invoke-static {v1}, Lcom/hjq/permissions/permission/PermissionLists;->putCachePermission(Lcom/hjq/permissions/permission/base/IPermission;)Lcom/hjq/permissions/permission/base/IPermission;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    return-object v0
.end method

.method public static getReadSmsPermission()Lcom/hjq/permissions/permission/base/IPermission;
    .locals 4

    .line 1
    const-string v0, "android.permission.READ_SMS"

    .line 2
    .line 3
    invoke-static {v0}, Lcom/hjq/permissions/permission/PermissionLists;->getCachePermission(Ljava/lang/String;)Lcom/hjq/permissions/permission/base/IPermission;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    return-object v1

    .line 10
    :cond_0
    new-instance v1, Lcom/hjq/permissions/permission/dangerous/StandardDangerousPermission;

    .line 11
    .line 12
    const-string v2, "sms_group"

    .line 13
    .line 14
    const/16 v3, 0x17

    .line 15
    .line 16
    invoke-direct {v1, v0, v2, v3}, Lcom/hjq/permissions/permission/dangerous/StandardDangerousPermission;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 17
    .line 18
    .line 19
    invoke-static {v1}, Lcom/hjq/permissions/permission/PermissionLists;->putCachePermission(Lcom/hjq/permissions/permission/base/IPermission;)Lcom/hjq/permissions/permission/base/IPermission;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    return-object v0
.end method

.method public static getReadSpeedPermission()Lcom/hjq/permissions/permission/base/IPermission;
    .locals 3

    .line 1
    const-string v0, "android.permission.health.READ_SPEED"

    .line 2
    .line 3
    invoke-static {v0}, Lcom/hjq/permissions/permission/PermissionLists;->getCachePermission(Ljava/lang/String;)Lcom/hjq/permissions/permission/base/IPermission;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    return-object v1

    .line 10
    :cond_0
    new-instance v1, Lcom/hjq/permissions/permission/dangerous/StandardFitnessAndWellnessDataPermission;

    .line 11
    .line 12
    const/16 v2, 0x22

    .line 13
    .line 14
    invoke-direct {v1, v0, v2}, Lcom/hjq/permissions/permission/dangerous/StandardFitnessAndWellnessDataPermission;-><init>(Ljava/lang/String;I)V

    .line 15
    .line 16
    .line 17
    invoke-static {v1}, Lcom/hjq/permissions/permission/PermissionLists;->putCachePermission(Lcom/hjq/permissions/permission/base/IPermission;)Lcom/hjq/permissions/permission/base/IPermission;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    return-object v0
.end method

.method public static getReadStepsPermission()Lcom/hjq/permissions/permission/base/IPermission;
    .locals 3

    .line 1
    const-string v0, "android.permission.health.READ_STEPS"

    .line 2
    .line 3
    invoke-static {v0}, Lcom/hjq/permissions/permission/PermissionLists;->getCachePermission(Ljava/lang/String;)Lcom/hjq/permissions/permission/base/IPermission;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    return-object v1

    .line 10
    :cond_0
    new-instance v1, Lcom/hjq/permissions/permission/dangerous/StandardFitnessAndWellnessDataPermission;

    .line 11
    .line 12
    const/16 v2, 0x22

    .line 13
    .line 14
    invoke-direct {v1, v0, v2}, Lcom/hjq/permissions/permission/dangerous/StandardFitnessAndWellnessDataPermission;-><init>(Ljava/lang/String;I)V

    .line 15
    .line 16
    .line 17
    invoke-static {v1}, Lcom/hjq/permissions/permission/PermissionLists;->putCachePermission(Lcom/hjq/permissions/permission/base/IPermission;)Lcom/hjq/permissions/permission/base/IPermission;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    return-object v0
.end method

.method public static getReadTotalCaloriesBurnedPermission()Lcom/hjq/permissions/permission/base/IPermission;
    .locals 3

    .line 1
    const-string v0, "android.permission.health.READ_TOTAL_CALORIES_BURNED"

    .line 2
    .line 3
    invoke-static {v0}, Lcom/hjq/permissions/permission/PermissionLists;->getCachePermission(Ljava/lang/String;)Lcom/hjq/permissions/permission/base/IPermission;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    return-object v1

    .line 10
    :cond_0
    new-instance v1, Lcom/hjq/permissions/permission/dangerous/StandardFitnessAndWellnessDataPermission;

    .line 11
    .line 12
    const/16 v2, 0x22

    .line 13
    .line 14
    invoke-direct {v1, v0, v2}, Lcom/hjq/permissions/permission/dangerous/StandardFitnessAndWellnessDataPermission;-><init>(Ljava/lang/String;I)V

    .line 15
    .line 16
    .line 17
    invoke-static {v1}, Lcom/hjq/permissions/permission/PermissionLists;->putCachePermission(Lcom/hjq/permissions/permission/base/IPermission;)Lcom/hjq/permissions/permission/base/IPermission;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    return-object v0
.end method

.method public static getReadVo2MaxPermission()Lcom/hjq/permissions/permission/base/IPermission;
    .locals 3

    .line 1
    const-string v0, "android.permission.health.READ_VO2_MAX"

    .line 2
    .line 3
    invoke-static {v0}, Lcom/hjq/permissions/permission/PermissionLists;->getCachePermission(Ljava/lang/String;)Lcom/hjq/permissions/permission/base/IPermission;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    return-object v1

    .line 10
    :cond_0
    new-instance v1, Lcom/hjq/permissions/permission/dangerous/StandardFitnessAndWellnessDataPermission;

    .line 11
    .line 12
    const/16 v2, 0x22

    .line 13
    .line 14
    invoke-direct {v1, v0, v2}, Lcom/hjq/permissions/permission/dangerous/StandardFitnessAndWellnessDataPermission;-><init>(Ljava/lang/String;I)V

    .line 15
    .line 16
    .line 17
    invoke-static {v1}, Lcom/hjq/permissions/permission/PermissionLists;->putCachePermission(Lcom/hjq/permissions/permission/base/IPermission;)Lcom/hjq/permissions/permission/base/IPermission;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    return-object v0
.end method

.method public static getReadWeightPermission()Lcom/hjq/permissions/permission/base/IPermission;
    .locals 3

    .line 1
    const-string v0, "android.permission.health.READ_WEIGHT"

    .line 2
    .line 3
    invoke-static {v0}, Lcom/hjq/permissions/permission/PermissionLists;->getCachePermission(Ljava/lang/String;)Lcom/hjq/permissions/permission/base/IPermission;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    return-object v1

    .line 10
    :cond_0
    new-instance v1, Lcom/hjq/permissions/permission/dangerous/StandardFitnessAndWellnessDataPermission;

    .line 11
    .line 12
    const/16 v2, 0x22

    .line 13
    .line 14
    invoke-direct {v1, v0, v2}, Lcom/hjq/permissions/permission/dangerous/StandardFitnessAndWellnessDataPermission;-><init>(Ljava/lang/String;I)V

    .line 15
    .line 16
    .line 17
    invoke-static {v1}, Lcom/hjq/permissions/permission/PermissionLists;->putCachePermission(Lcom/hjq/permissions/permission/base/IPermission;)Lcom/hjq/permissions/permission/base/IPermission;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    return-object v0
.end method

.method public static getReadWheelchairPushesPermission()Lcom/hjq/permissions/permission/base/IPermission;
    .locals 3

    .line 1
    const-string v0, "android.permission.health.READ_WHEELCHAIR_PUSHES"

    .line 2
    .line 3
    invoke-static {v0}, Lcom/hjq/permissions/permission/PermissionLists;->getCachePermission(Ljava/lang/String;)Lcom/hjq/permissions/permission/base/IPermission;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    return-object v1

    .line 10
    :cond_0
    new-instance v1, Lcom/hjq/permissions/permission/dangerous/StandardFitnessAndWellnessDataPermission;

    .line 11
    .line 12
    const/16 v2, 0x22

    .line 13
    .line 14
    invoke-direct {v1, v0, v2}, Lcom/hjq/permissions/permission/dangerous/StandardFitnessAndWellnessDataPermission;-><init>(Ljava/lang/String;I)V

    .line 15
    .line 16
    .line 17
    invoke-static {v1}, Lcom/hjq/permissions/permission/PermissionLists;->putCachePermission(Lcom/hjq/permissions/permission/base/IPermission;)Lcom/hjq/permissions/permission/base/IPermission;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    return-object v0
.end method

.method public static getReceiveMmsPermission()Lcom/hjq/permissions/permission/base/IPermission;
    .locals 4

    .line 1
    const-string v0, "android.permission.RECEIVE_MMS"

    .line 2
    .line 3
    invoke-static {v0}, Lcom/hjq/permissions/permission/PermissionLists;->getCachePermission(Ljava/lang/String;)Lcom/hjq/permissions/permission/base/IPermission;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    return-object v1

    .line 10
    :cond_0
    new-instance v1, Lcom/hjq/permissions/permission/dangerous/StandardDangerousPermission;

    .line 11
    .line 12
    const-string v2, "sms_group"

    .line 13
    .line 14
    const/16 v3, 0x17

    .line 15
    .line 16
    invoke-direct {v1, v0, v2, v3}, Lcom/hjq/permissions/permission/dangerous/StandardDangerousPermission;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 17
    .line 18
    .line 19
    invoke-static {v1}, Lcom/hjq/permissions/permission/PermissionLists;->putCachePermission(Lcom/hjq/permissions/permission/base/IPermission;)Lcom/hjq/permissions/permission/base/IPermission;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    return-object v0
.end method

.method public static getReceiveSmsPermission()Lcom/hjq/permissions/permission/base/IPermission;
    .locals 4

    .line 1
    const-string v0, "android.permission.RECEIVE_SMS"

    .line 2
    .line 3
    invoke-static {v0}, Lcom/hjq/permissions/permission/PermissionLists;->getCachePermission(Ljava/lang/String;)Lcom/hjq/permissions/permission/base/IPermission;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    return-object v1

    .line 10
    :cond_0
    new-instance v1, Lcom/hjq/permissions/permission/dangerous/StandardDangerousPermission;

    .line 11
    .line 12
    const-string v2, "sms_group"

    .line 13
    .line 14
    const/16 v3, 0x17

    .line 15
    .line 16
    invoke-direct {v1, v0, v2, v3}, Lcom/hjq/permissions/permission/dangerous/StandardDangerousPermission;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 17
    .line 18
    .line 19
    invoke-static {v1}, Lcom/hjq/permissions/permission/PermissionLists;->putCachePermission(Lcom/hjq/permissions/permission/base/IPermission;)Lcom/hjq/permissions/permission/base/IPermission;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    return-object v0
.end method

.method public static getReceiveWapPushPermission()Lcom/hjq/permissions/permission/base/IPermission;
    .locals 4

    .line 1
    const-string v0, "android.permission.RECEIVE_WAP_PUSH"

    .line 2
    .line 3
    invoke-static {v0}, Lcom/hjq/permissions/permission/PermissionLists;->getCachePermission(Ljava/lang/String;)Lcom/hjq/permissions/permission/base/IPermission;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    return-object v1

    .line 10
    :cond_0
    new-instance v1, Lcom/hjq/permissions/permission/dangerous/StandardDangerousPermission;

    .line 11
    .line 12
    const-string v2, "sms_group"

    .line 13
    .line 14
    const/16 v3, 0x17

    .line 15
    .line 16
    invoke-direct {v1, v0, v2, v3}, Lcom/hjq/permissions/permission/dangerous/StandardDangerousPermission;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 17
    .line 18
    .line 19
    invoke-static {v1}, Lcom/hjq/permissions/permission/PermissionLists;->putCachePermission(Lcom/hjq/permissions/permission/base/IPermission;)Lcom/hjq/permissions/permission/base/IPermission;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    return-object v0
.end method

.method public static getRecordAudioPermission()Lcom/hjq/permissions/permission/base/IPermission;
    .locals 3

    .line 1
    const-string v0, "android.permission.RECORD_AUDIO"

    .line 2
    .line 3
    invoke-static {v0}, Lcom/hjq/permissions/permission/PermissionLists;->getCachePermission(Ljava/lang/String;)Lcom/hjq/permissions/permission/base/IPermission;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    return-object v1

    .line 10
    :cond_0
    new-instance v1, Lcom/hjq/permissions/permission/dangerous/StandardDangerousPermission;

    .line 11
    .line 12
    const/16 v2, 0x17

    .line 13
    .line 14
    invoke-direct {v1, v0, v2}, Lcom/hjq/permissions/permission/dangerous/StandardDangerousPermission;-><init>(Ljava/lang/String;I)V

    .line 15
    .line 16
    .line 17
    invoke-static {v1}, Lcom/hjq/permissions/permission/PermissionLists;->putCachePermission(Lcom/hjq/permissions/permission/base/IPermission;)Lcom/hjq/permissions/permission/base/IPermission;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    return-object v0
.end method

.method public static getRequestIgnoreBatteryOptimizationsPermission()Lcom/hjq/permissions/permission/base/IPermission;
    .locals 1

    .line 1
    const-string v0, "android.permission.REQUEST_IGNORE_BATTERY_OPTIMIZATIONS"

    .line 2
    .line 3
    invoke-static {v0}, Lcom/hjq/permissions/permission/PermissionLists;->getCachePermission(Ljava/lang/String;)Lcom/hjq/permissions/permission/base/IPermission;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    return-object v0

    .line 10
    :cond_0
    new-instance v0, Lcom/hjq/permissions/permission/special/RequestIgnoreBatteryOptimizationsPermission;

    .line 11
    .line 12
    invoke-direct {v0}, Lcom/hjq/permissions/permission/special/RequestIgnoreBatteryOptimizationsPermission;-><init>()V

    .line 13
    .line 14
    .line 15
    invoke-static {v0}, Lcom/hjq/permissions/permission/PermissionLists;->putCachePermission(Lcom/hjq/permissions/permission/base/IPermission;)Lcom/hjq/permissions/permission/base/IPermission;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    return-object v0
.end method

.method public static getRequestInstallPackagesPermission()Lcom/hjq/permissions/permission/base/IPermission;
    .locals 1

    .line 1
    const-string v0, "android.permission.REQUEST_INSTALL_PACKAGES"

    .line 2
    .line 3
    invoke-static {v0}, Lcom/hjq/permissions/permission/PermissionLists;->getCachePermission(Ljava/lang/String;)Lcom/hjq/permissions/permission/base/IPermission;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    return-object v0

    .line 10
    :cond_0
    new-instance v0, Lcom/hjq/permissions/permission/special/RequestInstallPackagesPermission;

    .line 11
    .line 12
    invoke-direct {v0}, Lcom/hjq/permissions/permission/special/RequestInstallPackagesPermission;-><init>()V

    .line 13
    .line 14
    .line 15
    invoke-static {v0}, Lcom/hjq/permissions/permission/PermissionLists;->putCachePermission(Lcom/hjq/permissions/permission/base/IPermission;)Lcom/hjq/permissions/permission/base/IPermission;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    return-object v0
.end method

.method public static getScheduleExactAlarmPermission()Lcom/hjq/permissions/permission/base/IPermission;
    .locals 1

    .line 1
    const-string v0, "android.permission.SCHEDULE_EXACT_ALARM"

    .line 2
    .line 3
    invoke-static {v0}, Lcom/hjq/permissions/permission/PermissionLists;->getCachePermission(Ljava/lang/String;)Lcom/hjq/permissions/permission/base/IPermission;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    return-object v0

    .line 10
    :cond_0
    new-instance v0, Lcom/hjq/permissions/permission/special/ScheduleExactAlarmPermission;

    .line 11
    .line 12
    invoke-direct {v0}, Lcom/hjq/permissions/permission/special/ScheduleExactAlarmPermission;-><init>()V

    .line 13
    .line 14
    .line 15
    invoke-static {v0}, Lcom/hjq/permissions/permission/PermissionLists;->putCachePermission(Lcom/hjq/permissions/permission/base/IPermission;)Lcom/hjq/permissions/permission/base/IPermission;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    return-object v0
.end method

.method public static getSendSmsPermission()Lcom/hjq/permissions/permission/base/IPermission;
    .locals 4

    .line 1
    const-string v0, "android.permission.SEND_SMS"

    .line 2
    .line 3
    invoke-static {v0}, Lcom/hjq/permissions/permission/PermissionLists;->getCachePermission(Ljava/lang/String;)Lcom/hjq/permissions/permission/base/IPermission;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    return-object v1

    .line 10
    :cond_0
    new-instance v1, Lcom/hjq/permissions/permission/dangerous/StandardDangerousPermission;

    .line 11
    .line 12
    const-string v2, "sms_group"

    .line 13
    .line 14
    const/16 v3, 0x17

    .line 15
    .line 16
    invoke-direct {v1, v0, v2, v3}, Lcom/hjq/permissions/permission/dangerous/StandardDangerousPermission;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 17
    .line 18
    .line 19
    invoke-static {v1}, Lcom/hjq/permissions/permission/PermissionLists;->putCachePermission(Lcom/hjq/permissions/permission/base/IPermission;)Lcom/hjq/permissions/permission/base/IPermission;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    return-object v0
.end method

.method public static getSystemAlertWindowPermission()Lcom/hjq/permissions/permission/base/IPermission;
    .locals 1

    .line 1
    const-string v0, "android.permission.SYSTEM_ALERT_WINDOW"

    .line 2
    .line 3
    invoke-static {v0}, Lcom/hjq/permissions/permission/PermissionLists;->getCachePermission(Ljava/lang/String;)Lcom/hjq/permissions/permission/base/IPermission;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    return-object v0

    .line 10
    :cond_0
    new-instance v0, Lcom/hjq/permissions/permission/special/SystemAlertWindowPermission;

    .line 11
    .line 12
    invoke-direct {v0}, Lcom/hjq/permissions/permission/special/SystemAlertWindowPermission;-><init>()V

    .line 13
    .line 14
    .line 15
    invoke-static {v0}, Lcom/hjq/permissions/permission/PermissionLists;->putCachePermission(Lcom/hjq/permissions/permission/base/IPermission;)Lcom/hjq/permissions/permission/base/IPermission;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    return-object v0
.end method

.method public static getUseFullScreenIntentPermission()Lcom/hjq/permissions/permission/base/IPermission;
    .locals 1

    .line 1
    const-string v0, "android.permission.USE_FULL_SCREEN_INTENT"

    .line 2
    .line 3
    invoke-static {v0}, Lcom/hjq/permissions/permission/PermissionLists;->getCachePermission(Ljava/lang/String;)Lcom/hjq/permissions/permission/base/IPermission;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    return-object v0

    .line 10
    :cond_0
    new-instance v0, Lcom/hjq/permissions/permission/special/UseFullScreenIntentPermission;

    .line 11
    .line 12
    invoke-direct {v0}, Lcom/hjq/permissions/permission/special/UseFullScreenIntentPermission;-><init>()V

    .line 13
    .line 14
    .line 15
    invoke-static {v0}, Lcom/hjq/permissions/permission/PermissionLists;->putCachePermission(Lcom/hjq/permissions/permission/base/IPermission;)Lcom/hjq/permissions/permission/base/IPermission;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    return-object v0
.end method

.method public static getUseSipPermission()Lcom/hjq/permissions/permission/base/IPermission;
    .locals 4

    .line 1
    const-string v0, "android.permission.USE_SIP"

    .line 2
    .line 3
    invoke-static {v0}, Lcom/hjq/permissions/permission/PermissionLists;->getCachePermission(Ljava/lang/String;)Lcom/hjq/permissions/permission/base/IPermission;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    return-object v1

    .line 10
    :cond_0
    new-instance v1, Lcom/hjq/permissions/permission/dangerous/StandardDangerousPermission;

    .line 11
    .line 12
    const-string v2, "phone_group"

    .line 13
    .line 14
    const/16 v3, 0x17

    .line 15
    .line 16
    invoke-direct {v1, v0, v2, v3}, Lcom/hjq/permissions/permission/dangerous/StandardDangerousPermission;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 17
    .line 18
    .line 19
    invoke-static {v1}, Lcom/hjq/permissions/permission/PermissionLists;->putCachePermission(Lcom/hjq/permissions/permission/base/IPermission;)Lcom/hjq/permissions/permission/base/IPermission;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    return-object v0
.end method

.method public static getWriteActiveCaloriesBurnedPermission()Lcom/hjq/permissions/permission/base/IPermission;
    .locals 3

    .line 1
    const-string v0, "android.permission.health.WRITE_ACTIVE_CALORIES_BURNED"

    .line 2
    .line 3
    invoke-static {v0}, Lcom/hjq/permissions/permission/PermissionLists;->getCachePermission(Ljava/lang/String;)Lcom/hjq/permissions/permission/base/IPermission;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    return-object v1

    .line 10
    :cond_0
    new-instance v1, Lcom/hjq/permissions/permission/dangerous/StandardFitnessAndWellnessDataPermission;

    .line 11
    .line 12
    const/16 v2, 0x22

    .line 13
    .line 14
    invoke-direct {v1, v0, v2}, Lcom/hjq/permissions/permission/dangerous/StandardFitnessAndWellnessDataPermission;-><init>(Ljava/lang/String;I)V

    .line 15
    .line 16
    .line 17
    invoke-static {v1}, Lcom/hjq/permissions/permission/PermissionLists;->putCachePermission(Lcom/hjq/permissions/permission/base/IPermission;)Lcom/hjq/permissions/permission/base/IPermission;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    return-object v0
.end method

.method public static getWriteActivityIntensityPermission()Lcom/hjq/permissions/permission/base/IPermission;
    .locals 3

    .line 1
    const-string v0, "android.permission.health.WRITE_ACTIVITY_INTENSITY"

    .line 2
    .line 3
    invoke-static {v0}, Lcom/hjq/permissions/permission/PermissionLists;->getCachePermission(Ljava/lang/String;)Lcom/hjq/permissions/permission/base/IPermission;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    return-object v1

    .line 10
    :cond_0
    new-instance v1, Lcom/hjq/permissions/permission/dangerous/StandardFitnessAndWellnessDataPermission;

    .line 11
    .line 12
    const/16 v2, 0x24

    .line 13
    .line 14
    invoke-direct {v1, v0, v2}, Lcom/hjq/permissions/permission/dangerous/StandardFitnessAndWellnessDataPermission;-><init>(Ljava/lang/String;I)V

    .line 15
    .line 16
    .line 17
    invoke-static {v1}, Lcom/hjq/permissions/permission/PermissionLists;->putCachePermission(Lcom/hjq/permissions/permission/base/IPermission;)Lcom/hjq/permissions/permission/base/IPermission;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    return-object v0
.end method

.method public static getWriteBasalBodyTemperaturePermission()Lcom/hjq/permissions/permission/base/IPermission;
    .locals 3

    .line 1
    const-string v0, "android.permission.health.WRITE_BASAL_BODY_TEMPERATURE"

    .line 2
    .line 3
    invoke-static {v0}, Lcom/hjq/permissions/permission/PermissionLists;->getCachePermission(Ljava/lang/String;)Lcom/hjq/permissions/permission/base/IPermission;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    return-object v1

    .line 10
    :cond_0
    new-instance v1, Lcom/hjq/permissions/permission/dangerous/StandardFitnessAndWellnessDataPermission;

    .line 11
    .line 12
    const/16 v2, 0x22

    .line 13
    .line 14
    invoke-direct {v1, v0, v2}, Lcom/hjq/permissions/permission/dangerous/StandardFitnessAndWellnessDataPermission;-><init>(Ljava/lang/String;I)V

    .line 15
    .line 16
    .line 17
    invoke-static {v1}, Lcom/hjq/permissions/permission/PermissionLists;->putCachePermission(Lcom/hjq/permissions/permission/base/IPermission;)Lcom/hjq/permissions/permission/base/IPermission;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    return-object v0
.end method

.method public static getWriteBasalMetabolicRatePermission()Lcom/hjq/permissions/permission/base/IPermission;
    .locals 3

    .line 1
    const-string v0, "android.permission.health.WRITE_BASAL_METABOLIC_RATE"

    .line 2
    .line 3
    invoke-static {v0}, Lcom/hjq/permissions/permission/PermissionLists;->getCachePermission(Ljava/lang/String;)Lcom/hjq/permissions/permission/base/IPermission;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    return-object v1

    .line 10
    :cond_0
    new-instance v1, Lcom/hjq/permissions/permission/dangerous/StandardFitnessAndWellnessDataPermission;

    .line 11
    .line 12
    const/16 v2, 0x22

    .line 13
    .line 14
    invoke-direct {v1, v0, v2}, Lcom/hjq/permissions/permission/dangerous/StandardFitnessAndWellnessDataPermission;-><init>(Ljava/lang/String;I)V

    .line 15
    .line 16
    .line 17
    invoke-static {v1}, Lcom/hjq/permissions/permission/PermissionLists;->putCachePermission(Lcom/hjq/permissions/permission/base/IPermission;)Lcom/hjq/permissions/permission/base/IPermission;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    return-object v0
.end method

.method public static getWriteBloodGlucosePermission()Lcom/hjq/permissions/permission/base/IPermission;
    .locals 3

    .line 1
    const-string v0, "android.permission.health.WRITE_BLOOD_GLUCOSE"

    .line 2
    .line 3
    invoke-static {v0}, Lcom/hjq/permissions/permission/PermissionLists;->getCachePermission(Ljava/lang/String;)Lcom/hjq/permissions/permission/base/IPermission;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    return-object v1

    .line 10
    :cond_0
    new-instance v1, Lcom/hjq/permissions/permission/dangerous/StandardFitnessAndWellnessDataPermission;

    .line 11
    .line 12
    const/16 v2, 0x22

    .line 13
    .line 14
    invoke-direct {v1, v0, v2}, Lcom/hjq/permissions/permission/dangerous/StandardFitnessAndWellnessDataPermission;-><init>(Ljava/lang/String;I)V

    .line 15
    .line 16
    .line 17
    invoke-static {v1}, Lcom/hjq/permissions/permission/PermissionLists;->putCachePermission(Lcom/hjq/permissions/permission/base/IPermission;)Lcom/hjq/permissions/permission/base/IPermission;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    return-object v0
.end method

.method public static getWriteBloodPressurePermission()Lcom/hjq/permissions/permission/base/IPermission;
    .locals 3

    .line 1
    const-string v0, "android.permission.health.WRITE_BLOOD_PRESSURE"

    .line 2
    .line 3
    invoke-static {v0}, Lcom/hjq/permissions/permission/PermissionLists;->getCachePermission(Ljava/lang/String;)Lcom/hjq/permissions/permission/base/IPermission;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    return-object v1

    .line 10
    :cond_0
    new-instance v1, Lcom/hjq/permissions/permission/dangerous/StandardFitnessAndWellnessDataPermission;

    .line 11
    .line 12
    const/16 v2, 0x22

    .line 13
    .line 14
    invoke-direct {v1, v0, v2}, Lcom/hjq/permissions/permission/dangerous/StandardFitnessAndWellnessDataPermission;-><init>(Ljava/lang/String;I)V

    .line 15
    .line 16
    .line 17
    invoke-static {v1}, Lcom/hjq/permissions/permission/PermissionLists;->putCachePermission(Lcom/hjq/permissions/permission/base/IPermission;)Lcom/hjq/permissions/permission/base/IPermission;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    return-object v0
.end method

.method public static getWriteBodyFatPermission()Lcom/hjq/permissions/permission/base/IPermission;
    .locals 3

    .line 1
    const-string v0, "android.permission.health.WRITE_BODY_FAT"

    .line 2
    .line 3
    invoke-static {v0}, Lcom/hjq/permissions/permission/PermissionLists;->getCachePermission(Ljava/lang/String;)Lcom/hjq/permissions/permission/base/IPermission;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    return-object v1

    .line 10
    :cond_0
    new-instance v1, Lcom/hjq/permissions/permission/dangerous/StandardFitnessAndWellnessDataPermission;

    .line 11
    .line 12
    const/16 v2, 0x22

    .line 13
    .line 14
    invoke-direct {v1, v0, v2}, Lcom/hjq/permissions/permission/dangerous/StandardFitnessAndWellnessDataPermission;-><init>(Ljava/lang/String;I)V

    .line 15
    .line 16
    .line 17
    invoke-static {v1}, Lcom/hjq/permissions/permission/PermissionLists;->putCachePermission(Lcom/hjq/permissions/permission/base/IPermission;)Lcom/hjq/permissions/permission/base/IPermission;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    return-object v0
.end method

.method public static getWriteBodyTemperaturePermission()Lcom/hjq/permissions/permission/base/IPermission;
    .locals 3

    .line 1
    const-string v0, "android.permission.health.WRITE_BODY_TEMPERATURE"

    .line 2
    .line 3
    invoke-static {v0}, Lcom/hjq/permissions/permission/PermissionLists;->getCachePermission(Ljava/lang/String;)Lcom/hjq/permissions/permission/base/IPermission;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    return-object v1

    .line 10
    :cond_0
    new-instance v1, Lcom/hjq/permissions/permission/dangerous/StandardFitnessAndWellnessDataPermission;

    .line 11
    .line 12
    const/16 v2, 0x22

    .line 13
    .line 14
    invoke-direct {v1, v0, v2}, Lcom/hjq/permissions/permission/dangerous/StandardFitnessAndWellnessDataPermission;-><init>(Ljava/lang/String;I)V

    .line 15
    .line 16
    .line 17
    invoke-static {v1}, Lcom/hjq/permissions/permission/PermissionLists;->putCachePermission(Lcom/hjq/permissions/permission/base/IPermission;)Lcom/hjq/permissions/permission/base/IPermission;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    return-object v0
.end method

.method public static getWriteBodyWaterMassPermission()Lcom/hjq/permissions/permission/base/IPermission;
    .locals 3

    .line 1
    const-string v0, "android.permission.health.WRITE_BODY_WATER_MASS"

    .line 2
    .line 3
    invoke-static {v0}, Lcom/hjq/permissions/permission/PermissionLists;->getCachePermission(Ljava/lang/String;)Lcom/hjq/permissions/permission/base/IPermission;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    return-object v1

    .line 10
    :cond_0
    new-instance v1, Lcom/hjq/permissions/permission/dangerous/StandardFitnessAndWellnessDataPermission;

    .line 11
    .line 12
    const/16 v2, 0x22

    .line 13
    .line 14
    invoke-direct {v1, v0, v2}, Lcom/hjq/permissions/permission/dangerous/StandardFitnessAndWellnessDataPermission;-><init>(Ljava/lang/String;I)V

    .line 15
    .line 16
    .line 17
    invoke-static {v1}, Lcom/hjq/permissions/permission/PermissionLists;->putCachePermission(Lcom/hjq/permissions/permission/base/IPermission;)Lcom/hjq/permissions/permission/base/IPermission;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    return-object v0
.end method

.method public static getWriteBoneMassPermission()Lcom/hjq/permissions/permission/base/IPermission;
    .locals 3

    .line 1
    const-string v0, "android.permission.health.WRITE_BONE_MASS"

    .line 2
    .line 3
    invoke-static {v0}, Lcom/hjq/permissions/permission/PermissionLists;->getCachePermission(Ljava/lang/String;)Lcom/hjq/permissions/permission/base/IPermission;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    return-object v1

    .line 10
    :cond_0
    new-instance v1, Lcom/hjq/permissions/permission/dangerous/StandardFitnessAndWellnessDataPermission;

    .line 11
    .line 12
    const/16 v2, 0x22

    .line 13
    .line 14
    invoke-direct {v1, v0, v2}, Lcom/hjq/permissions/permission/dangerous/StandardFitnessAndWellnessDataPermission;-><init>(Ljava/lang/String;I)V

    .line 15
    .line 16
    .line 17
    invoke-static {v1}, Lcom/hjq/permissions/permission/PermissionLists;->putCachePermission(Lcom/hjq/permissions/permission/base/IPermission;)Lcom/hjq/permissions/permission/base/IPermission;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    return-object v0
.end method

.method public static getWriteCalendarPermission()Lcom/hjq/permissions/permission/base/IPermission;
    .locals 4

    .line 1
    const-string v0, "android.permission.WRITE_CALENDAR"

    .line 2
    .line 3
    invoke-static {v0}, Lcom/hjq/permissions/permission/PermissionLists;->getCachePermission(Ljava/lang/String;)Lcom/hjq/permissions/permission/base/IPermission;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    return-object v1

    .line 10
    :cond_0
    new-instance v1, Lcom/hjq/permissions/permission/dangerous/StandardDangerousPermission;

    .line 11
    .line 12
    const-string v2, "calendar_group"

    .line 13
    .line 14
    const/16 v3, 0x17

    .line 15
    .line 16
    invoke-direct {v1, v0, v2, v3}, Lcom/hjq/permissions/permission/dangerous/StandardDangerousPermission;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 17
    .line 18
    .line 19
    invoke-static {v1}, Lcom/hjq/permissions/permission/PermissionLists;->putCachePermission(Lcom/hjq/permissions/permission/base/IPermission;)Lcom/hjq/permissions/permission/base/IPermission;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    return-object v0
.end method

.method public static getWriteCallLogPermission()Lcom/hjq/permissions/permission/base/IPermission;
    .locals 4

    .line 1
    const-string v0, "android.permission.WRITE_CALL_LOG"

    .line 2
    .line 3
    invoke-static {v0}, Lcom/hjq/permissions/permission/PermissionLists;->getCachePermission(Ljava/lang/String;)Lcom/hjq/permissions/permission/base/IPermission;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    return-object v1

    .line 10
    :cond_0
    invoke-static {}, Lcom/hjq/permissions/tools/PermissionVersion;->isAndroid9()Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-eqz v1, :cond_1

    .line 15
    .line 16
    const-string v1, "call_log_group"

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_1
    const-string v1, "phone_group"

    .line 20
    .line 21
    :goto_0
    new-instance v2, Lcom/hjq/permissions/permission/dangerous/StandardDangerousPermission;

    .line 22
    .line 23
    const/16 v3, 0x17

    .line 24
    .line 25
    invoke-direct {v2, v0, v1, v3}, Lcom/hjq/permissions/permission/dangerous/StandardDangerousPermission;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 26
    .line 27
    .line 28
    invoke-static {v2}, Lcom/hjq/permissions/permission/PermissionLists;->putCachePermission(Lcom/hjq/permissions/permission/base/IPermission;)Lcom/hjq/permissions/permission/base/IPermission;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    return-object v0
.end method

.method public static getWriteCervicalMucusPermission()Lcom/hjq/permissions/permission/base/IPermission;
    .locals 3

    .line 1
    const-string v0, "android.permission.health.WRITE_CERVICAL_MUCUS"

    .line 2
    .line 3
    invoke-static {v0}, Lcom/hjq/permissions/permission/PermissionLists;->getCachePermission(Ljava/lang/String;)Lcom/hjq/permissions/permission/base/IPermission;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    return-object v1

    .line 10
    :cond_0
    new-instance v1, Lcom/hjq/permissions/permission/dangerous/StandardFitnessAndWellnessDataPermission;

    .line 11
    .line 12
    const/16 v2, 0x22

    .line 13
    .line 14
    invoke-direct {v1, v0, v2}, Lcom/hjq/permissions/permission/dangerous/StandardFitnessAndWellnessDataPermission;-><init>(Ljava/lang/String;I)V

    .line 15
    .line 16
    .line 17
    invoke-static {v1}, Lcom/hjq/permissions/permission/PermissionLists;->putCachePermission(Lcom/hjq/permissions/permission/base/IPermission;)Lcom/hjq/permissions/permission/base/IPermission;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    return-object v0
.end method

.method public static getWriteContactsPermission()Lcom/hjq/permissions/permission/base/IPermission;
    .locals 4

    .line 1
    const-string v0, "android.permission.WRITE_CONTACTS"

    .line 2
    .line 3
    invoke-static {v0}, Lcom/hjq/permissions/permission/PermissionLists;->getCachePermission(Ljava/lang/String;)Lcom/hjq/permissions/permission/base/IPermission;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    return-object v1

    .line 10
    :cond_0
    new-instance v1, Lcom/hjq/permissions/permission/dangerous/StandardDangerousPermission;

    .line 11
    .line 12
    const-string v2, "contacts_group"

    .line 13
    .line 14
    const/16 v3, 0x17

    .line 15
    .line 16
    invoke-direct {v1, v0, v2, v3}, Lcom/hjq/permissions/permission/dangerous/StandardDangerousPermission;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 17
    .line 18
    .line 19
    invoke-static {v1}, Lcom/hjq/permissions/permission/PermissionLists;->putCachePermission(Lcom/hjq/permissions/permission/base/IPermission;)Lcom/hjq/permissions/permission/base/IPermission;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    return-object v0
.end method

.method public static getWriteDistancePermission()Lcom/hjq/permissions/permission/base/IPermission;
    .locals 3

    .line 1
    const-string v0, "android.permission.health.WRITE_DISTANCE"

    .line 2
    .line 3
    invoke-static {v0}, Lcom/hjq/permissions/permission/PermissionLists;->getCachePermission(Ljava/lang/String;)Lcom/hjq/permissions/permission/base/IPermission;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    return-object v1

    .line 10
    :cond_0
    new-instance v1, Lcom/hjq/permissions/permission/dangerous/StandardFitnessAndWellnessDataPermission;

    .line 11
    .line 12
    const/16 v2, 0x22

    .line 13
    .line 14
    invoke-direct {v1, v0, v2}, Lcom/hjq/permissions/permission/dangerous/StandardFitnessAndWellnessDataPermission;-><init>(Ljava/lang/String;I)V

    .line 15
    .line 16
    .line 17
    invoke-static {v1}, Lcom/hjq/permissions/permission/PermissionLists;->putCachePermission(Lcom/hjq/permissions/permission/base/IPermission;)Lcom/hjq/permissions/permission/base/IPermission;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    return-object v0
.end method

.method public static getWriteElevationGainedPermission()Lcom/hjq/permissions/permission/base/IPermission;
    .locals 3

    .line 1
    const-string v0, "android.permission.health.WRITE_ELEVATION_GAINED"

    .line 2
    .line 3
    invoke-static {v0}, Lcom/hjq/permissions/permission/PermissionLists;->getCachePermission(Ljava/lang/String;)Lcom/hjq/permissions/permission/base/IPermission;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    return-object v1

    .line 10
    :cond_0
    new-instance v1, Lcom/hjq/permissions/permission/dangerous/StandardFitnessAndWellnessDataPermission;

    .line 11
    .line 12
    const/16 v2, 0x22

    .line 13
    .line 14
    invoke-direct {v1, v0, v2}, Lcom/hjq/permissions/permission/dangerous/StandardFitnessAndWellnessDataPermission;-><init>(Ljava/lang/String;I)V

    .line 15
    .line 16
    .line 17
    invoke-static {v1}, Lcom/hjq/permissions/permission/PermissionLists;->putCachePermission(Lcom/hjq/permissions/permission/base/IPermission;)Lcom/hjq/permissions/permission/base/IPermission;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    return-object v0
.end method

.method public static getWriteExercisePermission()Lcom/hjq/permissions/permission/base/IPermission;
    .locals 3

    .line 1
    const-string v0, "android.permission.health.WRITE_EXERCISE"

    .line 2
    .line 3
    invoke-static {v0}, Lcom/hjq/permissions/permission/PermissionLists;->getCachePermission(Ljava/lang/String;)Lcom/hjq/permissions/permission/base/IPermission;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    return-object v1

    .line 10
    :cond_0
    new-instance v1, Lcom/hjq/permissions/permission/dangerous/StandardFitnessAndWellnessDataPermission;

    .line 11
    .line 12
    const/16 v2, 0x22

    .line 13
    .line 14
    invoke-direct {v1, v0, v2}, Lcom/hjq/permissions/permission/dangerous/StandardFitnessAndWellnessDataPermission;-><init>(Ljava/lang/String;I)V

    .line 15
    .line 16
    .line 17
    invoke-static {v1}, Lcom/hjq/permissions/permission/PermissionLists;->putCachePermission(Lcom/hjq/permissions/permission/base/IPermission;)Lcom/hjq/permissions/permission/base/IPermission;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    return-object v0
.end method

.method public static getWriteExerciseRoutePermission()Lcom/hjq/permissions/permission/base/IPermission;
    .locals 3

    .line 1
    const-string v0, "android.permission.health.WRITE_EXERCISE_ROUTE"

    .line 2
    .line 3
    invoke-static {v0}, Lcom/hjq/permissions/permission/PermissionLists;->getCachePermission(Ljava/lang/String;)Lcom/hjq/permissions/permission/base/IPermission;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    return-object v1

    .line 10
    :cond_0
    new-instance v1, Lcom/hjq/permissions/permission/dangerous/StandardFitnessAndWellnessDataPermission;

    .line 11
    .line 12
    const/16 v2, 0x23

    .line 13
    .line 14
    invoke-direct {v1, v0, v2}, Lcom/hjq/permissions/permission/dangerous/StandardFitnessAndWellnessDataPermission;-><init>(Ljava/lang/String;I)V

    .line 15
    .line 16
    .line 17
    invoke-static {v1}, Lcom/hjq/permissions/permission/PermissionLists;->putCachePermission(Lcom/hjq/permissions/permission/base/IPermission;)Lcom/hjq/permissions/permission/base/IPermission;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    return-object v0
.end method

.method public static getWriteExternalStoragePermission()Lcom/hjq/permissions/permission/base/IPermission;
    .locals 1

    .line 1
    const-string v0, "android.permission.WRITE_EXTERNAL_STORAGE"

    .line 2
    .line 3
    invoke-static {v0}, Lcom/hjq/permissions/permission/PermissionLists;->getCachePermission(Ljava/lang/String;)Lcom/hjq/permissions/permission/base/IPermission;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    return-object v0

    .line 10
    :cond_0
    new-instance v0, Lcom/hjq/permissions/permission/dangerous/WriteExternalStoragePermission;

    .line 11
    .line 12
    invoke-direct {v0}, Lcom/hjq/permissions/permission/dangerous/WriteExternalStoragePermission;-><init>()V

    .line 13
    .line 14
    .line 15
    invoke-static {v0}, Lcom/hjq/permissions/permission/PermissionLists;->putCachePermission(Lcom/hjq/permissions/permission/base/IPermission;)Lcom/hjq/permissions/permission/base/IPermission;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    return-object v0
.end method

.method public static getWriteFloorsClimbedPermission()Lcom/hjq/permissions/permission/base/IPermission;
    .locals 3

    .line 1
    const-string v0, "android.permission.health.WRITE_FLOORS_CLIMBED"

    .line 2
    .line 3
    invoke-static {v0}, Lcom/hjq/permissions/permission/PermissionLists;->getCachePermission(Ljava/lang/String;)Lcom/hjq/permissions/permission/base/IPermission;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    return-object v1

    .line 10
    :cond_0
    new-instance v1, Lcom/hjq/permissions/permission/dangerous/StandardFitnessAndWellnessDataPermission;

    .line 11
    .line 12
    const/16 v2, 0x22

    .line 13
    .line 14
    invoke-direct {v1, v0, v2}, Lcom/hjq/permissions/permission/dangerous/StandardFitnessAndWellnessDataPermission;-><init>(Ljava/lang/String;I)V

    .line 15
    .line 16
    .line 17
    invoke-static {v1}, Lcom/hjq/permissions/permission/PermissionLists;->putCachePermission(Lcom/hjq/permissions/permission/base/IPermission;)Lcom/hjq/permissions/permission/base/IPermission;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    return-object v0
.end method

.method public static getWriteHeartRatePermission()Lcom/hjq/permissions/permission/base/IPermission;
    .locals 3

    .line 1
    const-string v0, "android.permission.health.WRITE_HEART_RATE"

    .line 2
    .line 3
    invoke-static {v0}, Lcom/hjq/permissions/permission/PermissionLists;->getCachePermission(Ljava/lang/String;)Lcom/hjq/permissions/permission/base/IPermission;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    return-object v1

    .line 10
    :cond_0
    new-instance v1, Lcom/hjq/permissions/permission/dangerous/StandardFitnessAndWellnessDataPermission;

    .line 11
    .line 12
    const/16 v2, 0x22

    .line 13
    .line 14
    invoke-direct {v1, v0, v2}, Lcom/hjq/permissions/permission/dangerous/StandardFitnessAndWellnessDataPermission;-><init>(Ljava/lang/String;I)V

    .line 15
    .line 16
    .line 17
    invoke-static {v1}, Lcom/hjq/permissions/permission/PermissionLists;->putCachePermission(Lcom/hjq/permissions/permission/base/IPermission;)Lcom/hjq/permissions/permission/base/IPermission;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    return-object v0
.end method

.method public static getWriteHeartRateVariabilityPermission()Lcom/hjq/permissions/permission/base/IPermission;
    .locals 3

    .line 1
    const-string v0, "android.permission.health.WRITE_HEART_RATE_VARIABILITY"

    .line 2
    .line 3
    invoke-static {v0}, Lcom/hjq/permissions/permission/PermissionLists;->getCachePermission(Ljava/lang/String;)Lcom/hjq/permissions/permission/base/IPermission;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    return-object v1

    .line 10
    :cond_0
    new-instance v1, Lcom/hjq/permissions/permission/dangerous/StandardFitnessAndWellnessDataPermission;

    .line 11
    .line 12
    const/16 v2, 0x22

    .line 13
    .line 14
    invoke-direct {v1, v0, v2}, Lcom/hjq/permissions/permission/dangerous/StandardFitnessAndWellnessDataPermission;-><init>(Ljava/lang/String;I)V

    .line 15
    .line 16
    .line 17
    invoke-static {v1}, Lcom/hjq/permissions/permission/PermissionLists;->putCachePermission(Lcom/hjq/permissions/permission/base/IPermission;)Lcom/hjq/permissions/permission/base/IPermission;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    return-object v0
.end method

.method public static getWriteHeightPermission()Lcom/hjq/permissions/permission/base/IPermission;
    .locals 3

    .line 1
    const-string v0, "android.permission.health.WRITE_HEIGHT"

    .line 2
    .line 3
    invoke-static {v0}, Lcom/hjq/permissions/permission/PermissionLists;->getCachePermission(Ljava/lang/String;)Lcom/hjq/permissions/permission/base/IPermission;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    return-object v1

    .line 10
    :cond_0
    new-instance v1, Lcom/hjq/permissions/permission/dangerous/StandardFitnessAndWellnessDataPermission;

    .line 11
    .line 12
    const/16 v2, 0x22

    .line 13
    .line 14
    invoke-direct {v1, v0, v2}, Lcom/hjq/permissions/permission/dangerous/StandardFitnessAndWellnessDataPermission;-><init>(Ljava/lang/String;I)V

    .line 15
    .line 16
    .line 17
    invoke-static {v1}, Lcom/hjq/permissions/permission/PermissionLists;->putCachePermission(Lcom/hjq/permissions/permission/base/IPermission;)Lcom/hjq/permissions/permission/base/IPermission;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    return-object v0
.end method

.method public static getWriteHydrationPermission()Lcom/hjq/permissions/permission/base/IPermission;
    .locals 3

    .line 1
    const-string v0, "android.permission.health.WRITE_HYDRATION"

    .line 2
    .line 3
    invoke-static {v0}, Lcom/hjq/permissions/permission/PermissionLists;->getCachePermission(Ljava/lang/String;)Lcom/hjq/permissions/permission/base/IPermission;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    return-object v1

    .line 10
    :cond_0
    new-instance v1, Lcom/hjq/permissions/permission/dangerous/StandardFitnessAndWellnessDataPermission;

    .line 11
    .line 12
    const/16 v2, 0x22

    .line 13
    .line 14
    invoke-direct {v1, v0, v2}, Lcom/hjq/permissions/permission/dangerous/StandardFitnessAndWellnessDataPermission;-><init>(Ljava/lang/String;I)V

    .line 15
    .line 16
    .line 17
    invoke-static {v1}, Lcom/hjq/permissions/permission/PermissionLists;->putCachePermission(Lcom/hjq/permissions/permission/base/IPermission;)Lcom/hjq/permissions/permission/base/IPermission;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    return-object v0
.end method

.method public static getWriteIntermenstrualBleedingPermission()Lcom/hjq/permissions/permission/base/IPermission;
    .locals 3

    .line 1
    const-string v0, "android.permission.health.WRITE_INTERMENSTRUAL_BLEEDING"

    .line 2
    .line 3
    invoke-static {v0}, Lcom/hjq/permissions/permission/PermissionLists;->getCachePermission(Ljava/lang/String;)Lcom/hjq/permissions/permission/base/IPermission;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    return-object v1

    .line 10
    :cond_0
    new-instance v1, Lcom/hjq/permissions/permission/dangerous/StandardFitnessAndWellnessDataPermission;

    .line 11
    .line 12
    const/16 v2, 0x22

    .line 13
    .line 14
    invoke-direct {v1, v0, v2}, Lcom/hjq/permissions/permission/dangerous/StandardFitnessAndWellnessDataPermission;-><init>(Ljava/lang/String;I)V

    .line 15
    .line 16
    .line 17
    invoke-static {v1}, Lcom/hjq/permissions/permission/PermissionLists;->putCachePermission(Lcom/hjq/permissions/permission/base/IPermission;)Lcom/hjq/permissions/permission/base/IPermission;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    return-object v0
.end method

.method public static getWriteLeanBodyMassPermission()Lcom/hjq/permissions/permission/base/IPermission;
    .locals 3

    .line 1
    const-string v0, "android.permission.health.WRITE_LEAN_BODY_MASS"

    .line 2
    .line 3
    invoke-static {v0}, Lcom/hjq/permissions/permission/PermissionLists;->getCachePermission(Ljava/lang/String;)Lcom/hjq/permissions/permission/base/IPermission;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    return-object v1

    .line 10
    :cond_0
    new-instance v1, Lcom/hjq/permissions/permission/dangerous/StandardFitnessAndWellnessDataPermission;

    .line 11
    .line 12
    const/16 v2, 0x22

    .line 13
    .line 14
    invoke-direct {v1, v0, v2}, Lcom/hjq/permissions/permission/dangerous/StandardFitnessAndWellnessDataPermission;-><init>(Ljava/lang/String;I)V

    .line 15
    .line 16
    .line 17
    invoke-static {v1}, Lcom/hjq/permissions/permission/PermissionLists;->putCachePermission(Lcom/hjq/permissions/permission/base/IPermission;)Lcom/hjq/permissions/permission/base/IPermission;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    return-object v0
.end method

.method public static getWriteMedicalDataPermission()Lcom/hjq/permissions/permission/base/IPermission;
    .locals 3

    .line 1
    const-string v0, "android.permission.health.WRITE_MEDICAL_DATA"

    .line 2
    .line 3
    invoke-static {v0}, Lcom/hjq/permissions/permission/PermissionLists;->getCachePermission(Ljava/lang/String;)Lcom/hjq/permissions/permission/base/IPermission;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    return-object v1

    .line 10
    :cond_0
    new-instance v1, Lcom/hjq/permissions/permission/dangerous/StandardHealthRecordsPermission;

    .line 11
    .line 12
    const/16 v2, 0x24

    .line 13
    .line 14
    invoke-direct {v1, v0, v2}, Lcom/hjq/permissions/permission/dangerous/StandardHealthRecordsPermission;-><init>(Ljava/lang/String;I)V

    .line 15
    .line 16
    .line 17
    invoke-static {v1}, Lcom/hjq/permissions/permission/PermissionLists;->putCachePermission(Lcom/hjq/permissions/permission/base/IPermission;)Lcom/hjq/permissions/permission/base/IPermission;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    return-object v0
.end method

.method public static getWriteMenstruationPermission()Lcom/hjq/permissions/permission/base/IPermission;
    .locals 3

    .line 1
    const-string v0, "android.permission.health.WRITE_MENSTRUATION"

    .line 2
    .line 3
    invoke-static {v0}, Lcom/hjq/permissions/permission/PermissionLists;->getCachePermission(Ljava/lang/String;)Lcom/hjq/permissions/permission/base/IPermission;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    return-object v1

    .line 10
    :cond_0
    new-instance v1, Lcom/hjq/permissions/permission/dangerous/StandardFitnessAndWellnessDataPermission;

    .line 11
    .line 12
    const/16 v2, 0x22

    .line 13
    .line 14
    invoke-direct {v1, v0, v2}, Lcom/hjq/permissions/permission/dangerous/StandardFitnessAndWellnessDataPermission;-><init>(Ljava/lang/String;I)V

    .line 15
    .line 16
    .line 17
    invoke-static {v1}, Lcom/hjq/permissions/permission/PermissionLists;->putCachePermission(Lcom/hjq/permissions/permission/base/IPermission;)Lcom/hjq/permissions/permission/base/IPermission;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    return-object v0
.end method

.method public static getWriteMindfulnessPermission()Lcom/hjq/permissions/permission/base/IPermission;
    .locals 3

    .line 1
    const-string v0, "android.permission.health.WRITE_MINDFULNESS"

    .line 2
    .line 3
    invoke-static {v0}, Lcom/hjq/permissions/permission/PermissionLists;->getCachePermission(Ljava/lang/String;)Lcom/hjq/permissions/permission/base/IPermission;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    return-object v1

    .line 10
    :cond_0
    new-instance v1, Lcom/hjq/permissions/permission/dangerous/StandardFitnessAndWellnessDataPermission;

    .line 11
    .line 12
    const/16 v2, 0x24

    .line 13
    .line 14
    invoke-direct {v1, v0, v2}, Lcom/hjq/permissions/permission/dangerous/StandardFitnessAndWellnessDataPermission;-><init>(Ljava/lang/String;I)V

    .line 15
    .line 16
    .line 17
    invoke-static {v1}, Lcom/hjq/permissions/permission/PermissionLists;->putCachePermission(Lcom/hjq/permissions/permission/base/IPermission;)Lcom/hjq/permissions/permission/base/IPermission;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    return-object v0
.end method

.method public static getWriteNutritionPermission()Lcom/hjq/permissions/permission/base/IPermission;
    .locals 3

    .line 1
    const-string v0, "android.permission.health.WRITE_NUTRITION"

    .line 2
    .line 3
    invoke-static {v0}, Lcom/hjq/permissions/permission/PermissionLists;->getCachePermission(Ljava/lang/String;)Lcom/hjq/permissions/permission/base/IPermission;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    return-object v1

    .line 10
    :cond_0
    new-instance v1, Lcom/hjq/permissions/permission/dangerous/StandardFitnessAndWellnessDataPermission;

    .line 11
    .line 12
    const/16 v2, 0x22

    .line 13
    .line 14
    invoke-direct {v1, v0, v2}, Lcom/hjq/permissions/permission/dangerous/StandardFitnessAndWellnessDataPermission;-><init>(Ljava/lang/String;I)V

    .line 15
    .line 16
    .line 17
    invoke-static {v1}, Lcom/hjq/permissions/permission/PermissionLists;->putCachePermission(Lcom/hjq/permissions/permission/base/IPermission;)Lcom/hjq/permissions/permission/base/IPermission;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    return-object v0
.end method

.method public static getWriteOvulationTestPermission()Lcom/hjq/permissions/permission/base/IPermission;
    .locals 3

    .line 1
    const-string v0, "android.permission.health.WRITE_OVULATION_TEST"

    .line 2
    .line 3
    invoke-static {v0}, Lcom/hjq/permissions/permission/PermissionLists;->getCachePermission(Ljava/lang/String;)Lcom/hjq/permissions/permission/base/IPermission;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    return-object v1

    .line 10
    :cond_0
    new-instance v1, Lcom/hjq/permissions/permission/dangerous/StandardFitnessAndWellnessDataPermission;

    .line 11
    .line 12
    const/16 v2, 0x22

    .line 13
    .line 14
    invoke-direct {v1, v0, v2}, Lcom/hjq/permissions/permission/dangerous/StandardFitnessAndWellnessDataPermission;-><init>(Ljava/lang/String;I)V

    .line 15
    .line 16
    .line 17
    invoke-static {v1}, Lcom/hjq/permissions/permission/PermissionLists;->putCachePermission(Lcom/hjq/permissions/permission/base/IPermission;)Lcom/hjq/permissions/permission/base/IPermission;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    return-object v0
.end method

.method public static getWriteOxygenSaturationPermission()Lcom/hjq/permissions/permission/base/IPermission;
    .locals 3

    .line 1
    const-string v0, "android.permission.health.WRITE_OXYGEN_SATURATION"

    .line 2
    .line 3
    invoke-static {v0}, Lcom/hjq/permissions/permission/PermissionLists;->getCachePermission(Ljava/lang/String;)Lcom/hjq/permissions/permission/base/IPermission;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    return-object v1

    .line 10
    :cond_0
    new-instance v1, Lcom/hjq/permissions/permission/dangerous/StandardFitnessAndWellnessDataPermission;

    .line 11
    .line 12
    const/16 v2, 0x22

    .line 13
    .line 14
    invoke-direct {v1, v0, v2}, Lcom/hjq/permissions/permission/dangerous/StandardFitnessAndWellnessDataPermission;-><init>(Ljava/lang/String;I)V

    .line 15
    .line 16
    .line 17
    invoke-static {v1}, Lcom/hjq/permissions/permission/PermissionLists;->putCachePermission(Lcom/hjq/permissions/permission/base/IPermission;)Lcom/hjq/permissions/permission/base/IPermission;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    return-object v0
.end method

.method public static getWritePlannedExercisePermission()Lcom/hjq/permissions/permission/base/IPermission;
    .locals 3

    .line 1
    const-string v0, "android.permission.health.WRITE_PLANNED_EXERCISE"

    .line 2
    .line 3
    invoke-static {v0}, Lcom/hjq/permissions/permission/PermissionLists;->getCachePermission(Ljava/lang/String;)Lcom/hjq/permissions/permission/base/IPermission;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    return-object v1

    .line 10
    :cond_0
    new-instance v1, Lcom/hjq/permissions/permission/dangerous/StandardFitnessAndWellnessDataPermission;

    .line 11
    .line 12
    const/16 v2, 0x23

    .line 13
    .line 14
    invoke-direct {v1, v0, v2}, Lcom/hjq/permissions/permission/dangerous/StandardFitnessAndWellnessDataPermission;-><init>(Ljava/lang/String;I)V

    .line 15
    .line 16
    .line 17
    invoke-static {v1}, Lcom/hjq/permissions/permission/PermissionLists;->putCachePermission(Lcom/hjq/permissions/permission/base/IPermission;)Lcom/hjq/permissions/permission/base/IPermission;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    return-object v0
.end method

.method public static getWritePowerPermission()Lcom/hjq/permissions/permission/base/IPermission;
    .locals 3

    .line 1
    const-string v0, "android.permission.health.WRITE_POWER"

    .line 2
    .line 3
    invoke-static {v0}, Lcom/hjq/permissions/permission/PermissionLists;->getCachePermission(Ljava/lang/String;)Lcom/hjq/permissions/permission/base/IPermission;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    return-object v1

    .line 10
    :cond_0
    new-instance v1, Lcom/hjq/permissions/permission/dangerous/StandardFitnessAndWellnessDataPermission;

    .line 11
    .line 12
    const/16 v2, 0x22

    .line 13
    .line 14
    invoke-direct {v1, v0, v2}, Lcom/hjq/permissions/permission/dangerous/StandardFitnessAndWellnessDataPermission;-><init>(Ljava/lang/String;I)V

    .line 15
    .line 16
    .line 17
    invoke-static {v1}, Lcom/hjq/permissions/permission/PermissionLists;->putCachePermission(Lcom/hjq/permissions/permission/base/IPermission;)Lcom/hjq/permissions/permission/base/IPermission;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    return-object v0
.end method

.method public static getWriteRespiratoryRatePermission()Lcom/hjq/permissions/permission/base/IPermission;
    .locals 3

    .line 1
    const-string v0, "android.permission.health.WRITE_RESPIRATORY_RATE"

    .line 2
    .line 3
    invoke-static {v0}, Lcom/hjq/permissions/permission/PermissionLists;->getCachePermission(Ljava/lang/String;)Lcom/hjq/permissions/permission/base/IPermission;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    return-object v1

    .line 10
    :cond_0
    new-instance v1, Lcom/hjq/permissions/permission/dangerous/StandardFitnessAndWellnessDataPermission;

    .line 11
    .line 12
    const/16 v2, 0x22

    .line 13
    .line 14
    invoke-direct {v1, v0, v2}, Lcom/hjq/permissions/permission/dangerous/StandardFitnessAndWellnessDataPermission;-><init>(Ljava/lang/String;I)V

    .line 15
    .line 16
    .line 17
    invoke-static {v1}, Lcom/hjq/permissions/permission/PermissionLists;->putCachePermission(Lcom/hjq/permissions/permission/base/IPermission;)Lcom/hjq/permissions/permission/base/IPermission;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    return-object v0
.end method

.method public static getWriteRestingHeartRatePermission()Lcom/hjq/permissions/permission/base/IPermission;
    .locals 3

    .line 1
    const-string v0, "android.permission.health.WRITE_RESTING_HEART_RATE"

    .line 2
    .line 3
    invoke-static {v0}, Lcom/hjq/permissions/permission/PermissionLists;->getCachePermission(Ljava/lang/String;)Lcom/hjq/permissions/permission/base/IPermission;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    return-object v1

    .line 10
    :cond_0
    new-instance v1, Lcom/hjq/permissions/permission/dangerous/StandardFitnessAndWellnessDataPermission;

    .line 11
    .line 12
    const/16 v2, 0x22

    .line 13
    .line 14
    invoke-direct {v1, v0, v2}, Lcom/hjq/permissions/permission/dangerous/StandardFitnessAndWellnessDataPermission;-><init>(Ljava/lang/String;I)V

    .line 15
    .line 16
    .line 17
    invoke-static {v1}, Lcom/hjq/permissions/permission/PermissionLists;->putCachePermission(Lcom/hjq/permissions/permission/base/IPermission;)Lcom/hjq/permissions/permission/base/IPermission;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    return-object v0
.end method

.method public static getWriteSettingsPermission()Lcom/hjq/permissions/permission/base/IPermission;
    .locals 1

    .line 1
    const-string v0, "android.permission.WRITE_SETTINGS"

    .line 2
    .line 3
    invoke-static {v0}, Lcom/hjq/permissions/permission/PermissionLists;->getCachePermission(Ljava/lang/String;)Lcom/hjq/permissions/permission/base/IPermission;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    return-object v0

    .line 10
    :cond_0
    new-instance v0, Lcom/hjq/permissions/permission/special/WriteSettingsPermission;

    .line 11
    .line 12
    invoke-direct {v0}, Lcom/hjq/permissions/permission/special/WriteSettingsPermission;-><init>()V

    .line 13
    .line 14
    .line 15
    invoke-static {v0}, Lcom/hjq/permissions/permission/PermissionLists;->putCachePermission(Lcom/hjq/permissions/permission/base/IPermission;)Lcom/hjq/permissions/permission/base/IPermission;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    return-object v0
.end method

.method public static getWriteSexualActivityPermission()Lcom/hjq/permissions/permission/base/IPermission;
    .locals 3

    .line 1
    const-string v0, "android.permission.health.WRITE_SEXUAL_ACTIVITY"

    .line 2
    .line 3
    invoke-static {v0}, Lcom/hjq/permissions/permission/PermissionLists;->getCachePermission(Ljava/lang/String;)Lcom/hjq/permissions/permission/base/IPermission;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    return-object v1

    .line 10
    :cond_0
    new-instance v1, Lcom/hjq/permissions/permission/dangerous/StandardFitnessAndWellnessDataPermission;

    .line 11
    .line 12
    const/16 v2, 0x22

    .line 13
    .line 14
    invoke-direct {v1, v0, v2}, Lcom/hjq/permissions/permission/dangerous/StandardFitnessAndWellnessDataPermission;-><init>(Ljava/lang/String;I)V

    .line 15
    .line 16
    .line 17
    invoke-static {v1}, Lcom/hjq/permissions/permission/PermissionLists;->putCachePermission(Lcom/hjq/permissions/permission/base/IPermission;)Lcom/hjq/permissions/permission/base/IPermission;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    return-object v0
.end method

.method public static getWriteSkinTemperaturePermission()Lcom/hjq/permissions/permission/base/IPermission;
    .locals 3

    .line 1
    const-string v0, "android.permission.health.WRITE_SKIN_TEMPERATURE"

    .line 2
    .line 3
    invoke-static {v0}, Lcom/hjq/permissions/permission/PermissionLists;->getCachePermission(Ljava/lang/String;)Lcom/hjq/permissions/permission/base/IPermission;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    return-object v1

    .line 10
    :cond_0
    new-instance v1, Lcom/hjq/permissions/permission/dangerous/StandardFitnessAndWellnessDataPermission;

    .line 11
    .line 12
    const/16 v2, 0x23

    .line 13
    .line 14
    invoke-direct {v1, v0, v2}, Lcom/hjq/permissions/permission/dangerous/StandardFitnessAndWellnessDataPermission;-><init>(Ljava/lang/String;I)V

    .line 15
    .line 16
    .line 17
    invoke-static {v1}, Lcom/hjq/permissions/permission/PermissionLists;->putCachePermission(Lcom/hjq/permissions/permission/base/IPermission;)Lcom/hjq/permissions/permission/base/IPermission;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    return-object v0
.end method

.method public static getWriteSleepPermission()Lcom/hjq/permissions/permission/base/IPermission;
    .locals 3

    .line 1
    const-string v0, "android.permission.health.WRITE_SLEEP"

    .line 2
    .line 3
    invoke-static {v0}, Lcom/hjq/permissions/permission/PermissionLists;->getCachePermission(Ljava/lang/String;)Lcom/hjq/permissions/permission/base/IPermission;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    return-object v1

    .line 10
    :cond_0
    new-instance v1, Lcom/hjq/permissions/permission/dangerous/StandardFitnessAndWellnessDataPermission;

    .line 11
    .line 12
    const/16 v2, 0x22

    .line 13
    .line 14
    invoke-direct {v1, v0, v2}, Lcom/hjq/permissions/permission/dangerous/StandardFitnessAndWellnessDataPermission;-><init>(Ljava/lang/String;I)V

    .line 15
    .line 16
    .line 17
    invoke-static {v1}, Lcom/hjq/permissions/permission/PermissionLists;->putCachePermission(Lcom/hjq/permissions/permission/base/IPermission;)Lcom/hjq/permissions/permission/base/IPermission;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    return-object v0
.end method

.method public static getWriteSpeedPermission()Lcom/hjq/permissions/permission/base/IPermission;
    .locals 3

    .line 1
    const-string v0, "android.permission.health.WRITE_SPEED"

    .line 2
    .line 3
    invoke-static {v0}, Lcom/hjq/permissions/permission/PermissionLists;->getCachePermission(Ljava/lang/String;)Lcom/hjq/permissions/permission/base/IPermission;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    return-object v1

    .line 10
    :cond_0
    new-instance v1, Lcom/hjq/permissions/permission/dangerous/StandardFitnessAndWellnessDataPermission;

    .line 11
    .line 12
    const/16 v2, 0x22

    .line 13
    .line 14
    invoke-direct {v1, v0, v2}, Lcom/hjq/permissions/permission/dangerous/StandardFitnessAndWellnessDataPermission;-><init>(Ljava/lang/String;I)V

    .line 15
    .line 16
    .line 17
    invoke-static {v1}, Lcom/hjq/permissions/permission/PermissionLists;->putCachePermission(Lcom/hjq/permissions/permission/base/IPermission;)Lcom/hjq/permissions/permission/base/IPermission;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    return-object v0
.end method

.method public static getWriteStepsPermission()Lcom/hjq/permissions/permission/base/IPermission;
    .locals 3

    .line 1
    const-string v0, "android.permission.health.WRITE_STEPS"

    .line 2
    .line 3
    invoke-static {v0}, Lcom/hjq/permissions/permission/PermissionLists;->getCachePermission(Ljava/lang/String;)Lcom/hjq/permissions/permission/base/IPermission;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    return-object v1

    .line 10
    :cond_0
    new-instance v1, Lcom/hjq/permissions/permission/dangerous/StandardFitnessAndWellnessDataPermission;

    .line 11
    .line 12
    const/16 v2, 0x22

    .line 13
    .line 14
    invoke-direct {v1, v0, v2}, Lcom/hjq/permissions/permission/dangerous/StandardFitnessAndWellnessDataPermission;-><init>(Ljava/lang/String;I)V

    .line 15
    .line 16
    .line 17
    invoke-static {v1}, Lcom/hjq/permissions/permission/PermissionLists;->putCachePermission(Lcom/hjq/permissions/permission/base/IPermission;)Lcom/hjq/permissions/permission/base/IPermission;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    return-object v0
.end method

.method public static getWriteTotalCaloriesBurnedPermission()Lcom/hjq/permissions/permission/base/IPermission;
    .locals 3

    .line 1
    const-string v0, "android.permission.health.WRITE_TOTAL_CALORIES_BURNED"

    .line 2
    .line 3
    invoke-static {v0}, Lcom/hjq/permissions/permission/PermissionLists;->getCachePermission(Ljava/lang/String;)Lcom/hjq/permissions/permission/base/IPermission;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    return-object v1

    .line 10
    :cond_0
    new-instance v1, Lcom/hjq/permissions/permission/dangerous/StandardFitnessAndWellnessDataPermission;

    .line 11
    .line 12
    const/16 v2, 0x22

    .line 13
    .line 14
    invoke-direct {v1, v0, v2}, Lcom/hjq/permissions/permission/dangerous/StandardFitnessAndWellnessDataPermission;-><init>(Ljava/lang/String;I)V

    .line 15
    .line 16
    .line 17
    invoke-static {v1}, Lcom/hjq/permissions/permission/PermissionLists;->putCachePermission(Lcom/hjq/permissions/permission/base/IPermission;)Lcom/hjq/permissions/permission/base/IPermission;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    return-object v0
.end method

.method public static getWriteVo2MaxPermission()Lcom/hjq/permissions/permission/base/IPermission;
    .locals 3

    .line 1
    const-string v0, "android.permission.health.WRITE_VO2_MAX"

    .line 2
    .line 3
    invoke-static {v0}, Lcom/hjq/permissions/permission/PermissionLists;->getCachePermission(Ljava/lang/String;)Lcom/hjq/permissions/permission/base/IPermission;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    return-object v1

    .line 10
    :cond_0
    new-instance v1, Lcom/hjq/permissions/permission/dangerous/StandardFitnessAndWellnessDataPermission;

    .line 11
    .line 12
    const/16 v2, 0x22

    .line 13
    .line 14
    invoke-direct {v1, v0, v2}, Lcom/hjq/permissions/permission/dangerous/StandardFitnessAndWellnessDataPermission;-><init>(Ljava/lang/String;I)V

    .line 15
    .line 16
    .line 17
    invoke-static {v1}, Lcom/hjq/permissions/permission/PermissionLists;->putCachePermission(Lcom/hjq/permissions/permission/base/IPermission;)Lcom/hjq/permissions/permission/base/IPermission;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    return-object v0
.end method

.method public static getWriteWeightPermission()Lcom/hjq/permissions/permission/base/IPermission;
    .locals 3

    .line 1
    const-string v0, "android.permission.health.WRITE_WEIGHT"

    .line 2
    .line 3
    invoke-static {v0}, Lcom/hjq/permissions/permission/PermissionLists;->getCachePermission(Ljava/lang/String;)Lcom/hjq/permissions/permission/base/IPermission;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    return-object v1

    .line 10
    :cond_0
    new-instance v1, Lcom/hjq/permissions/permission/dangerous/StandardFitnessAndWellnessDataPermission;

    .line 11
    .line 12
    const/16 v2, 0x22

    .line 13
    .line 14
    invoke-direct {v1, v0, v2}, Lcom/hjq/permissions/permission/dangerous/StandardFitnessAndWellnessDataPermission;-><init>(Ljava/lang/String;I)V

    .line 15
    .line 16
    .line 17
    invoke-static {v1}, Lcom/hjq/permissions/permission/PermissionLists;->putCachePermission(Lcom/hjq/permissions/permission/base/IPermission;)Lcom/hjq/permissions/permission/base/IPermission;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    return-object v0
.end method

.method public static getWriteWheelchairPushesPermission()Lcom/hjq/permissions/permission/base/IPermission;
    .locals 3

    .line 1
    const-string v0, "android.permission.health.WRITE_WHEELCHAIR_PUSHES"

    .line 2
    .line 3
    invoke-static {v0}, Lcom/hjq/permissions/permission/PermissionLists;->getCachePermission(Ljava/lang/String;)Lcom/hjq/permissions/permission/base/IPermission;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    return-object v1

    .line 10
    :cond_0
    new-instance v1, Lcom/hjq/permissions/permission/dangerous/StandardFitnessAndWellnessDataPermission;

    .line 11
    .line 12
    const/16 v2, 0x22

    .line 13
    .line 14
    invoke-direct {v1, v0, v2}, Lcom/hjq/permissions/permission/dangerous/StandardFitnessAndWellnessDataPermission;-><init>(Ljava/lang/String;I)V

    .line 15
    .line 16
    .line 17
    invoke-static {v1}, Lcom/hjq/permissions/permission/PermissionLists;->putCachePermission(Lcom/hjq/permissions/permission/base/IPermission;)Lcom/hjq/permissions/permission/base/IPermission;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    return-object v0
.end method

.method private static putCachePermission(Lcom/hjq/permissions/permission/base/IPermission;)Lcom/hjq/permissions/permission/base/IPermission;
    .locals 2

    .line 1
    sget-object v0, Lcom/hjq/permissions/permission/PermissionLists;->PERMISSION_CACHE_MAP:La0/m;

    .line 2
    .line 3
    invoke-interface {p0}, Lcom/hjq/permissions/permission/base/IPermission;->getPermissionName()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v0, v1, p0}, La0/m;->c(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    return-object p0
.end method
