.class public final enum Lcom/hsae/autosdk/vehicle/VehicleConst$VehicleData$AutoType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hsae/autosdk/vehicle/VehicleConst$VehicleData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AutoType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/hsae/autosdk/vehicle/VehicleConst$VehicleData$AutoType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/hsae/autosdk/vehicle/VehicleConst$VehicleData$AutoType;

.field public static final enum MC322:Lcom/hsae/autosdk/vehicle/VehicleConst$VehicleData$AutoType;

.field public static final enum MC531:Lcom/hsae/autosdk/vehicle/VehicleConst$VehicleData$AutoType;


# direct methods
.method private static synthetic $values()[Lcom/hsae/autosdk/vehicle/VehicleConst$VehicleData$AutoType;
    .locals 3

    .line 1
    const/4 v0, 0x2

    .line 2
    new-array v0, v0, [Lcom/hsae/autosdk/vehicle/VehicleConst$VehicleData$AutoType;

    .line 3
    .line 4
    sget-object v1, Lcom/hsae/autosdk/vehicle/VehicleConst$VehicleData$AutoType;->MC531:Lcom/hsae/autosdk/vehicle/VehicleConst$VehicleData$AutoType;

    .line 5
    .line 6
    const/4 v2, 0x0

    .line 7
    aput-object v1, v0, v2

    .line 8
    .line 9
    sget-object v1, Lcom/hsae/autosdk/vehicle/VehicleConst$VehicleData$AutoType;->MC322:Lcom/hsae/autosdk/vehicle/VehicleConst$VehicleData$AutoType;

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
    new-instance v0, Lcom/hsae/autosdk/vehicle/VehicleConst$VehicleData$AutoType;

    .line 2
    .line 3
    const-string v1, "MC531"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2}, Lcom/hsae/autosdk/vehicle/VehicleConst$VehicleData$AutoType;-><init>(Ljava/lang/String;I)V

    .line 7
    .line 8
    .line 9
    sput-object v0, Lcom/hsae/autosdk/vehicle/VehicleConst$VehicleData$AutoType;->MC531:Lcom/hsae/autosdk/vehicle/VehicleConst$VehicleData$AutoType;

    .line 10
    .line 11
    new-instance v0, Lcom/hsae/autosdk/vehicle/VehicleConst$VehicleData$AutoType;

    .line 12
    .line 13
    const-string v1, "MC322"

    .line 14
    .line 15
    const/4 v2, 0x1

    .line 16
    invoke-direct {v0, v1, v2}, Lcom/hsae/autosdk/vehicle/VehicleConst$VehicleData$AutoType;-><init>(Ljava/lang/String;I)V

    .line 17
    .line 18
    .line 19
    sput-object v0, Lcom/hsae/autosdk/vehicle/VehicleConst$VehicleData$AutoType;->MC322:Lcom/hsae/autosdk/vehicle/VehicleConst$VehicleData$AutoType;

    .line 20
    .line 21
    invoke-static {}, Lcom/hsae/autosdk/vehicle/VehicleConst$VehicleData$AutoType;->$values()[Lcom/hsae/autosdk/vehicle/VehicleConst$VehicleData$AutoType;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    sput-object v0, Lcom/hsae/autosdk/vehicle/VehicleConst$VehicleData$AutoType;->$VALUES:[Lcom/hsae/autosdk/vehicle/VehicleConst$VehicleData$AutoType;

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

.method public static final find(I)Lcom/hsae/autosdk/vehicle/VehicleConst$VehicleData$AutoType;
    .locals 1

    .line 1
    :try_start_0
    invoke-static {}, Lcom/hsae/autosdk/vehicle/VehicleConst$VehicleData$AutoType;->values()[Lcom/hsae/autosdk/vehicle/VehicleConst$VehicleData$AutoType;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    aget-object p0, v0, p0
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6
    .line 7
    return-object p0

    .line 8
    :catch_0
    sget-object p0, Lcom/hsae/autosdk/vehicle/VehicleConst$VehicleData;->AUTO_TYPE:Lcom/hsae/autosdk/vehicle/VehicleConst$VehicleData$AutoType;

    .line 9
    .line 10
    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/hsae/autosdk/vehicle/VehicleConst$VehicleData$AutoType;
    .locals 1

    .line 1
    const-class v0, Lcom/hsae/autosdk/vehicle/VehicleConst$VehicleData$AutoType;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/hsae/autosdk/vehicle/VehicleConst$VehicleData$AutoType;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lcom/hsae/autosdk/vehicle/VehicleConst$VehicleData$AutoType;
    .locals 1

    .line 1
    sget-object v0, Lcom/hsae/autosdk/vehicle/VehicleConst$VehicleData$AutoType;->$VALUES:[Lcom/hsae/autosdk/vehicle/VehicleConst$VehicleData$AutoType;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lcom/hsae/autosdk/vehicle/VehicleConst$VehicleData$AutoType;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/hsae/autosdk/vehicle/VehicleConst$VehicleData$AutoType;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/hsae/autosdk/vehicle/VehicleConst$VehicleData$AutoType;->MC531:Lcom/hsae/autosdk/vehicle/VehicleConst$VehicleData$AutoType;

    .line 2
    .line 3
    if-ne v0, p0, :cond_0

    .line 4
    .line 5
    const-string v0, "531"

    .line 6
    .line 7
    return-object v0

    .line 8
    :cond_0
    invoke-super {p0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    return-object v0
.end method
