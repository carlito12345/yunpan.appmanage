.class public final Lfc/e;
.super Lec/j;
.source "SourceFile"


# instance fields
.field public final c:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/os/Handler;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lec/j;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lfc/e;->c:Landroid/os/Handler;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a()Lec/i;
    .locals 2

    .line 1
    new-instance v0, Lfc/c;

    .line 2
    .line 3
    iget-object v1, p0, Lfc/e;->c:Landroid/os/Handler;

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lfc/c;-><init>(Landroid/os/Handler;)V

    .line 6
    .line 7
    .line 8
    return-object v0
.end method

.method public final b(Ly7/b;Ljava/util/concurrent/TimeUnit;)Lgc/b;
    .locals 4

    .line 1
    if-eqz p2, :cond_0

    .line 2
    .line 3
    new-instance v0, Lfc/d;

    .line 4
    .line 5
    iget-object v1, p0, Lfc/e;->c:Landroid/os/Handler;

    .line 6
    .line 7
    invoke-direct {v0, v1, p1}, Lfc/d;-><init>(Landroid/os/Handler;Ljava/lang/Runnable;)V

    .line 8
    .line 9
    .line 10
    invoke-static {v1, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;Ljava/lang/Runnable;)Landroid/os/Message;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    const-wide/16 v2, 0x0

    .line 15
    .line 16
    invoke-virtual {p2, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    .line 17
    .line 18
    .line 19
    move-result-wide v2

    .line 20
    invoke-virtual {v1, p1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 21
    .line 22
    .line 23
    return-object v0

    .line 24
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    .line 25
    .line 26
    const-string p2, "unit == null"

    .line 27
    .line 28
    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    throw p1
.end method
