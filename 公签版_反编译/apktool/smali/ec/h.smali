.class public final Lec/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final a:Ljava/lang/Object;

.field public final b:Lgc/c;

.field public final c:J

.field public d:J

.field public e:J

.field public f:J

.field public final synthetic g:Lec/i;


# direct methods
.method public constructor <init>(Lec/i;JLjava/lang/Runnable;JLgc/c;J)V
    .locals 0

    .line 1
    iput-object p1, p0, Lec/h;->g:Lec/i;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object p4, p0, Lec/h;->a:Ljava/lang/Object;

    .line 7
    .line 8
    iput-object p7, p0, Lec/h;->b:Lgc/c;

    .line 9
    .line 10
    iput-wide p8, p0, Lec/h;->c:J

    .line 11
    .line 12
    iput-wide p5, p0, Lec/h;->e:J

    .line 13
    .line 14
    iput-wide p2, p0, Lec/h;->f:J

    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lec/h;->a:Ljava/lang/Object;

    .line 4
    .line 5
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 6
    .line 7
    .line 8
    iget-object v1, v0, Lec/h;->b:Lgc/c;

    .line 9
    .line 10
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    check-cast v2, Lgc/b;

    .line 15
    .line 16
    sget-object v3, Lic/a;->a:Lic/a;

    .line 17
    .line 18
    if-ne v2, v3, :cond_0

    .line 19
    .line 20
    goto :goto_2

    .line 21
    :cond_0
    sget-object v2, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    .line 22
    .line 23
    iget-object v3, v0, Lec/h;->g:Lec/i;

    .line 24
    .line 25
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 26
    .line 27
    .line 28
    invoke-static {v2}, Lec/i;->b(Ljava/util/concurrent/TimeUnit;)J

    .line 29
    .line 30
    .line 31
    move-result-wide v4

    .line 32
    sget-wide v6, Lec/j;->b:J

    .line 33
    .line 34
    add-long v8, v4, v6

    .line 35
    .line 36
    iget-wide v10, v0, Lec/h;->e:J

    .line 37
    .line 38
    const-wide/16 v12, 0x1

    .line 39
    .line 40
    iget-wide v14, v0, Lec/h;->c:J

    .line 41
    .line 42
    cmp-long v16, v8, v10

    .line 43
    .line 44
    if-ltz v16, :cond_2

    .line 45
    .line 46
    add-long/2addr v10, v14

    .line 47
    add-long/2addr v10, v6

    .line 48
    cmp-long v6, v4, v10

    .line 49
    .line 50
    if-ltz v6, :cond_1

    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_1
    iget-wide v6, v0, Lec/h;->f:J

    .line 54
    .line 55
    iget-wide v8, v0, Lec/h;->d:J

    .line 56
    .line 57
    add-long/2addr v8, v12

    .line 58
    iput-wide v8, v0, Lec/h;->d:J

    .line 59
    .line 60
    mul-long v8, v8, v14

    .line 61
    .line 62
    add-long/2addr v8, v6

    .line 63
    goto :goto_1

    .line 64
    :cond_2
    :goto_0
    add-long v8, v4, v14

    .line 65
    .line 66
    iget-wide v6, v0, Lec/h;->d:J

    .line 67
    .line 68
    add-long/2addr v6, v12

    .line 69
    iput-wide v6, v0, Lec/h;->d:J

    .line 70
    .line 71
    mul-long v14, v14, v6

    .line 72
    .line 73
    sub-long v6, v8, v14

    .line 74
    .line 75
    iput-wide v6, v0, Lec/h;->f:J

    .line 76
    .line 77
    :goto_1
    iput-wide v4, v0, Lec/h;->e:J

    .line 78
    .line 79
    sub-long/2addr v8, v4

    .line 80
    invoke-virtual {v3, v0, v8, v9, v2}, Lec/i;->d(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Lgc/b;

    .line 81
    .line 82
    .line 83
    move-result-object v2

    .line 84
    invoke-virtual {v1, v2}, Lgc/c;->b(Lgc/b;)V

    .line 85
    .line 86
    .line 87
    :goto_2
    return-void
.end method
