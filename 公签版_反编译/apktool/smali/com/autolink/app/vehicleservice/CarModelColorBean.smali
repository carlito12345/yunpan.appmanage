.class public final Lcom/autolink/app/vehicleservice/CarModelColorBean;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/autolink/app/vehicleservice/CarModelColorBean;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private carModelColorType:I

.field private rgb:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/autolink/app/vehicleservice/CarModelColorBean$1;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/autolink/app/vehicleservice/CarModelColorBean$1;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/autolink/app/vehicleservice/CarModelColorBean;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>(II)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/autolink/app/vehicleservice/CarModelColorBean;->carModelColorType:I

    .line 3
    iput p2, p0, Lcom/autolink/app/vehicleservice/CarModelColorBean;->rgb:I

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 4
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-direct {p0, v0, p1}, Lcom/autolink/app/vehicleservice/CarModelColorBean;-><init>(II)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final getCarModelColorType()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/autolink/app/vehicleservice/CarModelColorBean;->carModelColorType:I

    .line 2
    .line 3
    return v0
.end method

.method public final getRgb()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/autolink/app/vehicleservice/CarModelColorBean;->rgb:I

    .line 2
    .line 3
    return v0
.end method

.method public final readFromParcel(Landroid/os/Parcel;)V
    .locals 1

    .line 1
    const-string v0, "dest"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lue/d;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    iput v0, p0, Lcom/autolink/app/vehicleservice/CarModelColorBean;->carModelColorType:I

    .line 11
    .line 12
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    iput p1, p0, Lcom/autolink/app/vehicleservice/CarModelColorBean;->rgb:I

    .line 17
    .line 18
    return-void
.end method

.method public final setCarModelColorType(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/autolink/app/vehicleservice/CarModelColorBean;->carModelColorType:I

    .line 2
    .line 3
    return-void
.end method

.method public final setRgb(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/autolink/app/vehicleservice/CarModelColorBean;->rgb:I

    .line 2
    .line 3
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 1
    const-string p2, "parcel"

    .line 2
    .line 3
    invoke-static {p1, p2}, Lue/d;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget p2, p0, Lcom/autolink/app/vehicleservice/CarModelColorBean;->carModelColorType:I

    .line 7
    .line 8
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 9
    .line 10
    .line 11
    iget p2, p0, Lcom/autolink/app/vehicleservice/CarModelColorBean;->rgb:I

    .line 12
    .line 13
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 14
    .line 15
    .line 16
    return-void
.end method
