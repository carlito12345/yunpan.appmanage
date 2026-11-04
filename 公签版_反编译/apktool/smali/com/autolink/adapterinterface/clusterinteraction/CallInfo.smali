.class public Lcom/autolink/adapterinterface/clusterinteraction/CallInfo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/autolink/adapterinterface/clusterinteraction/CallInfo$CallStatus;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/autolink/adapterinterface/clusterinteraction/CallInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private status:Lcom/autolink/adapterinterface/clusterinteraction/CallInfo$CallStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/autolink/adapterinterface/clusterinteraction/CallInfo$1;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/autolink/adapterinterface/clusterinteraction/CallInfo$1;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/autolink/adapterinterface/clusterinteraction/CallInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-static {p1}, Lcom/autolink/adapterinterface/clusterinteraction/CallInfo$CallStatus;->forNumber(I)Lcom/autolink/adapterinterface/clusterinteraction/CallInfo$CallStatus;

    move-result-object p1

    iput-object p1, p0, Lcom/autolink/adapterinterface/clusterinteraction/CallInfo;->status:Lcom/autolink/adapterinterface/clusterinteraction/CallInfo$CallStatus;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getStatus()Lcom/autolink/adapterinterface/clusterinteraction/CallInfo$CallStatus;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/autolink/adapterinterface/clusterinteraction/CallInfo;->status:Lcom/autolink/adapterinterface/clusterinteraction/CallInfo$CallStatus;

    .line 2
    .line 3
    return-object v0
.end method

.method public setStatus(Lcom/autolink/adapterinterface/clusterinteraction/CallInfo$CallStatus;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/autolink/adapterinterface/clusterinteraction/CallInfo;->status:Lcom/autolink/adapterinterface/clusterinteraction/CallInfo$CallStatus;

    .line 2
    .line 3
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "CallInfo{status="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lcom/autolink/adapterinterface/clusterinteraction/CallInfo;->status:Lcom/autolink/adapterinterface/clusterinteraction/CallInfo$CallStatus;

    .line 9
    .line 10
    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    const-string v1, "}"

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 1
    iget-object p2, p0, Lcom/autolink/adapterinterface/clusterinteraction/CallInfo;->status:Lcom/autolink/adapterinterface/clusterinteraction/CallInfo$CallStatus;

    .line 2
    .line 3
    invoke-virtual {p2}, Lcom/autolink/adapterinterface/clusterinteraction/CallInfo$CallStatus;->getNumber()I

    .line 4
    .line 5
    .line 6
    move-result p2

    .line 7
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 8
    .line 9
    .line 10
    return-void
.end method
