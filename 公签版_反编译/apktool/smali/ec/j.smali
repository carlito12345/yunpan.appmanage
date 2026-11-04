.class public abstract Lec/j;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Z

.field public static final b:J


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    const-string v0, "rx2.scheduler.use-nanotime"

    .line 2
    .line 3
    invoke-static {v0}, Ljava/lang/Boolean;->getBoolean(Ljava/lang/String;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    sput-boolean v0, Lec/j;->a:Z

    .line 8
    .line 9
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    .line 10
    .line 11
    const-string v1, "rx2.scheduler.drift-tolerance"

    .line 12
    .line 13
    const-wide/16 v2, 0xf

    .line 14
    .line 15
    invoke-static {v1, v2, v3}, Ljava/lang/Long;->getLong(Ljava/lang/String;J)Ljava/lang/Long;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    .line 20
    .line 21
    .line 22
    move-result-wide v1

    .line 23
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    .line 24
    .line 25
    .line 26
    move-result-wide v0

    .line 27
    sput-wide v0, Lec/j;->b:J

    .line 28
    .line 29
    return-void
.end method

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
.method public abstract a()Lec/i;
.end method

.method public b(Ly7/b;Ljava/util/concurrent/TimeUnit;)Lgc/b;
    .locals 4

    .line 1
    invoke-virtual {p0}, Lec/j;->a()Lec/i;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Lec/f;

    .line 6
    .line 7
    invoke-direct {v1, p1, v0}, Lec/f;-><init>(Ly7/b;Lec/i;)V

    .line 8
    .line 9
    .line 10
    const-wide/16 v2, 0x0

    .line 11
    .line 12
    invoke-virtual {v0, v1, v2, v3, p2}, Lec/i;->d(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Lgc/b;

    .line 13
    .line 14
    .line 15
    return-object v1
.end method

.method public c(Lmc/i;JJLjava/util/concurrent/TimeUnit;)Lgc/b;
    .locals 8

    .line 1
    invoke-virtual {p0}, Lec/j;->a()Lec/i;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v7, Lec/g;

    .line 6
    .line 7
    invoke-direct {v7, p1, v0}, Lec/g;-><init>(Lmc/i;Lec/i;)V

    .line 8
    .line 9
    .line 10
    move-object v1, v7

    .line 11
    move-wide v2, p2

    .line 12
    move-wide v4, p4

    .line 13
    move-object v6, p6

    .line 14
    invoke-virtual/range {v0 .. v6}, Lec/i;->f(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Lgc/b;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    sget-object p2, Lic/b;->a:Lic/b;

    .line 19
    .line 20
    if-ne p1, p2, :cond_0

    .line 21
    .line 22
    return-object p1

    .line 23
    :cond_0
    return-object v7
.end method
