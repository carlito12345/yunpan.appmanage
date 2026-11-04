.class public final Lfa/f0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;


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
.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1

    .line 1
    :try_start_0
    invoke-static {p2}, Loa/e;->h(Landroid/os/IBinder;)Loa/d;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    sget-object p2, Lcom/yunpan/appmanage/base/AppStart;->h:Lcom/yunpan/appmanage/base/AppStart;

    .line 6
    .line 7
    iget-object p2, p2, Lcom/yunpan/appmanage/base/AppStart;->a:Lv9/a;

    .line 8
    .line 9
    new-instance v0, Loa/g;

    .line 10
    .line 11
    invoke-interface {p1}, Loa/d;->f()Loa/b;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-direct {v0, p1}, Loa/g;-><init>(Loa/b;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p2, v0}, Lv9/a;->b(Ljava/lang/Process;)Lv9/i;

    .line 19
    .line 20
    .line 21
    sget-object p1, Lcom/yunpan/appmanage/base/AppStart;->h:Lcom/yunpan/appmanage/base/AppStart;

    .line 22
    .line 23
    invoke-static {p1}, Lfa/b;->a(Lcom/yunpan/appmanage/base/AppStart;)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    const/4 p2, 0x1

    .line 28
    new-array p2, p2, [Ljava/lang/String;

    .line 29
    .line 30
    const/4 v0, 0x0

    .line 31
    aput-object p1, p2, v0

    .line 32
    .line 33
    invoke-static {p2}, Lu9/d;->r([Ljava/lang/String;)Lv9/e;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    const/4 p2, 0x0

    .line 38
    invoke-virtual {p1, p2}, Ls1/g;->e0(Lua/i6;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 39
    .line 40
    .line 41
    goto :goto_0

    .line 42
    :catch_0
    move-exception p1

    .line 43
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 44
    .line 45
    .line 46
    :goto_0
    return-void
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0

    .line 1
    return-void
.end method
