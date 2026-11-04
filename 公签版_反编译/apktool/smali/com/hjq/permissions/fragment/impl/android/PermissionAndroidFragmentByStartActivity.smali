.class public final Lcom/hjq/permissions/fragment/impl/android/PermissionAndroidFragmentByStartActivity;
.super Lcom/hjq/permissions/fragment/impl/android/PermissionAndroidFragment;
.source "SourceFile"


# instance fields
.field private final mPermissionChannelImpl:Lcom/hjq/permissions/core/PermissionChannelImpl;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/hjq/permissions/fragment/impl/android/PermissionAndroidFragment;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/hjq/permissions/core/PermissionChannelImplByStartActivity;

    .line 5
    .line 6
    invoke-direct {v0, p0}, Lcom/hjq/permissions/core/PermissionChannelImplByStartActivity;-><init>(Lcom/hjq/permissions/fragment/IFragmentMethod;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/hjq/permissions/fragment/impl/android/PermissionAndroidFragmentByStartActivity;->mPermissionChannelImpl:Lcom/hjq/permissions/core/PermissionChannelImpl;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public getPermissionChannelImpl()Lcom/hjq/permissions/core/PermissionChannelImpl;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hjq/permissions/fragment/impl/android/PermissionAndroidFragmentByStartActivity;->mPermissionChannelImpl:Lcom/hjq/permissions/core/PermissionChannelImpl;

    .line 2
    .line 3
    return-object v0
.end method
