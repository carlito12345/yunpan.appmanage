.class public abstract Lga/a;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Landroid/hardware/input/IInputManager;Landroid/view/KeyEvent;)Z
    .locals 3

    .line 1
    sget v0, Landroid/hardware/input/InputManager;->INJECT_INPUT_EVENT_MODE_WAIT_FOR_FINISH:I

    .line 2
    .line 3
    :try_start_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 4
    .line 5
    const/16 v2, 0x21

    .line 6
    .line 7
    if-lt v1, v2, :cond_0

    .line 8
    .line 9
    const/4 v1, -0x1

    .line 10
    invoke-interface {p0, p1, v0, v1}, Landroid/hardware/input/IInputManager;->injectInputEventToTarget(Landroid/view/InputEvent;II)Z

    .line 11
    .line 12
    .line 13
    move-result p0

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    invoke-interface {p0, p1, v0}, Landroid/hardware/input/IInputManager;->injectInputEvent(Landroid/view/InputEvent;I)Z

    .line 16
    .line 17
    .line 18
    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 19
    goto :goto_0

    .line 20
    :catch_0
    const/4 p0, 0x0

    .line 21
    :goto_0
    return p0
.end method
