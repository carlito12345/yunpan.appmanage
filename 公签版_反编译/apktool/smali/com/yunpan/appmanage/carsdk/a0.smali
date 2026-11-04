.class public final Lcom/yunpan/appmanage/carsdk/a0;
.super Lcom/autolink/adapterinterface/IPowerCallback$Stub;
.source "SourceFile"


# instance fields
.field public final synthetic e:Lcom/yunpan/appmanage/carsdk/h0;


# direct methods
.method public constructor <init>(Lcom/yunpan/appmanage/carsdk/h0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/yunpan/appmanage/carsdk/a0;->e:Lcom/yunpan/appmanage/carsdk/h0;

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
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/yunpan/appmanage/carsdk/a0;->e:Lcom/yunpan/appmanage/carsdk/h0;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/yunpan/appmanage/carsdk/h0;->h:Lua/u2;

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lua/u2;->onBrightnessModeChanged(I)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final onClusterNightModeSwitchChanged(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/yunpan/appmanage/carsdk/a0;->e:Lcom/yunpan/appmanage/carsdk/h0;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/yunpan/appmanage/carsdk/h0;->h:Lua/u2;

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lua/u2;->onClusterNightModeSwitchChanged(I)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final onDisplayDayNightModeChanged(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/yunpan/appmanage/carsdk/a0;->e:Lcom/yunpan/appmanage/carsdk/h0;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/yunpan/appmanage/carsdk/h0;->h:Lua/u2;

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lua/u2;->onDisplayDayNightModeChanged(I)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final onHmiBrightnessChanged(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/yunpan/appmanage/carsdk/a0;->e:Lcom/yunpan/appmanage/carsdk/h0;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/yunpan/appmanage/carsdk/h0;->h:Lua/u2;

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lua/u2;->onHmiBrightnessChanged(I)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final onIviBrightnessChanged(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/yunpan/appmanage/carsdk/a0;->e:Lcom/yunpan/appmanage/carsdk/h0;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/yunpan/appmanage/carsdk/h0;->h:Lua/u2;

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lua/u2;->onIviBrightnessChanged(I)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final onIviDisplayPowerStateChanged(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/yunpan/appmanage/carsdk/a0;->e:Lcom/yunpan/appmanage/carsdk/h0;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/yunpan/appmanage/carsdk/h0;->h:Lua/u2;

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lua/u2;->onIviDisplayPowerStateChanged(I)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final onPowerEventChanged(II)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/yunpan/appmanage/carsdk/a0;->e:Lcom/yunpan/appmanage/carsdk/h0;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/yunpan/appmanage/carsdk/h0;->h:Lua/u2;

    .line 4
    .line 5
    invoke-virtual {v0, p1, p2}, Lua/u2;->onPowerEventChanged(II)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final onScreensaverChanged(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/yunpan/appmanage/carsdk/a0;->e:Lcom/yunpan/appmanage/carsdk/h0;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/yunpan/appmanage/carsdk/h0;->h:Lua/u2;

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lua/u2;->onScreensaverChanged(Z)V

    .line 6
    .line 7
    .line 8
    return-void
.end method
