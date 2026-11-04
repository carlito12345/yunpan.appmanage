.class public Lcom/autolink/adapterinterface/clusterinteraction/TbtTrafficLaneInfo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/autolink/adapterinterface/clusterinteraction/TbtTrafficLaneInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private islaneAdvised:Z

.field private laneExtended:I

.field private laneIcon:I

.field private laneNo:I

.field private laneType:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/autolink/adapterinterface/clusterinteraction/TbtTrafficLaneInfo$1;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/autolink/adapterinterface/clusterinteraction/TbtTrafficLaneInfo$1;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/autolink/adapterinterface/clusterinteraction/TbtTrafficLaneInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/autolink/adapterinterface/clusterinteraction/TbtTrafficLaneInfo;->islaneAdvised:Z

    .line 9
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/autolink/adapterinterface/clusterinteraction/TbtTrafficLaneInfo;->laneExtended:I

    .line 10
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/autolink/adapterinterface/clusterinteraction/TbtTrafficLaneInfo;->laneIcon:I

    .line 11
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/autolink/adapterinterface/clusterinteraction/TbtTrafficLaneInfo;->laneNo:I

    .line 12
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/autolink/adapterinterface/clusterinteraction/TbtTrafficLaneInfo;->laneType:I

    return-void
.end method

.method public constructor <init>(ZIIII)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-boolean p1, p0, Lcom/autolink/adapterinterface/clusterinteraction/TbtTrafficLaneInfo;->islaneAdvised:Z

    .line 3
    iput p2, p0, Lcom/autolink/adapterinterface/clusterinteraction/TbtTrafficLaneInfo;->laneExtended:I

    .line 4
    iput p3, p0, Lcom/autolink/adapterinterface/clusterinteraction/TbtTrafficLaneInfo;->laneIcon:I

    .line 5
    iput p4, p0, Lcom/autolink/adapterinterface/clusterinteraction/TbtTrafficLaneInfo;->laneNo:I

    .line 6
    iput p5, p0, Lcom/autolink/adapterinterface/clusterinteraction/TbtTrafficLaneInfo;->laneType:I

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getLaneExtended()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/autolink/adapterinterface/clusterinteraction/TbtTrafficLaneInfo;->laneExtended:I

    .line 2
    .line 3
    return v0
.end method

.method public getLaneIcon()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/autolink/adapterinterface/clusterinteraction/TbtTrafficLaneInfo;->laneIcon:I

    .line 2
    .line 3
    return v0
.end method

.method public getLaneNo()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/autolink/adapterinterface/clusterinteraction/TbtTrafficLaneInfo;->laneNo:I

    .line 2
    .line 3
    return v0
.end method

.method public getLaneType()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/autolink/adapterinterface/clusterinteraction/TbtTrafficLaneInfo;->laneType:I

    .line 2
    .line 3
    return v0
.end method

.method public isIslaneAdvised()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/autolink/adapterinterface/clusterinteraction/TbtTrafficLaneInfo;->islaneAdvised:Z

    .line 2
    .line 3
    return v0
.end method

.method public setIslaneAdvised(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/autolink/adapterinterface/clusterinteraction/TbtTrafficLaneInfo;->islaneAdvised:Z

    .line 2
    .line 3
    return-void
.end method

.method public setLaneExtended(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/autolink/adapterinterface/clusterinteraction/TbtTrafficLaneInfo;->laneExtended:I

    .line 2
    .line 3
    return-void
.end method

.method public setLaneIcon(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/autolink/adapterinterface/clusterinteraction/TbtTrafficLaneInfo;->laneIcon:I

    .line 2
    .line 3
    return-void
.end method

.method public setLaneNo(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/autolink/adapterinterface/clusterinteraction/TbtTrafficLaneInfo;->laneNo:I

    .line 2
    .line 3
    return-void
.end method

.method public setLaneType(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/autolink/adapterinterface/clusterinteraction/TbtTrafficLaneInfo;->laneType:I

    .line 2
    .line 3
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "TbtTrafficLaneInfo{islaneAdvised="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-boolean v1, p0, Lcom/autolink/adapterinterface/clusterinteraction/TbtTrafficLaneInfo;->islaneAdvised:Z

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, ", laneExtended="

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget v1, p0, Lcom/autolink/adapterinterface/clusterinteraction/TbtTrafficLaneInfo;->laneExtended:I

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v1, ", laneIcon="

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    iget v1, p0, Lcom/autolink/adapterinterface/clusterinteraction/TbtTrafficLaneInfo;->laneIcon:I

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string v1, ", laneNo="

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    iget v1, p0, Lcom/autolink/adapterinterface/clusterinteraction/TbtTrafficLaneInfo;->laneNo:I

    .line 39
    .line 40
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    const-string v1, ", laneType="

    .line 44
    .line 45
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    iget v1, p0, Lcom/autolink/adapterinterface/clusterinteraction/TbtTrafficLaneInfo;->laneType:I

    .line 49
    .line 50
    const-string v2, "}"

    .line 51
    .line 52
    invoke-static {v0, v1, v2}, Landroid/support/v4/media/session/a;->s(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 1
    iget-boolean p2, p0, Lcom/autolink/adapterinterface/clusterinteraction/TbtTrafficLaneInfo;->islaneAdvised:Z

    .line 2
    .line 3
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 4
    .line 5
    .line 6
    iget p2, p0, Lcom/autolink/adapterinterface/clusterinteraction/TbtTrafficLaneInfo;->laneExtended:I

    .line 7
    .line 8
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 9
    .line 10
    .line 11
    iget p2, p0, Lcom/autolink/adapterinterface/clusterinteraction/TbtTrafficLaneInfo;->laneIcon:I

    .line 12
    .line 13
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 14
    .line 15
    .line 16
    iget p2, p0, Lcom/autolink/adapterinterface/clusterinteraction/TbtTrafficLaneInfo;->laneNo:I

    .line 17
    .line 18
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 19
    .line 20
    .line 21
    iget p2, p0, Lcom/autolink/adapterinterface/clusterinteraction/TbtTrafficLaneInfo;->laneType:I

    .line 22
    .line 23
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 24
    .line 25
    .line 26
    return-void
.end method
