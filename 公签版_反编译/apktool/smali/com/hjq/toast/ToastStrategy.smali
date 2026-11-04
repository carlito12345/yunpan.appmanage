.class public Lcom/hjq/toast/ToastStrategy;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/hjq/toast/config/IToastStrategy;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hjq/toast/ToastStrategy$ShowRunnable;,
        Lcom/hjq/toast/ToastStrategy$CancelRunnable;,
        Lcom/hjq/toast/ToastStrategy$ShowToastRunnable;
    }
.end annotation


# static fields
.field private static final HANDLER:Landroid/os/Handler;

.field public static final SHOW_STRATEGY_TYPE_IMMEDIATELY:I = 0x0

.field public static final SHOW_STRATEGY_TYPE_QUEUE:I = 0x1


# instance fields
.field private final mApplication:Landroid/app/Application;

.field private volatile mLastShowToastMillis:J

.field private final mShowStrategyType:I

.field private mToastReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/hjq/toast/config/IToast;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Landroid/os/Handler;

    .line 2
    .line 3
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 8
    .line 9
    .line 10
    sput-object v0, Lcom/hjq/toast/ToastStrategy;->HANDLER:Landroid/os/Handler;

    .line 11
    .line 12
    return-void
.end method

.method public constructor <init>(Landroid/app/Application;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/hjq/toast/ToastStrategy;-><init>(Landroid/app/Application;I)V

    return-void
.end method

.method public constructor <init>(Landroid/app/Application;I)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/hjq/toast/ToastStrategy;->mApplication:Landroid/app/Application;

    .line 4
    iput p2, p0, Lcom/hjq/toast/ToastStrategy;->mShowStrategyType:I

    if-eqz p2, :cond_1

    const/4 p1, 0x1

    if-ne p2, p1, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Please don\'t pass non-existent toast show strategy"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    return-void
.end method

.method public static synthetic access$200(Lcom/hjq/toast/ToastStrategy;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/hjq/toast/ToastStrategy;->mShowStrategyType:I

    .line 2
    .line 3
    return p0
.end method

.method public static synthetic access$400()Landroid/os/Handler;
    .locals 1

    .line 1
    sget-object v0, Lcom/hjq/toast/ToastStrategy;->HANDLER:Landroid/os/Handler;

    .line 2
    .line 3
    return-object v0
.end method

.method public static synthetic access$500(Lcom/hjq/toast/ToastStrategy;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/hjq/toast/ToastStrategy;->mLastShowToastMillis:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public static synthetic access$502(Lcom/hjq/toast/ToastStrategy;J)J
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/hjq/toast/ToastStrategy;->mLastShowToastMillis:J

    .line 2
    .line 3
    return-wide p1
.end method

.method public static synthetic access$600(Lcom/hjq/toast/ToastStrategy;)Ljava/lang/ref/WeakReference;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/hjq/toast/ToastStrategy;->mToastReference:Ljava/lang/ref/WeakReference;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$602(Lcom/hjq/toast/ToastStrategy;Ljava/lang/ref/WeakReference;)Ljava/lang/ref/WeakReference;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/hjq/toast/ToastStrategy;->mToastReference:Ljava/lang/ref/WeakReference;

    .line 2
    .line 3
    return-object p1
.end method

.method public static getHandler()Landroid/os/Handler;
    .locals 1

    .line 1
    sget-object v0, Lcom/hjq/toast/ToastStrategy;->HANDLER:Landroid/os/Handler;

    .line 2
    .line 3
    return-object v0
.end method


# virtual methods
.method public areNotificationsEnabled(Landroid/content/Context;)Z
    .locals 9
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "PrivateApi"
        }
    .end annotation

    .line 1
    const/4 v0, 0x2

    .line 2
    const/4 v1, 0x3

    .line 3
    const/4 v2, 0x0

    .line 4
    const/4 v3, 0x1

    .line 5
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 6
    .line 7
    const/16 v5, 0x18

    .line 8
    .line 9
    if-lt v4, v5, :cond_0

    .line 10
    .line 11
    invoke-static {p1}, La2/a;->j(Landroid/content/Context;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    check-cast p1, Landroid/app/NotificationManager;

    .line 16
    .line 17
    invoke-static {p1}, La2/s0;->z(Landroid/app/NotificationManager;)Z

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    return p1

    .line 22
    :cond_0
    const/16 v5, 0x13

    .line 23
    .line 24
    if-lt v4, v5, :cond_2

    .line 25
    .line 26
    const-string v4, "appops"

    .line 27
    .line 28
    invoke-virtual {p1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v4

    .line 32
    invoke-static {v4}, Lm0/h;->g(Ljava/lang/Object;)Landroid/app/AppOpsManager;

    .line 33
    .line 34
    .line 35
    move-result-object v4

    .line 36
    :try_start_0
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 37
    .line 38
    .line 39
    move-result-object v5

    .line 40
    const-string v6, "checkOpNoThrow"

    .line 41
    .line 42
    new-array v7, v1, [Ljava/lang/Class;

    .line 43
    .line 44
    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 45
    .line 46
    aput-object v8, v7, v2

    .line 47
    .line 48
    aput-object v8, v7, v3

    .line 49
    .line 50
    const-class v8, Ljava/lang/String;

    .line 51
    .line 52
    aput-object v8, v7, v0

    .line 53
    .line 54
    invoke-virtual {v5, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 55
    .line 56
    .line 57
    move-result-object v5

    .line 58
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 59
    .line 60
    .line 61
    move-result-object v6

    .line 62
    const-string v7, "OP_POST_NOTIFICATION"

    .line 63
    .line 64
    invoke-virtual {v6, v7}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 65
    .line 66
    .line 67
    move-result-object v6

    .line 68
    const/4 v7, 0x0

    .line 69
    invoke-virtual {v6, v7}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    .line 70
    .line 71
    .line 72
    move-result v6

    .line 73
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 74
    .line 75
    .line 76
    move-result-object v6

    .line 77
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    .line 78
    .line 79
    .line 80
    move-result-object v7

    .line 81
    iget v7, v7, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 82
    .line 83
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 84
    .line 85
    .line 86
    move-result-object v7

    .line 87
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object p1

    .line 91
    new-array v1, v1, [Ljava/lang/Object;

    .line 92
    .line 93
    aput-object v6, v1, v2

    .line 94
    .line 95
    aput-object v7, v1, v3

    .line 96
    .line 97
    aput-object p1, v1, v0

    .line 98
    .line 99
    invoke-virtual {v5, v4, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    .line 101
    .line 102
    move-result-object p1

    .line 103
    check-cast p1, Ljava/lang/Integer;

    .line 104
    .line 105
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 106
    .line 107
    .line 108
    move-result p1
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 109
    if-nez p1, :cond_1

    .line 110
    .line 111
    const/4 v2, 0x1

    .line 112
    :cond_1
    return v2

    .line 113
    :catch_0
    move-exception p1

    .line 114
    goto :goto_0

    .line 115
    :catch_1
    move-exception p1

    .line 116
    goto :goto_0

    .line 117
    :catch_2
    move-exception p1

    .line 118
    goto :goto_0

    .line 119
    :catch_3
    move-exception p1

    .line 120
    goto :goto_0

    .line 121
    :catch_4
    move-exception p1

    .line 122
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 123
    .line 124
    .line 125
    :cond_2
    return v3
.end method

.method public areSupportCustomToastStyle(Lcom/hjq/toast/config/IToast;)Z
    .locals 1

    .line 1
    instance-of p1, p1, Lcom/hjq/toast/CustomToast;

    .line 2
    .line 3
    if-nez p1, :cond_1

    .line 4
    .line 5
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 6
    .line 7
    const/16 v0, 0x1e

    .line 8
    .line 9
    if-ge p1, v0, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 p1, 0x0

    .line 13
    goto :goto_1

    .line 14
    :cond_1
    :goto_0
    const/4 p1, 0x1

    .line 15
    :goto_1
    return p1
.end method

.method public cancelToast()V
    .locals 5

    .line 1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    sget-object v2, Lcom/hjq/toast/ToastStrategy;->HANDLER:Landroid/os/Handler;

    .line 6
    .line 7
    new-instance v3, Lcom/hjq/toast/ToastStrategy$CancelRunnable;

    .line 8
    .line 9
    const/4 v4, 0x0

    .line 10
    invoke-direct {v3, p0, v4}, Lcom/hjq/toast/ToastStrategy$CancelRunnable;-><init>(Lcom/hjq/toast/ToastStrategy;Lcom/hjq/toast/ToastStrategy$1;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;J)Z

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public computeShowDuration(Ljava/lang/CharSequence;)I
    .locals 1

    .line 1
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    const/16 v0, 0x14

    .line 6
    .line 7
    if-le p1, v0, :cond_0

    .line 8
    .line 9
    const/4 p1, 0x1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 p1, 0x0

    .line 12
    :goto_0
    return p1
.end method

.method public createToast(Lcom/hjq/toast/ToastParams;)Lcom/hjq/toast/config/IToast;
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/hjq/toast/ToastStrategy;->getApplication()Landroid/app/Application;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0}, Lcom/hjq/toast/ToastStrategy;->getToastActivity()Landroid/app/Activity;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    iget v2, p1, Lcom/hjq/toast/ToastParams;->priorityType:I

    .line 10
    .line 11
    if-eqz v2, :cond_0

    .line 12
    .line 13
    const/4 v3, 0x1

    .line 14
    if-ne v2, v3, :cond_1

    .line 15
    .line 16
    :cond_0
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 17
    .line 18
    const/16 v3, 0x17

    .line 19
    .line 20
    if-lt v2, v3, :cond_1

    .line 21
    .line 22
    invoke-static {v0}, La2/a;->u(Landroid/app/Application;)Z

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    if-eqz v2, :cond_1

    .line 27
    .line 28
    new-instance v1, Lcom/hjq/toast/GlobalToast;

    .line 29
    .line 30
    invoke-direct {v1, v0}, Lcom/hjq/toast/GlobalToast;-><init>(Landroid/app/Application;)V

    .line 31
    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_1
    if-eqz v1, :cond_3

    .line 35
    .line 36
    iget v2, p1, Lcom/hjq/toast/ToastParams;->priorityType:I

    .line 37
    .line 38
    if-eqz v2, :cond_2

    .line 39
    .line 40
    const/4 v3, 0x2

    .line 41
    if-ne v2, v3, :cond_3

    .line 42
    .line 43
    :cond_2
    new-instance v0, Lcom/hjq/toast/ActivityToast;

    .line 44
    .line 45
    invoke-direct {v0, v1}, Lcom/hjq/toast/ActivityToast;-><init>(Landroid/app/Activity;)V

    .line 46
    .line 47
    .line 48
    move-object v1, v0

    .line 49
    goto :goto_0

    .line 50
    :cond_3
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 51
    .line 52
    const/16 v2, 0x19

    .line 53
    .line 54
    if-ne v1, v2, :cond_4

    .line 55
    .line 56
    new-instance v1, Lcom/hjq/toast/SafeToast;

    .line 57
    .line 58
    invoke-direct {v1, v0}, Lcom/hjq/toast/SafeToast;-><init>(Landroid/app/Application;)V

    .line 59
    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_4
    const/16 v2, 0x1d

    .line 63
    .line 64
    if-ge v1, v2, :cond_5

    .line 65
    .line 66
    invoke-virtual {p0, v0}, Lcom/hjq/toast/ToastStrategy;->areNotificationsEnabled(Landroid/content/Context;)Z

    .line 67
    .line 68
    .line 69
    move-result v1

    .line 70
    if-nez v1, :cond_5

    .line 71
    .line 72
    new-instance v1, Lcom/hjq/toast/NotificationToast;

    .line 73
    .line 74
    invoke-direct {v1, v0}, Lcom/hjq/toast/NotificationToast;-><init>(Landroid/app/Application;)V

    .line 75
    .line 76
    .line 77
    goto :goto_0

    .line 78
    :cond_5
    new-instance v1, Lcom/hjq/toast/SystemToast;

    .line 79
    .line 80
    invoke-direct {v1, v0}, Lcom/hjq/toast/SystemToast;-><init>(Landroid/app/Application;)V

    .line 81
    .line 82
    .line 83
    :goto_0
    invoke-virtual {p0, v1}, Lcom/hjq/toast/ToastStrategy;->areSupportCustomToastStyle(Lcom/hjq/toast/config/IToast;)Z

    .line 84
    .line 85
    .line 86
    move-result v0

    .line 87
    if-nez v0, :cond_6

    .line 88
    .line 89
    invoke-virtual {p0}, Lcom/hjq/toast/ToastStrategy;->onlyShowSystemToastStyle()Z

    .line 90
    .line 91
    .line 92
    move-result v0

    .line 93
    if-nez v0, :cond_7

    .line 94
    .line 95
    :cond_6
    iget-object p1, p1, Lcom/hjq/toast/ToastParams;->style:Lcom/hjq/toast/config/IToastStyle;

    .line 96
    .line 97
    invoke-virtual {p0, v1, p1}, Lcom/hjq/toast/ToastStrategy;->diyToastStyle(Lcom/hjq/toast/config/IToast;Lcom/hjq/toast/config/IToastStyle;)V

    .line 98
    .line 99
    .line 100
    :cond_7
    return-object v1
.end method

.method public diyToastStyle(Lcom/hjq/toast/config/IToast;Lcom/hjq/toast/config/IToastStyle;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hjq/toast/config/IToast;",
            "Lcom/hjq/toast/config/IToastStyle<",
            "*>;)V"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Lcom/hjq/toast/config/IToast;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {p2, v0}, Lcom/hjq/toast/config/IToastStyle;->createView(Landroid/content/Context;)Landroid/view/View;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-interface {p1, v0}, Lcom/hjq/toast/config/IToast;->setView(Landroid/view/View;)V

    .line 10
    .line 11
    .line 12
    invoke-interface {p2}, Lcom/hjq/toast/config/IToastStyle;->getGravity()I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    invoke-interface {p2}, Lcom/hjq/toast/config/IToastStyle;->getXOffset()I

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    invoke-interface {p2}, Lcom/hjq/toast/config/IToastStyle;->getYOffset()I

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    invoke-interface {p1, v0, v1, v2}, Lcom/hjq/toast/config/IToast;->setGravity(III)V

    .line 25
    .line 26
    .line 27
    invoke-interface {p2}, Lcom/hjq/toast/config/IToastStyle;->getHorizontalMargin()F

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    invoke-interface {p2}, Lcom/hjq/toast/config/IToastStyle;->getVerticalMargin()F

    .line 32
    .line 33
    .line 34
    move-result p2

    .line 35
    invoke-interface {p1, v0, p2}, Lcom/hjq/toast/config/IToast;->setMargin(FF)V

    .line 36
    .line 37
    .line 38
    return-void
.end method

.method public generateToastWaitMillis(Lcom/hjq/toast/ToastParams;)I
    .locals 1

    .line 1
    iget p1, p1, Lcom/hjq/toast/ToastParams;->duration:I

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    .line 5
    const/16 p1, 0x3e8

    .line 6
    .line 7
    return p1

    .line 8
    :cond_0
    const/4 v0, 0x1

    .line 9
    if-ne p1, v0, :cond_1

    .line 10
    .line 11
    const/16 p1, 0x5dc

    .line 12
    .line 13
    return p1

    .line 14
    :cond_1
    const/4 p1, 0x0

    .line 15
    return p1
.end method

.method public getApplication()Landroid/app/Application;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hjq/toast/ToastStrategy;->mApplication:Landroid/app/Application;

    .line 2
    .line 3
    return-object v0
.end method

.method public getBestShowDelayDuration(Lcom/hjq/toast/ToastParams;)I
    .locals 1

    .line 1
    iget p1, p1, Lcom/hjq/toast/ToastParams;->priorityType:I

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    if-eq p1, v0, :cond_0

    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/hjq/toast/ToastStrategy;->getToastActivity()Landroid/app/Activity;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    if-nez p1, :cond_0

    .line 11
    .line 12
    const/16 p1, 0x12c

    .line 13
    .line 14
    return p1

    .line 15
    :cond_0
    const/4 p1, 0x0

    .line 16
    return p1
.end method

.method public getMustShowDelayDuration(Lcom/hjq/toast/ToastParams;)I
    .locals 1

    .line 1
    iget p1, p1, Lcom/hjq/toast/ToastParams;->priorityType:I

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    if-eq p1, v0, :cond_0

    .line 5
    .line 6
    const/16 p1, 0x64

    .line 7
    .line 8
    return p1

    .line 9
    :cond_0
    const/4 p1, 0x0

    .line 10
    return p1
.end method

.method public getToastActivity()Landroid/app/Activity;
    .locals 7

    .line 1
    invoke-static {}, Lcom/hjq/toast/ActivityStack;->getInstance()Lcom/hjq/toast/ActivityStack;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/hjq/toast/ActivityStack;->getVisibleActivity()Landroid/app/Activity;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-static {}, Lcom/hjq/toast/ActivityStack;->getInstance()Lcom/hjq/toast/ActivityStack;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {v1}, Lcom/hjq/toast/ActivityStack;->getFocusActivity()Landroid/app/Activity;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    const/4 v2, 0x0

    .line 18
    if-eqz v1, :cond_5

    .line 19
    .line 20
    if-nez v0, :cond_0

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    if-eq v1, v0, :cond_1

    .line 24
    .line 25
    return-object v2

    .line 26
    :cond_1
    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    if-eqz v1, :cond_2

    .line 31
    .line 32
    return-object v2

    .line 33
    :cond_2
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 34
    .line 35
    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    .line 36
    .line 37
    .line 38
    move-result v3

    .line 39
    if-eqz v3, :cond_3

    .line 40
    .line 41
    return-object v2

    .line 42
    :cond_3
    invoke-static {}, Lcom/hjq/toast/ActivityStack;->getInstance()Lcom/hjq/toast/ActivityStack;

    .line 43
    .line 44
    .line 45
    move-result-object v3

    .line 46
    invoke-virtual {v3}, Lcom/hjq/toast/ActivityStack;->getActivityResumedTime()J

    .line 47
    .line 48
    .line 49
    move-result-wide v3

    .line 50
    const/16 v5, 0x24

    .line 51
    .line 52
    if-lt v1, v5, :cond_4

    .line 53
    .line 54
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 55
    .line 56
    .line 57
    move-result-wide v5

    .line 58
    sub-long/2addr v5, v3

    .line 59
    const-wide/16 v3, 0xc8

    .line 60
    .line 61
    cmp-long v1, v5, v3

    .line 62
    .line 63
    if-gez v1, :cond_4

    .line 64
    .line 65
    return-object v2

    .line 66
    :cond_4
    return-object v0

    .line 67
    :cond_5
    :goto_0
    return-object v2
.end method

.method public isChangeEnabledCompat(J)Z
    .locals 6
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "PrivateApi"
        }
    .end annotation

    .line 1
    const/4 v0, 0x1

    .line 2
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 3
    .line 4
    const/16 v2, 0x1e

    .line 5
    .line 6
    const/4 v3, 0x0

    .line 7
    if-ge v1, v2, :cond_0

    .line 8
    .line 9
    return v3

    .line 10
    :cond_0
    :try_start_0
    const-string v1, "android.app.compat.CompatChanges"

    .line 11
    .line 12
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    const-string v2, "isChangeEnabled"

    .line 17
    .line 18
    new-array v4, v0, [Ljava/lang/Class;

    .line 19
    .line 20
    sget-object v5, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    .line 21
    .line 22
    aput-object v5, v4, v3

    .line 23
    .line 24
    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    invoke-virtual {v1, v0}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 29
    .line 30
    .line 31
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    new-array p2, v0, [Ljava/lang/Object;

    .line 36
    .line 37
    aput-object p1, p2, v3

    .line 38
    .line 39
    const/4 p1, 0x0

    .line 40
    invoke-virtual {v1, p1, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    invoke-static {p1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    .line 49
    .line 50
    .line 51
    move-result p1
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 52
    return p1

    .line 53
    :catch_0
    move-exception p1

    .line 54
    goto :goto_0

    .line 55
    :catch_1
    move-exception p1

    .line 56
    goto :goto_0

    .line 57
    :catch_2
    move-exception p1

    .line 58
    goto :goto_0

    .line 59
    :catch_3
    move-exception p1

    .line 60
    :goto_0
    invoke-static {p1}, Lm0/h;->s(Ljava/lang/ReflectiveOperationException;)V

    .line 61
    .line 62
    .line 63
    return v3
.end method

.method public onlyShowSystemToastStyle()Z
    .locals 2

    .line 1
    const-wide/32 v0, 0x8cf3b87

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, v0, v1}, Lcom/hjq/toast/ToastStrategy;->isChangeEnabledCompat(J)Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    return v0
.end method

.method public showToast(Lcom/hjq/toast/ToastParams;)V
    .locals 4

    .line 1
    sget-object v0, Lcom/hjq/toast/ToastStrategy;->HANDLER:Landroid/os/Handler;

    .line 2
    .line 3
    new-instance v1, Lcom/hjq/toast/ToastStrategy$ShowRunnable;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v1, p0, p1, v2}, Lcom/hjq/toast/ToastStrategy$ShowRunnable;-><init>(Lcom/hjq/toast/ToastStrategy;Lcom/hjq/toast/ToastParams;Lcom/hjq/toast/ToastStrategy$1;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, p1}, Lcom/hjq/toast/ToastStrategy;->getMustShowDelayDuration(Lcom/hjq/toast/ToastParams;)I

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    int-to-long v2, p1

    .line 14
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 15
    .line 16
    .line 17
    return-void
.end method
