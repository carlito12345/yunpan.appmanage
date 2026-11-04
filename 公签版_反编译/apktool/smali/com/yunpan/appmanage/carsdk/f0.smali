.class public final Lcom/yunpan/appmanage/carsdk/f0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field public final synthetic a:Lcom/yunpan/appmanage/carsdk/h0;


# direct methods
.method public constructor <init>(Lcom/yunpan/appmanage/carsdk/h0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/yunpan/appmanage/carsdk/f0;->a:Lcom/yunpan/appmanage/carsdk/h0;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lcom/yunpan/appmanage/carsdk/f0;->a:Lcom/yunpan/appmanage/carsdk/h0;

    .line 4
    .line 5
    :try_start_0
    invoke-static/range {p2 .. p2}, Lcom/autolink/app/vehicleservice/IVehicleControl$Stub;->asInterface(Landroid/os/IBinder;)Lcom/autolink/app/vehicleservice/IVehicleControl;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    iput-object v2, v1, Lcom/yunpan/appmanage/carsdk/h0;->c:Lcom/autolink/app/vehicleservice/IVehicleControl;

    .line 10
    .line 11
    sget-object v2, Lcom/autolink/app/vehiclemanager/data/VehiclePropertyKey;->KeyAvmPosition:Lcom/autolink/app/vehiclemanager/data/VehiclePropertyKey;

    .line 12
    .line 13
    invoke-virtual {v2}, Lcom/autolink/app/vehiclemanager/data/VehiclePropertyKey;->getValue()I

    .line 14
    .line 15
    .line 16
    move-result v3

    .line 17
    sget-object v2, Lcom/autolink/app/vehiclemanager/data/VehiclePropertyKey;->KeyVehiclePropertyDriverDoor:Lcom/autolink/app/vehiclemanager/data/VehiclePropertyKey;

    .line 18
    .line 19
    invoke-virtual {v2}, Lcom/autolink/app/vehiclemanager/data/VehiclePropertyKey;->getValue()I

    .line 20
    .line 21
    .line 22
    move-result v4

    .line 23
    sget-object v2, Lcom/autolink/app/vehiclemanager/data/VehiclePropertyKey;->KeyVehiclePropertyPassengerDoor:Lcom/autolink/app/vehiclemanager/data/VehiclePropertyKey;

    .line 24
    .line 25
    invoke-virtual {v2}, Lcom/autolink/app/vehiclemanager/data/VehiclePropertyKey;->getValue()I

    .line 26
    .line 27
    .line 28
    move-result v5

    .line 29
    sget-object v2, Lcom/autolink/app/vehiclemanager/data/VehiclePropertyKey;->KeyVehiclePropertyRhRDoor:Lcom/autolink/app/vehiclemanager/data/VehiclePropertyKey;

    .line 30
    .line 31
    invoke-virtual {v2}, Lcom/autolink/app/vehiclemanager/data/VehiclePropertyKey;->getValue()I

    .line 32
    .line 33
    .line 34
    move-result v6

    .line 35
    sget-object v2, Lcom/autolink/app/vehiclemanager/data/VehiclePropertyKey;->KeyVehiclePropertyLhRDoor:Lcom/autolink/app/vehiclemanager/data/VehiclePropertyKey;

    .line 36
    .line 37
    invoke-virtual {v2}, Lcom/autolink/app/vehiclemanager/data/VehiclePropertyKey;->getValue()I

    .line 38
    .line 39
    .line 40
    move-result v7

    .line 41
    sget-object v2, Lcom/autolink/app/vehiclemanager/data/VehiclePropertyKey;->KeyVehiclePropertyTrunkCem2:Lcom/autolink/app/vehiclemanager/data/VehiclePropertyKey;

    .line 42
    .line 43
    invoke-virtual {v2}, Lcom/autolink/app/vehiclemanager/data/VehiclePropertyKey;->getValue()I

    .line 44
    .line 45
    .line 46
    move-result v8

    .line 47
    sget-object v2, Lcom/autolink/app/vehiclemanager/data/VehiclePropertyKey;->KeyVehiclePropertyLhTurnLight:Lcom/autolink/app/vehiclemanager/data/VehiclePropertyKey;

    .line 48
    .line 49
    invoke-virtual {v2}, Lcom/autolink/app/vehiclemanager/data/VehiclePropertyKey;->getValue()I

    .line 50
    .line 51
    .line 52
    move-result v9

    .line 53
    sget-object v2, Lcom/autolink/app/vehiclemanager/data/VehiclePropertyKey;->KeyVehiclePropertyRhTurnLight:Lcom/autolink/app/vehiclemanager/data/VehiclePropertyKey;

    .line 54
    .line 55
    invoke-virtual {v2}, Lcom/autolink/app/vehiclemanager/data/VehiclePropertyKey;->getValue()I

    .line 56
    .line 57
    .line 58
    move-result v10

    .line 59
    sget-object v2, Lcom/autolink/app/vehiclemanager/data/VehiclePropertyKey;->KeyVehiclePropertyParkTailLight:Lcom/autolink/app/vehiclemanager/data/VehiclePropertyKey;

    .line 60
    .line 61
    invoke-virtual {v2}, Lcom/autolink/app/vehiclemanager/data/VehiclePropertyKey;->getValue()I

    .line 62
    .line 63
    .line 64
    move-result v11

    .line 65
    sget-object v2, Lcom/autolink/app/vehiclemanager/data/VehiclePropertyKey;->KeyVehiclePropertyLowBeam:Lcom/autolink/app/vehiclemanager/data/VehiclePropertyKey;

    .line 66
    .line 67
    invoke-virtual {v2}, Lcom/autolink/app/vehiclemanager/data/VehiclePropertyKey;->getValue()I

    .line 68
    .line 69
    .line 70
    move-result v12

    .line 71
    sget-object v2, Lcom/autolink/app/vehiclemanager/data/VehiclePropertyKey;->KeyVehiclePropertyHighBeam:Lcom/autolink/app/vehiclemanager/data/VehiclePropertyKey;

    .line 72
    .line 73
    invoke-virtual {v2}, Lcom/autolink/app/vehiclemanager/data/VehiclePropertyKey;->getValue()I

    .line 74
    .line 75
    .line 76
    move-result v13

    .line 77
    sget-object v2, Lcom/autolink/app/vehiclemanager/data/VehiclePropertyKey;->KeyVehiclePropertyBrake:Lcom/autolink/app/vehiclemanager/data/VehiclePropertyKey;

    .line 78
    .line 79
    invoke-virtual {v2}, Lcom/autolink/app/vehiclemanager/data/VehiclePropertyKey;->getValue()I

    .line 80
    .line 81
    .line 82
    move-result v14

    .line 83
    sget-object v2, Lcom/autolink/app/vehiclemanager/data/VehiclePropertyKey;->KeyVehiclePropertyKeySts:Lcom/autolink/app/vehiclemanager/data/VehiclePropertyKey;

    .line 84
    .line 85
    invoke-virtual {v2}, Lcom/autolink/app/vehiclemanager/data/VehiclePropertyKey;->getValue()I

    .line 86
    .line 87
    .line 88
    move-result v15

    .line 89
    sget-object v2, Lcom/autolink/app/vehiclemanager/data/VehiclePropertyKey;->KeyVehiclePropertyEngineSts:Lcom/autolink/app/vehiclemanager/data/VehiclePropertyKey;

    .line 90
    .line 91
    invoke-virtual {v2}, Lcom/autolink/app/vehiclemanager/data/VehiclePropertyKey;->getValue()I

    .line 92
    .line 93
    .line 94
    move-result v16

    .line 95
    filled-new-array/range {v3 .. v16}, [I

    .line 96
    .line 97
    .line 98
    move-result-object v2

    .line 99
    iget-object v3, v1, Lcom/yunpan/appmanage/carsdk/h0;->c:Lcom/autolink/app/vehicleservice/IVehicleControl;

    .line 100
    .line 101
    iget-object v4, v1, Lcom/yunpan/appmanage/carsdk/h0;->D:Lcom/yunpan/appmanage/carsdk/e0;

    .line 102
    .line 103
    invoke-interface {v3, v4, v2}, Lcom/autolink/app/vehicleservice/IVehicleControl;->registerCallback(Lcom/autolink/app/vehicleservice/IVehicleControlCallback;[I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 104
    .line 105
    .line 106
    goto :goto_0

    .line 107
    :catch_0
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 108
    .line 109
    .line 110
    :goto_0
    return-void
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    .line 1
    const/4 p1, 0x0

    .line 2
    iget-object v0, p0, Lcom/yunpan/appmanage/carsdk/f0;->a:Lcom/yunpan/appmanage/carsdk/h0;

    .line 3
    .line 4
    iput-object p1, v0, Lcom/yunpan/appmanage/carsdk/h0;->c:Lcom/autolink/app/vehicleservice/IVehicleControl;

    .line 5
    .line 6
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    return-void
.end method
