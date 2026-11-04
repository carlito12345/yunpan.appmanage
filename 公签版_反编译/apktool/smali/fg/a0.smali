.class public final Lfg/a0;
.super Lfg/c0;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lfg/c0;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final deadlineNanoTime(J)Lfg/c0;
    .locals 0

    .line 1
    return-object p0
.end method

.method public final throwIfReached()V
    .locals 0

    .line 1
    return-void
.end method

.method public final timeout(JLjava/util/concurrent/TimeUnit;)Lfg/c0;
    .locals 0

    .line 1
    const-string p1, "unit"

    invoke-static {p3, p1}, Lue/d;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method
