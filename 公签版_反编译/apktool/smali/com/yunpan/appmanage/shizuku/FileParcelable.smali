.class public Lcom/yunpan/appmanage/shizuku/FileParcelable;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/yunpan/appmanage/shizuku/FileParcelable;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public isDir:Z

.field public lastModified:J

.field public length:J

.field public path:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/yunpan/appmanage/shizuku/FileParcelable$1;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/yunpan/appmanage/shizuku/FileParcelable$1;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/yunpan/appmanage/shizuku/FileParcelable;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yunpan/appmanage/shizuku/FileParcelable;->path:Ljava/lang/String;

    .line 8
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/yunpan/appmanage/shizuku/FileParcelable;->length:J

    .line 9
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/yunpan/appmanage/shizuku/FileParcelable;->isDir:Z

    .line 10
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/yunpan/appmanage/shizuku/FileParcelable;->lastModified:J

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;JZJ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/yunpan/appmanage/shizuku/FileParcelable;->path:Ljava/lang/String;

    .line 3
    iput-wide p2, p0, Lcom/yunpan/appmanage/shizuku/FileParcelable;->length:J

    .line 4
    iput-boolean p4, p0, Lcom/yunpan/appmanage/shizuku/FileParcelable;->isDir:Z

    .line 5
    iput-wide p5, p0, Lcom/yunpan/appmanage/shizuku/FileParcelable;->lastModified:J

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 1
    iget-object p2, p0, Lcom/yunpan/appmanage/shizuku/FileParcelable;->path:Ljava/lang/String;

    .line 2
    .line 3
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-wide v0, p0, Lcom/yunpan/appmanage/shizuku/FileParcelable;->length:J

    .line 7
    .line 8
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 9
    .line 10
    .line 11
    iget-boolean p2, p0, Lcom/yunpan/appmanage/shizuku/FileParcelable;->isDir:Z

    .line 12
    .line 13
    int-to-byte p2, p2

    .line 14
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 15
    .line 16
    .line 17
    iget-wide v0, p0, Lcom/yunpan/appmanage/shizuku/FileParcelable;->lastModified:J

    .line 18
    .line 19
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 20
    .line 21
    .line 22
    return-void
.end method
