.class public final Lua/u2;
.super Lcom/autolink/adapterinterface/IPowerCallback$Stub;
.source "SourceFile"


# instance fields
.field public final synthetic e:Lcom/yunpan/appmanage/ui/ActivityJieTText;


# direct methods
.method public constructor <init>(Lcom/yunpan/appmanage/ui/ActivityJieTText;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lua/u2;->e:Lcom/yunpan/appmanage/ui/ActivityJieTText;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/autolink/adapterinterface/IPowerCallback$Stub;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onBrightnessModeChanged(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lua/u2;->e:Lcom/yunpan/appmanage/ui/ActivityJieTText;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/yunpan/appmanage/ui/ActivityJieTText;->F:Landroid/widget/TextView;

    .line 4
    .line 5
    const-string v1, "\u4eae\u5ea6\u6a21\u5f0f: "

    .line 6
    .line 7
    const-string v2, "  "

    .line 8
    .line 9
    invoke-static {v1, p1, v2}, Lg/b;->n(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    if-nez p1, :cond_0

    .line 14
    .line 15
    const-string p1, " \u81ea\u52a8"

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const-string p1, " \u624b\u52a8"

    .line 19
    .line 20
    :goto_0
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

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

.method public final onClusterNightModeSwitchChanged(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lua/u2;->e:Lcom/yunpan/appmanage/ui/ActivityJieTText;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/yunpan/appmanage/ui/ActivityJieTText;->G:Landroid/widget/TextView;

    .line 4
    .line 5
    const-string v1, "\u4eea\u8868\u591c\u95f4\u6a21\u5f0f: "

    .line 6
    .line 7
    invoke-static {v1, p1, v0}, Lta/q;->s(Ljava/lang/String;ILandroid/widget/TextView;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public final onDisplayDayNightModeChanged(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lua/u2;->e:Lcom/yunpan/appmanage/ui/ActivityJieTText;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/yunpan/appmanage/ui/ActivityJieTText;->H:Landroid/widget/TextView;

    .line 4
    .line 5
    const-string v1, "\u591c\u95f4\u6a21\u5f0f: "

    .line 6
    .line 7
    const-string v2, "  "

    .line 8
    .line 9
    invoke-static {v1, p1, v2}, Lg/b;->n(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    const/4 v2, 0x1

    .line 14
    if-ne p1, v2, :cond_0

    .line 15
    .line 16
    const-string p1, "\u5f00"

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const-string p1, "\u5173"

    .line 20
    .line 21
    :goto_0
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 29
    .line 30
    .line 31
    return-void
.end method

.method public final onHmiBrightnessChanged(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lua/u2;->e:Lcom/yunpan/appmanage/ui/ActivityJieTText;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/yunpan/appmanage/ui/ActivityJieTText;->I:Landroid/widget/TextView;

    .line 4
    .line 5
    const-string v1, "HMI\u4eae\u5ea6: "

    .line 6
    .line 7
    invoke-static {v1, p1, v0}, Lta/q;->s(Ljava/lang/String;ILandroid/widget/TextView;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public final onIviBrightnessChanged(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lua/u2;->e:Lcom/yunpan/appmanage/ui/ActivityJieTText;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/yunpan/appmanage/ui/ActivityJieTText;->K:Landroid/widget/TextView;

    .line 4
    .line 5
    const-string v1, "IVI\u5c4f\u5e55\u4eae\u5ea6: "

    .line 6
    .line 7
    invoke-static {v1, p1, v0}, Lta/q;->s(Ljava/lang/String;ILandroid/widget/TextView;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public final onIviDisplayPowerStateChanged(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lua/u2;->e:Lcom/yunpan/appmanage/ui/ActivityJieTText;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/yunpan/appmanage/ui/ActivityJieTText;->L:Landroid/widget/TextView;

    .line 4
    .line 5
    const-string v1, "IVI\u5c4f\u5e55\u7535\u6e90: "

    .line 6
    .line 7
    const-string v2, "  "

    .line 8
    .line 9
    invoke-static {v1, p1, v2}, Lg/b;->n(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    const/4 v2, 0x1

    .line 14
    if-ne p1, v2, :cond_0

    .line 15
    .line 16
    const-string p1, "\u5c4f\u5e55\u5f00"

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const-string p1, "\u5c4f\u5e55\u5173"

    .line 20
    .line 21
    :goto_0
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 29
    .line 30
    .line 31
    return-void
.end method

.method public final onPowerEventChanged(II)V
    .locals 3

    .line 1
    iget-object v0, p0, Lua/u2;->e:Lcom/yunpan/appmanage/ui/ActivityJieTText;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/yunpan/appmanage/ui/ActivityJieTText;->M:Landroid/widget/TextView;

    .line 4
    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    const-string v2, "\u7535\u6e90\u4e8b\u4ef6: "

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
    const-string p1, " \uff0c "

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

.method public final onScreensaverChanged(Z)V
    .locals 3

    .line 1
    iget-object v0, p0, Lua/u2;->e:Lcom/yunpan/appmanage/ui/ActivityJieTText;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/yunpan/appmanage/ui/ActivityJieTText;->N:Landroid/widget/TextView;

    .line 4
    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    const-string v2, "\u5c4f\u4fdd: "

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
