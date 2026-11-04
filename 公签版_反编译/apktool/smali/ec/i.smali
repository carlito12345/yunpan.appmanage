.class public abstract Lec/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lgc/b;


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

.method public static b(Ljava/util/concurrent/TimeUnit;)J
    .locals 3

    .line 1
    sget-boolean v0, Lec/j;->a:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 6
    .line 7
    .line 8
    move-result-wide v0

    .line 9
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 10
    .line 11
    invoke-virtual {p0, v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    .line 12
    .line 13
    .line 14
    move-result-wide v0

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 17
    .line 18
    .line 19
    move-result-wide v0

    .line 20
    sget-object v2, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    .line 21
    .line 22
    invoke-virtual {p0, v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    .line 23
    .line 24
    .line 25
    move-result-wide v0

    .line 26
    :goto_0
    return-wide v0
.end method


# virtual methods
.method public abstract d(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Lgc/b;
.end method

.method public e(Lmc/l;)V
    .locals 3

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    sget-object v2, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    .line 4
    .line 5
    invoke-virtual {p0, p1, v0, v1, v2}, Lec/i;->d(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Lgc/b;

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final f(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Lgc/b;
    .locals 16

    .line 1
    move-wide/from16 v0, p2

    .line 2
    .line 3
    move-object/from16 v2, p6

    .line 4
    .line 5
    new-instance v3, Lgc/c;

    .line 6
    .line 7
    invoke-direct {v3}, Lgc/c;-><init>()V

    .line 8
    .line 9
    .line 10
    new-instance v14, Lgc/c;

    .line 11
    .line 12
    invoke-direct {v14, v3}, Lgc/c;-><init>(Lgc/c;)V

    .line 13
    .line 14
    .line 15
    move-wide/from16 v4, p4

    .line 16
    .line 17
    invoke-virtual {v2, v4, v5}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    .line 18
    .line 19
    .line 20
    move-result-wide v12

    .line 21
    sget-object v4, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    .line 22
    .line 23
    invoke-static {v4}, Lec/i;->b(Ljava/util/concurrent/TimeUnit;)J

    .line 24
    .line 25
    .line 26
    move-result-wide v9

    .line 27
    invoke-virtual {v2, v0, v1}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    .line 28
    .line 29
    .line 30
    move-result-wide v4

    .line 31
    add-long v6, v4, v9

    .line 32
    .line 33
    new-instance v15, Lec/h;

    .line 34
    .line 35
    move-object v4, v15

    .line 36
    move-object/from16 v5, p0

    .line 37
    .line 38
    move-object/from16 v8, p1

    .line 39
    .line 40
    move-object v11, v14

    .line 41
    invoke-direct/range {v4 .. v13}, Lec/h;-><init>(Lec/i;JLjava/lang/Runnable;JLgc/c;J)V

    .line 42
    .line 43
    .line 44
    move-object/from16 v4, p0

    .line 45
    .line 46
    invoke-virtual {v4, v15, v0, v1, v2}, Lec/i;->d(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Lgc/b;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    sget-object v1, Lic/b;->a:Lic/b;

    .line 51
    .line 52
    if-ne v0, v1, :cond_0

    .line 53
    .line 54
    return-object v0

    .line 55
    :cond_0
    invoke-virtual {v3, v0}, Lgc/c;->b(Lgc/b;)V

    .line 56
    .line 57
    .line 58
    return-object v14
.end method
