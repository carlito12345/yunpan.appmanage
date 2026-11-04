.class public final Lua/e5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/hsae/autosdk/reverse/Reverse$ReverseListener;


# instance fields
.field public final synthetic a:Lcom/yunpan/appmanage/ui/ActivityNissanTextReverse;


# direct methods
.method public constructor <init>(Lcom/yunpan/appmanage/ui/ActivityNissanTextReverse;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lua/e5;->a:Lcom/yunpan/appmanage/ui/ActivityNissanTextReverse;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onAVMChangeDAFrameResponse(B)V
    .locals 2

    .line 1
    iget-object v0, p0, Lua/e5;->a:Lcom/yunpan/appmanage/ui/ActivityNissanTextReverse;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/yunpan/appmanage/ui/ActivityNissanTextReverse;->G:Landroid/widget/TextView;

    .line 4
    .line 5
    const-string v1, "onAVMChangeDAFrameResponse\uff1a"

    .line 6
    .line 7
    invoke-static {v1, p1, v0}, Lta/q;->s(Ljava/lang/String;ILandroid/widget/TextView;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public final onAVMCheckLanguageResponse()V
    .locals 2

    .line 1
    iget-object v0, p0, Lua/e5;->a:Lcom/yunpan/appmanage/ui/ActivityNissanTextReverse;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/yunpan/appmanage/ui/ActivityNissanTextReverse;->H:Landroid/widget/TextView;

    .line 4
    .line 5
    const-string v1, "onAVMCheckLanguageResponse"

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public final onAVMCheckViewStateResponse()V
    .locals 2

    .line 1
    iget-object v0, p0, Lua/e5;->a:Lcom/yunpan/appmanage/ui/ActivityNissanTextReverse;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/yunpan/appmanage/ui/ActivityNissanTextReverse;->I:Landroid/widget/TextView;

    .line 4
    .line 5
    const-string v1, "onAVMCheckViewStateResponse"

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public final onAVMHardwareVersionResponse(Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lua/e5;->a:Lcom/yunpan/appmanage/ui/ActivityNissanTextReverse;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/yunpan/appmanage/ui/ActivityNissanTextReverse;->K:Landroid/widget/TextView;

    .line 4
    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    const-string v2, "onAVMHardwareVersionResponse\uff1a"

    .line 8
    .line 9
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

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

.method public final onAVMReverseStateResponse(B)V
    .locals 2

    .line 1
    iget-object v0, p0, Lua/e5;->a:Lcom/yunpan/appmanage/ui/ActivityNissanTextReverse;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/yunpan/appmanage/ui/ActivityNissanTextReverse;->L:Landroid/widget/TextView;

    .line 4
    .line 5
    const-string v1, "onAVMReverseStateResponse\uff1a"

    .line 6
    .line 7
    invoke-static {v1, p1, v0}, Lta/q;->s(Ljava/lang/String;ILandroid/widget/TextView;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public final onAVMSettingInfoResponse(BBB)V
    .locals 3

    .line 1
    iget-object v0, p0, Lua/e5;->a:Lcom/yunpan/appmanage/ui/ActivityNissanTextReverse;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/yunpan/appmanage/ui/ActivityNissanTextReverse;->M:Landroid/widget/TextView;

    .line 4
    .line 5
    const-string v1, "onAVMSettingInfoResponse\uff1a"

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

.method public final onAVMSoftwareVersionResponse(Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lua/e5;->a:Lcom/yunpan/appmanage/ui/ActivityNissanTextReverse;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/yunpan/appmanage/ui/ActivityNissanTextReverse;->N:Landroid/widget/TextView;

    .line 4
    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    const-string v2, "onAVMSoftwareVersionResponse\uff1a"

    .line 8
    .line 9
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

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

.method public final onAVMStartResponse()V
    .locals 2

    .line 1
    iget-object v0, p0, Lua/e5;->a:Lcom/yunpan/appmanage/ui/ActivityNissanTextReverse;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/yunpan/appmanage/ui/ActivityNissanTextReverse;->O:Landroid/widget/TextView;

    .line 4
    .line 5
    const-string v1, "onAVMStartResponse"

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public final onAVMVINResponse(Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lua/e5;->a:Lcom/yunpan/appmanage/ui/ActivityNissanTextReverse;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/yunpan/appmanage/ui/ActivityNissanTextReverse;->P:Landroid/widget/TextView;

    .line 4
    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    const-string v2, "onAVMVINResponse\uff1a"

    .line 8
    .line 9
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

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

.method public final onAvmBeepSoundResponse(B)V
    .locals 2

    .line 1
    iget-object v0, p0, Lua/e5;->a:Lcom/yunpan/appmanage/ui/ActivityNissanTextReverse;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/yunpan/appmanage/ui/ActivityNissanTextReverse;->R:Landroid/widget/TextView;

    .line 4
    .line 5
    const-string v1, "onAvmBeepSoundResponse\uff1a"

    .line 6
    .line 7
    invoke-static {v1, p1, v0}, Lta/q;->s(Ljava/lang/String;ILandroid/widget/TextView;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public final onButtonEnableStatusResponse(B)V
    .locals 2

    .line 1
    iget-object v0, p0, Lua/e5;->a:Lcom/yunpan/appmanage/ui/ActivityNissanTextReverse;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/yunpan/appmanage/ui/ActivityNissanTextReverse;->S:Landroid/widget/TextView;

    .line 4
    .line 5
    const-string v1, "onButtonEnableStatusResponse\uff1a"

    .line 6
    .line 7
    invoke-static {v1, p1, v0}, Lta/q;->s(Ljava/lang/String;ILandroid/widget/TextView;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public final onCarTypeResponse(B)V
    .locals 2

    .line 1
    iget-object v0, p0, Lua/e5;->a:Lcom/yunpan/appmanage/ui/ActivityNissanTextReverse;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/yunpan/appmanage/ui/ActivityNissanTextReverse;->T:Landroid/widget/TextView;

    .line 4
    .line 5
    const-string v1, "onCarTypeResponse\uff1a"

    .line 6
    .line 7
    invoke-static {v1, p1, v0}, Lta/q;->s(Ljava/lang/String;ILandroid/widget/TextView;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public final onDistanceResponse(B)V
    .locals 2

    .line 1
    iget-object v0, p0, Lua/e5;->a:Lcom/yunpan/appmanage/ui/ActivityNissanTextReverse;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/yunpan/appmanage/ui/ActivityNissanTextReverse;->V:Landroid/widget/TextView;

    .line 4
    .line 5
    const-string v1, "onDistanceResponse\uff1a"

    .line 6
    .line 7
    invoke-static {v1, p1, v0}, Lta/q;->s(Ljava/lang/String;ILandroid/widget/TextView;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public final onFrCenterResponse(B)V
    .locals 2

    .line 1
    iget-object v0, p0, Lua/e5;->a:Lcom/yunpan/appmanage/ui/ActivityNissanTextReverse;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/yunpan/appmanage/ui/ActivityNissanTextReverse;->X:Landroid/widget/TextView;

    .line 4
    .line 5
    const-string v1, "onFrCenterResponse\uff1a"

    .line 6
    .line 7
    invoke-static {v1, p1, v0}, Lta/q;->s(Ljava/lang/String;ILandroid/widget/TextView;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public final onFrLeftResponse(B)V
    .locals 2

    .line 1
    iget-object v0, p0, Lua/e5;->a:Lcom/yunpan/appmanage/ui/ActivityNissanTextReverse;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/yunpan/appmanage/ui/ActivityNissanTextReverse;->Y:Landroid/widget/TextView;

    .line 4
    .line 5
    const-string v1, "onFrLeftResponse\uff1a"

    .line 6
    .line 7
    invoke-static {v1, p1, v0}, Lta/q;->s(Ljava/lang/String;ILandroid/widget/TextView;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public final onFrRightResponse(B)V
    .locals 2

    .line 1
    iget-object v0, p0, Lua/e5;->a:Lcom/yunpan/appmanage/ui/ActivityNissanTextReverse;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/yunpan/appmanage/ui/ActivityNissanTextReverse;->Z:Landroid/widget/TextView;

    .line 4
    .line 5
    const-string v1, "onFrRightResponse\uff1a"

    .line 6
    .line 7
    invoke-static {v1, p1, v0}, Lta/q;->s(Ljava/lang/String;ILandroid/widget/TextView;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public final onFrameResponse(B)V
    .locals 2

    .line 1
    iget-object v0, p0, Lua/e5;->a:Lcom/yunpan/appmanage/ui/ActivityNissanTextReverse;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/yunpan/appmanage/ui/ActivityNissanTextReverse;->h0:Landroid/widget/TextView;

    .line 4
    .line 5
    const-string v1, "onFrameResponse\uff1a"

    .line 6
    .line 7
    invoke-static {v1, p1, v0}, Lta/q;->s(Ljava/lang/String;ILandroid/widget/TextView;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public final onLightsStatusResponse(B)V
    .locals 2

    .line 1
    iget-object v0, p0, Lua/e5;->a:Lcom/yunpan/appmanage/ui/ActivityNissanTextReverse;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/yunpan/appmanage/ui/ActivityNissanTextReverse;->t0:Landroid/widget/TextView;

    .line 4
    .line 5
    const-string v1, "onLightsStatusResponse\uff1a"

    .line 6
    .line 7
    invoke-static {v1, p1, v0}, Lta/q;->s(Ljava/lang/String;ILandroid/widget/TextView;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public final onRrCenterResponse(B)V
    .locals 2

    .line 1
    iget-object v0, p0, Lua/e5;->a:Lcom/yunpan/appmanage/ui/ActivityNissanTextReverse;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/yunpan/appmanage/ui/ActivityNissanTextReverse;->M0:Landroid/widget/TextView;

    .line 4
    .line 5
    const-string v1, "onRrCenterResponse\uff1a"

    .line 6
    .line 7
    invoke-static {v1, p1, v0}, Lta/q;->s(Ljava/lang/String;ILandroid/widget/TextView;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public final onRrLeftResponse(B)V
    .locals 2

    .line 1
    iget-object v0, p0, Lua/e5;->a:Lcom/yunpan/appmanage/ui/ActivityNissanTextReverse;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/yunpan/appmanage/ui/ActivityNissanTextReverse;->N0:Landroid/widget/TextView;

    .line 4
    .line 5
    const-string v1, "onRrLeftResponse\uff1a"

    .line 6
    .line 7
    invoke-static {v1, p1, v0}, Lta/q;->s(Ljava/lang/String;ILandroid/widget/TextView;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public final onRrRightResponse(B)V
    .locals 2

    .line 1
    iget-object v0, p0, Lua/e5;->a:Lcom/yunpan/appmanage/ui/ActivityNissanTextReverse;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/yunpan/appmanage/ui/ActivityNissanTextReverse;->O0:Landroid/widget/TextView;

    .line 4
    .line 5
    const-string v1, "onRrRightResponse\uff1a"

    .line 6
    .line 7
    invoke-static {v1, p1, v0}, Lta/q;->s(Ljava/lang/String;ILandroid/widget/TextView;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method
