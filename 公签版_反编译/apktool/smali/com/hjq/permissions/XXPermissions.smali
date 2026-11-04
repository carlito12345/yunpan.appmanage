.class public final Lcom/hjq/permissions/XXPermissions;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final REQUEST_CODE:I = 0x401

.field private static sCheckMode:Ljava/lang/Boolean;

.field private static sPermissionDescriptionClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "+",
            "Lcom/hjq/permissions/OnPermissionDescription;",
            ">;"
        }
    .end annotation
.end field

.field private static sPermissionInterceptorClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "+",
            "Lcom/hjq/permissions/OnPermissionInterceptor;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mCheckMode:Ljava/lang/Boolean;

.field private final mContext:Landroid/content/Context;

.field private mFragment:Landroid/app/Fragment;

.field private mPermissionDescription:Lcom/hjq/permissions/OnPermissionDescription;

.field private mPermissionInterceptor:Lcom/hjq/permissions/OnPermissionInterceptor;

.field private final mRequestList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/hjq/permissions/permission/base/IPermission;",
            ">;"
        }
    .end annotation
.end field

.field private mXFragment:Landroidx/fragment/app/Fragment;


# direct methods
.method private constructor <init>(Landroid/app/Fragment;)V
    .locals 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/hjq/permissions/XXPermissions;->mRequestList:Ljava/util/List;

    .line 6
    iput-object p1, p0, Lcom/hjq/permissions/XXPermissions;->mFragment:Landroid/app/Fragment;

    .line 7
    invoke-virtual {p1}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    iput-object p1, p0, Lcom/hjq/permissions/XXPermissions;->mContext:Landroid/content/Context;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/hjq/permissions/XXPermissions;->mRequestList:Ljava/util/List;

    .line 3
    iput-object p1, p0, Lcom/hjq/permissions/XXPermissions;->mContext:Landroid/content/Context;

    return-void
.end method

.method private constructor <init>(Landroidx/fragment/app/Fragment;)V
    .locals 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/hjq/permissions/XXPermissions;->mRequestList:Ljava/util/List;

    .line 10
    iput-object p1, p0, Lcom/hjq/permissions/XXPermissions;->mXFragment:Landroidx/fragment/app/Fragment;

    .line 11
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/j0;

    move-result-object p1

    iput-object p1, p0, Lcom/hjq/permissions/XXPermissions;->mContext:Landroid/content/Context;

    return-void
.end method

.method public static synthetic a(Landroidx/fragment/app/j0;Landroidx/fragment/app/Fragment;Ljava/util/List;Lcom/hjq/permissions/OnPermissionCallback;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lcom/hjq/permissions/XXPermissions;->lambda$startPermissionActivity$2(Landroid/app/Activity;Landroidx/fragment/app/Fragment;Ljava/util/List;Lcom/hjq/permissions/OnPermissionCallback;)V

    return-void
.end method

.method public static synthetic b(Landroid/app/Activity;Landroid/app/Fragment;Ljava/util/List;Lcom/hjq/permissions/OnPermissionCallback;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lcom/hjq/permissions/XXPermissions;->lambda$startPermissionActivity$1(Landroid/app/Activity;Landroid/app/Fragment;Ljava/util/List;Lcom/hjq/permissions/OnPermissionCallback;)V

    return-void
.end method

.method public static synthetic c(Landroid/app/Activity;Ljava/util/List;Lcom/hjq/permissions/OnPermissionCallback;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/hjq/permissions/XXPermissions;->lambda$startPermissionActivity$0(Landroid/app/Activity;Ljava/util/List;Lcom/hjq/permissions/OnPermissionCallback;)V

    return-void
.end method

.method public static containsPermission(Ljava/util/List;Lcom/hjq/permissions/permission/base/IPermission;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/hjq/permissions/permission/base/IPermission;",
            ">;",
            "Lcom/hjq/permissions/permission/base/IPermission;",
            ")Z"
        }
    .end annotation

    .line 1
    invoke-static {p0, p1}, Lcom/hjq/permissions/tools/PermissionUtils;->containsPermission(Ljava/util/Collection;Lcom/hjq/permissions/permission/base/IPermission;)Z

    move-result p0

    return p0
.end method

.method public static containsPermission(Ljava/util/List;Ljava/lang/String;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/hjq/permissions/permission/base/IPermission;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .line 2
    invoke-static {p0, p1}, Lcom/hjq/permissions/tools/PermissionUtils;->containsPermission(Ljava/util/Collection;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private static dispatchPermissionPageCallback(Landroid/content/Context;Ljava/util/List;Lcom/hjq/permissions/OnPermissionCallback;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/hjq/permissions/permission/base/IPermission;",
            ">;",
            "Lcom/hjq/permissions/OnPermissionCallback;",
            ")V"
        }
    .end annotation

    .line 1
    if-nez p2, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 11
    .line 12
    .line 13
    new-instance v1, Ljava/util/ArrayList;

    .line 14
    .line 15
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 20
    .line 21
    .line 22
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 27
    .line 28
    .line 29
    move-result v2

    .line 30
    if-eqz v2, :cond_2

    .line 31
    .line 32
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    check-cast v2, Lcom/hjq/permissions/permission/base/IPermission;

    .line 37
    .line 38
    const/4 v3, 0x0

    .line 39
    invoke-interface {v2, p0, v3}, Lcom/hjq/permissions/permission/base/IPermission;->isGrantedPermission(Landroid/content/Context;Z)Z

    .line 40
    .line 41
    .line 42
    move-result v3

    .line 43
    if-eqz v3, :cond_1

    .line 44
    .line 45
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 46
    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_1
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 50
    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_2
    invoke-interface {p2, v0, v1}, Lcom/hjq/permissions/OnPermissionCallback;->onPermissionResult(Ljava/util/List;Ljava/util/List;)V

    .line 54
    .line 55
    .line 56
    return-void
.end method

.method public static equalsPermission(Lcom/hjq/permissions/permission/base/IPermission;Lcom/hjq/permissions/permission/base/IPermission;)Z
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/hjq/permissions/tools/PermissionUtils;->equalsPermission(Lcom/hjq/permissions/permission/base/IPermission;Lcom/hjq/permissions/permission/base/IPermission;)Z

    move-result p0

    return p0
.end method

.method public static equalsPermission(Lcom/hjq/permissions/permission/base/IPermission;Ljava/lang/String;)Z
    .locals 0

    .line 2
    invoke-static {p0, p1}, Lcom/hjq/permissions/tools/PermissionUtils;->equalsPermission(Lcom/hjq/permissions/permission/base/IPermission;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static equalsPermission(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    .line 3
    invoke-static {p0, p1}, Lcom/hjq/permissions/tools/PermissionUtils;->equalsPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private static generatePermissionFragmentFactory(Landroid/app/Activity;)Lcom/hjq/permissions/fragment/factory/PermissionFragmentFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            ")",
            "Lcom/hjq/permissions/fragment/factory/PermissionFragmentFactory<",
            "**>;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, v0, v0}, Lcom/hjq/permissions/XXPermissions;->generatePermissionFragmentFactory(Landroid/app/Activity;Landroidx/fragment/app/Fragment;Landroid/app/Fragment;)Lcom/hjq/permissions/fragment/factory/PermissionFragmentFactory;

    move-result-object p0

    return-object p0
.end method

.method private static generatePermissionFragmentFactory(Landroid/app/Activity;Landroid/app/Fragment;)Lcom/hjq/permissions/fragment/factory/PermissionFragmentFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Landroid/app/Fragment;",
            ")",
            "Lcom/hjq/permissions/fragment/factory/PermissionFragmentFactory<",
            "**>;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 3
    invoke-static {p0, v0, p1}, Lcom/hjq/permissions/XXPermissions;->generatePermissionFragmentFactory(Landroid/app/Activity;Landroidx/fragment/app/Fragment;Landroid/app/Fragment;)Lcom/hjq/permissions/fragment/factory/PermissionFragmentFactory;

    move-result-object p0

    return-object p0
.end method

.method private static generatePermissionFragmentFactory(Landroid/app/Activity;Landroidx/fragment/app/Fragment;)Lcom/hjq/permissions/fragment/factory/PermissionFragmentFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Landroidx/fragment/app/Fragment;",
            ")",
            "Lcom/hjq/permissions/fragment/factory/PermissionFragmentFactory<",
            "**>;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 2
    invoke-static {p0, p1, v0}, Lcom/hjq/permissions/XXPermissions;->generatePermissionFragmentFactory(Landroid/app/Activity;Landroidx/fragment/app/Fragment;Landroid/app/Fragment;)Lcom/hjq/permissions/fragment/factory/PermissionFragmentFactory;

    move-result-object p0

    return-object p0
.end method

.method private static generatePermissionFragmentFactory(Landroid/app/Activity;Landroidx/fragment/app/Fragment;Landroid/app/Fragment;)Lcom/hjq/permissions/fragment/factory/PermissionFragmentFactory;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Landroidx/fragment/app/Fragment;",
            "Landroid/app/Fragment;",
            ")",
            "Lcom/hjq/permissions/fragment/factory/PermissionFragmentFactory<",
            "**>;"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 4
    new-instance p0, Lcom/hjq/permissions/fragment/factory/PermissionFragmentFactoryByAndroidX;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/j0;

    move-result-object p2

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/d1;

    move-result-object p1

    invoke-direct {p0, p2, p1}, Lcom/hjq/permissions/fragment/factory/PermissionFragmentFactoryByAndroidX;-><init>(Landroidx/fragment/app/j0;Landroidx/fragment/app/d1;)V

    goto :goto_1

    :cond_0
    if-eqz p2, :cond_1

    .line 5
    new-instance p0, Lcom/hjq/permissions/fragment/factory/PermissionFragmentFactoryByAndroid;

    invoke-virtual {p2}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p2}, Landroid/app/Fragment;->getChildFragmentManager()Landroid/app/FragmentManager;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/hjq/permissions/fragment/factory/PermissionFragmentFactoryByAndroid;-><init>(Landroid/app/Activity;Landroid/app/FragmentManager;)V

    goto :goto_1

    .line 6
    :cond_1
    instance-of p1, p0, Landroidx/fragment/app/j0;

    if-eqz p1, :cond_2

    .line 7
    check-cast p0, Landroidx/fragment/app/j0;

    .line 8
    new-instance p1, Lcom/hjq/permissions/fragment/factory/PermissionFragmentFactoryByAndroidX;

    invoke-virtual {p0}, Landroidx/fragment/app/j0;->p()Landroidx/fragment/app/e1;

    move-result-object p2

    invoke-direct {p1, p0, p2}, Lcom/hjq/permissions/fragment/factory/PermissionFragmentFactoryByAndroidX;-><init>(Landroidx/fragment/app/j0;Landroidx/fragment/app/d1;)V

    :goto_0
    move-object p0, p1

    goto :goto_1

    .line 9
    :cond_2
    new-instance p1, Lcom/hjq/permissions/fragment/factory/PermissionFragmentFactoryByAndroid;

    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object p2

    invoke-direct {p1, p0, p2}, Lcom/hjq/permissions/fragment/factory/PermissionFragmentFactoryByAndroid;-><init>(Landroid/app/Activity;Landroid/app/FragmentManager;)V

    goto :goto_0

    :goto_1
    return-object p0
.end method

.method public static getDeniedPermissions(Landroid/content/Context;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/hjq/permissions/permission/base/IPermission;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/hjq/permissions/permission/base/IPermission;",
            ">;"
        }
    .end annotation

    .line 2
    invoke-static {p0, p1}, Lcom/hjq/permissions/tools/PermissionApi;->getDeniedPermissions(Landroid/content/Context;Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static getDeniedPermissions(Landroid/content/Context;[Lcom/hjq/permissions/permission/base/IPermission;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "[",
            "Lcom/hjq/permissions/permission/base/IPermission;",
            ")",
            "Ljava/util/List<",
            "Lcom/hjq/permissions/permission/base/IPermission;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/hjq/permissions/tools/PermissionUtils;->asArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/hjq/permissions/XXPermissions;->getDeniedPermissions(Landroid/content/Context;Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static getGrantedPermissions(Landroid/content/Context;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/hjq/permissions/permission/base/IPermission;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/hjq/permissions/permission/base/IPermission;",
            ">;"
        }
    .end annotation

    .line 2
    invoke-static {p0, p1}, Lcom/hjq/permissions/tools/PermissionApi;->getGrantedPermissions(Landroid/content/Context;Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static getGrantedPermissions(Landroid/content/Context;[Lcom/hjq/permissions/permission/base/IPermission;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "[",
            "Lcom/hjq/permissions/permission/base/IPermission;",
            ")",
            "Ljava/util/List<",
            "Lcom/hjq/permissions/permission/base/IPermission;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/hjq/permissions/tools/PermissionUtils;->asArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/hjq/permissions/XXPermissions;->getGrantedPermissions(Landroid/content/Context;Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static getPermissionDescription()Lcom/hjq/permissions/OnPermissionDescription;
    .locals 2

    .line 1
    sget-object v0, Lcom/hjq/permissions/XXPermissions;->sPermissionDescriptionClass:Ljava/lang/Class;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    :try_start_0
    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    check-cast v0, Lcom/hjq/permissions/OnPermissionDescription;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 15
    .line 16
    return-object v0

    .line 17
    :catch_0
    move-exception v0

    .line 18
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 19
    .line 20
    .line 21
    :cond_0
    new-instance v0, Lcom/hjq/permissions/DefaultPermissionDescription;

    .line 22
    .line 23
    invoke-direct {v0}, Lcom/hjq/permissions/DefaultPermissionDescription;-><init>()V

    .line 24
    .line 25
    .line 26
    return-object v0
.end method

.method public static getPermissionInterceptor()Lcom/hjq/permissions/OnPermissionInterceptor;
    .locals 2

    .line 1
    sget-object v0, Lcom/hjq/permissions/XXPermissions;->sPermissionInterceptorClass:Ljava/lang/Class;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    :try_start_0
    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    check-cast v0, Lcom/hjq/permissions/OnPermissionInterceptor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 15
    .line 16
    return-object v0

    .line 17
    :catch_0
    move-exception v0

    .line 18
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 19
    .line 20
    .line 21
    :cond_0
    new-instance v0, Lcom/hjq/permissions/DefaultPermissionInterceptor;

    .line 22
    .line 23
    invoke-direct {v0}, Lcom/hjq/permissions/DefaultPermissionInterceptor;-><init>()V

    .line 24
    .line 25
    .line 26
    return-object v0
.end method

.method private isCheckMode(Landroid/content/Context;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hjq/permissions/XXPermissions;->mCheckMode:Ljava/lang/Boolean;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    sget-object v0, Lcom/hjq/permissions/XXPermissions;->sCheckMode:Ljava/lang/Boolean;

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    invoke-static {p1}, Lcom/hjq/permissions/tools/PermissionUtils;->isDebugMode(Landroid/content/Context;)Z

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    sput-object p1, Lcom/hjq/permissions/XXPermissions;->sCheckMode:Ljava/lang/Boolean;

    .line 18
    .line 19
    :cond_0
    sget-object p1, Lcom/hjq/permissions/XXPermissions;->sCheckMode:Ljava/lang/Boolean;

    .line 20
    .line 21
    iput-object p1, p0, Lcom/hjq/permissions/XXPermissions;->mCheckMode:Ljava/lang/Boolean;

    .line 22
    .line 23
    :cond_1
    iget-object p1, p0, Lcom/hjq/permissions/XXPermissions;->mCheckMode:Ljava/lang/Boolean;

    .line 24
    .line 25
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    return p1
.end method

.method public static isDoNotAskAgainPermission(Landroid/app/Activity;Lcom/hjq/permissions/permission/base/IPermission;)Z
    .locals 0

    .line 1
    invoke-interface {p1, p0}, Lcom/hjq/permissions/permission/base/IPermission;->isDoNotAskAgainPermission(Landroid/app/Activity;)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static isDoNotAskAgainPermissions(Landroid/app/Activity;Ljava/util/List;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/List<",
            "Lcom/hjq/permissions/permission/base/IPermission;",
            ">;)Z"
        }
    .end annotation

    .line 2
    invoke-static {p0, p1}, Lcom/hjq/permissions/tools/PermissionApi;->isDoNotAskAgainPermissions(Landroid/app/Activity;Ljava/util/List;)Z

    move-result p0

    return p0
.end method

.method public static isDoNotAskAgainPermissions(Landroid/app/Activity;[Lcom/hjq/permissions/permission/base/IPermission;)Z
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/hjq/permissions/tools/PermissionUtils;->asArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/hjq/permissions/XXPermissions;->isDoNotAskAgainPermissions(Landroid/app/Activity;Ljava/util/List;)Z

    move-result p0

    return p0
.end method

.method public static isGrantedPermission(Landroid/content/Context;Lcom/hjq/permissions/permission/base/IPermission;)Z
    .locals 0

    .line 1
    invoke-interface {p1, p0}, Lcom/hjq/permissions/permission/base/IPermission;->isGrantedPermission(Landroid/content/Context;)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static isGrantedPermissions(Landroid/content/Context;Ljava/util/List;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/hjq/permissions/permission/base/IPermission;",
            ">;)Z"
        }
    .end annotation

    .line 2
    invoke-static {p0, p1}, Lcom/hjq/permissions/tools/PermissionApi;->isGrantedPermissions(Landroid/content/Context;Ljava/util/List;)Z

    move-result p0

    return p0
.end method

.method public static isGrantedPermissions(Landroid/content/Context;[Lcom/hjq/permissions/permission/base/IPermission;)Z
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/hjq/permissions/tools/PermissionUtils;->asArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/hjq/permissions/XXPermissions;->isGrantedPermissions(Landroid/content/Context;Ljava/util/List;)Z

    move-result p0

    return p0
.end method

.method public static isHealthPermission(Lcom/hjq/permissions/permission/base/IPermission;)Z
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/hjq/permissions/tools/PermissionApi;->isHealthPermission(Lcom/hjq/permissions/permission/base/IPermission;)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method private static synthetic lambda$startPermissionActivity$0(Landroid/app/Activity;Ljava/util/List;Lcom/hjq/permissions/OnPermissionCallback;)V
    .locals 1

    .line 1
    invoke-static {p0}, Lcom/hjq/permissions/tools/PermissionUtils;->isActivityUnavailable(Landroid/app/Activity;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    invoke-static {p0, p1, p2}, Lcom/hjq/permissions/XXPermissions;->dispatchPermissionPageCallback(Landroid/content/Context;Ljava/util/List;Lcom/hjq/permissions/OnPermissionCallback;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method private static synthetic lambda$startPermissionActivity$1(Landroid/app/Activity;Landroid/app/Fragment;Ljava/util/List;Lcom/hjq/permissions/OnPermissionCallback;)V
    .locals 1

    .line 1
    invoke-static {p0}, Lcom/hjq/permissions/tools/PermissionUtils;->isActivityUnavailable(Landroid/app/Activity;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_1

    .line 6
    .line 7
    invoke-static {p1}, Lcom/hjq/permissions/tools/PermissionUtils;->isFragmentUnavailable(Landroid/app/Fragment;)Z

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    invoke-static {p0, p2, p3}, Lcom/hjq/permissions/XXPermissions;->dispatchPermissionPageCallback(Landroid/content/Context;Ljava/util/List;Lcom/hjq/permissions/OnPermissionCallback;)V

    .line 15
    .line 16
    .line 17
    :cond_1
    :goto_0
    return-void
.end method

.method private static synthetic lambda$startPermissionActivity$2(Landroid/app/Activity;Landroidx/fragment/app/Fragment;Ljava/util/List;Lcom/hjq/permissions/OnPermissionCallback;)V
    .locals 1

    .line 1
    invoke-static {p0}, Lcom/hjq/permissions/tools/PermissionUtils;->isActivityUnavailable(Landroid/app/Activity;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_1

    .line 6
    .line 7
    invoke-static {p1}, Lcom/hjq/permissions/tools/PermissionUtils;->isFragmentUnavailable(Landroidx/fragment/app/Fragment;)Z

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    invoke-static {p0, p2, p3}, Lcom/hjq/permissions/XXPermissions;->dispatchPermissionPageCallback(Landroid/content/Context;Ljava/util/List;Lcom/hjq/permissions/OnPermissionCallback;)V

    .line 15
    .line 16
    .line 17
    :cond_1
    :goto_0
    return-void
.end method

.method public static setCheckMode(Z)V
    .locals 0

    .line 1
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    sput-object p0, Lcom/hjq/permissions/XXPermissions;->sCheckMode:Ljava/lang/Boolean;

    .line 6
    .line 7
    return-void
.end method

.method public static setPermissionDescriptionClass(Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcom/hjq/permissions/OnPermissionDescription;",
            ">;)V"
        }
    .end annotation

    .line 1
    sput-object p0, Lcom/hjq/permissions/XXPermissions;->sPermissionDescriptionClass:Ljava/lang/Class;

    .line 2
    .line 3
    return-void
.end method

.method public static setPermissionInterceptorClass(Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcom/hjq/permissions/OnPermissionInterceptor;",
            ">;)V"
        }
    .end annotation

    .line 1
    sput-object p0, Lcom/hjq/permissions/XXPermissions;->sPermissionInterceptorClass:Ljava/lang/Class;

    .line 2
    .line 3
    return-void
.end method

.method public static startPermissionActivity(Landroid/app/Activity;)V
    .locals 2

    .line 6
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-static {p0, v0}, Lcom/hjq/permissions/XXPermissions;->startPermissionActivity(Landroid/app/Activity;Ljava/util/List;)V

    return-void
.end method

.method public static startPermissionActivity(Landroid/app/Activity;Lcom/hjq/permissions/permission/base/IPermission;Lcom/hjq/permissions/OnPermissionCallback;)V
    .locals 2

    const/4 v0, 0x1

    .line 11
    new-array v0, v0, [Lcom/hjq/permissions/permission/base/IPermission;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-static {v0}, Lcom/hjq/permissions/tools/PermissionUtils;->asArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-static {p0, p1, p2}, Lcom/hjq/permissions/XXPermissions;->startPermissionActivity(Landroid/app/Activity;Ljava/util/List;Lcom/hjq/permissions/OnPermissionCallback;)V

    return-void
.end method

.method public static startPermissionActivity(Landroid/app/Activity;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/List<",
            "Lcom/hjq/permissions/permission/base/IPermission;",
            ">;)V"
        }
    .end annotation

    const/16 v0, 0x401

    .line 8
    invoke-static {p0, p1, v0}, Lcom/hjq/permissions/XXPermissions;->startPermissionActivity(Landroid/app/Activity;Ljava/util/List;I)V

    return-void
.end method

.method public static startPermissionActivity(Landroid/app/Activity;Ljava/util/List;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/List<",
            "Lcom/hjq/permissions/permission/base/IPermission;",
            ">;I)V"
        }
    .end annotation

    const/4 v0, 0x1

    .line 9
    invoke-static {p0, p1, v0}, Lcom/hjq/permissions/tools/PermissionApi;->getBestPermissionSettingIntent(Landroid/content/Context;Ljava/util/List;Z)Ljava/util/List;

    move-result-object p1

    .line 10
    invoke-static {p0, p1, p2}, Lcom/hjq/permissions/start/StartActivityAgent;->startActivityForResult(Landroid/app/Activity;Ljava/util/List;I)V

    return-void
.end method

.method public static startPermissionActivity(Landroid/app/Activity;Ljava/util/List;Lcom/hjq/permissions/OnPermissionCallback;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/List<",
            "Lcom/hjq/permissions/permission/base/IPermission;",
            ">;",
            "Lcom/hjq/permissions/OnPermissionCallback;",
            ")V"
        }
    .end annotation

    .line 12
    invoke-static {p0}, Lcom/hjq/permissions/tools/PermissionUtils;->isActivityUnavailable(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 13
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 14
    invoke-static {p0}, Lcom/hjq/permissions/tools/PermissionSettingPage;->getCommonPermissionSettingIntent(Landroid/content/Context;)Ljava/util/List;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/hjq/permissions/start/StartActivityAgent;->startActivity(Landroid/app/Activity;Ljava/util/List;)V

    return-void

    .line 15
    :cond_1
    invoke-static {p0}, Lcom/hjq/permissions/XXPermissions;->generatePermissionFragmentFactory(Landroid/app/Activity;)Lcom/hjq/permissions/fragment/factory/PermissionFragmentFactory;

    move-result-object v0

    .line 16
    sget-object v1, Lcom/hjq/permissions/permission/PermissionChannel;->START_ACTIVITY:Lcom/hjq/permissions/permission/PermissionChannel;

    new-instance v2, Lcom/hjq/permissions/b;

    const/4 v3, 0x0

    invoke-direct {v2, p0, p1, p2, v3}, Lcom/hjq/permissions/b;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v0, p1, v1, v2}, Lcom/hjq/permissions/fragment/factory/PermissionFragmentFactory;->createAndCommitFragment(Ljava/util/List;Lcom/hjq/permissions/permission/PermissionChannel;Lcom/hjq/permissions/core/OnPermissionFragmentCallback;)V

    return-void
.end method

.method public static varargs startPermissionActivity(Landroid/app/Activity;[Lcom/hjq/permissions/permission/base/IPermission;)V
    .locals 0

    .line 7
    invoke-static {p1}, Lcom/hjq/permissions/tools/PermissionUtils;->asArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/hjq/permissions/XXPermissions;->startPermissionActivity(Landroid/app/Activity;Ljava/util/List;)V

    return-void
.end method

.method public static startPermissionActivity(Landroid/app/Fragment;)V
    .locals 2

    .line 17
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-static {p0, v0}, Lcom/hjq/permissions/XXPermissions;->startPermissionActivity(Landroid/app/Fragment;Ljava/util/List;)V

    return-void
.end method

.method public static startPermissionActivity(Landroid/app/Fragment;Lcom/hjq/permissions/permission/base/IPermission;Lcom/hjq/permissions/OnPermissionCallback;)V
    .locals 2

    const/4 v0, 0x1

    .line 27
    new-array v0, v0, [Lcom/hjq/permissions/permission/base/IPermission;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-static {v0}, Lcom/hjq/permissions/tools/PermissionUtils;->asArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-static {p0, p1, p2}, Lcom/hjq/permissions/XXPermissions;->startPermissionActivity(Landroid/app/Fragment;Ljava/util/List;Lcom/hjq/permissions/OnPermissionCallback;)V

    return-void
.end method

.method public static startPermissionActivity(Landroid/app/Fragment;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Fragment;",
            "Ljava/util/List<",
            "Lcom/hjq/permissions/permission/base/IPermission;",
            ">;)V"
        }
    .end annotation

    const/16 v0, 0x401

    .line 19
    invoke-static {p0, p1, v0}, Lcom/hjq/permissions/XXPermissions;->startPermissionActivity(Landroid/app/Fragment;Ljava/util/List;I)V

    return-void
.end method

.method public static startPermissionActivity(Landroid/app/Fragment;Ljava/util/List;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Fragment;",
            "Ljava/util/List<",
            "Lcom/hjq/permissions/permission/base/IPermission;",
            ">;I)V"
        }
    .end annotation

    .line 20
    invoke-static {p0}, Lcom/hjq/permissions/tools/PermissionUtils;->isFragmentUnavailable(Landroid/app/Fragment;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 21
    :cond_0
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 22
    invoke-static {v0}, Lcom/hjq/permissions/tools/PermissionUtils;->isActivityUnavailable(Landroid/app/Activity;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-static {p0}, Lcom/hjq/permissions/tools/PermissionUtils;->isFragmentUnavailable(Landroid/app/Fragment;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 23
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 24
    invoke-static {v0}, Lcom/hjq/permissions/tools/PermissionSettingPage;->getCommonPermissionSettingIntent(Landroid/content/Context;)Ljava/util/List;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/hjq/permissions/start/StartActivityAgent;->startActivity(Landroid/app/Fragment;Ljava/util/List;)V

    return-void

    :cond_2
    const/4 v1, 0x1

    .line 25
    invoke-static {v0, p1, v1}, Lcom/hjq/permissions/tools/PermissionApi;->getBestPermissionSettingIntent(Landroid/content/Context;Ljava/util/List;Z)Ljava/util/List;

    move-result-object p1

    .line 26
    invoke-static {p0, p1, p2}, Lcom/hjq/permissions/start/StartActivityAgent;->startActivityForResult(Landroid/app/Fragment;Ljava/util/List;I)V

    :cond_3
    :goto_0
    return-void
.end method

.method public static startPermissionActivity(Landroid/app/Fragment;Ljava/util/List;Lcom/hjq/permissions/OnPermissionCallback;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Fragment;",
            "Ljava/util/List<",
            "Lcom/hjq/permissions/permission/base/IPermission;",
            ">;",
            "Lcom/hjq/permissions/OnPermissionCallback;",
            ")V"
        }
    .end annotation

    .line 28
    invoke-static {p0}, Lcom/hjq/permissions/tools/PermissionUtils;->isFragmentUnavailable(Landroid/app/Fragment;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 29
    :cond_0
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    .line 30
    invoke-static {v2}, Lcom/hjq/permissions/tools/PermissionUtils;->isActivityUnavailable(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {p0}, Lcom/hjq/permissions/tools/PermissionUtils;->isFragmentUnavailable(Landroid/app/Fragment;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 31
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 32
    invoke-static {v2}, Lcom/hjq/permissions/tools/PermissionSettingPage;->getCommonPermissionSettingIntent(Landroid/content/Context;)Ljava/util/List;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/hjq/permissions/start/StartActivityAgent;->startActivity(Landroid/app/Fragment;Ljava/util/List;)V

    return-void

    .line 33
    :cond_2
    invoke-static {v2, p0}, Lcom/hjq/permissions/XXPermissions;->generatePermissionFragmentFactory(Landroid/app/Activity;Landroid/app/Fragment;)Lcom/hjq/permissions/fragment/factory/PermissionFragmentFactory;

    move-result-object v0

    .line 34
    sget-object v7, Lcom/hjq/permissions/permission/PermissionChannel;->START_ACTIVITY:Lcom/hjq/permissions/permission/PermissionChannel;

    new-instance v8, Landroidx/fragment/app/f;

    const/4 v6, 0x1

    move-object v1, v8

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v1 .. v6}, Landroidx/fragment/app/f;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v0, p1, v7, v8}, Lcom/hjq/permissions/fragment/factory/PermissionFragmentFactory;->createAndCommitFragment(Ljava/util/List;Lcom/hjq/permissions/permission/PermissionChannel;Lcom/hjq/permissions/core/OnPermissionFragmentCallback;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public static varargs startPermissionActivity(Landroid/app/Fragment;[Lcom/hjq/permissions/permission/base/IPermission;)V
    .locals 0

    .line 18
    invoke-static {p1}, Lcom/hjq/permissions/tools/PermissionUtils;->asArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/hjq/permissions/XXPermissions;->startPermissionActivity(Landroid/app/Fragment;Ljava/util/List;)V

    return-void
.end method

.method public static startPermissionActivity(Landroid/content/Context;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-static {p0, v0}, Lcom/hjq/permissions/XXPermissions;->startPermissionActivity(Landroid/content/Context;Ljava/util/List;)V

    return-void
.end method

.method public static startPermissionActivity(Landroid/content/Context;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/hjq/permissions/permission/base/IPermission;",
            ">;)V"
        }
    .end annotation

    .line 3
    invoke-static {p0}, Lcom/hjq/permissions/tools/PermissionUtils;->findActivity(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4
    invoke-static {v0, p1}, Lcom/hjq/permissions/XXPermissions;->startPermissionActivity(Landroid/app/Activity;Ljava/util/List;)V

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 5
    invoke-static {p0, p1, v0}, Lcom/hjq/permissions/tools/PermissionApi;->getBestPermissionSettingIntent(Landroid/content/Context;Ljava/util/List;Z)Ljava/util/List;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/hjq/permissions/start/StartActivityAgent;->startActivity(Landroid/content/Context;Ljava/util/List;)V

    return-void
.end method

.method public static varargs startPermissionActivity(Landroid/content/Context;[Lcom/hjq/permissions/permission/base/IPermission;)V
    .locals 0

    .line 2
    invoke-static {p1}, Lcom/hjq/permissions/tools/PermissionUtils;->asArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/hjq/permissions/XXPermissions;->startPermissionActivity(Landroid/content/Context;Ljava/util/List;)V

    return-void
.end method

.method public static startPermissionActivity(Landroidx/fragment/app/Fragment;)V
    .locals 1

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p0, v0}, Lcom/hjq/permissions/XXPermissions;->startPermissionActivity(Landroidx/fragment/app/Fragment;Ljava/util/List;)V

    return-void
.end method

.method public static startPermissionActivity(Landroidx/fragment/app/Fragment;Lcom/hjq/permissions/permission/base/IPermission;Lcom/hjq/permissions/OnPermissionCallback;)V
    .locals 2

    const/4 v0, 0x1

    .line 45
    new-array v0, v0, [Lcom/hjq/permissions/permission/base/IPermission;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-static {v0}, Lcom/hjq/permissions/tools/PermissionUtils;->asArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-static {p0, p1, p2}, Lcom/hjq/permissions/XXPermissions;->startPermissionActivity(Landroidx/fragment/app/Fragment;Ljava/util/List;Lcom/hjq/permissions/OnPermissionCallback;)V

    return-void
.end method

.method public static startPermissionActivity(Landroidx/fragment/app/Fragment;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/fragment/app/Fragment;",
            "Ljava/util/List<",
            "Lcom/hjq/permissions/permission/base/IPermission;",
            ">;)V"
        }
    .end annotation

    const/16 v0, 0x401

    .line 37
    invoke-static {p0, p1, v0}, Lcom/hjq/permissions/XXPermissions;->startPermissionActivity(Landroidx/fragment/app/Fragment;Ljava/util/List;I)V

    return-void
.end method

.method public static startPermissionActivity(Landroidx/fragment/app/Fragment;Ljava/util/List;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/fragment/app/Fragment;",
            "Ljava/util/List<",
            "Lcom/hjq/permissions/permission/base/IPermission;",
            ">;I)V"
        }
    .end annotation

    .line 38
    invoke-static {p0}, Lcom/hjq/permissions/tools/PermissionUtils;->isFragmentUnavailable(Landroidx/fragment/app/Fragment;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 39
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/j0;

    move-result-object v0

    .line 40
    invoke-static {v0}, Lcom/hjq/permissions/tools/PermissionUtils;->isActivityUnavailable(Landroid/app/Activity;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-static {p0}, Lcom/hjq/permissions/tools/PermissionUtils;->isFragmentUnavailable(Landroidx/fragment/app/Fragment;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 41
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 42
    invoke-static {v0}, Lcom/hjq/permissions/tools/PermissionSettingPage;->getCommonPermissionSettingIntent(Landroid/content/Context;)Ljava/util/List;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/hjq/permissions/start/StartActivityAgent;->startActivity(Landroidx/fragment/app/Fragment;Ljava/util/List;)V

    return-void

    :cond_2
    const/4 v1, 0x1

    .line 43
    invoke-static {v0, p1, v1}, Lcom/hjq/permissions/tools/PermissionApi;->getBestPermissionSettingIntent(Landroid/content/Context;Ljava/util/List;Z)Ljava/util/List;

    move-result-object p1

    .line 44
    invoke-static {p0, p1, p2}, Lcom/hjq/permissions/start/StartActivityAgent;->startActivityForResult(Landroidx/fragment/app/Fragment;Ljava/util/List;I)V

    :cond_3
    :goto_0
    return-void
.end method

.method public static startPermissionActivity(Landroidx/fragment/app/Fragment;Ljava/util/List;Lcom/hjq/permissions/OnPermissionCallback;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/fragment/app/Fragment;",
            "Ljava/util/List<",
            "Lcom/hjq/permissions/permission/base/IPermission;",
            ">;",
            "Lcom/hjq/permissions/OnPermissionCallback;",
            ")V"
        }
    .end annotation

    .line 46
    invoke-static {p0}, Lcom/hjq/permissions/tools/PermissionUtils;->isFragmentUnavailable(Landroidx/fragment/app/Fragment;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 47
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/j0;

    move-result-object v2

    .line 48
    invoke-static {v2}, Lcom/hjq/permissions/tools/PermissionUtils;->isActivityUnavailable(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {p0}, Lcom/hjq/permissions/tools/PermissionUtils;->isFragmentUnavailable(Landroidx/fragment/app/Fragment;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 49
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 50
    invoke-static {v2}, Lcom/hjq/permissions/tools/PermissionSettingPage;->getCommonPermissionSettingIntent(Landroid/content/Context;)Ljava/util/List;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/hjq/permissions/start/StartActivityAgent;->startActivity(Landroidx/fragment/app/Fragment;Ljava/util/List;)V

    return-void

    .line 51
    :cond_2
    invoke-static {v2, p0}, Lcom/hjq/permissions/XXPermissions;->generatePermissionFragmentFactory(Landroid/app/Activity;Landroidx/fragment/app/Fragment;)Lcom/hjq/permissions/fragment/factory/PermissionFragmentFactory;

    move-result-object v0

    .line 52
    sget-object v7, Lcom/hjq/permissions/permission/PermissionChannel;->START_ACTIVITY:Lcom/hjq/permissions/permission/PermissionChannel;

    new-instance v8, Landroidx/fragment/app/f;

    const/4 v6, 0x2

    move-object v1, v8

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v1 .. v6}, Landroidx/fragment/app/f;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v0, p1, v7, v8}, Lcom/hjq/permissions/fragment/factory/PermissionFragmentFactory;->createAndCommitFragment(Ljava/util/List;Lcom/hjq/permissions/permission/PermissionChannel;Lcom/hjq/permissions/core/OnPermissionFragmentCallback;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public static varargs startPermissionActivity(Landroidx/fragment/app/Fragment;[Lcom/hjq/permissions/permission/base/IPermission;)V
    .locals 0

    .line 36
    invoke-static {p1}, Lcom/hjq/permissions/tools/PermissionUtils;->asArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/hjq/permissions/XXPermissions;->startPermissionActivity(Landroidx/fragment/app/Fragment;Ljava/util/List;)V

    return-void
.end method

.method public static with(Landroid/app/Fragment;)Lcom/hjq/permissions/XXPermissions;
    .locals 1

    .line 2
    new-instance v0, Lcom/hjq/permissions/XXPermissions;

    invoke-direct {v0, p0}, Lcom/hjq/permissions/XXPermissions;-><init>(Landroid/app/Fragment;)V

    return-object v0
.end method

.method public static with(Landroid/content/Context;)Lcom/hjq/permissions/XXPermissions;
    .locals 1

    .line 1
    new-instance v0, Lcom/hjq/permissions/XXPermissions;

    invoke-direct {v0, p0}, Lcom/hjq/permissions/XXPermissions;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public static with(Landroidx/fragment/app/Fragment;)Lcom/hjq/permissions/XXPermissions;
    .locals 1

    .line 3
    new-instance v0, Lcom/hjq/permissions/XXPermissions;

    invoke-direct {v0, p0}, Lcom/hjq/permissions/XXPermissions;-><init>(Landroidx/fragment/app/Fragment;)V

    return-object v0
.end method


# virtual methods
.method public description(Lcom/hjq/permissions/OnPermissionDescription;)Lcom/hjq/permissions/XXPermissions;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/hjq/permissions/XXPermissions;->mPermissionDescription:Lcom/hjq/permissions/OnPermissionDescription;

    .line 2
    .line 3
    return-object p0
.end method

.method public interceptor(Lcom/hjq/permissions/OnPermissionInterceptor;)Lcom/hjq/permissions/XXPermissions;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/hjq/permissions/XXPermissions;->mPermissionInterceptor:Lcom/hjq/permissions/OnPermissionInterceptor;

    .line 2
    .line 3
    return-object p0
.end method

.method public permission(Lcom/hjq/permissions/permission/base/IPermission;)Lcom/hjq/permissions/XXPermissions;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hjq/permissions/XXPermissions;->mRequestList:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/hjq/permissions/XXPermissions;->mRequestList:Ljava/util/List;

    .line 7
    .line 8
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 9
    .line 10
    .line 11
    return-object p0
.end method

.method public permissions(Ljava/util/List;)Lcom/hjq/permissions/XXPermissions;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/hjq/permissions/permission/base/IPermission;",
            ">;)",
            "Lcom/hjq/permissions/XXPermissions;"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    const/4 v0, 0x0

    .line 2
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 3
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/hjq/permissions/permission/base/IPermission;

    invoke-virtual {p0, v1}, Lcom/hjq/permissions/XXPermissions;->permission(Lcom/hjq/permissions/permission/base/IPermission;)Lcom/hjq/permissions/XXPermissions;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-object p0
.end method

.method public permissions([Lcom/hjq/permissions/permission/base/IPermission;)Lcom/hjq/permissions/XXPermissions;
    .locals 0

    .line 4
    invoke-static {p1}, Lcom/hjq/permissions/tools/PermissionUtils;->asArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/hjq/permissions/XXPermissions;->permissions(Ljava/util/List;)Lcom/hjq/permissions/XXPermissions;

    move-result-object p1

    return-object p1
.end method

.method public request(Lcom/hjq/permissions/OnPermissionCallback;)V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/hjq/permissions/XXPermissions;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/hjq/permissions/XXPermissions;->mPermissionInterceptor:Lcom/hjq/permissions/OnPermissionInterceptor;

    .line 7
    .line 8
    if-nez v0, :cond_1

    .line 9
    .line 10
    invoke-static {}, Lcom/hjq/permissions/XXPermissions;->getPermissionInterceptor()Lcom/hjq/permissions/OnPermissionInterceptor;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    iput-object v0, p0, Lcom/hjq/permissions/XXPermissions;->mPermissionInterceptor:Lcom/hjq/permissions/OnPermissionInterceptor;

    .line 15
    .line 16
    :cond_1
    iget-object v0, p0, Lcom/hjq/permissions/XXPermissions;->mPermissionDescription:Lcom/hjq/permissions/OnPermissionDescription;

    .line 17
    .line 18
    if-nez v0, :cond_2

    .line 19
    .line 20
    invoke-static {}, Lcom/hjq/permissions/XXPermissions;->getPermissionDescription()Lcom/hjq/permissions/OnPermissionDescription;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    iput-object v0, p0, Lcom/hjq/permissions/XXPermissions;->mPermissionDescription:Lcom/hjq/permissions/OnPermissionDescription;

    .line 25
    .line 26
    :cond_2
    iget-object v0, p0, Lcom/hjq/permissions/XXPermissions;->mContext:Landroid/content/Context;

    .line 27
    .line 28
    iget-object v1, p0, Lcom/hjq/permissions/XXPermissions;->mFragment:Landroid/app/Fragment;

    .line 29
    .line 30
    iget-object v2, p0, Lcom/hjq/permissions/XXPermissions;->mXFragment:Landroidx/fragment/app/Fragment;

    .line 31
    .line 32
    iget-object v3, p0, Lcom/hjq/permissions/XXPermissions;->mPermissionInterceptor:Lcom/hjq/permissions/OnPermissionInterceptor;

    .line 33
    .line 34
    iget-object v7, p0, Lcom/hjq/permissions/XXPermissions;->mPermissionDescription:Lcom/hjq/permissions/OnPermissionDescription;

    .line 35
    .line 36
    new-instance v8, Ljava/util/ArrayList;

    .line 37
    .line 38
    iget-object v4, p0, Lcom/hjq/permissions/XXPermissions;->mRequestList:Ljava/util/List;

    .line 39
    .line 40
    invoke-direct {v8, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 41
    .line 42
    .line 43
    invoke-static {v0}, Lcom/hjq/permissions/tools/PermissionUtils;->findActivity(Landroid/content/Context;)Landroid/app/Activity;

    .line 44
    .line 45
    .line 46
    move-result-object v4

    .line 47
    invoke-direct {p0, v0}, Lcom/hjq/permissions/XXPermissions;->isCheckMode(Landroid/content/Context;)Z

    .line 48
    .line 49
    .line 50
    move-result v5

    .line 51
    if-eqz v5, :cond_5

    .line 52
    .line 53
    invoke-static {v4}, Lcom/hjq/permissions/tools/PermissionChecker;->checkActivityStatus(Landroid/app/Activity;)V

    .line 54
    .line 55
    .line 56
    if-eqz v1, :cond_3

    .line 57
    .line 58
    invoke-static {v1}, Lcom/hjq/permissions/tools/PermissionChecker;->checkAndroidFragmentStatus(Landroid/app/Fragment;)V

    .line 59
    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_3
    if-eqz v2, :cond_4

    .line 63
    .line 64
    invoke-static {v2}, Lcom/hjq/permissions/tools/PermissionChecker;->checkAndroidXFragmentStatus(Landroidx/fragment/app/Fragment;)V

    .line 65
    .line 66
    .line 67
    :cond_4
    :goto_0
    invoke-static {v0}, Lcom/hjq/permissions/manifest/AndroidManifestParser;->getAndroidManifestInfo(Landroid/content/Context;)Lcom/hjq/permissions/manifest/AndroidManifestInfo;

    .line 68
    .line 69
    .line 70
    move-result-object v5

    .line 71
    invoke-static {v4, v8, v5}, Lcom/hjq/permissions/tools/PermissionChecker;->checkPermissionList(Landroid/app/Activity;Ljava/util/List;Lcom/hjq/permissions/manifest/AndroidManifestInfo;)V

    .line 72
    .line 73
    .line 74
    :cond_5
    invoke-static {v4}, Lcom/hjq/permissions/tools/PermissionUtils;->isActivityUnavailable(Landroid/app/Activity;)Z

    .line 75
    .line 76
    .line 77
    move-result v5

    .line 78
    if-eqz v5, :cond_6

    .line 79
    .line 80
    return-void

    .line 81
    :cond_6
    invoke-static {v4, v8}, Lcom/hjq/permissions/tools/PermissionApi;->addOldPermissionsByNewPermissions(Landroid/content/Context;Ljava/util/List;)V

    .line 82
    .line 83
    .line 84
    invoke-static {v0, v8}, Lcom/hjq/permissions/tools/PermissionApi;->isGrantedPermissions(Landroid/content/Context;Ljava/util/List;)Z

    .line 85
    .line 86
    .line 87
    move-result v0

    .line 88
    if-eqz v0, :cond_7

    .line 89
    .line 90
    new-instance v0, Ljava/util/ArrayList;

    .line 91
    .line 92
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 93
    .line 94
    .line 95
    const/4 v5, 0x1

    .line 96
    move-object v6, v8

    .line 97
    move-object v7, v8

    .line 98
    move-object v8, v0

    .line 99
    move-object v9, p1

    .line 100
    invoke-interface/range {v3 .. v9}, Lcom/hjq/permissions/OnPermissionInterceptor;->onRequestPermissionEnd(Landroid/app/Activity;ZLjava/util/List;Ljava/util/List;Ljava/util/List;Lcom/hjq/permissions/OnPermissionCallback;)V

    .line 101
    .line 102
    .line 103
    return-void

    .line 104
    :cond_7
    if-eqz v2, :cond_9

    .line 105
    .line 106
    invoke-static {v2}, Lcom/hjq/permissions/tools/PermissionUtils;->isFragmentUnavailable(Landroidx/fragment/app/Fragment;)Z

    .line 107
    .line 108
    .line 109
    move-result v0

    .line 110
    if-eqz v0, :cond_8

    .line 111
    .line 112
    return-void

    .line 113
    :cond_8
    invoke-static {v4, v2}, Lcom/hjq/permissions/XXPermissions;->generatePermissionFragmentFactory(Landroid/app/Activity;Landroidx/fragment/app/Fragment;)Lcom/hjq/permissions/fragment/factory/PermissionFragmentFactory;

    .line 114
    .line 115
    .line 116
    move-result-object v0

    .line 117
    :goto_1
    move-object v6, v0

    .line 118
    goto :goto_2

    .line 119
    :cond_9
    if-eqz v1, :cond_b

    .line 120
    .line 121
    invoke-static {v1}, Lcom/hjq/permissions/tools/PermissionUtils;->isFragmentUnavailable(Landroid/app/Fragment;)Z

    .line 122
    .line 123
    .line 124
    move-result v0

    .line 125
    if-eqz v0, :cond_a

    .line 126
    .line 127
    return-void

    .line 128
    :cond_a
    invoke-static {v4, v1}, Lcom/hjq/permissions/XXPermissions;->generatePermissionFragmentFactory(Landroid/app/Activity;Landroid/app/Fragment;)Lcom/hjq/permissions/fragment/factory/PermissionFragmentFactory;

    .line 129
    .line 130
    .line 131
    move-result-object v0

    .line 132
    goto :goto_1

    .line 133
    :cond_b
    invoke-static {v4}, Lcom/hjq/permissions/XXPermissions;->generatePermissionFragmentFactory(Landroid/app/Activity;)Lcom/hjq/permissions/fragment/factory/PermissionFragmentFactory;

    .line 134
    .line 135
    .line 136
    move-result-object v0

    .line 137
    goto :goto_1

    .line 138
    :goto_2
    move-object v5, v8

    .line 139
    move-object v8, p1

    .line 140
    invoke-interface/range {v3 .. v8}, Lcom/hjq/permissions/OnPermissionInterceptor;->onRequestPermissionStart(Landroid/app/Activity;Ljava/util/List;Lcom/hjq/permissions/fragment/factory/PermissionFragmentFactory;Lcom/hjq/permissions/OnPermissionDescription;Lcom/hjq/permissions/OnPermissionCallback;)V

    .line 141
    .line 142
    .line 143
    return-void
.end method

.method public unchecked()Lcom/hjq/permissions/XXPermissions;
    .locals 1

    .line 1
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 2
    .line 3
    iput-object v0, p0, Lcom/hjq/permissions/XXPermissions;->mCheckMode:Ljava/lang/Boolean;

    .line 4
    .line 5
    return-object p0
.end method
