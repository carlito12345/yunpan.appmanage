.class public abstract Lec/b;
.super Ljava/lang/Object;
.source "SourceFile"


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
.method public final a(Lfc/e;)Lmc/g;
    .locals 3

    .line 1
    sget v0, Lec/a;->a:I

    .line 2
    .line 3
    const-string v1, "bufferSize"

    .line 4
    .line 5
    invoke-static {v0, v1}, Ljc/a;->b(ILjava/lang/String;)V

    .line 6
    .line 7
    .line 8
    new-instance v1, Lmc/g;

    .line 9
    .line 10
    const/4 v2, 0x1

    .line 11
    invoke-direct {v1, p0, p1, v0, v2}, Lmc/g;-><init>(Lec/b;Ljava/lang/Object;II)V

    .line 12
    .line 13
    .line 14
    return-object v1
.end method

.method public final b(Lec/e;)V
    .locals 2

    .line 1
    :try_start_0
    invoke-virtual {p0, p1}, Lec/b;->c(Lec/e;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    .line 3
    .line 4
    return-void

    .line 5
    :catchall_0
    move-exception p1

    .line 6
    invoke-static {p1}, Lif/a;->K0(Ljava/lang/Throwable;)V

    .line 7
    .line 8
    .line 9
    invoke-static {p1}, Lqf/c;->P(Ljava/lang/Throwable;)V

    .line 10
    .line 11
    .line 12
    new-instance v0, Ljava/lang/NullPointerException;

    .line 13
    .line 14
    const-string v1, "Actually not, but can\'t throw other exceptions due to RS"

    .line 15
    .line 16
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, p1}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 20
    .line 21
    .line 22
    throw v0

    .line 23
    :catch_0
    move-exception p1

    .line 24
    throw p1
.end method

.method public abstract c(Lec/e;)V
.end method

.method public final d(Lec/j;)Lmc/p;
    .locals 1

    .line 1
    const-string v0, "scheduler is null"

    .line 2
    .line 3
    invoke-static {p1, v0}, Ljc/a;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Lmc/p;

    .line 7
    .line 8
    invoke-direct {v0, p0, p1}, Lmc/p;-><init>(Lec/b;Lec/j;)V

    .line 9
    .line 10
    .line 11
    return-object v0
.end method
