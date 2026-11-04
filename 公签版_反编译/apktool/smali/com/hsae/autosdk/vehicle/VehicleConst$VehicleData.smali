.class public Lcom/hsae/autosdk/vehicle/VehicleConst$VehicleData;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hsae/autosdk/vehicle/VehicleConst;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "VehicleData"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hsae/autosdk/vehicle/VehicleConst$VehicleData$AutoType;,
        Lcom/hsae/autosdk/vehicle/VehicleConst$VehicleData$Gear;
    }
.end annotation


# static fields
.field public static final ACC_STATE:Z = true

.field public static final ACTION_ACC_STATE:Ljava/lang/String; = "com.hsae.auto.ACTION_ACC_STATE"

.field public static final ACTION_B_PLUS_OFF:Ljava/lang/String; = "com.hsae.auto.ACTION_B_PLUS_OFF"

.field public static final ACTION_PARKING_STATE:Ljava/lang/String; = "com.hsae.auto.ACTION_PARKING_STATE"

.field public static final ACTION_POWER_STATE:Ljava/lang/String; = "com.hsae.auto.ACTION_POWER_STATE"

.field public static final ACTION_SAFETY_LOCK:Ljava/lang/String; = "com.hsae.auto.ACTION_SAFETY_LOCK"

.field public static final ACTION_VEHICLE_SPEED:Ljava/lang/String; = "com.hsae.auto.ACTION_VEHICLE_SPEED"

.field public static final ALARM_SIZE:I = 0x2a

.field public static final AUTO_TYPE:Lcom/hsae/autosdk/vehicle/VehicleConst$VehicleData$AutoType;

.field public static final EXTRA_ACC_STATE:Ljava/lang/String; = "com.hsae.auto.EXTRA_ACC_STATE"

.field public static final EXTRA_PARKING_STATE:Ljava/lang/String; = "com.hsae.auto.EXTRA_PARKING_STATE"

.field public static final EXTRA_POWER_STATE:Ljava/lang/String; = "com.hsae.auto.EXTRA_POWER_STATE"

.field public static final EXTRA_VEHICLE_SPEED:Ljava/lang/String; = "com.hsae.auto.EXTRA_VEHICLE_SPEED"

.field public static final PARKING_STATE:Z = false


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, Lcom/hsae/autosdk/vehicle/VehicleConst$VehicleData$AutoType;->MC531:Lcom/hsae/autosdk/vehicle/VehicleConst$VehicleData$AutoType;

    .line 2
    .line 3
    sput-object v0, Lcom/hsae/autosdk/vehicle/VehicleConst$VehicleData;->AUTO_TYPE:Lcom/hsae/autosdk/vehicle/VehicleConst$VehicleData$AutoType;

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
