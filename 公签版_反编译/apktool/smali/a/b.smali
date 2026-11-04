.class public abstract La/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ll5/r;
.implements Lr1/m0;


# instance fields
.field public a:Ljava/lang/Object;


# direct methods
.method public constructor <init>(I)V
    .locals 1

    packed-switch p1, :pswitch_data_0

    .line 2
    :pswitch_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void

    .line 3
    :pswitch_1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance p1, Lr1/p0;

    invoke-direct {p1}, Lr1/p0;-><init>()V

    iput-object p1, p0, La/b;->a:Ljava/lang/Object;

    return-void

    .line 5
    :pswitch_2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    sget-object p1, La6/q;->a:[C

    .line 7
    new-instance p1, Ljava/util/ArrayDeque;

    const/16 v0, 0x14

    invoke-direct {p1, v0}, Ljava/util/ArrayDeque;-><init>(I)V

    .line 8
    iput-object p1, p0, La/b;->a:Ljava/lang/Object;

    return-void

    .line 9
    :pswitch_3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 p1, 0x300

    .line 10
    new-array p1, p1, [S

    iput-object p1, p0, La/b;->a:Ljava/lang/Object;

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput-object p1, p0, La/b;->a:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a([BLjava/io/FileOutputStream;)V
    .locals 6

    .line 1
    new-instance v0, Ljava/io/ByteArrayInputStream;

    .line 2
    .line 3
    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 4
    .line 5
    .line 6
    const/16 p1, 0x39

    .line 7
    .line 8
    new-array v1, p1, [B

    .line 9
    .line 10
    invoke-virtual {p0, p2}, La/b;->d(Ljava/io/OutputStream;)V

    .line 11
    .line 12
    .line 13
    :goto_0
    const/4 v2, 0x0

    .line 14
    const/4 v3, 0x0

    .line 15
    :goto_1
    if-ge v3, p1, :cond_1

    .line 16
    .line 17
    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    .line 18
    .line 19
    .line 20
    move-result v4

    .line 21
    const/4 v5, -0x1

    .line 22
    if-ne v4, v5, :cond_0

    .line 23
    .line 24
    goto :goto_2

    .line 25
    :cond_0
    int-to-byte v4, v4

    .line 26
    aput-byte v4, v1, v3

    .line 27
    .line 28
    add-int/lit8 v3, v3, 0x1

    .line 29
    .line 30
    goto :goto_1

    .line 31
    :cond_1
    const/16 v3, 0x39

    .line 32
    .line 33
    :goto_2
    if-nez v3, :cond_2

    .line 34
    .line 35
    goto :goto_5

    .line 36
    :cond_2
    :goto_3
    if-ge v2, v3, :cond_4

    .line 37
    .line 38
    const/4 v4, 0x3

    .line 39
    add-int v5, v4, v2

    .line 40
    .line 41
    if-gt v5, v3, :cond_3

    .line 42
    .line 43
    invoke-virtual {p0, v1, v2, v4, p2}, La/b;->b([BIILjava/io/OutputStream;)V

    .line 44
    .line 45
    .line 46
    goto :goto_4

    .line 47
    :cond_3
    sub-int v4, v3, v2

    .line 48
    .line 49
    invoke-virtual {p0, v1, v2, v4, p2}, La/b;->b([BIILjava/io/OutputStream;)V

    .line 50
    .line 51
    .line 52
    :goto_4
    move v2, v5

    .line 53
    goto :goto_3

    .line 54
    :cond_4
    if-ge v3, p1, :cond_5

    .line 55
    .line 56
    :goto_5
    return-void

    .line 57
    :cond_5
    invoke-virtual {p0}, La/b;->f()V

    .line 58
    .line 59
    .line 60
    goto :goto_0
.end method

.method public abstract b([BIILjava/io/OutputStream;)V
.end method

.method public c([B)Ljava/lang/String;
    .locals 7

    .line 1
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Ljava/io/ByteArrayInputStream;

    .line 7
    .line 8
    invoke-direct {v1, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 9
    .line 10
    .line 11
    const/16 p1, 0x10

    .line 12
    .line 13
    :try_start_0
    new-array v2, p1, [B

    .line 14
    .line 15
    invoke-virtual {p0, v0}, La/b;->d(Ljava/io/OutputStream;)V

    .line 16
    .line 17
    .line 18
    :cond_0
    const/4 v3, 0x0

    .line 19
    const/4 v4, 0x0

    .line 20
    :goto_0
    if-ge v4, p1, :cond_2

    .line 21
    .line 22
    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    .line 23
    .line 24
    .line 25
    move-result v5

    .line 26
    const/4 v6, -0x1

    .line 27
    if-ne v5, v6, :cond_1

    .line 28
    .line 29
    goto :goto_1

    .line 30
    :cond_1
    int-to-byte v5, v5

    .line 31
    aput-byte v5, v2, v4

    .line 32
    .line 33
    add-int/lit8 v4, v4, 0x1

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_2
    const/16 v4, 0x10

    .line 37
    .line 38
    :goto_1
    if-nez v4, :cond_3

    .line 39
    .line 40
    goto :goto_4

    .line 41
    :cond_3
    invoke-virtual {p0, v4}, La/b;->e(I)V

    .line 42
    .line 43
    .line 44
    :goto_2
    if-ge v3, v4, :cond_5

    .line 45
    .line 46
    const/4 v5, 0x1

    .line 47
    add-int v6, v5, v3

    .line 48
    .line 49
    if-gt v6, v4, :cond_4

    .line 50
    .line 51
    invoke-virtual {p0, v2, v3, v5, v0}, La/b;->b([BIILjava/io/OutputStream;)V

    .line 52
    .line 53
    .line 54
    goto :goto_3

    .line 55
    :cond_4
    sub-int v5, v4, v3

    .line 56
    .line 57
    invoke-virtual {p0, v2, v3, v5, v0}, La/b;->b([BIILjava/io/OutputStream;)V

    .line 58
    .line 59
    .line 60
    :goto_3
    move v3, v6

    .line 61
    goto :goto_2

    .line 62
    :cond_5
    invoke-virtual {p0}, La/b;->f()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 63
    .line 64
    .line 65
    if-ge v4, p1, :cond_0

    .line 66
    .line 67
    :goto_4
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    return-object p1

    .line 72
    :catch_0
    new-instance p1, Ljava/lang/Error;

    .line 73
    .line 74
    const-string v0, "CharacterEncoder.encodeBuffer internal error"

    .line 75
    .line 76
    invoke-direct {p1, v0}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    goto :goto_6

    .line 80
    :goto_5
    throw p1

    .line 81
    :goto_6
    goto :goto_5
.end method

.method public d(Ljava/io/OutputStream;)V
    .locals 1

    .line 1
    new-instance v0, Ljava/io/PrintStream;

    .line 2
    .line 3
    invoke-direct {v0, p1}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;)V

    .line 4
    .line 5
    .line 6
    iput-object v0, p0, La/b;->a:Ljava/lang/Object;

    .line 7
    .line 8
    return-void
.end method

.method public e(I)V
    .locals 0

    .line 1
    return-void
.end method

.method public f()V
    .locals 1

    .line 1
    iget-object v0, p0, La/b;->a:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Ljava/io/PrintStream;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public g()J
    .locals 5

    .line 1
    move-object v0, p0

    .line 2
    check-cast v0, Ly1/x;

    .line 3
    .line 4
    invoke-virtual {v0}, Ly1/x;->E()Lr1/q0;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    invoke-virtual {v1}, Lr1/q0;->p()Z

    .line 9
    .line 10
    .line 11
    move-result v2

    .line 12
    if-eqz v2, :cond_0

    .line 13
    .line 14
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 15
    .line 16
    .line 17
    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    invoke-virtual {v0}, Ly1/x;->A()I

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    const-wide/16 v2, 0x0

    .line 25
    .line 26
    iget-object v4, p0, La/b;->a:Ljava/lang/Object;

    .line 27
    .line 28
    check-cast v4, Lr1/p0;

    .line 29
    .line 30
    invoke-virtual {v1, v0, v4, v2, v3}, Lr1/q0;->m(ILr1/p0;J)Lr1/p0;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    iget-wide v0, v0, Lr1/p0;->l:J

    .line 35
    .line 36
    invoke-static {v0, v1}, Lu1/f0;->R(J)J

    .line 37
    .line 38
    .line 39
    move-result-wide v0

    .line 40
    :goto_0
    return-wide v0
.end method

.method public h()V
    .locals 1

    .line 1
    move-object v0, p0

    .line 2
    check-cast v0, Ly1/x;

    .line 3
    .line 4
    invoke-virtual {v0}, Ly1/x;->h0()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public i(I)Z
    .locals 1

    .line 1
    move-object v0, p0

    .line 2
    check-cast v0, Ly1/x;

    .line 3
    .line 4
    invoke-virtual {v0}, Ly1/x;->h0()V

    .line 5
    .line 6
    .line 7
    iget-object v0, v0, Ly1/x;->Y:Lr1/i0;

    .line 8
    .line 9
    iget-object v0, v0, Lr1/i0;->a:Lr1/n;

    .line 10
    .line 11
    iget-object v0, v0, Lr1/n;->a:Landroid/util/SparseBooleanArray;

    .line 12
    .line 13
    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    return p1
.end method

.method public j()Z
    .locals 5

    .line 1
    move-object v0, p0

    .line 2
    check-cast v0, Ly1/x;

    .line 3
    .line 4
    invoke-virtual {v0}, Ly1/x;->E()Lr1/q0;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    invoke-virtual {v1}, Lr1/q0;->p()Z

    .line 9
    .line 10
    .line 11
    move-result v2

    .line 12
    if-nez v2, :cond_0

    .line 13
    .line 14
    invoke-virtual {v0}, Ly1/x;->A()I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    const-wide/16 v2, 0x0

    .line 19
    .line 20
    iget-object v4, p0, La/b;->a:Ljava/lang/Object;

    .line 21
    .line 22
    check-cast v4, Lr1/p0;

    .line 23
    .line 24
    invoke-virtual {v1, v0, v4, v2, v3}, Lr1/q0;->m(ILr1/p0;J)Lr1/p0;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    iget-boolean v0, v0, Lr1/p0;->h:Z

    .line 29
    .line 30
    if-eqz v0, :cond_0

    .line 31
    .line 32
    const/4 v0, 0x1

    .line 33
    goto :goto_0

    .line 34
    :cond_0
    const/4 v0, 0x0

    .line 35
    :goto_0
    return v0
.end method

.method public k()Z
    .locals 5

    .line 1
    move-object v0, p0

    .line 2
    check-cast v0, Ly1/x;

    .line 3
    .line 4
    invoke-virtual {v0}, Ly1/x;->E()Lr1/q0;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    invoke-virtual {v1}, Lr1/q0;->p()Z

    .line 9
    .line 10
    .line 11
    move-result v2

    .line 12
    if-nez v2, :cond_0

    .line 13
    .line 14
    invoke-virtual {v0}, Ly1/x;->A()I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    const-wide/16 v2, 0x0

    .line 19
    .line 20
    iget-object v4, p0, La/b;->a:Ljava/lang/Object;

    .line 21
    .line 22
    check-cast v4, Lr1/p0;

    .line 23
    .line 24
    invoke-virtual {v1, v0, v4, v2, v3}, Lr1/q0;->m(ILr1/p0;J)Lr1/p0;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-virtual {v0}, Lr1/p0;->a()Z

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    if-eqz v0, :cond_0

    .line 33
    .line 34
    const/4 v0, 0x1

    .line 35
    goto :goto_0

    .line 36
    :cond_0
    const/4 v0, 0x0

    .line 37
    :goto_0
    return v0
.end method

.method public l(Ll5/w;)Ll5/q;
    .locals 2

    .line 1
    new-instance p1, Ll5/c;

    .line 2
    .line 3
    iget-object v0, p0, La/b;->a:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast v0, Ll5/a0;

    .line 6
    .line 7
    const/4 v1, 0x2

    .line 8
    invoke-direct {p1, v1, v0}, Ll5/c;-><init>(ILjava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    return-object p1
.end method

.method public m()Z
    .locals 5

    .line 1
    move-object v0, p0

    .line 2
    check-cast v0, Ly1/x;

    .line 3
    .line 4
    invoke-virtual {v0}, Ly1/x;->E()Lr1/q0;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    invoke-virtual {v1}, Lr1/q0;->p()Z

    .line 9
    .line 10
    .line 11
    move-result v2

    .line 12
    if-nez v2, :cond_0

    .line 13
    .line 14
    invoke-virtual {v0}, Ly1/x;->A()I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    const-wide/16 v2, 0x0

    .line 19
    .line 20
    iget-object v4, p0, La/b;->a:Ljava/lang/Object;

    .line 21
    .line 22
    check-cast v4, Lr1/p0;

    .line 23
    .line 24
    invoke-virtual {v1, v0, v4, v2, v3}, Lr1/q0;->m(ILr1/p0;J)Lr1/p0;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    iget-boolean v0, v0, Lr1/p0;->g:Z

    .line 29
    .line 30
    if-eqz v0, :cond_0

    .line 31
    .line 32
    const/4 v0, 0x1

    .line 33
    goto :goto_0

    .line 34
    :cond_0
    const/4 v0, 0x0

    .line 35
    :goto_0
    return v0
.end method

.method public n()Z
    .locals 3

    .line 1
    move-object v0, p0

    .line 2
    check-cast v0, Ly1/x;

    .line 3
    .line 4
    invoke-virtual {v0}, Ly1/x;->J()I

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    const/4 v2, 0x3

    .line 9
    if-ne v1, v2, :cond_0

    .line 10
    .line 11
    invoke-virtual {v0}, Ly1/x;->I()Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_0

    .line 16
    .line 17
    invoke-virtual {v0}, Ly1/x;->K()I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-nez v0, :cond_0

    .line 22
    .line 23
    const/4 v0, 0x1

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    const/4 v0, 0x0

    .line 26
    :goto_0
    return v0
.end method

.method public o(Li5/i;)V
    .locals 3

    .line 1
    iget-object v0, p0, La/b;->a:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Ljava/util/ArrayDeque;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->size()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    const/16 v2, 0x14

    .line 10
    .line 11
    if-ge v1, v2, :cond_0

    .line 12
    .line 13
    invoke-virtual {v0, p1}, Ljava/util/ArrayDeque;->offer(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    :cond_0
    return-void
.end method

.method public abstract p(IJZ)V
.end method

.method public q()V
    .locals 10

    .line 1
    move-object v0, p0

    .line 2
    check-cast v0, Ly1/x;

    .line 3
    .line 4
    invoke-virtual {v0}, Ly1/x;->E()Lr1/q0;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    invoke-virtual {v1}, Lr1/q0;->p()Z

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    if-nez v1, :cond_a

    .line 13
    .line 14
    invoke-virtual {v0}, Ly1/x;->N()Z

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    if-eqz v1, :cond_0

    .line 19
    .line 20
    goto/16 :goto_4

    .line 21
    .line 22
    :cond_0
    invoke-virtual {v0}, Ly1/x;->E()Lr1/q0;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-virtual {v1}, Lr1/q0;->p()Z

    .line 27
    .line 28
    .line 29
    move-result v2

    .line 30
    const/4 v3, -0x1

    .line 31
    const/4 v4, 0x1

    .line 32
    const/4 v5, 0x0

    .line 33
    if-eqz v2, :cond_1

    .line 34
    .line 35
    const/4 v1, -0x1

    .line 36
    goto :goto_0

    .line 37
    :cond_1
    invoke-virtual {v0}, Ly1/x;->A()I

    .line 38
    .line 39
    .line 40
    move-result v2

    .line 41
    invoke-virtual {v0}, Ly1/x;->h0()V

    .line 42
    .line 43
    .line 44
    iget v6, v0, Ly1/x;->K:I

    .line 45
    .line 46
    if-ne v6, v4, :cond_2

    .line 47
    .line 48
    const/4 v6, 0x0

    .line 49
    :cond_2
    invoke-virtual {v0}, Ly1/x;->h0()V

    .line 50
    .line 51
    .line 52
    iget-boolean v7, v0, Ly1/x;->L:Z

    .line 53
    .line 54
    invoke-virtual {v1, v2, v6, v7}, Lr1/q0;->e(IIZ)I

    .line 55
    .line 56
    .line 57
    move-result v1

    .line 58
    :goto_0
    if-eq v1, v3, :cond_3

    .line 59
    .line 60
    const/4 v1, 0x1

    .line 61
    goto :goto_1

    .line 62
    :cond_3
    const/4 v1, 0x0

    .line 63
    :goto_1
    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    .line 64
    .line 65
    .line 66
    .line 67
    .line 68
    if-eqz v1, :cond_8

    .line 69
    .line 70
    invoke-virtual {v0}, Ly1/x;->E()Lr1/q0;

    .line 71
    .line 72
    .line 73
    move-result-object v1

    .line 74
    invoke-virtual {v1}, Lr1/q0;->p()Z

    .line 75
    .line 76
    .line 77
    move-result v2

    .line 78
    if-eqz v2, :cond_4

    .line 79
    .line 80
    const/4 v1, -0x1

    .line 81
    goto :goto_2

    .line 82
    :cond_4
    invoke-virtual {v0}, Ly1/x;->A()I

    .line 83
    .line 84
    .line 85
    move-result v2

    .line 86
    invoke-virtual {v0}, Ly1/x;->h0()V

    .line 87
    .line 88
    .line 89
    iget v8, v0, Ly1/x;->K:I

    .line 90
    .line 91
    if-ne v8, v4, :cond_5

    .line 92
    .line 93
    const/4 v8, 0x0

    .line 94
    :cond_5
    invoke-virtual {v0}, Ly1/x;->h0()V

    .line 95
    .line 96
    .line 97
    iget-boolean v9, v0, Ly1/x;->L:Z

    .line 98
    .line 99
    invoke-virtual {v1, v2, v8, v9}, Lr1/q0;->e(IIZ)I

    .line 100
    .line 101
    .line 102
    move-result v1

    .line 103
    :goto_2
    if-ne v1, v3, :cond_6

    .line 104
    .line 105
    invoke-virtual {p0}, La/b;->h()V

    .line 106
    .line 107
    .line 108
    goto :goto_3

    .line 109
    :cond_6
    invoke-virtual {v0}, Ly1/x;->A()I

    .line 110
    .line 111
    .line 112
    move-result v2

    .line 113
    if-ne v1, v2, :cond_7

    .line 114
    .line 115
    invoke-virtual {v0}, Ly1/x;->A()I

    .line 116
    .line 117
    .line 118
    move-result v0

    .line 119
    invoke-virtual {p0, v0, v6, v7, v4}, La/b;->p(IJZ)V

    .line 120
    .line 121
    .line 122
    goto :goto_3

    .line 123
    :cond_7
    invoke-virtual {p0, v1, v6, v7, v5}, La/b;->p(IJZ)V

    .line 124
    .line 125
    .line 126
    goto :goto_3

    .line 127
    :cond_8
    invoke-virtual {p0}, La/b;->k()Z

    .line 128
    .line 129
    .line 130
    move-result v1

    .line 131
    if-eqz v1, :cond_9

    .line 132
    .line 133
    invoke-virtual {p0}, La/b;->j()Z

    .line 134
    .line 135
    .line 136
    move-result v1

    .line 137
    if-eqz v1, :cond_9

    .line 138
    .line 139
    invoke-virtual {v0}, Ly1/x;->A()I

    .line 140
    .line 141
    .line 142
    move-result v0

    .line 143
    invoke-virtual {p0, v0, v6, v7, v5}, La/b;->p(IJZ)V

    .line 144
    .line 145
    .line 146
    goto :goto_3

    .line 147
    :cond_9
    invoke-virtual {p0}, La/b;->h()V

    .line 148
    .line 149
    .line 150
    :goto_3
    return-void

    .line 151
    :cond_a
    :goto_4
    invoke-virtual {p0}, La/b;->h()V

    .line 152
    .line 153
    .line 154
    return-void
.end method

.method public r(IJ)V
    .locals 5

    .line 1
    move-object p1, p0

    .line 2
    check-cast p1, Ly1/x;

    .line 3
    .line 4
    invoke-virtual {p1}, Ly1/x;->C()J

    .line 5
    .line 6
    .line 7
    move-result-wide v0

    .line 8
    add-long/2addr v0, p2

    .line 9
    invoke-virtual {p1}, Ly1/x;->H()J

    .line 10
    .line 11
    .line 12
    move-result-wide p2

    .line 13
    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    .line 14
    .line 15
    .line 16
    .line 17
    .line 18
    cmp-long v4, p2, v2

    .line 19
    .line 20
    if-eqz v4, :cond_0

    .line 21
    .line 22
    invoke-static {v0, v1, p2, p3}, Ljava/lang/Math;->min(JJ)J

    .line 23
    .line 24
    .line 25
    move-result-wide v0

    .line 26
    :cond_0
    const-wide/16 p2, 0x0

    .line 27
    .line 28
    invoke-static {v0, v1, p2, p3}, Ljava/lang/Math;->max(JJ)J

    .line 29
    .line 30
    .line 31
    move-result-wide p2

    .line 32
    invoke-virtual {p1}, Ly1/x;->A()I

    .line 33
    .line 34
    .line 35
    move-result p1

    .line 36
    const/4 v0, 0x0

    .line 37
    invoke-virtual {p0, p1, p2, p3, v0}, La/b;->p(IJZ)V

    .line 38
    .line 39
    .line 40
    return-void
.end method

.method public s()V
    .locals 11

    .line 1
    move-object v0, p0

    .line 2
    check-cast v0, Ly1/x;

    .line 3
    .line 4
    invoke-virtual {v0}, Ly1/x;->E()Lr1/q0;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    invoke-virtual {v1}, Lr1/q0;->p()Z

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    if-nez v1, :cond_f

    .line 13
    .line 14
    invoke-virtual {v0}, Ly1/x;->N()Z

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    if-eqz v1, :cond_0

    .line 19
    .line 20
    goto/16 :goto_5

    .line 21
    .line 22
    :cond_0
    invoke-virtual {v0}, Ly1/x;->E()Lr1/q0;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-virtual {v1}, Lr1/q0;->p()Z

    .line 27
    .line 28
    .line 29
    move-result v2

    .line 30
    const/4 v3, -0x1

    .line 31
    const/4 v4, 0x1

    .line 32
    const/4 v5, 0x0

    .line 33
    if-eqz v2, :cond_1

    .line 34
    .line 35
    const/4 v1, -0x1

    .line 36
    goto :goto_0

    .line 37
    :cond_1
    invoke-virtual {v0}, Ly1/x;->A()I

    .line 38
    .line 39
    .line 40
    move-result v2

    .line 41
    invoke-virtual {v0}, Ly1/x;->h0()V

    .line 42
    .line 43
    .line 44
    iget v6, v0, Ly1/x;->K:I

    .line 45
    .line 46
    if-ne v6, v4, :cond_2

    .line 47
    .line 48
    const/4 v6, 0x0

    .line 49
    :cond_2
    invoke-virtual {v0}, Ly1/x;->h0()V

    .line 50
    .line 51
    .line 52
    iget-boolean v7, v0, Ly1/x;->L:Z

    .line 53
    .line 54
    invoke-virtual {v1, v2, v6, v7}, Lr1/q0;->k(IIZ)I

    .line 55
    .line 56
    .line 57
    move-result v1

    .line 58
    :goto_0
    if-eq v1, v3, :cond_3

    .line 59
    .line 60
    const/4 v1, 0x1

    .line 61
    goto :goto_1

    .line 62
    :cond_3
    const/4 v1, 0x0

    .line 63
    :goto_1
    invoke-virtual {p0}, La/b;->k()Z

    .line 64
    .line 65
    .line 66
    move-result v2

    .line 67
    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    .line 68
    .line 69
    .line 70
    .line 71
    .line 72
    if-eqz v2, :cond_9

    .line 73
    .line 74
    invoke-virtual {p0}, La/b;->m()Z

    .line 75
    .line 76
    .line 77
    move-result v2

    .line 78
    if-nez v2, :cond_9

    .line 79
    .line 80
    if-eqz v1, :cond_8

    .line 81
    .line 82
    invoke-virtual {v0}, Ly1/x;->E()Lr1/q0;

    .line 83
    .line 84
    .line 85
    move-result-object v1

    .line 86
    invoke-virtual {v1}, Lr1/q0;->p()Z

    .line 87
    .line 88
    .line 89
    move-result v2

    .line 90
    if-eqz v2, :cond_4

    .line 91
    .line 92
    const/4 v1, -0x1

    .line 93
    goto :goto_2

    .line 94
    :cond_4
    invoke-virtual {v0}, Ly1/x;->A()I

    .line 95
    .line 96
    .line 97
    move-result v2

    .line 98
    invoke-virtual {v0}, Ly1/x;->h0()V

    .line 99
    .line 100
    .line 101
    iget v8, v0, Ly1/x;->K:I

    .line 102
    .line 103
    if-ne v8, v4, :cond_5

    .line 104
    .line 105
    const/4 v8, 0x0

    .line 106
    :cond_5
    invoke-virtual {v0}, Ly1/x;->h0()V

    .line 107
    .line 108
    .line 109
    iget-boolean v9, v0, Ly1/x;->L:Z

    .line 110
    .line 111
    invoke-virtual {v1, v2, v8, v9}, Lr1/q0;->k(IIZ)I

    .line 112
    .line 113
    .line 114
    move-result v1

    .line 115
    :goto_2
    if-ne v1, v3, :cond_6

    .line 116
    .line 117
    invoke-virtual {p0}, La/b;->h()V

    .line 118
    .line 119
    .line 120
    goto :goto_4

    .line 121
    :cond_6
    invoke-virtual {v0}, Ly1/x;->A()I

    .line 122
    .line 123
    .line 124
    move-result v2

    .line 125
    if-ne v1, v2, :cond_7

    .line 126
    .line 127
    invoke-virtual {v0}, Ly1/x;->A()I

    .line 128
    .line 129
    .line 130
    move-result v0

    .line 131
    invoke-virtual {p0, v0, v6, v7, v4}, La/b;->p(IJZ)V

    .line 132
    .line 133
    .line 134
    goto :goto_4

    .line 135
    :cond_7
    invoke-virtual {p0, v1, v6, v7, v5}, La/b;->p(IJZ)V

    .line 136
    .line 137
    .line 138
    goto :goto_4

    .line 139
    :cond_8
    invoke-virtual {p0}, La/b;->h()V

    .line 140
    .line 141
    .line 142
    goto :goto_4

    .line 143
    :cond_9
    if-eqz v1, :cond_e

    .line 144
    .line 145
    invoke-virtual {v0}, Ly1/x;->C()J

    .line 146
    .line 147
    .line 148
    move-result-wide v1

    .line 149
    invoke-virtual {v0}, Ly1/x;->h0()V

    .line 150
    .line 151
    .line 152
    iget-wide v8, v0, Ly1/x;->d1:J

    .line 153
    .line 154
    cmp-long v10, v1, v8

    .line 155
    .line 156
    if-gtz v10, :cond_e

    .line 157
    .line 158
    invoke-virtual {v0}, Ly1/x;->E()Lr1/q0;

    .line 159
    .line 160
    .line 161
    move-result-object v1

    .line 162
    invoke-virtual {v1}, Lr1/q0;->p()Z

    .line 163
    .line 164
    .line 165
    move-result v2

    .line 166
    if-eqz v2, :cond_a

    .line 167
    .line 168
    const/4 v1, -0x1

    .line 169
    goto :goto_3

    .line 170
    :cond_a
    invoke-virtual {v0}, Ly1/x;->A()I

    .line 171
    .line 172
    .line 173
    move-result v2

    .line 174
    invoke-virtual {v0}, Ly1/x;->h0()V

    .line 175
    .line 176
    .line 177
    iget v8, v0, Ly1/x;->K:I

    .line 178
    .line 179
    if-ne v8, v4, :cond_b

    .line 180
    .line 181
    const/4 v8, 0x0

    .line 182
    :cond_b
    invoke-virtual {v0}, Ly1/x;->h0()V

    .line 183
    .line 184
    .line 185
    iget-boolean v9, v0, Ly1/x;->L:Z

    .line 186
    .line 187
    invoke-virtual {v1, v2, v8, v9}, Lr1/q0;->k(IIZ)I

    .line 188
    .line 189
    .line 190
    move-result v1

    .line 191
    :goto_3
    if-ne v1, v3, :cond_c

    .line 192
    .line 193
    invoke-virtual {p0}, La/b;->h()V

    .line 194
    .line 195
    .line 196
    goto :goto_4

    .line 197
    :cond_c
    invoke-virtual {v0}, Ly1/x;->A()I

    .line 198
    .line 199
    .line 200
    move-result v2

    .line 201
    if-ne v1, v2, :cond_d

    .line 202
    .line 203
    invoke-virtual {v0}, Ly1/x;->A()I

    .line 204
    .line 205
    .line 206
    move-result v0

    .line 207
    invoke-virtual {p0, v0, v6, v7, v4}, La/b;->p(IJZ)V

    .line 208
    .line 209
    .line 210
    goto :goto_4

    .line 211
    :cond_d
    invoke-virtual {p0, v1, v6, v7, v5}, La/b;->p(IJZ)V

    .line 212
    .line 213
    .line 214
    goto :goto_4

    .line 215
    :cond_e
    invoke-virtual {v0}, Ly1/x;->A()I

    .line 216
    .line 217
    .line 218
    move-result v0

    .line 219
    const-wide/16 v1, 0x0

    .line 220
    .line 221
    invoke-virtual {p0, v0, v1, v2, v5}, La/b;->p(IJZ)V

    .line 222
    .line 223
    .line 224
    :goto_4
    return-void

    .line 225
    :cond_f
    :goto_5
    invoke-virtual {p0}, La/b;->h()V

    .line 226
    .line 227
    .line 228
    return-void
.end method
