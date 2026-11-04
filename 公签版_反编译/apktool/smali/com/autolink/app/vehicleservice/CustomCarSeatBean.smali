.class public final Lcom/autolink/app/vehicleservice/CustomCarSeatBean;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/autolink/app/vehicleservice/CustomCarSeatBean;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private fl:I

.field private fr:I

.field private isSeatHeating:Z

.field private rl:I

.field private rr:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/autolink/app/vehicleservice/CustomCarSeatBean$1;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/autolink/app/vehicleservice/CustomCarSeatBean$1;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/autolink/app/vehicleservice/CustomCarSeatBean;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 6

    .line 7
    invoke-static {p1}, La2/c;->x(Landroid/os/Parcel;)Z

    move-result v1

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/autolink/app/vehicleservice/CustomCarSeatBean;-><init>(ZIIII)V

    return-void
.end method

.method public constructor <init>(ZIIII)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-boolean p1, p0, Lcom/autolink/app/vehicleservice/CustomCarSeatBean;->isSeatHeating:Z

    .line 3
    iput p2, p0, Lcom/autolink/app/vehicleservice/CustomCarSeatBean;->fl:I

    .line 4
    iput p3, p0, Lcom/autolink/app/vehicleservice/CustomCarSeatBean;->fr:I

    .line 5
    iput p4, p0, Lcom/autolink/app/vehicleservice/CustomCarSeatBean;->rl:I

    .line 6
    iput p5, p0, Lcom/autolink/app/vehicleservice/CustomCarSeatBean;->rr:I

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final getFl()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/autolink/app/vehicleservice/CustomCarSeatBean;->fl:I

    .line 2
    .line 3
    return v0
.end method

.method public final getFr()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/autolink/app/vehicleservice/CustomCarSeatBean;->fr:I

    .line 2
    .line 3
    return v0
.end method

.method public final getIsSeatHeating()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/autolink/app/vehicleservice/CustomCarSeatBean;->isSeatHeating:Z

    .line 2
    .line 3
    return v0
.end method

.method public final getRl()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/autolink/app/vehicleservice/CustomCarSeatBean;->rl:I

    .line 2
    .line 3
    return v0
.end method

.method public final getRr()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/autolink/app/vehicleservice/CustomCarSeatBean;->rr:I

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
    invoke-static {p1}, La2/c;->x(Landroid/os/Parcel;)Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    iput-boolean v0, p0, Lcom/autolink/app/vehicleservice/CustomCarSeatBean;->isSeatHeating:Z

    .line 11
    .line 12
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    iput v0, p0, Lcom/autolink/app/vehicleservice/CustomCarSeatBean;->fl:I

    .line 17
    .line 18
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    iput v0, p0, Lcom/autolink/app/vehicleservice/CustomCarSeatBean;->fr:I

    .line 23
    .line 24
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    iput v0, p0, Lcom/autolink/app/vehicleservice/CustomCarSeatBean;->rl:I

    .line 29
    .line 30
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 31
    .line 32
    .line 33
    move-result p1

    .line 34
    iput p1, p0, Lcom/autolink/app/vehicleservice/CustomCarSeatBean;->rr:I

    .line 35
    .line 36
    return-void
.end method

.method public final setFl(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/autolink/app/vehicleservice/CustomCarSeatBean;->fl:I

    .line 2
    .line 3
    return-void
.end method

.method public final setFr(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/autolink/app/vehicleservice/CustomCarSeatBean;->fr:I

    .line 2
    .line 3
    return-void
.end method

.method public final setRl(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/autolink/app/vehicleservice/CustomCarSeatBean;->rl:I

    .line 2
    .line 3
    return-void
.end method

.method public final setRr(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/autolink/app/vehicleservice/CustomCarSeatBean;->rr:I

    .line 2
    .line 3
    return-void
.end method

.method public final setSeatHeating(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/autolink/app/vehicleservice/CustomCarSeatBean;->isSeatHeating:Z

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
    iget-boolean p2, p0, Lcom/autolink/app/vehicleservice/CustomCarSeatBean;->isSeatHeating:Z

    .line 7
    .line 8
    invoke-static {p1, p2}, La2/c;->n(Landroid/os/Parcel;Z)V

    .line 9
    .line 10
    .line 11
    iget p2, p0, Lcom/autolink/app/vehicleservice/CustomCarSeatBean;->fl:I

    .line 12
    .line 13
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 14
    .line 15
    .line 16
    iget p2, p0, Lcom/autolink/app/vehicleservice/CustomCarSeatBean;->fr:I

    .line 17
    .line 18
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 19
    .line 20
    .line 21
    iget p2, p0, Lcom/autolink/app/vehicleservice/CustomCarSeatBean;->rl:I

    .line 22
    .line 23
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 24
    .line 25
    .line 26
    iget p2, p0, Lcom/autolink/app/vehicleservice/CustomCarSeatBean;->rr:I

    .line 27
    .line 28
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 29
    .line 30
    .line 31
    return-void
.end method
