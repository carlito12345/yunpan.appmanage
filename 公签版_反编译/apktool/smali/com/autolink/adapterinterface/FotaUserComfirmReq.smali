.class public Lcom/autolink/adapterinterface/FotaUserComfirmReq;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/autolink/adapterinterface/FotaUserComfirmReq$UpdateEcuMessage;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/autolink/adapterinterface/FotaUserComfirmReq;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public ecuNumber:I

.field public sessionId:Ljava/lang/String;

.field public taskId:J

.field public updateEcuMsgs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/autolink/adapterinterface/FotaUserComfirmReq$UpdateEcuMessage;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/autolink/adapterinterface/FotaUserComfirmReq$1;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/autolink/adapterinterface/FotaUserComfirmReq$1;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/autolink/adapterinterface/FotaUserComfirmReq;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/autolink/adapterinterface/FotaUserComfirmReq;->updateEcuMsgs:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/autolink/adapterinterface/FotaUserComfirmReq;->updateEcuMsgs:Ljava/util/ArrayList;

    .line 5
    invoke-virtual {p0, p1}, Lcom/autolink/adapterinterface/FotaUserComfirmReq;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    iput-wide v0, p0, Lcom/autolink/adapterinterface/FotaUserComfirmReq;->taskId:J

    .line 6
    .line 7
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iput-object v0, p0, Lcom/autolink/adapterinterface/FotaUserComfirmReq;->sessionId:Ljava/lang/String;

    .line 12
    .line 13
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    iput v0, p0, Lcom/autolink/adapterinterface/FotaUserComfirmReq;->ecuNumber:I

    .line 18
    .line 19
    const/4 v0, 0x0

    .line 20
    :goto_0
    iget v1, p0, Lcom/autolink/adapterinterface/FotaUserComfirmReq;->ecuNumber:I

    .line 21
    .line 22
    if-ge v0, v1, :cond_0

    .line 23
    .line 24
    new-instance v1, Lcom/autolink/adapterinterface/FotaUserComfirmReq$UpdateEcuMessage;

    .line 25
    .line 26
    invoke-direct {v1}, Lcom/autolink/adapterinterface/FotaUserComfirmReq$UpdateEcuMessage;-><init>()V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 30
    .line 31
    .line 32
    move-result v2

    .line 33
    iput v2, v1, Lcom/autolink/adapterinterface/FotaUserComfirmReq$UpdateEcuMessage;->updateModel:I

    .line 34
    .line 35
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    iput-object v2, v1, Lcom/autolink/adapterinterface/FotaUserComfirmReq$UpdateEcuMessage;->targetVersion:Ljava/lang/String;

    .line 40
    .line 41
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v2

    .line 45
    iput-object v2, v1, Lcom/autolink/adapterinterface/FotaUserComfirmReq$UpdateEcuMessage;->partNo:Ljava/lang/String;

    .line 46
    .line 47
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v2

    .line 51
    iput-object v2, v1, Lcom/autolink/adapterinterface/FotaUserComfirmReq$UpdateEcuMessage;->releaseNote:Ljava/lang/String;

    .line 52
    .line 53
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 54
    .line 55
    .line 56
    move-result v2

    .line 57
    iput v2, v1, Lcom/autolink/adapterinterface/FotaUserComfirmReq$UpdateEcuMessage;->estimateUpgradeTime:I

    .line 58
    .line 59
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v2

    .line 63
    iput-object v2, v1, Lcom/autolink/adapterinterface/FotaUserComfirmReq$UpdateEcuMessage;->ecuName:Ljava/lang/String;

    .line 64
    .line 65
    iget-object v2, p0, Lcom/autolink/adapterinterface/FotaUserComfirmReq;->updateEcuMsgs:Ljava/util/ArrayList;

    .line 66
    .line 67
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 68
    .line 69
    .line 70
    add-int/lit8 v0, v0, 0x1

    .line 71
    .line 72
    goto :goto_0

    .line 73
    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "FotaUserComfirmReq msg TODO"

    .line 2
    .line 3
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/autolink/adapterinterface/FotaUserComfirmReq;->taskId:J

    .line 2
    .line 3
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 4
    .line 5
    .line 6
    iget-object p2, p0, Lcom/autolink/adapterinterface/FotaUserComfirmReq;->sessionId:Ljava/lang/String;

    .line 7
    .line 8
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget p2, p0, Lcom/autolink/adapterinterface/FotaUserComfirmReq;->ecuNumber:I

    .line 12
    .line 13
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 14
    .line 15
    .line 16
    const/4 p2, 0x0

    .line 17
    :goto_0
    iget v0, p0, Lcom/autolink/adapterinterface/FotaUserComfirmReq;->ecuNumber:I

    .line 18
    .line 19
    if-ge p2, v0, :cond_0

    .line 20
    .line 21
    iget-object v0, p0, Lcom/autolink/adapterinterface/FotaUserComfirmReq;->updateEcuMsgs:Ljava/util/ArrayList;

    .line 22
    .line 23
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    check-cast v0, Lcom/autolink/adapterinterface/FotaUserComfirmReq$UpdateEcuMessage;

    .line 28
    .line 29
    iget v0, v0, Lcom/autolink/adapterinterface/FotaUserComfirmReq$UpdateEcuMessage;->updateModel:I

    .line 30
    .line 31
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 32
    .line 33
    .line 34
    iget-object v0, p0, Lcom/autolink/adapterinterface/FotaUserComfirmReq;->updateEcuMsgs:Ljava/util/ArrayList;

    .line 35
    .line 36
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    check-cast v0, Lcom/autolink/adapterinterface/FotaUserComfirmReq$UpdateEcuMessage;

    .line 41
    .line 42
    iget-object v0, v0, Lcom/autolink/adapterinterface/FotaUserComfirmReq$UpdateEcuMessage;->targetVersion:Ljava/lang/String;

    .line 43
    .line 44
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    iget-object v0, p0, Lcom/autolink/adapterinterface/FotaUserComfirmReq;->updateEcuMsgs:Ljava/util/ArrayList;

    .line 48
    .line 49
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    check-cast v0, Lcom/autolink/adapterinterface/FotaUserComfirmReq$UpdateEcuMessage;

    .line 54
    .line 55
    iget-object v0, v0, Lcom/autolink/adapterinterface/FotaUserComfirmReq$UpdateEcuMessage;->partNo:Ljava/lang/String;

    .line 56
    .line 57
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    iget-object v0, p0, Lcom/autolink/adapterinterface/FotaUserComfirmReq;->updateEcuMsgs:Ljava/util/ArrayList;

    .line 61
    .line 62
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    check-cast v0, Lcom/autolink/adapterinterface/FotaUserComfirmReq$UpdateEcuMessage;

    .line 67
    .line 68
    iget-object v0, v0, Lcom/autolink/adapterinterface/FotaUserComfirmReq$UpdateEcuMessage;->releaseNote:Ljava/lang/String;

    .line 69
    .line 70
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    iget-object v0, p0, Lcom/autolink/adapterinterface/FotaUserComfirmReq;->updateEcuMsgs:Ljava/util/ArrayList;

    .line 74
    .line 75
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    check-cast v0, Lcom/autolink/adapterinterface/FotaUserComfirmReq$UpdateEcuMessage;

    .line 80
    .line 81
    iget v0, v0, Lcom/autolink/adapterinterface/FotaUserComfirmReq$UpdateEcuMessage;->estimateUpgradeTime:I

    .line 82
    .line 83
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 84
    .line 85
    .line 86
    iget-object v0, p0, Lcom/autolink/adapterinterface/FotaUserComfirmReq;->updateEcuMsgs:Ljava/util/ArrayList;

    .line 87
    .line 88
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    move-result-object v0

    .line 92
    check-cast v0, Lcom/autolink/adapterinterface/FotaUserComfirmReq$UpdateEcuMessage;

    .line 93
    .line 94
    iget-object v0, v0, Lcom/autolink/adapterinterface/FotaUserComfirmReq$UpdateEcuMessage;->ecuName:Ljava/lang/String;

    .line 95
    .line 96
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    add-int/lit8 p2, p2, 0x1

    .line 100
    .line 101
    goto :goto_0

    .line 102
    :cond_0
    return-void
.end method
