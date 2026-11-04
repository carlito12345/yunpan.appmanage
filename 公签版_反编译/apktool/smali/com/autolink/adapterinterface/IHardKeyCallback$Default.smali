.class public Lcom/autolink/adapterinterface/IHardKeyCallback$Default;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/autolink/adapterinterface/IHardKeyCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/autolink/adapterinterface/IHardKeyCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public onKeyEvent(III)V
    .locals 0

    return-void
.end method

.method public onKeyPressed(I)V
    .locals 0

    return-void
.end method

.method public onKeyReleased(I)V
    .locals 0

    return-void
.end method
