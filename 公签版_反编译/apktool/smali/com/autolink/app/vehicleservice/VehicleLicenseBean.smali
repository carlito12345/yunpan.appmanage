.class public final Lcom/autolink/app/vehicleservice/VehicleLicenseBean;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/autolink/app/vehicleservice/VehicleLicenseBean;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private AVM_LPN_1:Ljava/lang/String;

.field private AVM_LPN_2:Ljava/lang/String;

.field private AVM_LPN_3:Ljava/lang/String;

.field private AVM_LPN_4:Ljava/lang/String;

.field private AVM_LPN_5:Ljava/lang/String;

.field private AVM_LPN_6:Ljava/lang/String;

.field private AVM_LPN_7:Ljava/lang/String;

.field private AVM_LPN_8:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/autolink/app/vehicleservice/VehicleLicenseBean$1;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/autolink/app/vehicleservice/VehicleLicenseBean$1;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/autolink/app/vehicleservice/VehicleLicenseBean;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 8

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    const-string v0, "parcel"

    invoke-static {p1, v0}, Lue/d;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 21
    const-string v1, "parcel.readString()"

    invoke-static {v0, v1}, Lue/d;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 23
    invoke-static {v2, v1}, Lue/d;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 25
    invoke-static {v3, v1}, Lue/d;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 27
    invoke-static {v4, v1}, Lue/d;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 29
    invoke-static {v5, v1}, Lue/d;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 31
    invoke-static {v6, v1}, Lue/d;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 33
    invoke-static {v7, v1}, Lue/d;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 35
    invoke-static {p1, v1}, Lue/d;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    iput-object v0, p0, Lcom/autolink/app/vehicleservice/VehicleLicenseBean;->AVM_LPN_1:Ljava/lang/String;

    .line 37
    iput-object v2, p0, Lcom/autolink/app/vehicleservice/VehicleLicenseBean;->AVM_LPN_2:Ljava/lang/String;

    .line 38
    iput-object v3, p0, Lcom/autolink/app/vehicleservice/VehicleLicenseBean;->AVM_LPN_3:Ljava/lang/String;

    .line 39
    iput-object v4, p0, Lcom/autolink/app/vehicleservice/VehicleLicenseBean;->AVM_LPN_4:Ljava/lang/String;

    .line 40
    iput-object v5, p0, Lcom/autolink/app/vehicleservice/VehicleLicenseBean;->AVM_LPN_5:Ljava/lang/String;

    .line 41
    iput-object v6, p0, Lcom/autolink/app/vehicleservice/VehicleLicenseBean;->AVM_LPN_6:Ljava/lang/String;

    .line 42
    iput-object v7, p0, Lcom/autolink/app/vehicleservice/VehicleLicenseBean;->AVM_LPN_7:Ljava/lang/String;

    .line 43
    iput-object p1, p0, Lcom/autolink/app/vehicleservice/VehicleLicenseBean;->AVM_LPN_8:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    const-string v0, "AVM_LPN_1"

    invoke-static {p1, v0}, Lue/d;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    const-string v0, "AVM_LPN_2"

    invoke-static {p2, v0}, Lue/d;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    const-string v0, "AVM_LPN_3"

    invoke-static {p3, v0}, Lue/d;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    const-string v0, "AVM_LPN_4"

    invoke-static {p4, v0}, Lue/d;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    const-string v0, "AVM_LPN_5"

    invoke-static {p5, v0}, Lue/d;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    const-string v0, "AVM_LPN_6"

    invoke-static {p6, v0}, Lue/d;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    const-string v0, "AVM_LPN_7"

    invoke-static {p7, v0}, Lue/d;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    const-string v0, "AVM_LPN_8"

    invoke-static {p8, v0}, Lue/d;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    iput-object p1, p0, Lcom/autolink/app/vehicleservice/VehicleLicenseBean;->AVM_LPN_1:Ljava/lang/String;

    .line 11
    iput-object p2, p0, Lcom/autolink/app/vehicleservice/VehicleLicenseBean;->AVM_LPN_2:Ljava/lang/String;

    .line 12
    iput-object p3, p0, Lcom/autolink/app/vehicleservice/VehicleLicenseBean;->AVM_LPN_3:Ljava/lang/String;

    .line 13
    iput-object p4, p0, Lcom/autolink/app/vehicleservice/VehicleLicenseBean;->AVM_LPN_4:Ljava/lang/String;

    .line 14
    iput-object p5, p0, Lcom/autolink/app/vehicleservice/VehicleLicenseBean;->AVM_LPN_5:Ljava/lang/String;

    .line 15
    iput-object p6, p0, Lcom/autolink/app/vehicleservice/VehicleLicenseBean;->AVM_LPN_6:Ljava/lang/String;

    .line 16
    iput-object p7, p0, Lcom/autolink/app/vehicleservice/VehicleLicenseBean;->AVM_LPN_7:Ljava/lang/String;

    .line 17
    iput-object p8, p0, Lcom/autolink/app/vehicleservice/VehicleLicenseBean;->AVM_LPN_8:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final getAVM_LPN_1()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/autolink/app/vehicleservice/VehicleLicenseBean;->AVM_LPN_1:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getAVM_LPN_2()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/autolink/app/vehicleservice/VehicleLicenseBean;->AVM_LPN_2:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getAVM_LPN_3()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/autolink/app/vehicleservice/VehicleLicenseBean;->AVM_LPN_3:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getAVM_LPN_4()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/autolink/app/vehicleservice/VehicleLicenseBean;->AVM_LPN_4:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getAVM_LPN_5()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/autolink/app/vehicleservice/VehicleLicenseBean;->AVM_LPN_5:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getAVM_LPN_6()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/autolink/app/vehicleservice/VehicleLicenseBean;->AVM_LPN_6:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getAVM_LPN_7()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/autolink/app/vehicleservice/VehicleLicenseBean;->AVM_LPN_7:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getAVM_LPN_8()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/autolink/app/vehicleservice/VehicleLicenseBean;->AVM_LPN_8:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final readFromParcel(Landroid/os/Parcel;)V
    .locals 2

    .line 1
    const-string v0, "dest"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lue/d;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    const-string v1, "dest.readString()"

    .line 11
    .line 12
    invoke-static {v0, v1}, Lue/d;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    iput-object v0, p0, Lcom/autolink/app/vehicleservice/VehicleLicenseBean;->AVM_LPN_1:Ljava/lang/String;

    .line 16
    .line 17
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-static {v0, v1}, Lue/d;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    iput-object v0, p0, Lcom/autolink/app/vehicleservice/VehicleLicenseBean;->AVM_LPN_2:Ljava/lang/String;

    .line 25
    .line 26
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-static {v0, v1}, Lue/d;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    iput-object v0, p0, Lcom/autolink/app/vehicleservice/VehicleLicenseBean;->AVM_LPN_3:Ljava/lang/String;

    .line 34
    .line 35
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    invoke-static {v0, v1}, Lue/d;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    iput-object v0, p0, Lcom/autolink/app/vehicleservice/VehicleLicenseBean;->AVM_LPN_4:Ljava/lang/String;

    .line 43
    .line 44
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    invoke-static {v0, v1}, Lue/d;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    iput-object v0, p0, Lcom/autolink/app/vehicleservice/VehicleLicenseBean;->AVM_LPN_5:Ljava/lang/String;

    .line 52
    .line 53
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    invoke-static {v0, v1}, Lue/d;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    iput-object v0, p0, Lcom/autolink/app/vehicleservice/VehicleLicenseBean;->AVM_LPN_6:Ljava/lang/String;

    .line 61
    .line 62
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    invoke-static {v0, v1}, Lue/d;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    iput-object v0, p0, Lcom/autolink/app/vehicleservice/VehicleLicenseBean;->AVM_LPN_7:Ljava/lang/String;

    .line 70
    .line 71
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    invoke-static {p1, v1}, Lue/d;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    iput-object p1, p0, Lcom/autolink/app/vehicleservice/VehicleLicenseBean;->AVM_LPN_8:Ljava/lang/String;

    .line 79
    .line 80
    return-void
.end method

.method public final setAVM_LPN_1(Ljava/lang/String;)V
    .locals 1

    .line 1
    const-string v0, "<set-?>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lue/d;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/autolink/app/vehicleservice/VehicleLicenseBean;->AVM_LPN_1:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method

.method public final setAVM_LPN_2(Ljava/lang/String;)V
    .locals 1

    .line 1
    const-string v0, "<set-?>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lue/d;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/autolink/app/vehicleservice/VehicleLicenseBean;->AVM_LPN_2:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method

.method public final setAVM_LPN_3(Ljava/lang/String;)V
    .locals 1

    .line 1
    const-string v0, "<set-?>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lue/d;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/autolink/app/vehicleservice/VehicleLicenseBean;->AVM_LPN_3:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method

.method public final setAVM_LPN_4(Ljava/lang/String;)V
    .locals 1

    .line 1
    const-string v0, "<set-?>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lue/d;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/autolink/app/vehicleservice/VehicleLicenseBean;->AVM_LPN_4:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method

.method public final setAVM_LPN_5(Ljava/lang/String;)V
    .locals 1

    .line 1
    const-string v0, "<set-?>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lue/d;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/autolink/app/vehicleservice/VehicleLicenseBean;->AVM_LPN_5:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method

.method public final setAVM_LPN_6(Ljava/lang/String;)V
    .locals 1

    .line 1
    const-string v0, "<set-?>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lue/d;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/autolink/app/vehicleservice/VehicleLicenseBean;->AVM_LPN_6:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method

.method public final setAVM_LPN_7(Ljava/lang/String;)V
    .locals 1

    .line 1
    const-string v0, "<set-?>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lue/d;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/autolink/app/vehicleservice/VehicleLicenseBean;->AVM_LPN_7:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method

.method public final setAVM_LPN_8(Ljava/lang/String;)V
    .locals 1

    .line 1
    const-string v0, "<set-?>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lue/d;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/autolink/app/vehicleservice/VehicleLicenseBean;->AVM_LPN_8:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "VehicleLicenseBean(AVM_LPN_1=\'"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lcom/autolink/app/vehicleservice/VehicleLicenseBean;->AVM_LPN_1:Ljava/lang/String;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, "\', AVM_LPN_2=\'"

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget-object v1, p0, Lcom/autolink/app/vehicleservice/VehicleLicenseBean;->AVM_LPN_2:Ljava/lang/String;

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v1, "\', AVM_LPN_3=\'"

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    iget-object v1, p0, Lcom/autolink/app/vehicleservice/VehicleLicenseBean;->AVM_LPN_3:Ljava/lang/String;

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string v1, "\', AVM_LPN_4=\'"

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    iget-object v1, p0, Lcom/autolink/app/vehicleservice/VehicleLicenseBean;->AVM_LPN_4:Ljava/lang/String;

    .line 39
    .line 40
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    const-string v1, "\', AVM_LPN_5=\'"

    .line 44
    .line 45
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    iget-object v1, p0, Lcom/autolink/app/vehicleservice/VehicleLicenseBean;->AVM_LPN_5:Ljava/lang/String;

    .line 49
    .line 50
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    const-string v1, "\', AVM_LPN_6=\'"

    .line 54
    .line 55
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    iget-object v1, p0, Lcom/autolink/app/vehicleservice/VehicleLicenseBean;->AVM_LPN_6:Ljava/lang/String;

    .line 59
    .line 60
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    const-string v1, "\', AVM_LPN_7=\'"

    .line 64
    .line 65
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    iget-object v1, p0, Lcom/autolink/app/vehicleservice/VehicleLicenseBean;->AVM_LPN_7:Ljava/lang/String;

    .line 69
    .line 70
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    const-string v1, "\', AVM_LPN_8=\'"

    .line 74
    .line 75
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    iget-object v1, p0, Lcom/autolink/app/vehicleservice/VehicleLicenseBean;->AVM_LPN_8:Ljava/lang/String;

    .line 79
    .line 80
    const-string v2, "\')"

    .line 81
    .line 82
    invoke-static {v1, v2, v0}, Lg/b;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    return-object v0
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
    iget-object p2, p0, Lcom/autolink/app/vehicleservice/VehicleLicenseBean;->AVM_LPN_1:Ljava/lang/String;

    .line 7
    .line 8
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-object p2, p0, Lcom/autolink/app/vehicleservice/VehicleLicenseBean;->AVM_LPN_2:Ljava/lang/String;

    .line 12
    .line 13
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    iget-object p2, p0, Lcom/autolink/app/vehicleservice/VehicleLicenseBean;->AVM_LPN_3:Ljava/lang/String;

    .line 17
    .line 18
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    iget-object p2, p0, Lcom/autolink/app/vehicleservice/VehicleLicenseBean;->AVM_LPN_4:Ljava/lang/String;

    .line 22
    .line 23
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    iget-object p2, p0, Lcom/autolink/app/vehicleservice/VehicleLicenseBean;->AVM_LPN_5:Ljava/lang/String;

    .line 27
    .line 28
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    iget-object p2, p0, Lcom/autolink/app/vehicleservice/VehicleLicenseBean;->AVM_LPN_6:Ljava/lang/String;

    .line 32
    .line 33
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    iget-object p2, p0, Lcom/autolink/app/vehicleservice/VehicleLicenseBean;->AVM_LPN_7:Ljava/lang/String;

    .line 37
    .line 38
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    iget-object p2, p0, Lcom/autolink/app/vehicleservice/VehicleLicenseBean;->AVM_LPN_8:Ljava/lang/String;

    .line 42
    .line 43
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    return-void
.end method
