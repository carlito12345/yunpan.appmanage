.class public Lcom/hsae/autosdk/vehicle/Vehicle$VehicleCallbackStub;
.super Lcom/hsae/autosdk/vehicle/IVehicleCallback$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hsae/autosdk/vehicle/Vehicle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "VehicleCallbackStub"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hsae/autosdk/vehicle/Vehicle;


# direct methods
.method private constructor <init>(Lcom/hsae/autosdk/vehicle/Vehicle;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/hsae/autosdk/vehicle/Vehicle$VehicleCallbackStub;->this$0:Lcom/hsae/autosdk/vehicle/Vehicle;

    invoke-direct {p0}, Lcom/hsae/autosdk/vehicle/IVehicleCallback$Stub;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/hsae/autosdk/vehicle/Vehicle;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/hsae/autosdk/vehicle/Vehicle$VehicleCallbackStub;-><init>(Lcom/hsae/autosdk/vehicle/Vehicle;)V

    return-void
.end method


# virtual methods
.method public keyLeaveCarRemind(Z)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/hsae/autosdk/vehicle/Vehicle$VehicleCallbackStub;->this$0:Lcom/hsae/autosdk/vehicle/Vehicle;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/hsae/autosdk/vehicle/Vehicle;->a(Lcom/hsae/autosdk/vehicle/Vehicle;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    new-instance v1, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    const-string v2, "keyLeaveCarRemind  key : "

    .line 10
    .line 11
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-static {v0, v1}, Lcom/hsae/autosdk/util/LogUtil;->m10i(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    iget-object v0, p0, Lcom/hsae/autosdk/vehicle/Vehicle$VehicleCallbackStub;->this$0:Lcom/hsae/autosdk/vehicle/Vehicle;

    .line 25
    .line 26
    invoke-static {v0}, Lcom/hsae/autosdk/vehicle/Vehicle;->c(Lcom/hsae/autosdk/vehicle/Vehicle;)Ljava/util/ArrayList;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    if-eqz v1, :cond_0

    .line 39
    .line 40
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    check-cast v1, Lcom/hsae/autosdk/vehicle/Vehicle$VehicleListener;

    .line 45
    .line 46
    invoke-interface {v1, p1}, Lcom/hsae/autosdk/vehicle/Vehicle$VehicleListener;->keyLeaveCarRemind(Z)V

    .line 47
    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_0
    return-void
.end method

.method public onABSFaultResponse(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/hsae/autosdk/vehicle/Vehicle$VehicleCallbackStub;->this$0:Lcom/hsae/autosdk/vehicle/Vehicle;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/hsae/autosdk/vehicle/Vehicle;->a(Lcom/hsae/autosdk/vehicle/Vehicle;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    new-instance v1, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    const-string v2, "onABSFaultResponse  state : "

    .line 10
    .line 11
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-static {v0, v1}, Lcom/hsae/autosdk/util/LogUtil;->m10i(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    iget-object v0, p0, Lcom/hsae/autosdk/vehicle/Vehicle$VehicleCallbackStub;->this$0:Lcom/hsae/autosdk/vehicle/Vehicle;

    .line 25
    .line 26
    invoke-static {v0}, Lcom/hsae/autosdk/vehicle/Vehicle;->c(Lcom/hsae/autosdk/vehicle/Vehicle;)Ljava/util/ArrayList;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    if-eqz v1, :cond_0

    .line 39
    .line 40
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    check-cast v1, Lcom/hsae/autosdk/vehicle/Vehicle$VehicleListener;

    .line 45
    .line 46
    invoke-interface {v1, p1}, Lcom/hsae/autosdk/vehicle/Vehicle$VehicleListener;->onABSFaultResponse(I)V

    .line 47
    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_0
    return-void
.end method

.method public onAccStateResponse(Z)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/hsae/autosdk/vehicle/Vehicle$VehicleCallbackStub;->this$0:Lcom/hsae/autosdk/vehicle/Vehicle;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/hsae/autosdk/vehicle/Vehicle;->a(Lcom/hsae/autosdk/vehicle/Vehicle;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    new-instance v1, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    const-string v2, "onAccStateResponse  on : "

    .line 10
    .line 11
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-static {v0, v1}, Lcom/hsae/autosdk/util/LogUtil;->m10i(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    iget-object v0, p0, Lcom/hsae/autosdk/vehicle/Vehicle$VehicleCallbackStub;->this$0:Lcom/hsae/autosdk/vehicle/Vehicle;

    .line 25
    .line 26
    invoke-static {v0}, Lcom/hsae/autosdk/vehicle/Vehicle;->c(Lcom/hsae/autosdk/vehicle/Vehicle;)Ljava/util/ArrayList;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    if-eqz v1, :cond_0

    .line 39
    .line 40
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    check-cast v1, Lcom/hsae/autosdk/vehicle/Vehicle$VehicleListener;

    .line 45
    .line 46
    invoke-interface {v1, p1}, Lcom/hsae/autosdk/vehicle/Vehicle$VehicleListener;->onAccStateResponse(Z)V

    .line 47
    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_0
    return-void
.end method

.method public onAverageFuelConsumptionResponse(F)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/hsae/autosdk/vehicle/Vehicle$VehicleCallbackStub;->this$0:Lcom/hsae/autosdk/vehicle/Vehicle;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/hsae/autosdk/vehicle/Vehicle;->a(Lcom/hsae/autosdk/vehicle/Vehicle;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    new-instance v1, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    const-string v2, "onAverageFuelConsumptionResponse  value : "

    .line 10
    .line 11
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-static {v0, v1}, Lcom/hsae/autosdk/util/LogUtil;->m10i(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    iget-object v0, p0, Lcom/hsae/autosdk/vehicle/Vehicle$VehicleCallbackStub;->this$0:Lcom/hsae/autosdk/vehicle/Vehicle;

    .line 25
    .line 26
    invoke-static {v0}, Lcom/hsae/autosdk/vehicle/Vehicle;->c(Lcom/hsae/autosdk/vehicle/Vehicle;)Ljava/util/ArrayList;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    if-eqz v1, :cond_0

    .line 39
    .line 40
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    check-cast v1, Lcom/hsae/autosdk/vehicle/Vehicle$VehicleListener;

    .line 45
    .line 46
    invoke-interface {v1, p1}, Lcom/hsae/autosdk/vehicle/Vehicle$VehicleListener;->onAverageFuelConsumptionResponse(F)V

    .line 47
    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_0
    return-void
.end method

.method public onBatteryPowerResponse(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/hsae/autosdk/vehicle/Vehicle$VehicleCallbackStub;->this$0:Lcom/hsae/autosdk/vehicle/Vehicle;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/hsae/autosdk/vehicle/Vehicle;->a(Lcom/hsae/autosdk/vehicle/Vehicle;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    new-instance v1, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    const-string v2, "onBatteryPowerResponse  percent : "

    .line 10
    .line 11
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-static {v0, v1}, Lcom/hsae/autosdk/util/LogUtil;->m10i(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    iget-object v0, p0, Lcom/hsae/autosdk/vehicle/Vehicle$VehicleCallbackStub;->this$0:Lcom/hsae/autosdk/vehicle/Vehicle;

    .line 25
    .line 26
    invoke-static {v0}, Lcom/hsae/autosdk/vehicle/Vehicle;->c(Lcom/hsae/autosdk/vehicle/Vehicle;)Ljava/util/ArrayList;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    if-eqz v1, :cond_0

    .line 39
    .line 40
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    check-cast v1, Lcom/hsae/autosdk/vehicle/Vehicle$VehicleListener;

    .line 45
    .line 46
    invoke-interface {v1, p1}, Lcom/hsae/autosdk/vehicle/Vehicle$VehicleListener;->onBatteryPowerResponse(I)V

    .line 47
    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_0
    return-void
.end method

.method public onBrakeForceResponse(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/hsae/autosdk/vehicle/Vehicle$VehicleCallbackStub;->this$0:Lcom/hsae/autosdk/vehicle/Vehicle;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/hsae/autosdk/vehicle/Vehicle;->a(Lcom/hsae/autosdk/vehicle/Vehicle;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    new-instance v1, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    const-string v2, "onBrakeForceResponse  value : "

    .line 10
    .line 11
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-static {v0, v1}, Lcom/hsae/autosdk/util/LogUtil;->m10i(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    iget-object v0, p0, Lcom/hsae/autosdk/vehicle/Vehicle$VehicleCallbackStub;->this$0:Lcom/hsae/autosdk/vehicle/Vehicle;

    .line 25
    .line 26
    invoke-static {v0}, Lcom/hsae/autosdk/vehicle/Vehicle;->c(Lcom/hsae/autosdk/vehicle/Vehicle;)Ljava/util/ArrayList;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    if-eqz v1, :cond_0

    .line 39
    .line 40
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    check-cast v1, Lcom/hsae/autosdk/vehicle/Vehicle$VehicleListener;

    .line 45
    .line 46
    invoke-interface {v1, p1}, Lcom/hsae/autosdk/vehicle/Vehicle$VehicleListener;->onBrakeForceResponse(I)V

    .line 47
    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_0
    return-void
.end method

.method public onDetectedEngineResponse(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/hsae/autosdk/vehicle/Vehicle$VehicleCallbackStub;->this$0:Lcom/hsae/autosdk/vehicle/Vehicle;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/hsae/autosdk/vehicle/Vehicle;->a(Lcom/hsae/autosdk/vehicle/Vehicle;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    new-instance v1, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    const-string v2, "onDetectedEngineResponse  state : "

    .line 10
    .line 11
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-static {v0, v1}, Lcom/hsae/autosdk/util/LogUtil;->m10i(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    iget-object v0, p0, Lcom/hsae/autosdk/vehicle/Vehicle$VehicleCallbackStub;->this$0:Lcom/hsae/autosdk/vehicle/Vehicle;

    .line 25
    .line 26
    invoke-static {v0}, Lcom/hsae/autosdk/vehicle/Vehicle;->c(Lcom/hsae/autosdk/vehicle/Vehicle;)Ljava/util/ArrayList;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    if-eqz v1, :cond_0

    .line 39
    .line 40
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    check-cast v1, Lcom/hsae/autosdk/vehicle/Vehicle$VehicleListener;

    .line 45
    .line 46
    invoke-interface {v1, p1}, Lcom/hsae/autosdk/vehicle/Vehicle$VehicleListener;->onDetectedEngineResponse(I)V

    .line 47
    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_0
    return-void
.end method

.method public onDoorResponse(ZZZZZ)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/hsae/autosdk/vehicle/Vehicle$VehicleCallbackStub;->this$0:Lcom/hsae/autosdk/vehicle/Vehicle;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/hsae/autosdk/vehicle/Vehicle;->a(Lcom/hsae/autosdk/vehicle/Vehicle;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    new-instance v1, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    const-string v2, "onDoorResponse  frontLeft : "

    .line 10
    .line 11
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    const-string v2, " frontRight : "

    .line 18
    .line 19
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    const-string v2, " rearLeft : "

    .line 26
    .line 27
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string v2, " rearRight : "

    .line 34
    .line 35
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    const-string v2, " back : "

    .line 42
    .line 43
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    invoke-static {v0, v1}, Lcom/hsae/autosdk/util/LogUtil;->m10i(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    iget-object v0, p0, Lcom/hsae/autosdk/vehicle/Vehicle$VehicleCallbackStub;->this$0:Lcom/hsae/autosdk/vehicle/Vehicle;

    .line 57
    .line 58
    invoke-static {v0}, Lcom/hsae/autosdk/vehicle/Vehicle;->c(Lcom/hsae/autosdk/vehicle/Vehicle;)Ljava/util/ArrayList;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 67
    .line 68
    .line 69
    move-result v1

    .line 70
    if-eqz v1, :cond_0

    .line 71
    .line 72
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    move-result-object v1

    .line 76
    move-object v2, v1

    .line 77
    check-cast v2, Lcom/hsae/autosdk/vehicle/Vehicle$VehicleListener;

    .line 78
    .line 79
    move v3, p1

    .line 80
    move v4, p2

    .line 81
    move v5, p3

    .line 82
    move v6, p4

    .line 83
    move v7, p5

    .line 84
    invoke-interface/range {v2 .. v7}, Lcom/hsae/autosdk/vehicle/Vehicle$VehicleListener;->onDoorResponse(ZZZZZ)V

    .line 85
    .line 86
    .line 87
    goto :goto_0

    .line 88
    :cond_0
    return-void
.end method

.method public onEPSDetectionResponse(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/hsae/autosdk/vehicle/Vehicle$VehicleCallbackStub;->this$0:Lcom/hsae/autosdk/vehicle/Vehicle;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/hsae/autosdk/vehicle/Vehicle;->a(Lcom/hsae/autosdk/vehicle/Vehicle;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    new-instance v1, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    const-string v2, "onEPSDetectionResponse  state : "

    .line 10
    .line 11
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-static {v0, v1}, Lcom/hsae/autosdk/util/LogUtil;->m10i(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    iget-object v0, p0, Lcom/hsae/autosdk/vehicle/Vehicle$VehicleCallbackStub;->this$0:Lcom/hsae/autosdk/vehicle/Vehicle;

    .line 25
    .line 26
    invoke-static {v0}, Lcom/hsae/autosdk/vehicle/Vehicle;->c(Lcom/hsae/autosdk/vehicle/Vehicle;)Ljava/util/ArrayList;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    if-eqz v1, :cond_0

    .line 39
    .line 40
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    check-cast v1, Lcom/hsae/autosdk/vehicle/Vehicle$VehicleListener;

    .line 45
    .line 46
    invoke-interface {v1, p1}, Lcom/hsae/autosdk/vehicle/Vehicle$VehicleListener;->onEPSDetectionResponse(I)V

    .line 47
    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_0
    return-void
.end method

.method public onEQPinData(BBBB)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/hsae/autosdk/vehicle/Vehicle$VehicleCallbackStub;->this$0:Lcom/hsae/autosdk/vehicle/Vehicle;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/hsae/autosdk/vehicle/Vehicle;->a(Lcom/hsae/autosdk/vehicle/Vehicle;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "onEQPinData  data1 : "

    .line 8
    .line 9
    const-string v2, " data2 : "

    .line 10
    .line 11
    const-string v3, "  data3 : "

    .line 12
    .line 13
    invoke-static {p1, p2, v1, v2, v3}, Lta/q;->o(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    const-string v2, " data4 : "

    .line 21
    .line 22
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    invoke-static {v0, v1}, Lcom/hsae/autosdk/util/LogUtil;->m10i(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    iget-object v0, p0, Lcom/hsae/autosdk/vehicle/Vehicle$VehicleCallbackStub;->this$0:Lcom/hsae/autosdk/vehicle/Vehicle;

    .line 36
    .line 37
    invoke-static {v0}, Lcom/hsae/autosdk/vehicle/Vehicle;->b(Lcom/hsae/autosdk/vehicle/Vehicle;)Ljava/util/ArrayList;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 46
    .line 47
    .line 48
    move-result v1

    .line 49
    if-eqz v1, :cond_0

    .line 50
    .line 51
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    check-cast v1, Lcom/hsae/autosdk/vehicle/Vehicle$VehicleIllListener;

    .line 56
    .line 57
    invoke-interface {v1, p1, p2, p3, p4}, Lcom/hsae/autosdk/vehicle/Vehicle$VehicleIllListener;->onEQPinData(BBBB)V

    .line 58
    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_0
    return-void
.end method

.method public onEngineRotatingSpeedResponse(F)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/hsae/autosdk/vehicle/Vehicle$VehicleCallbackStub;->this$0:Lcom/hsae/autosdk/vehicle/Vehicle;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/hsae/autosdk/vehicle/Vehicle;->a(Lcom/hsae/autosdk/vehicle/Vehicle;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    new-instance v1, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    const-string v2, "onEngineRotatingSpeedResponse  value : "

    .line 10
    .line 11
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-static {v0, v1}, Lcom/hsae/autosdk/util/LogUtil;->m10i(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    iget-object v0, p0, Lcom/hsae/autosdk/vehicle/Vehicle$VehicleCallbackStub;->this$0:Lcom/hsae/autosdk/vehicle/Vehicle;

    .line 25
    .line 26
    invoke-static {v0}, Lcom/hsae/autosdk/vehicle/Vehicle;->c(Lcom/hsae/autosdk/vehicle/Vehicle;)Ljava/util/ArrayList;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    if-eqz v1, :cond_0

    .line 39
    .line 40
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    check-cast v1, Lcom/hsae/autosdk/vehicle/Vehicle$VehicleListener;

    .line 45
    .line 46
    invoke-interface {v1, p1}, Lcom/hsae/autosdk/vehicle/Vehicle$VehicleListener;->onEngineRotatingSpeedResponse(F)V

    .line 47
    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_0
    return-void
.end method

.method public onHydraulicOilDetectedResponse(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/hsae/autosdk/vehicle/Vehicle$VehicleCallbackStub;->this$0:Lcom/hsae/autosdk/vehicle/Vehicle;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/hsae/autosdk/vehicle/Vehicle;->a(Lcom/hsae/autosdk/vehicle/Vehicle;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    new-instance v1, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    const-string v2, "onHydraulicOilDetectedResponse  state : "

    .line 10
    .line 11
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-static {v0, v1}, Lcom/hsae/autosdk/util/LogUtil;->m10i(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    iget-object v0, p0, Lcom/hsae/autosdk/vehicle/Vehicle$VehicleCallbackStub;->this$0:Lcom/hsae/autosdk/vehicle/Vehicle;

    .line 25
    .line 26
    invoke-static {v0}, Lcom/hsae/autosdk/vehicle/Vehicle;->c(Lcom/hsae/autosdk/vehicle/Vehicle;)Ljava/util/ArrayList;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    if-eqz v1, :cond_0

    .line 39
    .line 40
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    check-cast v1, Lcom/hsae/autosdk/vehicle/Vehicle$VehicleListener;

    .line 45
    .line 46
    invoke-interface {v1, p1}, Lcom/hsae/autosdk/vehicle/Vehicle$VehicleListener;->onHydraulicOilDetectedResponse(I)V

    .line 47
    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_0
    return-void
.end method

.method public onILLContStatusResponse(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/hsae/autosdk/vehicle/Vehicle$VehicleCallbackStub;->this$0:Lcom/hsae/autosdk/vehicle/Vehicle;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/hsae/autosdk/vehicle/Vehicle;->a(Lcom/hsae/autosdk/vehicle/Vehicle;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    new-instance v1, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    const-string v2, "onILLContStatusResponse  status : "

    .line 10
    .line 11
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-static {v0, v1}, Lcom/hsae/autosdk/util/LogUtil;->m10i(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    iget-object v0, p0, Lcom/hsae/autosdk/vehicle/Vehicle$VehicleCallbackStub;->this$0:Lcom/hsae/autosdk/vehicle/Vehicle;

    .line 25
    .line 26
    invoke-static {v0}, Lcom/hsae/autosdk/vehicle/Vehicle;->b(Lcom/hsae/autosdk/vehicle/Vehicle;)Ljava/util/ArrayList;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    if-eqz v1, :cond_0

    .line 39
    .line 40
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    check-cast v1, Lcom/hsae/autosdk/vehicle/Vehicle$VehicleIllListener;

    .line 45
    .line 46
    invoke-interface {v1, p1}, Lcom/hsae/autosdk/vehicle/Vehicle$VehicleIllListener;->onILLContStatusResponse(I)V

    .line 47
    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_0
    return-void
.end method

.method public onIgnResponse(Z)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/hsae/autosdk/vehicle/Vehicle$VehicleCallbackStub;->this$0:Lcom/hsae/autosdk/vehicle/Vehicle;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/hsae/autosdk/vehicle/Vehicle;->a(Lcom/hsae/autosdk/vehicle/Vehicle;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    new-instance v1, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    const-string v2, "onIgnResponse  ign : "

    .line 10
    .line 11
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-static {v0, v1}, Lcom/hsae/autosdk/util/LogUtil;->m10i(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    iget-object v0, p0, Lcom/hsae/autosdk/vehicle/Vehicle$VehicleCallbackStub;->this$0:Lcom/hsae/autosdk/vehicle/Vehicle;

    .line 25
    .line 26
    invoke-static {v0}, Lcom/hsae/autosdk/vehicle/Vehicle;->c(Lcom/hsae/autosdk/vehicle/Vehicle;)Ljava/util/ArrayList;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    if-eqz v1, :cond_0

    .line 39
    .line 40
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    check-cast v1, Lcom/hsae/autosdk/vehicle/Vehicle$VehicleListener;

    .line 45
    .line 46
    invoke-interface {v1, p1}, Lcom/hsae/autosdk/vehicle/Vehicle$VehicleListener;->onIgnResponse(Z)V

    .line 47
    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_0
    return-void
.end method

.method public onIllStateResponse(ZZZZ)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/hsae/autosdk/vehicle/Vehicle$VehicleCallbackStub;->this$0:Lcom/hsae/autosdk/vehicle/Vehicle;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/hsae/autosdk/vehicle/Vehicle;->a(Lcom/hsae/autosdk/vehicle/Vehicle;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    new-instance v1, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    const-string v2, "onIllStateResponse  beamLight : "

    .line 10
    .line 11
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    const-string v2, " highBeam : "

    .line 18
    .line 19
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    const-string v2, " rearLight : "

    .line 26
    .line 27
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string v2, " frontFogLamps : "

    .line 34
    .line 35
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    invoke-static {v0, v1}, Lcom/hsae/autosdk/util/LogUtil;->m10i(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    iget-object v0, p0, Lcom/hsae/autosdk/vehicle/Vehicle$VehicleCallbackStub;->this$0:Lcom/hsae/autosdk/vehicle/Vehicle;

    .line 49
    .line 50
    invoke-static {v0}, Lcom/hsae/autosdk/vehicle/Vehicle;->c(Lcom/hsae/autosdk/vehicle/Vehicle;)Ljava/util/ArrayList;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 59
    .line 60
    .line 61
    move-result v1

    .line 62
    if-eqz v1, :cond_0

    .line 63
    .line 64
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    move-result-object v1

    .line 68
    check-cast v1, Lcom/hsae/autosdk/vehicle/Vehicle$VehicleListener;

    .line 69
    .line 70
    invoke-interface {v1, p1, p2, p3, p4}, Lcom/hsae/autosdk/vehicle/Vehicle$VehicleListener;->onIllStateResponse(ZZZZ)V

    .line 71
    .line 72
    .line 73
    goto :goto_0

    .line 74
    :cond_0
    return-void
.end method

.method public onLaneWarningSensorInfoResponse(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/hsae/autosdk/vehicle/Vehicle$VehicleCallbackStub;->this$0:Lcom/hsae/autosdk/vehicle/Vehicle;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/hsae/autosdk/vehicle/Vehicle;->a(Lcom/hsae/autosdk/vehicle/Vehicle;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    new-instance v1, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    const-string v2, "onLaneWarningSensorInfoResponse  state : "

    .line 10
    .line 11
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-static {v0, v1}, Lcom/hsae/autosdk/util/LogUtil;->m10i(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    iget-object v0, p0, Lcom/hsae/autosdk/vehicle/Vehicle$VehicleCallbackStub;->this$0:Lcom/hsae/autosdk/vehicle/Vehicle;

    .line 25
    .line 26
    invoke-static {v0}, Lcom/hsae/autosdk/vehicle/Vehicle;->c(Lcom/hsae/autosdk/vehicle/Vehicle;)Ljava/util/ArrayList;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    if-eqz v1, :cond_0

    .line 39
    .line 40
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    check-cast v1, Lcom/hsae/autosdk/vehicle/Vehicle$VehicleListener;

    .line 45
    .line 46
    invoke-interface {v1, p1}, Lcom/hsae/autosdk/vehicle/Vehicle$VehicleListener;->onLaneWarningSensorInfoResponse(I)V

    .line 47
    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_0
    return-void
.end method

.method public onMROutPutStatusResponse(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/hsae/autosdk/vehicle/Vehicle$VehicleCallbackStub;->this$0:Lcom/hsae/autosdk/vehicle/Vehicle;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/hsae/autosdk/vehicle/Vehicle;->a(Lcom/hsae/autosdk/vehicle/Vehicle;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    new-instance v1, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    const-string v2, "onMROutPutStatusResponse  status : "

    .line 10
    .line 11
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-static {v0, v1}, Lcom/hsae/autosdk/util/LogUtil;->m10i(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    iget-object v0, p0, Lcom/hsae/autosdk/vehicle/Vehicle$VehicleCallbackStub;->this$0:Lcom/hsae/autosdk/vehicle/Vehicle;

    .line 25
    .line 26
    invoke-static {v0}, Lcom/hsae/autosdk/vehicle/Vehicle;->b(Lcom/hsae/autosdk/vehicle/Vehicle;)Ljava/util/ArrayList;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    if-eqz v1, :cond_0

    .line 39
    .line 40
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    check-cast v1, Lcom/hsae/autosdk/vehicle/Vehicle$VehicleIllListener;

    .line 45
    .line 46
    invoke-interface {v1, p1}, Lcom/hsae/autosdk/vehicle/Vehicle$VehicleIllListener;->onMROutPutStatusResponse(I)V

    .line 47
    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_0
    return-void
.end method

.method public onMeterSpeedChanged(F)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/hsae/autosdk/vehicle/Vehicle$VehicleCallbackStub;->this$0:Lcom/hsae/autosdk/vehicle/Vehicle;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/hsae/autosdk/vehicle/Vehicle;->a(Lcom/hsae/autosdk/vehicle/Vehicle;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    new-instance v1, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    const-string v2, "onMeterSpeedChanged("

    .line 10
    .line 11
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    const-string v2, ")."

    .line 18
    .line 19
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-static {v0, v1}, Lcom/hsae/autosdk/util/LogUtil;->m10i(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    iget-object v0, p0, Lcom/hsae/autosdk/vehicle/Vehicle$VehicleCallbackStub;->this$0:Lcom/hsae/autosdk/vehicle/Vehicle;

    .line 30
    .line 31
    invoke-static {v0}, Lcom/hsae/autosdk/vehicle/Vehicle;->e(Lcom/hsae/autosdk/vehicle/Vehicle;)Ljava/util/ArrayList;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    if-eqz v1, :cond_0

    .line 44
    .line 45
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    check-cast v1, Lcom/hsae/autosdk/vehicle/Vehicle$VehicleStateListener;

    .line 50
    .line 51
    invoke-interface {v1, p1}, Lcom/hsae/autosdk/vehicle/Vehicle$VehicleStateListener;->onMeterSpeedChanged(F)V

    .line 52
    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_0
    return-void
.end method

.method public onOffScreenStateChanged(Z)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/hsae/autosdk/vehicle/Vehicle$VehicleCallbackStub;->this$0:Lcom/hsae/autosdk/vehicle/Vehicle;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/hsae/autosdk/vehicle/Vehicle;->a(Lcom/hsae/autosdk/vehicle/Vehicle;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    new-instance v1, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    const-string v2, "onOffScreenStateChanged  isOffScreen : "

    .line 10
    .line 11
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-static {v0, v1}, Lcom/hsae/autosdk/util/LogUtil;->m10i(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    iget-object v0, p0, Lcom/hsae/autosdk/vehicle/Vehicle$VehicleCallbackStub;->this$0:Lcom/hsae/autosdk/vehicle/Vehicle;

    .line 25
    .line 26
    invoke-static {v0}, Lcom/hsae/autosdk/vehicle/Vehicle;->d(Lcom/hsae/autosdk/vehicle/Vehicle;)Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    if-eqz v1, :cond_0

    .line 39
    .line 40
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    check-cast v1, Lcom/hsae/autosdk/vehicle/Vehicle$VehicleScreenListener;

    .line 45
    .line 46
    invoke-interface {v1, p1}, Lcom/hsae/autosdk/vehicle/Vehicle$VehicleScreenListener;->onOffScreenStateChanged(Z)V

    .line 47
    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_0
    return-void
.end method

.method public onParkingResponse(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/hsae/autosdk/vehicle/Vehicle$VehicleCallbackStub;->this$0:Lcom/hsae/autosdk/vehicle/Vehicle;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/hsae/autosdk/vehicle/Vehicle;->a(Lcom/hsae/autosdk/vehicle/Vehicle;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    new-instance v1, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    const-string v2, "onParkingResponse  brakeStateFromMcu : "

    .line 10
    .line 11
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-static {v0, v1}, Lcom/hsae/autosdk/util/LogUtil;->m10i(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    iget-object v0, p0, Lcom/hsae/autosdk/vehicle/Vehicle$VehicleCallbackStub;->this$0:Lcom/hsae/autosdk/vehicle/Vehicle;

    .line 25
    .line 26
    invoke-static {v0}, Lcom/hsae/autosdk/vehicle/Vehicle;->c(Lcom/hsae/autosdk/vehicle/Vehicle;)Ljava/util/ArrayList;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    if-eqz v1, :cond_0

    .line 39
    .line 40
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    check-cast v1, Lcom/hsae/autosdk/vehicle/Vehicle$VehicleListener;

    .line 45
    .line 46
    invoke-interface {v1, p1}, Lcom/hsae/autosdk/vehicle/Vehicle$VehicleListener;->onParkingResponse(I)V

    .line 47
    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_0
    return-void
.end method

.method public onRemainingOil(IIII)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/hsae/autosdk/vehicle/Vehicle$VehicleCallbackStub;->this$0:Lcom/hsae/autosdk/vehicle/Vehicle;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/hsae/autosdk/vehicle/Vehicle;->a(Lcom/hsae/autosdk/vehicle/Vehicle;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    new-instance v1, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    const-string v2, "onRemainingOil  oil : "

    .line 10
    .line 11
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-static {v0, v1}, Lcom/hsae/autosdk/util/LogUtil;->m10i(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    iget-object v0, p0, Lcom/hsae/autosdk/vehicle/Vehicle$VehicleCallbackStub;->this$0:Lcom/hsae/autosdk/vehicle/Vehicle;

    .line 25
    .line 26
    invoke-static {v0}, Lcom/hsae/autosdk/vehicle/Vehicle;->c(Lcom/hsae/autosdk/vehicle/Vehicle;)Ljava/util/ArrayList;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    if-eqz v1, :cond_0

    .line 39
    .line 40
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    check-cast v1, Lcom/hsae/autosdk/vehicle/Vehicle$VehicleListener;

    .line 45
    .line 46
    invoke-interface {v1, p1, p2, p3, p4}, Lcom/hsae/autosdk/vehicle/Vehicle$VehicleListener;->onRemainingOil(IIII)V

    .line 47
    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_0
    return-void
.end method

.method public onSafetyBeltResponse(II)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/hsae/autosdk/vehicle/Vehicle$VehicleCallbackStub;->this$0:Lcom/hsae/autosdk/vehicle/Vehicle;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/hsae/autosdk/vehicle/Vehicle;->a(Lcom/hsae/autosdk/vehicle/Vehicle;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    new-instance v1, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    const-string v2, "onSafetyBeltResponse  mainBelt : "

    .line 10
    .line 11
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    const-string v2, " subBelt : "

    .line 18
    .line 19
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    invoke-static {v0, v1}, Lcom/hsae/autosdk/util/LogUtil;->m10i(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    iget-object v0, p0, Lcom/hsae/autosdk/vehicle/Vehicle$VehicleCallbackStub;->this$0:Lcom/hsae/autosdk/vehicle/Vehicle;

    .line 33
    .line 34
    invoke-static {v0}, Lcom/hsae/autosdk/vehicle/Vehicle;->c(Lcom/hsae/autosdk/vehicle/Vehicle;)Ljava/util/ArrayList;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 43
    .line 44
    .line 45
    move-result v1

    .line 46
    if-eqz v1, :cond_0

    .line 47
    .line 48
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    check-cast v1, Lcom/hsae/autosdk/vehicle/Vehicle$VehicleListener;

    .line 53
    .line 54
    invoke-interface {v1, p1, p2}, Lcom/hsae/autosdk/vehicle/Vehicle$VehicleListener;->onSafetyBeltResponse(II)V

    .line 55
    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_0
    return-void
.end method

.method public onSteeringWheelAngleResponse(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/hsae/autosdk/vehicle/Vehicle$VehicleCallbackStub;->this$0:Lcom/hsae/autosdk/vehicle/Vehicle;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/hsae/autosdk/vehicle/Vehicle;->a(Lcom/hsae/autosdk/vehicle/Vehicle;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    new-instance v1, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    const-string v2, "onSteeringWheelAngleResponse  angle : "

    .line 10
    .line 11
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-static {v0, v1}, Lcom/hsae/autosdk/util/LogUtil;->m10i(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    iget-object v0, p0, Lcom/hsae/autosdk/vehicle/Vehicle$VehicleCallbackStub;->this$0:Lcom/hsae/autosdk/vehicle/Vehicle;

    .line 25
    .line 26
    invoke-static {v0}, Lcom/hsae/autosdk/vehicle/Vehicle;->c(Lcom/hsae/autosdk/vehicle/Vehicle;)Ljava/util/ArrayList;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    if-eqz v1, :cond_0

    .line 39
    .line 40
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    check-cast v1, Lcom/hsae/autosdk/vehicle/Vehicle$VehicleListener;

    .line 45
    .line 46
    invoke-interface {v1, p1}, Lcom/hsae/autosdk/vehicle/Vehicle$VehicleListener;->onSteeringWheelAngleResponse(I)V

    .line 47
    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_0
    return-void
.end method

.method public onStreeringWheelReationSpeed(II)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/hsae/autosdk/vehicle/Vehicle$VehicleCallbackStub;->this$0:Lcom/hsae/autosdk/vehicle/Vehicle;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/hsae/autosdk/vehicle/Vehicle;->a(Lcom/hsae/autosdk/vehicle/Vehicle;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    new-instance v1, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    const-string v2, "onStreeringWheelReationSpeed  swRotation : "

    .line 10
    .line 11
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    const-string v2, " swRotationSpeed : "

    .line 18
    .line 19
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    invoke-static {v0, v1}, Lcom/hsae/autosdk/util/LogUtil;->m10i(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    iget-object v0, p0, Lcom/hsae/autosdk/vehicle/Vehicle$VehicleCallbackStub;->this$0:Lcom/hsae/autosdk/vehicle/Vehicle;

    .line 33
    .line 34
    invoke-static {v0}, Lcom/hsae/autosdk/vehicle/Vehicle;->c(Lcom/hsae/autosdk/vehicle/Vehicle;)Ljava/util/ArrayList;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 43
    .line 44
    .line 45
    move-result v1

    .line 46
    if-eqz v1, :cond_0

    .line 47
    .line 48
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    check-cast v1, Lcom/hsae/autosdk/vehicle/Vehicle$VehicleListener;

    .line 53
    .line 54
    invoke-interface {v1, p1, p2}, Lcom/hsae/autosdk/vehicle/Vehicle$VehicleListener;->onStreeringWheelReationSpeed(II)V

    .line 55
    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_0
    return-void
.end method

.method public onThrottleEffortsResponse(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/hsae/autosdk/vehicle/Vehicle$VehicleCallbackStub;->this$0:Lcom/hsae/autosdk/vehicle/Vehicle;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/hsae/autosdk/vehicle/Vehicle;->a(Lcom/hsae/autosdk/vehicle/Vehicle;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    new-instance v1, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    const-string v2, "onThrottleEffortsResponse  percent : "

    .line 10
    .line 11
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-static {v0, v1}, Lcom/hsae/autosdk/util/LogUtil;->m10i(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    iget-object v0, p0, Lcom/hsae/autosdk/vehicle/Vehicle$VehicleCallbackStub;->this$0:Lcom/hsae/autosdk/vehicle/Vehicle;

    .line 25
    .line 26
    invoke-static {v0}, Lcom/hsae/autosdk/vehicle/Vehicle;->c(Lcom/hsae/autosdk/vehicle/Vehicle;)Ljava/util/ArrayList;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    if-eqz v1, :cond_0

    .line 39
    .line 40
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    check-cast v1, Lcom/hsae/autosdk/vehicle/Vehicle$VehicleListener;

    .line 45
    .line 46
    invoke-interface {v1, p1}, Lcom/hsae/autosdk/vehicle/Vehicle$VehicleListener;->onThrottleEffortsResponse(I)V

    .line 47
    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_0
    return-void
.end method

.method public onTotalMileageResponse(J)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/hsae/autosdk/vehicle/Vehicle$VehicleCallbackStub;->this$0:Lcom/hsae/autosdk/vehicle/Vehicle;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/hsae/autosdk/vehicle/Vehicle;->a(Lcom/hsae/autosdk/vehicle/Vehicle;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    new-instance v1, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    const-string v2, "onTotalMileageResponse  value : "

    .line 10
    .line 11
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-static {v0, v1}, Lcom/hsae/autosdk/util/LogUtil;->m10i(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    iget-object v0, p0, Lcom/hsae/autosdk/vehicle/Vehicle$VehicleCallbackStub;->this$0:Lcom/hsae/autosdk/vehicle/Vehicle;

    .line 25
    .line 26
    invoke-static {v0}, Lcom/hsae/autosdk/vehicle/Vehicle;->c(Lcom/hsae/autosdk/vehicle/Vehicle;)Ljava/util/ArrayList;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    if-eqz v1, :cond_0

    .line 39
    .line 40
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    check-cast v1, Lcom/hsae/autosdk/vehicle/Vehicle$VehicleListener;

    .line 45
    .line 46
    invoke-interface {v1, p1, p2}, Lcom/hsae/autosdk/vehicle/Vehicle$VehicleListener;->onTotalMileageResponse(J)V

    .line 47
    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_0
    return-void
.end method

.method public onTpmsInfoResponse(III)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/hsae/autosdk/vehicle/Vehicle$VehicleCallbackStub;->this$0:Lcom/hsae/autosdk/vehicle/Vehicle;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/hsae/autosdk/vehicle/Vehicle;->a(Lcom/hsae/autosdk/vehicle/Vehicle;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "onTpmsInfoResponse  value : "

    .line 8
    .line 9
    const-string v2, " which : "

    .line 10
    .line 11
    const-string v3, " state : "

    .line 12
    .line 13
    invoke-static {p1, p2, v1, v2, v3}, Lta/q;->o(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-static {v0, v1}, Lcom/hsae/autosdk/util/LogUtil;->m10i(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    iget-object v0, p0, Lcom/hsae/autosdk/vehicle/Vehicle$VehicleCallbackStub;->this$0:Lcom/hsae/autosdk/vehicle/Vehicle;

    .line 28
    .line 29
    invoke-static {v0}, Lcom/hsae/autosdk/vehicle/Vehicle;->c(Lcom/hsae/autosdk/vehicle/Vehicle;)Ljava/util/ArrayList;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    if-eqz v1, :cond_0

    .line 42
    .line 43
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    check-cast v1, Lcom/hsae/autosdk/vehicle/Vehicle$VehicleListener;

    .line 48
    .line 49
    invoke-interface {v1, p1, p2, p3}, Lcom/hsae/autosdk/vehicle/Vehicle$VehicleListener;->onTpmsInfoResponse(III)V

    .line 50
    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_0
    return-void
.end method

.method public onTurnSignalsInfoResponse(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/hsae/autosdk/vehicle/Vehicle$VehicleCallbackStub;->this$0:Lcom/hsae/autosdk/vehicle/Vehicle;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/hsae/autosdk/vehicle/Vehicle;->a(Lcom/hsae/autosdk/vehicle/Vehicle;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    new-instance v1, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    const-string v2, "onTurnSignalsInfoResponse  value : "

    .line 10
    .line 11
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-static {v0, v1}, Lcom/hsae/autosdk/util/LogUtil;->m10i(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    iget-object v0, p0, Lcom/hsae/autosdk/vehicle/Vehicle$VehicleCallbackStub;->this$0:Lcom/hsae/autosdk/vehicle/Vehicle;

    .line 25
    .line 26
    invoke-static {v0}, Lcom/hsae/autosdk/vehicle/Vehicle;->c(Lcom/hsae/autosdk/vehicle/Vehicle;)Ljava/util/ArrayList;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    if-eqz v1, :cond_0

    .line 39
    .line 40
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    check-cast v1, Lcom/hsae/autosdk/vehicle/Vehicle$VehicleListener;

    .line 45
    .line 46
    invoke-interface {v1, p1}, Lcom/hsae/autosdk/vehicle/Vehicle$VehicleListener;->onTurnSignalsInfoResponse(I)V

    .line 47
    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_0
    return-void
.end method

.method public onVDCDetectionResponse(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/hsae/autosdk/vehicle/Vehicle$VehicleCallbackStub;->this$0:Lcom/hsae/autosdk/vehicle/Vehicle;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/hsae/autosdk/vehicle/Vehicle;->a(Lcom/hsae/autosdk/vehicle/Vehicle;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    new-instance v1, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    const-string v2, "onVDCDetectionResponse  state : "

    .line 10
    .line 11
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-static {v0, v1}, Lcom/hsae/autosdk/util/LogUtil;->m10i(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    iget-object v0, p0, Lcom/hsae/autosdk/vehicle/Vehicle$VehicleCallbackStub;->this$0:Lcom/hsae/autosdk/vehicle/Vehicle;

    .line 25
    .line 26
    invoke-static {v0}, Lcom/hsae/autosdk/vehicle/Vehicle;->c(Lcom/hsae/autosdk/vehicle/Vehicle;)Ljava/util/ArrayList;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    if-eqz v1, :cond_0

    .line 39
    .line 40
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    check-cast v1, Lcom/hsae/autosdk/vehicle/Vehicle$VehicleListener;

    .line 45
    .line 46
    invoke-interface {v1, p1}, Lcom/hsae/autosdk/vehicle/Vehicle$VehicleListener;->onVDCDetectionResponse(I)V

    .line 47
    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_0
    return-void
.end method

.method public onVehicleGearInfoResponse(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/hsae/autosdk/vehicle/Vehicle$VehicleCallbackStub;->this$0:Lcom/hsae/autosdk/vehicle/Vehicle;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/hsae/autosdk/vehicle/Vehicle;->a(Lcom/hsae/autosdk/vehicle/Vehicle;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    new-instance v1, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    const-string v2, "onVehicleGearInfoResponse  gear : "

    .line 10
    .line 11
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-static {v0, v1}, Lcom/hsae/autosdk/util/LogUtil;->m10i(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    iget-object v0, p0, Lcom/hsae/autosdk/vehicle/Vehicle$VehicleCallbackStub;->this$0:Lcom/hsae/autosdk/vehicle/Vehicle;

    .line 25
    .line 26
    invoke-static {v0}, Lcom/hsae/autosdk/vehicle/Vehicle;->c(Lcom/hsae/autosdk/vehicle/Vehicle;)Ljava/util/ArrayList;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    if-eqz v1, :cond_0

    .line 39
    .line 40
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    check-cast v1, Lcom/hsae/autosdk/vehicle/Vehicle$VehicleListener;

    .line 45
    .line 46
    invoke-interface {v1, p1}, Lcom/hsae/autosdk/vehicle/Vehicle$VehicleListener;->onVehicleGearInfoResponse(I)V

    .line 47
    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_0
    return-void
.end method

.method public onVehicleMileageInfoResponse(F)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/hsae/autosdk/vehicle/Vehicle$VehicleCallbackStub;->this$0:Lcom/hsae/autosdk/vehicle/Vehicle;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/hsae/autosdk/vehicle/Vehicle;->a(Lcom/hsae/autosdk/vehicle/Vehicle;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    new-instance v1, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    const-string v2, "onVehicleMileageInfoResponse  value : "

    .line 10
    .line 11
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-static {v0, v1}, Lcom/hsae/autosdk/util/LogUtil;->m10i(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    iget-object v0, p0, Lcom/hsae/autosdk/vehicle/Vehicle$VehicleCallbackStub;->this$0:Lcom/hsae/autosdk/vehicle/Vehicle;

    .line 25
    .line 26
    invoke-static {v0}, Lcom/hsae/autosdk/vehicle/Vehicle;->c(Lcom/hsae/autosdk/vehicle/Vehicle;)Ljava/util/ArrayList;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    if-eqz v1, :cond_0

    .line 39
    .line 40
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    check-cast v1, Lcom/hsae/autosdk/vehicle/Vehicle$VehicleListener;

    .line 45
    .line 46
    invoke-interface {v1, p1}, Lcom/hsae/autosdk/vehicle/Vehicle$VehicleListener;->onVehicleMileageInfoResponse(F)V

    .line 47
    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_0
    return-void
.end method

.method public onVehicleSpeedInfoResponse(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/hsae/autosdk/vehicle/Vehicle$VehicleCallbackStub;->this$0:Lcom/hsae/autosdk/vehicle/Vehicle;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/hsae/autosdk/vehicle/Vehicle;->a(Lcom/hsae/autosdk/vehicle/Vehicle;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    new-instance v1, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    const-string v2, "onVehicleSpeedInfoResponse  speed : "

    .line 10
    .line 11
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-static {v0, v1}, Lcom/hsae/autosdk/util/LogUtil;->m10i(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    iget-object v0, p0, Lcom/hsae/autosdk/vehicle/Vehicle$VehicleCallbackStub;->this$0:Lcom/hsae/autosdk/vehicle/Vehicle;

    .line 25
    .line 26
    invoke-static {v0}, Lcom/hsae/autosdk/vehicle/Vehicle;->c(Lcom/hsae/autosdk/vehicle/Vehicle;)Ljava/util/ArrayList;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    if-eqz v1, :cond_0

    .line 39
    .line 40
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    check-cast v1, Lcom/hsae/autosdk/vehicle/Vehicle$VehicleListener;

    .line 45
    .line 46
    invoke-interface {v1, p1}, Lcom/hsae/autosdk/vehicle/Vehicle$VehicleListener;->onVehicleSpeedInfoResponse(I)V

    .line 47
    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_0
    return-void
.end method

.method public onVehicleSpeedPulseInfoResponse(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/hsae/autosdk/vehicle/Vehicle$VehicleCallbackStub;->this$0:Lcom/hsae/autosdk/vehicle/Vehicle;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/hsae/autosdk/vehicle/Vehicle;->a(Lcom/hsae/autosdk/vehicle/Vehicle;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    new-instance v1, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    const-string v2, "onVehicleSpeedPulseInfoResponse  speedPulse : "

    .line 10
    .line 11
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-static {v0, v1}, Lcom/hsae/autosdk/util/LogUtil;->m10i(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    iget-object v0, p0, Lcom/hsae/autosdk/vehicle/Vehicle$VehicleCallbackStub;->this$0:Lcom/hsae/autosdk/vehicle/Vehicle;

    .line 25
    .line 26
    invoke-static {v0}, Lcom/hsae/autosdk/vehicle/Vehicle;->c(Lcom/hsae/autosdk/vehicle/Vehicle;)Ljava/util/ArrayList;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    if-eqz v1, :cond_0

    .line 39
    .line 40
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    check-cast v1, Lcom/hsae/autosdk/vehicle/Vehicle$VehicleListener;

    .line 45
    .line 46
    invoke-interface {v1, p1}, Lcom/hsae/autosdk/vehicle/Vehicle$VehicleListener;->onVehicleSpeedPulseInfoResponse(I)V

    .line 47
    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_0
    return-void
.end method

.method public onWiperStateResponse(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/hsae/autosdk/vehicle/Vehicle$VehicleCallbackStub;->this$0:Lcom/hsae/autosdk/vehicle/Vehicle;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/hsae/autosdk/vehicle/Vehicle;->a(Lcom/hsae/autosdk/vehicle/Vehicle;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    new-instance v1, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    const-string v2, "onWiperStateResponse  state : "

    .line 10
    .line 11
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-static {v0, v1}, Lcom/hsae/autosdk/util/LogUtil;->m10i(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    iget-object v0, p0, Lcom/hsae/autosdk/vehicle/Vehicle$VehicleCallbackStub;->this$0:Lcom/hsae/autosdk/vehicle/Vehicle;

    .line 25
    .line 26
    invoke-static {v0}, Lcom/hsae/autosdk/vehicle/Vehicle;->c(Lcom/hsae/autosdk/vehicle/Vehicle;)Ljava/util/ArrayList;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    if-eqz v1, :cond_0

    .line 39
    .line 40
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    check-cast v1, Lcom/hsae/autosdk/vehicle/Vehicle$VehicleListener;

    .line 45
    .line 46
    invoke-interface {v1, p1}, Lcom/hsae/autosdk/vehicle/Vehicle$VehicleListener;->onWiperStateResponse(I)V

    .line 47
    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_0
    return-void
.end method
