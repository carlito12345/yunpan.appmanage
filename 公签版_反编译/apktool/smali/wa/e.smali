.class public final Lwa/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field public final synthetic a:Lcom/yunpan/appmanage/service/AccService;

.field public final synthetic b:I

.field public final synthetic c:Landroid/content/Intent;


# direct methods
.method public constructor <init>(ILandroid/content/Intent;Lcom/yunpan/appmanage/service/AccService;)V
    .locals 0

    .line 1
    iput-object p3, p0, Lwa/e;->a:Lcom/yunpan/appmanage/service/AccService;

    .line 2
    .line 3
    iput p1, p0, Lwa/e;->b:I

    .line 4
    .line 5
    iput-object p2, p0, Lwa/e;->c:Landroid/content/Intent;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lwa/e;->a:Lcom/yunpan/appmanage/service/AccService;

    .line 2
    .line 3
    :try_start_0
    invoke-virtual {p1, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    .line 5
    .line 6
    goto :goto_0

    .line 7
    :catch_0
    nop

    .line 8
    :goto_0
    sget-object p2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 9
    .line 10
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    const/16 p2, 0x1f42

    .line 14
    .line 15
    iget v0, p0, Lwa/e;->b:I

    .line 16
    .line 17
    if-eq v0, p2, :cond_0

    .line 18
    .line 19
    const/16 p2, 0x1f44

    .line 20
    .line 21
    if-ne v0, p2, :cond_1

    .line 22
    .line 23
    :cond_0
    iget-object p1, p1, Lcom/yunpan/appmanage/service/AccService;->N0:Ljava/util/concurrent/ExecutorService;

    .line 24
    .line 25
    new-instance p2, Lua/g8;

    .line 26
    .line 27
    iget-object v0, p0, Lwa/e;->c:Landroid/content/Intent;

    .line 28
    .line 29
    const/16 v1, 0xb

    .line 30
    .line 31
    invoke-direct {p2, v1, v0}, Lua/g8;-><init>(ILjava/lang/Object;)V

    .line 32
    .line 33
    .line 34
    invoke-interface {p1, p2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 35
    .line 36
    .line 37
    :cond_1
    return-void
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0

    .line 1
    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lwa/e;->a:Lcom/yunpan/appmanage/service/AccService;

    .line 7
    .line 8
    invoke-virtual {p1, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method
