.class public final Lcom/yunpan/appmanage/magica/MagicaService;
.super Landroid/app/Service;
.source "SourceFile"


# instance fields
.field public a:Ljava/lang/Process;

.field public final b:Loa/e;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Loa/e;

    .line 5
    .line 6
    invoke-direct {v0, p0}, Loa/e;-><init>(Lcom/yunpan/appmanage/magica/MagicaService;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/yunpan/appmanage/magica/MagicaService;->b:Loa/e;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    .line 1
    :try_start_0
    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 2
    .line 3
    sget-object v0, Lcom/yunpan/appmanage/base/AppStart;->h:Lcom/yunpan/appmanage/base/AppStart;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/yunpan/appmanage/base/AppStart;->c()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    invoke-static {}, Lcom/yunpan/appmanage/magica/MagicaNative;->root()Z

    .line 12
    .line 13
    .line 14
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    const-string v0, "sh"

    .line 19
    .line 20
    invoke-virtual {p1, v0}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    iput-object p1, p0, Lcom/yunpan/appmanage/magica/MagicaService;->a:Ljava/lang/Process;

    .line 25
    .line 26
    iget-object p1, p0, Lcom/yunpan/appmanage/magica/MagicaService;->b:Loa/e;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 27
    .line 28
    return-object p1

    .line 29
    :catch_0
    move-exception p1

    .line 30
    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    const/4 p1, 0x0

    .line 34
    return-object p1
.end method
