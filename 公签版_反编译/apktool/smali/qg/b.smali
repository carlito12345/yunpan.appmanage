.class public final Lqg/b;
.super Lmg/a;
.source "SourceFile"


# instance fields
.field public final a:Lyh/a0;


# direct methods
.method public constructor <init>(Lqg/a;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Lmg/a;-><init>()V

    .line 2
    .line 3
    .line 4
    sget v0, Lxg/b;->i:I

    .line 5
    .line 6
    new-instance v0, Lxg/a;

    .line 7
    .line 8
    invoke-direct {v0}, Lxg/a;-><init>()V

    .line 9
    .line 10
    .line 11
    iget-object v1, p1, Ltg/b;->b:Ljava/lang/Object;

    .line 12
    .line 13
    check-cast v1, Ltg/b;

    .line 14
    .line 15
    if-eqz v1, :cond_0

    .line 16
    .line 17
    invoke-virtual {p1}, Ltg/d;->Q0()[Ljava/nio/file/OpenOption;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    invoke-virtual {v1, v2}, Ltg/b;->N0([Ljava/nio/file/OpenOption;)Ljava/io/InputStream;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-virtual {v0, v1}, Ltg/b;->P0(Ljava/io/InputStream;)V

    .line 26
    .line 27
    .line 28
    new-instance v1, Lxg/b;

    .line 29
    .line 30
    invoke-direct {v1, v0}, Lxg/b;-><init>(Lxg/a;)V

    .line 31
    .line 32
    .line 33
    sget v0, Lqg/a;->f:I

    .line 34
    .line 35
    new-instance v0, Lyh/a0;

    .line 36
    .line 37
    iget p1, p1, Lqg/a;->e:I

    .line 38
    .line 39
    sget-object v2, Lyh/b;->a:Lyh/b;

    .line 40
    .line 41
    invoke-direct {v0, v1, p1, v2}, Lyh/a0;-><init>(Lxg/b;ILyh/b;)V

    .line 42
    .line 43
    .line 44
    iput-object v0, p0, Lqg/b;->a:Lyh/a0;

    .line 45
    .line 46
    return-void

    .line 47
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 48
    .line 49
    const-string v0, "origin == null"

    .line 50
    .line 51
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    throw p1
.end method


# virtual methods
.method public final available()I
    .locals 1

    .line 1
    iget-object v0, p0, Lqg/b;->a:Lyh/a0;

    .line 2
    .line 3
    invoke-virtual {v0}, Lyh/a0;->available()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public final close()V
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    iget-object v1, p0, Lqg/b;->a:Lyh/a0;

    .line 3
    .line 4
    invoke-virtual {v1, v0}, Lyh/a0;->r(Z)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public final read()I
    .locals 5

    .line 1
    :try_start_0
    iget-object v0, p0, Lqg/b;->a:Lyh/a0;

    invoke-virtual {v0}, Lyh/a0;->read()I

    move-result v0
    :try_end_0
    .catch Lyh/x; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 2
    new-instance v1, Lhg/b;

    iget v2, v0, Lyh/x;->a:I

    int-to-long v2, v2

    iget v4, v0, Lyh/x;->b:I

    invoke-direct {v1, v2, v3, v4, v0}, Lhg/b;-><init>(JILyh/x;)V

    throw v1
.end method

.method public final read([BII)I
    .locals 2

    if-nez p3, :cond_0

    const/4 p1, 0x0

    return p1

    .line 3
    :cond_0
    :try_start_0
    iget-object v0, p0, Lqg/b;->a:Lyh/a0;

    invoke-virtual {v0, p1, p2, p3}, Lyh/a0;->read([BII)I

    move-result p1
    :try_end_0
    .catch Lyh/x; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 4
    new-instance p2, Lhg/b;

    iget p3, p1, Lyh/x;->a:I

    int-to-long v0, p3

    iget p3, p1, Lyh/x;->b:I

    invoke-direct {p2, v0, v1, p3, p1}, Lhg/b;-><init>(JILyh/x;)V

    throw p2
.end method

.method public final skip(J)J
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lqg/b;->a:Lyh/a0;

    .line 2
    .line 3
    new-instance v1, Lah/a;

    .line 4
    .line 5
    const/16 v2, 0xa

    .line 6
    .line 7
    invoke-direct {v1, v2}, Lah/a;-><init>(I)V

    .line 8
    .line 9
    .line 10
    invoke-static {v0, p1, p2, v1}, Lsg/b;->a(Ljava/io/InputStream;JLjava/util/function/Supplier;)J

    .line 11
    .line 12
    .line 13
    move-result-wide p1
    :try_end_0
    .catch Lyh/x; {:try_start_0 .. :try_end_0} :catch_0

    .line 14
    return-wide p1

    .line 15
    :catch_0
    move-exception p1

    .line 16
    new-instance p2, Lhg/b;

    .line 17
    .line 18
    iget v0, p1, Lyh/x;->a:I

    .line 19
    .line 20
    int-to-long v0, v0

    .line 21
    iget v2, p1, Lyh/x;->b:I

    .line 22
    .line 23
    invoke-direct {p2, v0, v1, v2, p1}, Lhg/b;-><init>(JILyh/x;)V

    .line 24
    .line 25
    .line 26
    throw p2
.end method
