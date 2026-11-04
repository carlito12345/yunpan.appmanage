.class public Lcom/hsae/autosdk/vehicle/VehicleConst$VehicleMalfunction;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hsae/autosdk/vehicle/VehicleConst;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "VehicleMalfunction"
.end annotation


# static fields
.field public static final ABS_FAULT_04H:I = 0x4

.field public static final DETECTION_ENGINE_01H:I = 0x1

.field public static final EPS_DETECTION_03H:I = 0x3

.field public static final HYDRAULIC_OIL_DETECTED_00H:I = 0x0

.field public static final LANE_WARNING_SENSOR_INFORMATION_05H:I = 0x5

.field public static final VDC_DETECTION_02H:I = 0x2


# instance fields
.field final synthetic this$0:Lcom/hsae/autosdk/vehicle/VehicleConst;


# direct methods
.method public constructor <init>(Lcom/hsae/autosdk/vehicle/VehicleConst;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/hsae/autosdk/vehicle/VehicleConst$VehicleMalfunction;->this$0:Lcom/hsae/autosdk/vehicle/VehicleConst;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method
