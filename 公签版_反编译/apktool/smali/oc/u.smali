.class public final Loc/u;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# instance fields
.field public final a:Ljava/lang/Runnable;

.field public final b:J

.field public final c:I

.field public volatile d:Z


# direct methods
.method public constructor <init>(Ljava/lang/Runnable;Ljava/lang/Long;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Loc/u;->a:Ljava/lang/Runnable;

    .line 5
    .line 6
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    .line 7
    .line 8
    .line 9
    move-result-wide p1

    .line 10
    iput-wide p1, p0, Loc/u;->b:J

    .line 11
    .line 12
    iput p3, p0, Loc/u;->c:I

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final compareTo(Ljava/lang/Object;)I
    .locals 8

    .line 1
    check-cast p1, Loc/u;

    .line 2
    .line 3
    iget-wide v0, p1, Loc/u;->b:J

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    const/4 v3, 0x1

    .line 7
    const/4 v4, -0x1

    .line 8
    iget-wide v5, p0, Loc/u;->b:J

    .line 9
    .line 10
    cmp-long v7, v5, v0

    .line 11
    .line 12
    if-gez v7, :cond_0

    .line 13
    .line 14
    const/4 v0, -0x1

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    cmp-long v7, v5, v0

    .line 17
    .line 18
    if-lez v7, :cond_1

    .line 19
    .line 20
    const/4 v0, 0x1

    .line 21
    goto :goto_0

    .line 22
    :cond_1
    const/4 v0, 0x0

    .line 23
    :goto_0
    if-nez v0, :cond_4

    .line 24
    .line 25
    iget v0, p0, Loc/u;->c:I

    .line 26
    .line 27
    iget p1, p1, Loc/u;->c:I

    .line 28
    .line 29
    if-ge v0, p1, :cond_2

    .line 30
    .line 31
    const/4 v2, -0x1

    .line 32
    goto :goto_1

    .line 33
    :cond_2
    if-le v0, p1, :cond_3

    .line 34
    .line 35
    const/4 v2, 0x1

    .line 36
    :cond_3
    :goto_1
    move v0, v2

    .line 37
    :cond_4
    return v0
.end method
