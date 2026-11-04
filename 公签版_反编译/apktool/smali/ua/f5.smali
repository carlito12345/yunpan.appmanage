.class public final Lua/f5;
.super Lcom/hsae/autosdk/vehicle/IVehicleCallback$Stub;
.source "SourceFile"


# instance fields
.field public final synthetic e:Lcom/yunpan/appmanage/ui/ActivityNissanTextVehicle;


# direct methods
.method public constructor <init>(Lcom/yunpan/appmanage/ui/ActivityNissanTextVehicle;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lua/f5;->e:Lcom/yunpan/appmanage/ui/ActivityNissanTextVehicle;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/hsae/autosdk/vehicle/IVehicleCallback$Stub;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final keyLeaveCarRemind(Z)V
    .locals 3

    .line 1
    iget-object v0, p0, Lua/f5;->e:Lcom/yunpan/appmanage/ui/ActivityNissanTextVehicle;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/yunpan/appmanage/ui/ActivityNissanTextVehicle;->X0:Landroid/widget/TextView;

    .line 4
    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    const-string v2, "\u94a5\u5319\u79bb\u8f66\u63d0\u9192: "

    .line 8
    .line 9
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public final onABSFaultResponse(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lua/f5;->e:Lcom/yunpan/appmanage/ui/ActivityNissanTextVehicle;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/yunpan/appmanage/ui/ActivityNissanTextVehicle;->T:Landroid/widget/TextView;

    .line 4
    .line 5
    const-string v1, "ABS\u6545\u969c: "

    .line 6
    .line 7
    invoke-static {v1, p1, v0}, Lta/q;->s(Ljava/lang/String;ILandroid/widget/TextView;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public final onAccStateResponse(Z)V
    .locals 3

    .line 1
    iget-object v0, p0, Lua/f5;->e:Lcom/yunpan/appmanage/ui/ActivityNissanTextVehicle;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/yunpan/appmanage/ui/ActivityNissanTextVehicle;->E:Landroid/widget/TextView;

    .line 4
    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    const-string v2, "ACC: "

    .line 8
    .line 9
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public final onAverageFuelConsumptionResponse(F)V
    .locals 3

    .line 1
    iget-object v0, p0, Lua/f5;->e:Lcom/yunpan/appmanage/ui/ActivityNissanTextVehicle;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/yunpan/appmanage/ui/ActivityNissanTextVehicle;->h0:Landroid/widget/TextView;

    .line 4
    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    const-string v2, "\u5e73\u5747\u6cb9\u8017: "

    .line 8
    .line 9
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public final onBatteryPowerResponse(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lua/f5;->e:Lcom/yunpan/appmanage/ui/ActivityNissanTextVehicle;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/yunpan/appmanage/ui/ActivityNissanTextVehicle;->T0:Landroid/widget/TextView;

    .line 4
    .line 5
    const-string v1, "\u7535\u6c60\u7535\u91cf: "

    .line 6
    .line 7
    invoke-static {v1, p1, v0}, Lta/q;->s(Ljava/lang/String;ILandroid/widget/TextView;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public final onBrakeForceResponse(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lua/f5;->e:Lcom/yunpan/appmanage/ui/ActivityNissanTextVehicle;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/yunpan/appmanage/ui/ActivityNissanTextVehicle;->N0:Landroid/widget/TextView;

    .line 4
    .line 5
    const-string v1, "\u5239\u8f66\u529b\u5ea6: "

    .line 6
    .line 7
    invoke-static {v1, p1, v0}, Lta/q;->s(Ljava/lang/String;ILandroid/widget/TextView;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public final onDetectedEngineResponse(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lua/f5;->e:Lcom/yunpan/appmanage/ui/ActivityNissanTextVehicle;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/yunpan/appmanage/ui/ActivityNissanTextVehicle;->P:Landroid/widget/TextView;

    .line 4
    .line 5
    const-string v1, "\u53d1\u52a8\u673a: "

    .line 6
    .line 7
    invoke-static {v1, p1, v0}, Lta/q;->s(Ljava/lang/String;ILandroid/widget/TextView;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public final onDoorResponse(ZZZZZ)V
    .locals 3

    .line 1
    iget-object v0, p0, Lua/f5;->e:Lcom/yunpan/appmanage/ui/ActivityNissanTextVehicle;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/yunpan/appmanage/ui/ActivityNissanTextVehicle;->D:Landroid/widget/TextView;

    .line 4
    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    const-string v2, "\u8f66\u95e8: "

    .line 8
    .line 9
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    const-string p1, " "

    .line 16
    .line 17
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 46
    .line 47
    .line 48
    return-void
.end method

.method public final onEPSDetectionResponse(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lua/f5;->e:Lcom/yunpan/appmanage/ui/ActivityNissanTextVehicle;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/yunpan/appmanage/ui/ActivityNissanTextVehicle;->S:Landroid/widget/TextView;

    .line 4
    .line 5
    const-string v1, "EPS: "

    .line 6
    .line 7
    invoke-static {v1, p1, v0}, Lta/q;->s(Ljava/lang/String;ILandroid/widget/TextView;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public final onEQPinData(BBBB)V
    .locals 3

    .line 1
    iget-object v0, p0, Lua/f5;->e:Lcom/yunpan/appmanage/ui/ActivityNissanTextVehicle;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/yunpan/appmanage/ui/ActivityNissanTextVehicle;->V0:Landroid/widget/TextView;

    .line 4
    .line 5
    const-string v1, "EQ Pin \u6570\u636e: "

    .line 6
    .line 7
    const-string v2, " "

    .line 8
    .line 9
    invoke-static {p1, p2, v1, v2, v2}, Lta/q;->o(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 27
    .line 28
    .line 29
    return-void
.end method

.method public final onEngineRotatingSpeedResponse(F)V
    .locals 3

    .line 1
    iget-object v0, p0, Lua/f5;->e:Lcom/yunpan/appmanage/ui/ActivityNissanTextVehicle;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/yunpan/appmanage/ui/ActivityNissanTextVehicle;->t0:Landroid/widget/TextView;

    .line 4
    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    const-string v2, "\u53d1\u52a8\u673a\u8f6c\u901f: "

    .line 8
    .line 9
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public final onHydraulicOilDetectedResponse(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lua/f5;->e:Lcom/yunpan/appmanage/ui/ActivityNissanTextVehicle;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/yunpan/appmanage/ui/ActivityNissanTextVehicle;->O:Landroid/widget/TextView;

    .line 4
    .line 5
    const-string v1, "\u6db2\u538b\u6cb9: "

    .line 6
    .line 7
    invoke-static {v1, p1, v0}, Lta/q;->s(Ljava/lang/String;ILandroid/widget/TextView;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public final onILLContStatusResponse(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lua/f5;->e:Lcom/yunpan/appmanage/ui/ActivityNissanTextVehicle;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/yunpan/appmanage/ui/ActivityNissanTextVehicle;->Q0:Landroid/widget/TextView;

    .line 4
    .line 5
    const-string v1, "\u4eea\u8868\u80cc\u5149\u4eae\u5ea6: "

    .line 6
    .line 7
    invoke-static {v1, p1, v0}, Lta/q;->s(Ljava/lang/String;ILandroid/widget/TextView;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public final onIgnResponse(Z)V
    .locals 3

    .line 1
    iget-object v0, p0, Lua/f5;->e:Lcom/yunpan/appmanage/ui/ActivityNissanTextVehicle;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/yunpan/appmanage/ui/ActivityNissanTextVehicle;->F:Landroid/widget/TextView;

    .line 4
    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    const-string v2, "IGN: "

    .line 8
    .line 9
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public final onIllStateResponse(ZZZZ)V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "\ud83d\udca1 \u706f\u5149: \u8fd1\u5149["

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    const-string v1, "] \u8fdc\u5149["

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    const-string v1, "] \u540e\u706f["

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    const-string v1, "] \u524d\u96fe\u706f["

    .line 28
    .line 29
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    const-string v1, "]"

    .line 36
    .line 37
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    iget-object v0, p0, Lua/f5;->e:Lcom/yunpan/appmanage/ui/ActivityNissanTextVehicle;

    .line 41
    .line 42
    iget-object v0, v0, Lcom/yunpan/appmanage/ui/ActivityNissanTextVehicle;->N:Landroid/widget/TextView;

    .line 43
    .line 44
    new-instance v1, Ljava/lang/StringBuilder;

    .line 45
    .line 46
    const-string v2, "\u706f\u5149: "

    .line 47
    .line 48
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    const-string p1, " "

    .line 55
    .line 56
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object p1

    .line 78
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 79
    .line 80
    .line 81
    return-void
.end method

.method public final onLaneWarningSensorInfoResponse(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lua/f5;->e:Lcom/yunpan/appmanage/ui/ActivityNissanTextVehicle;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/yunpan/appmanage/ui/ActivityNissanTextVehicle;->V:Landroid/widget/TextView;

    .line 4
    .line 5
    const-string v1, "\u8f66\u9053\u9884\u8b66\u4f20\u611f\u5668: "

    .line 6
    .line 7
    invoke-static {v1, p1, v0}, Lta/q;->s(Ljava/lang/String;ILandroid/widget/TextView;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public final onMROutPutStatusResponse(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lua/f5;->e:Lcom/yunpan/appmanage/ui/ActivityNissanTextVehicle;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/yunpan/appmanage/ui/ActivityNissanTextVehicle;->R0:Landroid/widget/TextView;

    .line 4
    .line 5
    const-string v1, "MR\u8f93\u51fa\u72b6\u6001: "

    .line 6
    .line 7
    invoke-static {v1, p1, v0}, Lta/q;->s(Ljava/lang/String;ILandroid/widget/TextView;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public final onMeterSpeedChanged(F)V
    .locals 3

    .line 1
    iget-object v0, p0, Lua/f5;->e:Lcom/yunpan/appmanage/ui/ActivityNissanTextVehicle;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/yunpan/appmanage/ui/ActivityNissanTextVehicle;->K:Landroid/widget/TextView;

    .line 4
    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    const-string v2, "\u4eea\u8868\u8f66\u901f: "

    .line 8
    .line 9
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public final onOffScreenStateChanged(Z)V
    .locals 3

    .line 1
    iget-object v0, p0, Lua/f5;->e:Lcom/yunpan/appmanage/ui/ActivityNissanTextVehicle;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/yunpan/appmanage/ui/ActivityNissanTextVehicle;->Y0:Landroid/widget/TextView;

    .line 4
    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    const-string v2, "\u5c4f\u5e55\u5173\u95ed\u72b6\u6001: "

    .line 8
    .line 9
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public final onParkingResponse(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lua/f5;->e:Lcom/yunpan/appmanage/ui/ActivityNissanTextVehicle;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/yunpan/appmanage/ui/ActivityNissanTextVehicle;->G:Landroid/widget/TextView;

    .line 4
    .line 5
    const-string v1, "\u9a7b\u8f66: "

    .line 6
    .line 7
    invoke-static {v1, p1, v0}, Lta/q;->s(Ljava/lang/String;ILandroid/widget/TextView;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public final onRemainingOil(IIII)V
    .locals 3

    .line 1
    iget-object v0, p0, Lua/f5;->e:Lcom/yunpan/appmanage/ui/ActivityNissanTextVehicle;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/yunpan/appmanage/ui/ActivityNissanTextVehicle;->Z:Landroid/widget/TextView;

    .line 4
    .line 5
    const-string v1, "\u5269\u4f59\u6cb9\u91cf: "

    .line 6
    .line 7
    const-string v2, " "

    .line 8
    .line 9
    invoke-static {p1, p2, v1, v2, v2}, Lta/q;->o(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 27
    .line 28
    .line 29
    return-void
.end method

.method public final onSafetyBeltResponse(II)V
    .locals 3

    .line 1
    iget-object v0, p0, Lua/f5;->e:Lcom/yunpan/appmanage/ui/ActivityNissanTextVehicle;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/yunpan/appmanage/ui/ActivityNissanTextVehicle;->L:Landroid/widget/TextView;

    .line 4
    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    const-string v2, "\u5b89\u5168\u5e26: "

    .line 8
    .line 9
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    const-string p1, " "

    .line 16
    .line 17
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 28
    .line 29
    .line 30
    return-void
.end method

.method public final onSteeringWheelAngleResponse(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lua/f5;->e:Lcom/yunpan/appmanage/ui/ActivityNissanTextVehicle;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/yunpan/appmanage/ui/ActivityNissanTextVehicle;->Y:Landroid/widget/TextView;

    .line 4
    .line 5
    const-string v1, "\u65b9\u5411\u76d8\u89d2\u5ea6: "

    .line 6
    .line 7
    invoke-static {v1, p1, v0}, Lta/q;->s(Ljava/lang/String;ILandroid/widget/TextView;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public final onStreeringWheelReationSpeed(II)V
    .locals 3

    .line 1
    iget-object v0, p0, Lua/f5;->e:Lcom/yunpan/appmanage/ui/ActivityNissanTextVehicle;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/yunpan/appmanage/ui/ActivityNissanTextVehicle;->W0:Landroid/widget/TextView;

    .line 4
    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    const-string v2, "\u65b9\u5411\u76d8\u53cd\u5e94\u901f\u5ea6: "

    .line 8
    .line 9
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    const-string p1, " "

    .line 16
    .line 17
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 28
    .line 29
    .line 30
    return-void
.end method

.method public final onThrottleEffortsResponse(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lua/f5;->e:Lcom/yunpan/appmanage/ui/ActivityNissanTextVehicle;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/yunpan/appmanage/ui/ActivityNissanTextVehicle;->M0:Landroid/widget/TextView;

    .line 4
    .line 5
    const-string v1, "\u6cb9\u95e8\u5f00\u5ea6: "

    .line 6
    .line 7
    invoke-static {v1, p1, v0}, Lta/q;->s(Ljava/lang/String;ILandroid/widget/TextView;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public final onTotalMileageResponse(J)V
    .locals 3

    .line 1
    iget-object v0, p0, Lua/f5;->e:Lcom/yunpan/appmanage/ui/ActivityNissanTextVehicle;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/yunpan/appmanage/ui/ActivityNissanTextVehicle;->P0:Landroid/widget/TextView;

    .line 4
    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    const-string v2, "\u603b\u91cc\u7a0b: "

    .line 8
    .line 9
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public final onTpmsInfoResponse(III)V
    .locals 3

    .line 1
    iget-object v0, p0, Lua/f5;->e:Lcom/yunpan/appmanage/ui/ActivityNissanTextVehicle;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/yunpan/appmanage/ui/ActivityNissanTextVehicle;->U0:Landroid/widget/TextView;

    .line 4
    .line 5
    const-string v1, "\u80ce\u538b\u76d1\u6d4b: "

    .line 6
    .line 7
    const-string v2, " "

    .line 8
    .line 9
    invoke-static {p1, p2, v1, v2, v2}, Lta/q;->o(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method public final onTurnSignalsInfoResponse(I)V
    .locals 4

    .line 1
    const/4 v0, 0x4

    .line 2
    new-array v1, v0, [Ljava/lang/String;

    .line 3
    .line 4
    const-string v2, "\u5173\u95ed"

    .line 5
    .line 6
    const/4 v3, 0x0

    .line 7
    aput-object v2, v1, v3

    .line 8
    .line 9
    const-string v2, "\u5de6\u8f6c"

    .line 10
    .line 11
    const/4 v3, 0x1

    .line 12
    aput-object v2, v1, v3

    .line 13
    .line 14
    const-string v2, "\u53f3\u8f6c"

    .line 15
    .line 16
    const/4 v3, 0x2

    .line 17
    aput-object v2, v1, v3

    .line 18
    .line 19
    const-string v2, "\u53cc\u95ea"

    .line 20
    .line 21
    const/4 v3, 0x3

    .line 22
    aput-object v2, v1, v3

    .line 23
    .line 24
    if-ltz p1, :cond_0

    .line 25
    .line 26
    if-ge p1, v0, :cond_0

    .line 27
    .line 28
    aget-object p1, v1, p1

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_0
    const-string p1, "\u672a\u77e5"

    .line 32
    .line 33
    :goto_0
    iget-object v0, p0, Lua/f5;->e:Lcom/yunpan/appmanage/ui/ActivityNissanTextVehicle;

    .line 34
    .line 35
    iget-object v0, v0, Lcom/yunpan/appmanage/ui/ActivityNissanTextVehicle;->M:Landroid/widget/TextView;

    .line 36
    .line 37
    new-instance v1, Ljava/lang/StringBuilder;

    .line 38
    .line 39
    const-string v2, "\u8f6c\u5411\u706f: "

    .line 40
    .line 41
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 52
    .line 53
    .line 54
    return-void
.end method

.method public final onVDCDetectionResponse(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lua/f5;->e:Lcom/yunpan/appmanage/ui/ActivityNissanTextVehicle;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/yunpan/appmanage/ui/ActivityNissanTextVehicle;->R:Landroid/widget/TextView;

    .line 4
    .line 5
    const-string v1, "VDC: "

    .line 6
    .line 7
    invoke-static {v1, p1, v0}, Lta/q;->s(Ljava/lang/String;ILandroid/widget/TextView;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public final onVehicleGearInfoResponse(I)V
    .locals 4

    .line 1
    const/16 v0, 0x8

    .line 2
    .line 3
    new-array v1, v0, [Ljava/lang/String;

    .line 4
    .line 5
    const-string v2, "OFF"

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    aput-object v2, v1, v3

    .line 9
    .line 10
    const-string v2, "P"

    .line 11
    .line 12
    const/4 v3, 0x1

    .line 13
    aput-object v2, v1, v3

    .line 14
    .line 15
    const-string v2, "R"

    .line 16
    .line 17
    const/4 v3, 0x2

    .line 18
    aput-object v2, v1, v3

    .line 19
    .line 20
    const-string v2, "N"

    .line 21
    .line 22
    const/4 v3, 0x3

    .line 23
    aput-object v2, v1, v3

    .line 24
    .line 25
    const-string v2, "D"

    .line 26
    .line 27
    const/4 v3, 0x4

    .line 28
    aput-object v2, v1, v3

    .line 29
    .line 30
    const-string v2, "S"

    .line 31
    .line 32
    const/4 v3, 0x5

    .line 33
    aput-object v2, v1, v3

    .line 34
    .line 35
    const-string v2, "L"

    .line 36
    .line 37
    const/4 v3, 0x6

    .line 38
    aput-object v2, v1, v3

    .line 39
    .line 40
    const-string v2, "B"

    .line 41
    .line 42
    const/4 v3, 0x7

    .line 43
    aput-object v2, v1, v3

    .line 44
    .line 45
    if-ltz p1, :cond_0

    .line 46
    .line 47
    if-ge p1, v0, :cond_0

    .line 48
    .line 49
    aget-object p1, v1, p1

    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_0
    const-string p1, "\u672a\u77e5"

    .line 53
    .line 54
    :goto_0
    iget-object v0, p0, Lua/f5;->e:Lcom/yunpan/appmanage/ui/ActivityNissanTextVehicle;

    .line 55
    .line 56
    iget-object v0, v0, Lcom/yunpan/appmanage/ui/ActivityNissanTextVehicle;->H:Landroid/widget/TextView;

    .line 57
    .line 58
    new-instance v1, Ljava/lang/StringBuilder;

    .line 59
    .line 60
    const-string v2, "\u6863\u4f4d: "

    .line 61
    .line 62
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 73
    .line 74
    .line 75
    return-void
.end method

.method public final onVehicleMileageInfoResponse(F)V
    .locals 3

    .line 1
    iget-object v0, p0, Lua/f5;->e:Lcom/yunpan/appmanage/ui/ActivityNissanTextVehicle;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/yunpan/appmanage/ui/ActivityNissanTextVehicle;->O0:Landroid/widget/TextView;

    .line 4
    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    const-string v2, "\u8f66\u8f86\u91cc\u7a0b: "

    .line 8
    .line 9
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public final onVehicleSpeedInfoResponse(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lua/f5;->e:Lcom/yunpan/appmanage/ui/ActivityNissanTextVehicle;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/yunpan/appmanage/ui/ActivityNissanTextVehicle;->I:Landroid/widget/TextView;

    .line 4
    .line 5
    const-string v1, "\u8f66\u901f: "

    .line 6
    .line 7
    invoke-static {v1, p1, v0}, Lta/q;->s(Ljava/lang/String;ILandroid/widget/TextView;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public final onVehicleSpeedPulseInfoResponse(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lua/f5;->e:Lcom/yunpan/appmanage/ui/ActivityNissanTextVehicle;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/yunpan/appmanage/ui/ActivityNissanTextVehicle;->X:Landroid/widget/TextView;

    .line 4
    .line 5
    const-string v1, "\u8f66\u901f\u8109\u51b2: "

    .line 6
    .line 7
    invoke-static {v1, p1, v0}, Lta/q;->s(Ljava/lang/String;ILandroid/widget/TextView;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public final onWiperStateResponse(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lua/f5;->e:Lcom/yunpan/appmanage/ui/ActivityNissanTextVehicle;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/yunpan/appmanage/ui/ActivityNissanTextVehicle;->S0:Landroid/widget/TextView;

    .line 4
    .line 5
    const-string v1, "\u96e8\u5237\u72b6\u6001: "

    .line 6
    .line 7
    invoke-static {v1, p1, v0}, Lta/q;->s(Ljava/lang/String;ILandroid/widget/TextView;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method
