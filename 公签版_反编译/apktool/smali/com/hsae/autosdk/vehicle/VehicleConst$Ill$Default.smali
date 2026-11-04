.class public final Lcom/hsae/autosdk/vehicle/VehicleConst$Ill$Default;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hsae/autosdk/vehicle/VehicleConst$Ill;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Default"
.end annotation


# static fields
.field public static final BL_BRIGHTNESS:I = 0xa

.field public static final CONTRAST:I = 0x6

.field public static final DAY_NIGHT:Lcom/hsae/autosdk/vehicle/VehicleConst$Ill$DayNight;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, Lcom/hsae/autosdk/vehicle/VehicleConst$Ill$DayNight;->DAY:Lcom/hsae/autosdk/vehicle/VehicleConst$Ill$DayNight;

    .line 2
    .line 3
    sput-object v0, Lcom/hsae/autosdk/vehicle/VehicleConst$Ill$Default;->DAY_NIGHT:Lcom/hsae/autosdk/vehicle/VehicleConst$Ill$DayNight;

    .line 4
    .line 5
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method
