.class public final enum Lcom/hsae/autosdk/vehicle/VehicleConst$Ill$DayNight;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hsae/autosdk/vehicle/VehicleConst$Ill;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DayNight"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/hsae/autosdk/vehicle/VehicleConst$Ill$DayNight;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/hsae/autosdk/vehicle/VehicleConst$Ill$DayNight;

.field public static final enum DAY:Lcom/hsae/autosdk/vehicle/VehicleConst$Ill$DayNight;

.field public static final enum NIGHT:Lcom/hsae/autosdk/vehicle/VehicleConst$Ill$DayNight;


# direct methods
.method private static synthetic $values()[Lcom/hsae/autosdk/vehicle/VehicleConst$Ill$DayNight;
    .locals 3

    .line 1
    const/4 v0, 0x2

    .line 2
    new-array v0, v0, [Lcom/hsae/autosdk/vehicle/VehicleConst$Ill$DayNight;

    .line 3
    .line 4
    sget-object v1, Lcom/hsae/autosdk/vehicle/VehicleConst$Ill$DayNight;->DAY:Lcom/hsae/autosdk/vehicle/VehicleConst$Ill$DayNight;

    .line 5
    .line 6
    const/4 v2, 0x0

    .line 7
    aput-object v1, v0, v2

    .line 8
    .line 9
    sget-object v1, Lcom/hsae/autosdk/vehicle/VehicleConst$Ill$DayNight;->NIGHT:Lcom/hsae/autosdk/vehicle/VehicleConst$Ill$DayNight;

    .line 10
    .line 11
    const/4 v2, 0x1

    .line 12
    aput-object v1, v0, v2

    .line 13
    .line 14
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/hsae/autosdk/vehicle/VehicleConst$Ill$DayNight;

    .line 2
    .line 3
    const-string v1, "DAY"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2}, Lcom/hsae/autosdk/vehicle/VehicleConst$Ill$DayNight;-><init>(Ljava/lang/String;I)V

    .line 7
    .line 8
    .line 9
    sput-object v0, Lcom/hsae/autosdk/vehicle/VehicleConst$Ill$DayNight;->DAY:Lcom/hsae/autosdk/vehicle/VehicleConst$Ill$DayNight;

    .line 10
    .line 11
    new-instance v0, Lcom/hsae/autosdk/vehicle/VehicleConst$Ill$DayNight;

    .line 12
    .line 13
    const-string v1, "NIGHT"

    .line 14
    .line 15
    const/4 v2, 0x1

    .line 16
    invoke-direct {v0, v1, v2}, Lcom/hsae/autosdk/vehicle/VehicleConst$Ill$DayNight;-><init>(Ljava/lang/String;I)V

    .line 17
    .line 18
    .line 19
    sput-object v0, Lcom/hsae/autosdk/vehicle/VehicleConst$Ill$DayNight;->NIGHT:Lcom/hsae/autosdk/vehicle/VehicleConst$Ill$DayNight;

    .line 20
    .line 21
    invoke-static {}, Lcom/hsae/autosdk/vehicle/VehicleConst$Ill$DayNight;->$values()[Lcom/hsae/autosdk/vehicle/VehicleConst$Ill$DayNight;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    sput-object v0, Lcom/hsae/autosdk/vehicle/VehicleConst$Ill$DayNight;->$VALUES:[Lcom/hsae/autosdk/vehicle/VehicleConst$Ill$DayNight;

    .line 26
    .line 27
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static find(I)Lcom/hsae/autosdk/vehicle/VehicleConst$Ill$DayNight;
    .locals 2

    .line 1
    invoke-static {}, Lcom/hsae/autosdk/vehicle/VehicleConst$Ill$DayNight;->values()[Lcom/hsae/autosdk/vehicle/VehicleConst$Ill$DayNight;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-ltz p0, :cond_1

    .line 6
    .line 7
    array-length v1, v0

    .line 8
    if-lt p0, v1, :cond_0

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    aget-object p0, v0, p0

    .line 12
    .line 13
    return-object p0

    .line 14
    :cond_1
    :goto_0
    sget-object p0, Lcom/hsae/autosdk/vehicle/VehicleConst$Ill$DayNight;->DAY:Lcom/hsae/autosdk/vehicle/VehicleConst$Ill$DayNight;

    .line 15
    .line 16
    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/hsae/autosdk/vehicle/VehicleConst$Ill$DayNight;
    .locals 1

    .line 1
    const-class v0, Lcom/hsae/autosdk/vehicle/VehicleConst$Ill$DayNight;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/hsae/autosdk/vehicle/VehicleConst$Ill$DayNight;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lcom/hsae/autosdk/vehicle/VehicleConst$Ill$DayNight;
    .locals 1

    .line 1
    sget-object v0, Lcom/hsae/autosdk/vehicle/VehicleConst$Ill$DayNight;->$VALUES:[Lcom/hsae/autosdk/vehicle/VehicleConst$Ill$DayNight;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lcom/hsae/autosdk/vehicle/VehicleConst$Ill$DayNight;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/hsae/autosdk/vehicle/VehicleConst$Ill$DayNight;

    .line 8
    .line 9
    return-object v0
.end method
