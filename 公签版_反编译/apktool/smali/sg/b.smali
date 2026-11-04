.class public abstract Lsg/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:[B

.field public static final b:Loh/b;

.field public static final c:[B


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    sget-char v0, Ljava/io/File;->separatorChar:C

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    new-array v0, v0, [B

    .line 5
    .line 6
    sput-object v0, Lsg/b;->a:[B

    .line 7
    .line 8
    invoke-static {}, Lm0/h;->m()V

    .line 9
    .line 10
    .line 11
    sget-object v0, Lsg/c;->b:Lsg/c;

    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    sget-object v0, Lsg/c;->a:Lsg/c;

    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 19
    .line 20
    .line 21
    new-instance v0, Lah/a;

    .line 22
    .line 23
    const/16 v1, 0xb

    .line 24
    .line 25
    invoke-direct {v0, v1}, Lah/a;-><init>(I)V

    .line 26
    .line 27
    .line 28
    new-instance v1, Loh/b;

    .line 29
    .line 30
    const/4 v2, 0x3

    .line 31
    invoke-direct {v1, v0, v2}, Loh/b;-><init>(Ljava/util/function/Supplier;I)V

    .line 32
    .line 33
    .line 34
    sput-object v1, Lsg/b;->b:Loh/b;

    .line 35
    .line 36
    const/16 v0, 0x2000

    .line 37
    .line 38
    new-array v0, v0, [B

    .line 39
    .line 40
    sput-object v0, Lsg/b;->c:[B

    .line 41
    .line 42
    new-instance v0, Lah/a;

    .line 43
    .line 44
    const/16 v1, 0xc

    .line 45
    .line 46
    invoke-direct {v0, v1}, Lah/a;-><init>(I)V

    .line 47
    .line 48
    .line 49
    new-instance v1, Loh/b;

    .line 50
    .line 51
    const/4 v2, 0x4

    .line 52
    invoke-direct {v1, v0, v2}, Loh/b;-><init>(Ljava/util/function/Supplier;I)V

    .line 53
    .line 54
    .line 55
    return-void
.end method

.method public static a(Ljava/io/InputStream;JLjava/util/function/Supplier;)J
    .locals 7

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    cmp-long v2, p1, v0

    .line 4
    .line 5
    if-ltz v2, :cond_2

    .line 6
    .line 7
    move-wide v2, p1

    .line 8
    :goto_0
    cmp-long v4, v2, v0

    .line 9
    .line 10
    if-lez v4, :cond_1

    .line 11
    .line 12
    invoke-interface {p3}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v4

    .line 16
    check-cast v4, [B

    .line 17
    .line 18
    array-length v5, v4

    .line 19
    int-to-long v5, v5

    .line 20
    invoke-static {v2, v3, v5, v6}, Ljava/lang/Math;->min(JJ)J

    .line 21
    .line 22
    .line 23
    move-result-wide v5

    .line 24
    long-to-int v6, v5

    .line 25
    const/4 v5, 0x0

    .line 26
    invoke-virtual {p0, v4, v5, v6}, Ljava/io/InputStream;->read([BII)I

    .line 27
    .line 28
    .line 29
    move-result v4

    .line 30
    int-to-long v4, v4

    .line 31
    cmp-long v6, v4, v0

    .line 32
    .line 33
    if-gez v6, :cond_0

    .line 34
    .line 35
    goto :goto_1

    .line 36
    :cond_0
    sub-long/2addr v2, v4

    .line 37
    goto :goto_0

    .line 38
    :cond_1
    :goto_1
    sub-long/2addr p1, v2

    .line 39
    return-wide p1

    .line 40
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 41
    .line 42
    const-string p3, "Skip count must be non-negative, actual: "

    .line 43
    .line 44
    invoke-static {p1, p2, p3}, Lta/q;->j(JLjava/lang/String;)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    goto :goto_3

    .line 52
    :goto_2
    throw p0

    .line 53
    :goto_3
    goto :goto_2
.end method
