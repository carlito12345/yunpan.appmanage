.class public Lcom/autolink/adapterinterface/GeneralInfo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/autolink/adapterinterface/GeneralInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public carModalType:I

.field public carModelConfig:[B

.field public f171sn:Ljava/lang/String;

.field public hardwareVersion:Ljava/lang/String;

.field public iccid:Ljava/lang/String;

.field public imei:Ljava/lang/String;

.field public imsi:Ljava/lang/String;

.field public manufactureDate:I

.field public partNumber:Ljava/lang/String;

.field public softwareVersion:Ljava/lang/String;

.field public supplierIdertifier:Ljava/lang/String;

.field public vinCode:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/autolink/adapterinterface/GeneralInfo$1;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/autolink/adapterinterface/GeneralInfo$1;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/autolink/adapterinterface/GeneralInfo;->CREATOR:Landroid/os/Parcelable$Creator;

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
    invoke-virtual {p0, p1}, Lcom/autolink/adapterinterface/GeneralInfo;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Lcom/autolink/adapterinterface/GeneralInfo;)V
    .locals 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    return-void

    .line 5
    :cond_0
    iget v0, p1, Lcom/autolink/adapterinterface/GeneralInfo;->manufactureDate:I

    iput v0, p0, Lcom/autolink/adapterinterface/GeneralInfo;->manufactureDate:I

    .line 6
    iget v0, p1, Lcom/autolink/adapterinterface/GeneralInfo;->carModalType:I

    iput v0, p0, Lcom/autolink/adapterinterface/GeneralInfo;->carModalType:I

    .line 7
    iget-object v0, p1, Lcom/autolink/adapterinterface/GeneralInfo;->vinCode:Ljava/lang/String;

    iput-object v0, p0, Lcom/autolink/adapterinterface/GeneralInfo;->vinCode:Ljava/lang/String;

    .line 8
    iget-object v0, p1, Lcom/autolink/adapterinterface/GeneralInfo;->f171sn:Ljava/lang/String;

    iput-object v0, p0, Lcom/autolink/adapterinterface/GeneralInfo;->f171sn:Ljava/lang/String;

    .line 9
    iget-object v0, p1, Lcom/autolink/adapterinterface/GeneralInfo;->iccid:Ljava/lang/String;

    iput-object v0, p0, Lcom/autolink/adapterinterface/GeneralInfo;->iccid:Ljava/lang/String;

    .line 10
    iget-object v0, p1, Lcom/autolink/adapterinterface/GeneralInfo;->hardwareVersion:Ljava/lang/String;

    iput-object v0, p0, Lcom/autolink/adapterinterface/GeneralInfo;->hardwareVersion:Ljava/lang/String;

    .line 11
    iget-object v0, p1, Lcom/autolink/adapterinterface/GeneralInfo;->softwareVersion:Ljava/lang/String;

    iput-object v0, p0, Lcom/autolink/adapterinterface/GeneralInfo;->softwareVersion:Ljava/lang/String;

    .line 12
    iget-object v0, p1, Lcom/autolink/adapterinterface/GeneralInfo;->supplierIdertifier:Ljava/lang/String;

    iput-object v0, p0, Lcom/autolink/adapterinterface/GeneralInfo;->supplierIdertifier:Ljava/lang/String;

    .line 13
    iget-object v0, p1, Lcom/autolink/adapterinterface/GeneralInfo;->partNumber:Ljava/lang/String;

    iput-object v0, p0, Lcom/autolink/adapterinterface/GeneralInfo;->partNumber:Ljava/lang/String;

    .line 14
    iget-object v0, p1, Lcom/autolink/adapterinterface/GeneralInfo;->imsi:Ljava/lang/String;

    iput-object v0, p0, Lcom/autolink/adapterinterface/GeneralInfo;->imsi:Ljava/lang/String;

    .line 15
    iget-object v0, p1, Lcom/autolink/adapterinterface/GeneralInfo;->imei:Ljava/lang/String;

    iput-object v0, p0, Lcom/autolink/adapterinterface/GeneralInfo;->imei:Ljava/lang/String;

    .line 16
    iget-object p1, p1, Lcom/autolink/adapterinterface/GeneralInfo;->carModelConfig:[B

    iput-object p1, p0, Lcom/autolink/adapterinterface/GeneralInfo;->carModelConfig:[B

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iput v0, p0, Lcom/autolink/adapterinterface/GeneralInfo;->manufactureDate:I

    .line 6
    .line 7
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    iput v0, p0, Lcom/autolink/adapterinterface/GeneralInfo;->carModalType:I

    .line 12
    .line 13
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    iput-object v0, p0, Lcom/autolink/adapterinterface/GeneralInfo;->vinCode:Ljava/lang/String;

    .line 18
    .line 19
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    iput-object v0, p0, Lcom/autolink/adapterinterface/GeneralInfo;->f171sn:Ljava/lang/String;

    .line 24
    .line 25
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    iput-object v0, p0, Lcom/autolink/adapterinterface/GeneralInfo;->iccid:Ljava/lang/String;

    .line 30
    .line 31
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    iput-object v0, p0, Lcom/autolink/adapterinterface/GeneralInfo;->hardwareVersion:Ljava/lang/String;

    .line 36
    .line 37
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    iput-object v0, p0, Lcom/autolink/adapterinterface/GeneralInfo;->softwareVersion:Ljava/lang/String;

    .line 42
    .line 43
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    iput-object v0, p0, Lcom/autolink/adapterinterface/GeneralInfo;->supplierIdertifier:Ljava/lang/String;

    .line 48
    .line 49
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    iput-object v0, p0, Lcom/autolink/adapterinterface/GeneralInfo;->partNumber:Ljava/lang/String;

    .line 54
    .line 55
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    iput-object v0, p0, Lcom/autolink/adapterinterface/GeneralInfo;->imsi:Ljava/lang/String;

    .line 60
    .line 61
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    iput-object v0, p0, Lcom/autolink/adapterinterface/GeneralInfo;->imei:Ljava/lang/String;

    .line 66
    .line 67
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    iput-object p1, p0, Lcom/autolink/adapterinterface/GeneralInfo;->carModelConfig:[B

    .line 72
    .line 73
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "GeneralInfo{manufactureDate="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget v1, p0, Lcom/autolink/adapterinterface/GeneralInfo;->manufactureDate:I

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, ", carModalType="

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget v1, p0, Lcom/autolink/adapterinterface/GeneralInfo;->carModalType:I

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v1, ", vinCode=\'"

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    iget-object v1, p0, Lcom/autolink/adapterinterface/GeneralInfo;->vinCode:Ljava/lang/String;

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string v1, "\', sn=\'"

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    iget-object v1, p0, Lcom/autolink/adapterinterface/GeneralInfo;->f171sn:Ljava/lang/String;

    .line 39
    .line 40
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    const-string v1, "\', iccid=\'"

    .line 44
    .line 45
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    iget-object v1, p0, Lcom/autolink/adapterinterface/GeneralInfo;->iccid:Ljava/lang/String;

    .line 49
    .line 50
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    const-string v1, "\', hardwareVersion=\'"

    .line 54
    .line 55
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    iget-object v1, p0, Lcom/autolink/adapterinterface/GeneralInfo;->hardwareVersion:Ljava/lang/String;

    .line 59
    .line 60
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    const-string v1, "\', softwareVersion=\'"

    .line 64
    .line 65
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    iget-object v1, p0, Lcom/autolink/adapterinterface/GeneralInfo;->softwareVersion:Ljava/lang/String;

    .line 69
    .line 70
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    const-string v1, "\', supplierIdertifier=\'"

    .line 74
    .line 75
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    iget-object v1, p0, Lcom/autolink/adapterinterface/GeneralInfo;->supplierIdertifier:Ljava/lang/String;

    .line 79
    .line 80
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    const-string v1, "\', partNumber=\'"

    .line 84
    .line 85
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    iget-object v1, p0, Lcom/autolink/adapterinterface/GeneralInfo;->partNumber:Ljava/lang/String;

    .line 89
    .line 90
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    const-string v1, "\', imsi=\'"

    .line 94
    .line 95
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    iget-object v1, p0, Lcom/autolink/adapterinterface/GeneralInfo;->imsi:Ljava/lang/String;

    .line 99
    .line 100
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    const-string v1, "\', imei=\'"

    .line 104
    .line 105
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    iget-object v1, p0, Lcom/autolink/adapterinterface/GeneralInfo;->imei:Ljava/lang/String;

    .line 109
    .line 110
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    const-string v1, "\', carModelConfig="

    .line 114
    .line 115
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    iget-object v1, p0, Lcom/autolink/adapterinterface/GeneralInfo;->carModelConfig:[B

    .line 119
    .line 120
    invoke-static {v1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object v1

    .line 124
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    .line 126
    .line 127
    const-string v1, "}"

    .line 128
    .line 129
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    .line 131
    .line 132
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object v0

    .line 136
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 1
    iget p2, p0, Lcom/autolink/adapterinterface/GeneralInfo;->manufactureDate:I

    .line 2
    .line 3
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4
    .line 5
    .line 6
    iget p2, p0, Lcom/autolink/adapterinterface/GeneralInfo;->carModalType:I

    .line 7
    .line 8
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 9
    .line 10
    .line 11
    iget-object p2, p0, Lcom/autolink/adapterinterface/GeneralInfo;->vinCode:Ljava/lang/String;

    .line 12
    .line 13
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    iget-object p2, p0, Lcom/autolink/adapterinterface/GeneralInfo;->f171sn:Ljava/lang/String;

    .line 17
    .line 18
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    iget-object p2, p0, Lcom/autolink/adapterinterface/GeneralInfo;->iccid:Ljava/lang/String;

    .line 22
    .line 23
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    iget-object p2, p0, Lcom/autolink/adapterinterface/GeneralInfo;->hardwareVersion:Ljava/lang/String;

    .line 27
    .line 28
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    iget-object p2, p0, Lcom/autolink/adapterinterface/GeneralInfo;->softwareVersion:Ljava/lang/String;

    .line 32
    .line 33
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    iget-object p2, p0, Lcom/autolink/adapterinterface/GeneralInfo;->supplierIdertifier:Ljava/lang/String;

    .line 37
    .line 38
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    iget-object p2, p0, Lcom/autolink/adapterinterface/GeneralInfo;->partNumber:Ljava/lang/String;

    .line 42
    .line 43
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    iget-object p2, p0, Lcom/autolink/adapterinterface/GeneralInfo;->imsi:Ljava/lang/String;

    .line 47
    .line 48
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    iget-object p2, p0, Lcom/autolink/adapterinterface/GeneralInfo;->imei:Ljava/lang/String;

    .line 52
    .line 53
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    iget-object p2, p0, Lcom/autolink/adapterinterface/GeneralInfo;->carModelConfig:[B

    .line 57
    .line 58
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 59
    .line 60
    .line 61
    return-void
.end method
