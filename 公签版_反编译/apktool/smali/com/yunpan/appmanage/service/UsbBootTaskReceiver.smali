.class public Lcom/yunpan/appmanage/service/UsbBootTaskReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    .line 1
    sget-object p2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 2
    .line 3
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    if-eqz p1, :cond_3

    .line 7
    .line 8
    sget-object p2, Lcom/yunpan/appmanage/base/AppStart;->h:Lcom/yunpan/appmanage/base/AppStart;

    .line 9
    .line 10
    invoke-virtual {p2}, Lcom/yunpan/appmanage/base/AppStart;->d()V

    .line 11
    .line 12
    .line 13
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 14
    .line 15
    .line 16
    move-result-wide v0

    .line 17
    const-wide/32 v2, 0x13880

    .line 18
    .line 19
    .line 20
    cmp-long p2, v0, v2

    .line 21
    .line 22
    if-lez p2, :cond_0

    .line 23
    .line 24
    return-void

    .line 25
    :cond_0
    sget-object p2, Lwa/t;->a:Lwa/u;

    .line 26
    .line 27
    iget-boolean v0, p2, Lwa/u;->h:Z

    .line 28
    .line 29
    if-eqz v0, :cond_2

    .line 30
    .line 31
    iget-boolean p1, p2, Lwa/u;->t:Z

    .line 32
    .line 33
    if-eqz p1, :cond_1

    .line 34
    .line 35
    const-string p1, "USB\u5e7f\u64ad\u542f\u52a8\uff1a\u5df2\u52fe\u9009\u624b\u52a8\u70b9\u51fb\u542f\u52a8"

    .line 36
    .line 37
    invoke-static {p1}, Lwa/w;->c(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    :cond_1
    return-void

    .line 41
    :cond_2
    const-string p2, "USB\u5e7f\u64ad"

    .line 42
    .line 43
    invoke-static {p1, p2}, Lcom/yunpan/appmanage/service/BootReceiver;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    :cond_3
    return-void
.end method
