.class public final Lcom/hjq/permissions/permission/dangerous/StandardHealthRecordsPermission;
.super Lcom/hjq/permissions/permission/dangerous/HealthDataBasePermission;
.source "SourceFile"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/hjq/permissions/permission/dangerous/StandardHealthRecordsPermission;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mFromAndroidVersion:I

.field private final mPermissionName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/hjq/permissions/permission/dangerous/StandardHealthRecordsPermission$1;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/hjq/permissions/permission/dangerous/StandardHealthRecordsPermission$1;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/hjq/permissions/permission/dangerous/StandardHealthRecordsPermission;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 7
    .line 8
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 5
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-direct {p0, v0, p1}, Lcom/hjq/permissions/permission/dangerous/StandardHealthRecordsPermission;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/os/Parcel;Lcom/hjq/permissions/permission/dangerous/StandardHealthRecordsPermission$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/hjq/permissions/permission/dangerous/StandardHealthRecordsPermission;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/hjq/permissions/permission/dangerous/HealthDataBasePermission;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/hjq/permissions/permission/dangerous/StandardHealthRecordsPermission;->mPermissionName:Ljava/lang/String;

    .line 4
    iput p2, p0, Lcom/hjq/permissions/permission/dangerous/StandardHealthRecordsPermission;->mFromAndroidVersion:I

    return-void
.end method


# virtual methods
.method public getFromAndroidVersion(Landroid/content/Context;)I
    .locals 0

    .line 1
    iget p1, p0, Lcom/hjq/permissions/permission/dangerous/StandardHealthRecordsPermission;->mFromAndroidVersion:I

    .line 2
    .line 3
    return p1
.end method

.method public getPermissionName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hjq/permissions/permission/dangerous/StandardHealthRecordsPermission;->mPermissionName:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/hjq/permissions/permission/base/BasePermission;->writeToParcel(Landroid/os/Parcel;I)V

    .line 2
    .line 3
    .line 4
    iget-object p2, p0, Lcom/hjq/permissions/permission/dangerous/StandardHealthRecordsPermission;->mPermissionName:Ljava/lang/String;

    .line 5
    .line 6
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    iget p2, p0, Lcom/hjq/permissions/permission/dangerous/StandardHealthRecordsPermission;->mFromAndroidVersion:I

    .line 10
    .line 11
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 12
    .line 13
    .line 14
    return-void
.end method
