.class public final Lag/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lha/wd;


# instance fields
.field public a:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(B)V
    .locals 0

    .line 1
    const/4 p1, 0x0

    iput-boolean p1, p0, Lag/h;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lv1/r;Lv1/q;)V
    .locals 7

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iget v0, p2, Lv1/q;->a:I

    const/4 v1, 0x6

    const/4 v2, 0x0

    const/4 v3, 0x3

    const/4 v4, 0x1

    if-eq v0, v1, :cond_1

    if-ne v0, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    invoke-static {v0}, La9/o;->k(Z)V

    .line 6
    iget-object p2, p2, Lv1/q;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {p2}, Ljava/nio/Buffer;->remaining()I

    move-result v0

    const/4 v1, 0x4

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    new-array v1, v0, [B

    .line 7
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->asReadOnlyBuffer()Ljava/nio/ByteBuffer;

    move-result-object p2

    invoke-virtual {p2, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 8
    new-instance p2, Lj3/f;

    .line 9
    invoke-direct {p2, v1, v0}, Lj3/f;-><init>([BI)V

    .line 10
    iget-boolean v0, p1, Lv1/r;->a:Z

    if-nez v0, :cond_10

    .line 11
    invoke-virtual {p2}, Lj3/f;->f()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 12
    iput-boolean v2, p0, Lag/h;->a:Z

    return-void

    :cond_2
    const/4 v0, 0x2

    .line 13
    invoke-virtual {p2, v0}, Lj3/f;->g(I)I

    move-result v1

    .line 14
    invoke-virtual {p2}, Lj3/f;->f()Z

    move-result v5

    .line 15
    iget-boolean v6, p1, Lv1/r;->b:Z

    if-nez v6, :cond_f

    if-nez v5, :cond_3

    .line 16
    iput-boolean v4, p0, Lag/h;->a:Z

    return-void

    :cond_3
    if-eq v1, v3, :cond_5

    if-nez v1, :cond_4

    goto :goto_2

    .line 17
    :cond_4
    invoke-virtual {p2}, Lj3/f;->f()Z

    move-result v5

    goto :goto_3

    :cond_5
    :goto_2
    const/4 v5, 0x1

    .line 18
    :goto_3
    invoke-virtual {p2}, Lj3/f;->n()V

    .line 19
    iget-boolean v6, p1, Lv1/r;->d:Z

    if-eqz v6, :cond_e

    .line 20
    invoke-virtual {p2}, Lj3/f;->f()Z

    move-result v6

    if-eqz v6, :cond_7

    .line 21
    iget-boolean v6, p1, Lv1/r;->e:Z

    if-eqz v6, :cond_6

    .line 22
    invoke-virtual {p2}, Lj3/f;->n()V

    goto :goto_4

    .line 23
    :cond_6
    new-instance p1, Lv1/p;

    invoke-direct {p1}, Lv1/p;-><init>()V

    throw p1

    .line 24
    :cond_7
    :goto_4
    iget-boolean v6, p1, Lv1/r;->c:Z

    if-nez v6, :cond_d

    if-eq v1, v3, :cond_8

    .line 25
    invoke-virtual {p2}, Lj3/f;->n()V

    .line 26
    :cond_8
    iget p1, p1, Lv1/r;->f:I

    invoke-virtual {p2, p1}, Lj3/f;->o(I)V

    if-eq v1, v0, :cond_9

    if-eqz v1, :cond_9

    if-nez v5, :cond_9

    .line 27
    invoke-virtual {p2, v3}, Lj3/f;->o(I)V

    :cond_9
    if-eq v1, v3, :cond_b

    if-nez v1, :cond_a

    goto :goto_5

    :cond_a
    const/16 p1, 0x8

    .line 28
    invoke-virtual {p2, p1}, Lj3/f;->g(I)I

    move-result p1

    goto :goto_6

    :cond_b
    :goto_5
    const/16 p1, 0xff

    :goto_6
    if-eqz p1, :cond_c

    const/4 v2, 0x1

    .line 29
    :cond_c
    iput-boolean v2, p0, Lag/h;->a:Z

    return-void

    .line 30
    :cond_d
    new-instance p1, Lv1/p;

    invoke-direct {p1}, Lv1/p;-><init>()V

    throw p1

    .line 31
    :cond_e
    new-instance p1, Lv1/p;

    invoke-direct {p1}, Lv1/p;-><init>()V

    throw p1

    .line 32
    :cond_f
    new-instance p1, Lv1/p;

    invoke-direct {p1}, Lv1/p;-><init>()V

    throw p1

    .line 33
    :cond_10
    new-instance p1, Lv1/p;

    invoke-direct {p1}, Lv1/p;-><init>()V

    throw p1
.end method

.method public synthetic constructor <init>(Z)V
    .locals 0

    .line 2
    iput-boolean p1, p0, Lag/h;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public D()V
    .locals 4

    .line 1
    sget-object v0, Lfa/b0;->a:La2/w0;

    .line 2
    .line 3
    iget-boolean v1, p0, Lag/h;->a:Z

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    const-string v1, "1"

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const-string v1, "0"

    .line 11
    .line 12
    :goto_0
    const-string v2, "setenforce "

    .line 13
    .line 14
    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    new-instance v2, Lua/v0;

    .line 19
    .line 20
    const/16 v3, 0x15

    .line 21
    .line 22
    invoke-direct {v2, v3}, Lua/v0;-><init>(I)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, v1, v2}, La2/w0;->g(Ljava/lang/String;Lfa/z;)V

    .line 26
    .line 27
    .line 28
    return-void
.end method

.method public t()V
    .locals 0

    .line 1
    return-void
.end method
