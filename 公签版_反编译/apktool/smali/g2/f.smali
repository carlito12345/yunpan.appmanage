.class public final Lg2/f;
.super Ly1/a;
.source "SourceFile"

# interfaces
.implements Landroid/os/Handler$Callback;


# instance fields
.field public A:Li3/e;

.field public B:Li3/g;

.field public C:Li3/c;

.field public D:Li3/c;

.field public E:I

.field public final F:Landroid/os/Handler;

.field public final G:Ly1/t;

.field public final H:Lua/i8;

.field public I:Z

.field public K:Z

.field public L:Lr1/p;

.field public M:J

.field public N:J

.field public final t:Lha/l2;

.field public final v:Lx1/g;

.field public w:Lg2/a;

.field public final x:La1/i;

.field public y:Z

.field public z:I


# direct methods
.method public constructor <init>(Ly1/t;Landroid/os/Looper;)V
    .locals 2

    .line 1
    sget-object v0, Lg2/e;->A0:La1/i;

    .line 2
    .line 3
    const/4 v1, 0x3

    .line 4
    invoke-direct {p0, v1}, Ly1/a;-><init>(I)V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Lg2/f;->G:Ly1/t;

    .line 8
    .line 9
    if-nez p2, :cond_0

    .line 10
    .line 11
    const/4 p1, 0x0

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    new-instance p1, Landroid/os/Handler;

    .line 14
    .line 15
    invoke-direct {p1, p2, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    .line 16
    .line 17
    .line 18
    :goto_0
    iput-object p1, p0, Lg2/f;->F:Landroid/os/Handler;

    .line 19
    .line 20
    iput-object v0, p0, Lg2/f;->x:La1/i;

    .line 21
    .line 22
    new-instance p1, Lha/l2;

    .line 23
    .line 24
    const/16 p2, 0x9

    .line 25
    .line 26
    invoke-direct {p1, p2}, Lha/l2;-><init>(I)V

    .line 27
    .line 28
    .line 29
    iput-object p1, p0, Lg2/f;->t:Lha/l2;

    .line 30
    .line 31
    new-instance p1, Lx1/g;

    .line 32
    .line 33
    const/4 p2, 0x1

    .line 34
    invoke-direct {p1, p2}, Lx1/g;-><init>(I)V

    .line 35
    .line 36
    .line 37
    iput-object p1, p0, Lg2/f;->v:Lx1/g;

    .line 38
    .line 39
    new-instance p1, Lua/i8;

    .line 40
    .line 41
    const/16 p2, 0xb

    .line 42
    .line 43
    invoke-direct {p1, p2}, Lua/i8;-><init>(I)V

    .line 44
    .line 45
    .line 46
    iput-object p1, p0, Lg2/f;->H:Lua/i8;

    .line 47
    .line 48
    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    .line 49
    .line 50
    .line 51
    .line 52
    .line 53
    iput-wide p1, p0, Lg2/f;->N:J

    .line 54
    .line 55
    iput-wide p1, p0, Lg2/f;->M:J

    .line 56
    .line 57
    return-void
.end method


# virtual methods
.method public final B(Lr1/p;)I
    .locals 3

    .line 1
    iget-object v0, p1, Lr1/p;->o:Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, "application/x-media3-cues"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x0

    .line 10
    if-nez v0, :cond_2

    .line 11
    .line 12
    iget-object v0, p0, Lg2/f;->x:La1/i;

    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    .line 16
    .line 17
    iget-object v0, v0, La1/i;->b:Ljava/lang/Object;

    .line 18
    .line 19
    check-cast v0, Lha/l2;

    .line 20
    .line 21
    invoke-virtual {v0, p1}, Lha/l2;->m(Lr1/p;)Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-nez v0, :cond_2

    .line 26
    .line 27
    iget-object v0, p1, Lr1/p;->o:Ljava/lang/String;

    .line 28
    .line 29
    const-string v2, "application/cea-608"

    .line 30
    .line 31
    invoke-static {v0, v2}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    move-result v2

    .line 35
    if-nez v2, :cond_2

    .line 36
    .line 37
    const-string v2, "application/x-mp4-cea-608"

    .line 38
    .line 39
    invoke-static {v0, v2}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    move-result v2

    .line 43
    if-nez v2, :cond_2

    .line 44
    .line 45
    const-string v2, "application/cea-708"

    .line 46
    .line 47
    invoke-static {v0, v2}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    move-result v2

    .line 51
    if-eqz v2, :cond_0

    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_0
    invoke-static {v0}, Lr1/e0;->j(Ljava/lang/String;)Z

    .line 55
    .line 56
    .line 57
    move-result p1

    .line 58
    if-eqz p1, :cond_1

    .line 59
    .line 60
    const/4 p1, 0x1

    .line 61
    invoke-static {p1, v1, v1, v1}, Lta/q;->a(IIII)I

    .line 62
    .line 63
    .line 64
    move-result p1

    .line 65
    return p1

    .line 66
    :cond_1
    invoke-static {v1, v1, v1, v1}, Lta/q;->a(IIII)I

    .line 67
    .line 68
    .line 69
    move-result p1

    .line 70
    return p1

    .line 71
    :cond_2
    :goto_0
    iget p1, p1, Lr1/p;->P:I

    .line 72
    .line 73
    if-nez p1, :cond_3

    .line 74
    .line 75
    const/4 p1, 0x4

    .line 76
    goto :goto_1

    .line 77
    :cond_3
    const/4 p1, 0x2

    .line 78
    :goto_1
    invoke-static {p1, v1, v1, v1}, Lta/q;->a(IIII)I

    .line 79
    .line 80
    .line 81
    move-result p1

    .line 82
    return p1
.end method

.method public final E()V
    .locals 5

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    iget-object v2, p0, Lg2/f;->L:Lr1/p;

    .line 4
    .line 5
    iget-object v2, v2, Lr1/p;->o:Ljava/lang/String;

    .line 6
    .line 7
    const-string v3, "application/cea-608"

    .line 8
    .line 9
    invoke-static {v2, v3}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    if-nez v2, :cond_1

    .line 14
    .line 15
    iget-object v2, p0, Lg2/f;->L:Lr1/p;

    .line 16
    .line 17
    iget-object v2, v2, Lr1/p;->o:Ljava/lang/String;

    .line 18
    .line 19
    const-string v3, "application/x-mp4-cea-608"

    .line 20
    .line 21
    invoke-static {v2, v3}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    if-nez v2, :cond_1

    .line 26
    .line 27
    iget-object v2, p0, Lg2/f;->L:Lr1/p;

    .line 28
    .line 29
    iget-object v2, v2, Lr1/p;->o:Ljava/lang/String;

    .line 30
    .line 31
    const-string v3, "application/cea-708"

    .line 32
    .line 33
    invoke-static {v2, v3}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    move-result v2

    .line 37
    if-eqz v2, :cond_0

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_0
    const/4 v2, 0x0

    .line 41
    goto :goto_1

    .line 42
    :cond_1
    :goto_0
    const/4 v2, 0x1

    .line 43
    :goto_1
    iget-object v3, p0, Lg2/f;->L:Lr1/p;

    .line 44
    .line 45
    iget-object v3, v3, Lr1/p;->o:Ljava/lang/String;

    .line 46
    .line 47
    if-eqz v2, :cond_2

    .line 48
    .line 49
    return-void

    .line 50
    :cond_2
    new-instance v2, Ljava/lang/IllegalStateException;

    .line 51
    .line 52
    const/4 v4, 0x2

    .line 53
    new-array v4, v4, [Ljava/lang/Object;

    .line 54
    .line 55
    aput-object v3, v4, v1

    .line 56
    .line 57
    const-string v1, "application/x-media3-cues"

    .line 58
    .line 59
    aput-object v1, v4, v0

    .line 60
    .line 61
    const-string v0, "Legacy decoding is disabled, can\'t handle %s samples (expected %s)."

    .line 62
    .line 63
    invoke-static {v0, v4}, Landroid/support/v4/media/session/b;->y(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    invoke-direct {v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    throw v2
.end method

.method public final F()J
    .locals 4

    .line 1
    iget v0, p0, Lg2/f;->E:I

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    const-wide v2, 0x7fffffffffffffffL

    .line 5
    .line 6
    .line 7
    .line 8
    .line 9
    if-ne v0, v1, :cond_0

    .line 10
    .line 11
    return-wide v2

    .line 12
    :cond_0
    iget-object v0, p0, Lg2/f;->C:Li3/c;

    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    .line 16
    .line 17
    iget v0, p0, Lg2/f;->E:I

    .line 18
    .line 19
    iget-object v1, p0, Lg2/f;->C:Li3/c;

    .line 20
    .line 21
    invoke-virtual {v1}, Li3/c;->j()I

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    if-lt v0, v1, :cond_1

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_1
    iget-object v0, p0, Lg2/f;->C:Li3/c;

    .line 29
    .line 30
    iget v1, p0, Lg2/f;->E:I

    .line 31
    .line 32
    invoke-virtual {v0, v1}, Li3/c;->e(I)J

    .line 33
    .line 34
    .line 35
    move-result-wide v2

    .line 36
    :goto_0
    return-wide v2
.end method

.method public final G(J)J
    .locals 3

    .line 1
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 2
    .line 3
    .line 4
    .line 5
    .line 6
    cmp-long v2, p1, v0

    .line 7
    .line 8
    if-eqz v2, :cond_0

    .line 9
    .line 10
    const/4 v0, 0x1

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 v0, 0x0

    .line 13
    :goto_0
    invoke-static {v0}, La9/o;->t(Z)V

    .line 14
    .line 15
    .line 16
    iget-wide v0, p0, Ly1/a;->k:J

    .line 17
    .line 18
    sub-long/2addr p1, v0

    .line 19
    return-wide p1
.end method

.method public final H()V
    .locals 7

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lg2/f;->y:Z

    .line 3
    .line 4
    iget-object v1, p0, Lg2/f;->L:Lr1/p;

    .line 5
    .line 6
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    iget-object v2, p0, Lg2/f;->x:La1/i;

    .line 10
    .line 11
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    iget-object v3, v1, Lr1/p;->o:Ljava/lang/String;

    .line 15
    .line 16
    if-eqz v3, :cond_3

    .line 17
    .line 18
    iget v4, v1, Lr1/p;->L:I

    .line 19
    .line 20
    const/4 v5, -0x1

    .line 21
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    .line 22
    .line 23
    .line 24
    move-result v6

    .line 25
    sparse-switch v6, :sswitch_data_0

    .line 26
    .line 27
    .line 28
    :goto_0
    const/4 v0, -0x1

    .line 29
    goto :goto_1

    .line 30
    :sswitch_0
    const-string v0, "application/cea-708"

    .line 31
    .line 32
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    if-nez v0, :cond_0

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_0
    const/4 v0, 0x2

    .line 40
    goto :goto_1

    .line 41
    :sswitch_1
    const-string v6, "application/cea-608"

    .line 42
    .line 43
    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    move-result v6

    .line 47
    if-nez v6, :cond_2

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :sswitch_2
    const-string v0, "application/x-mp4-cea-608"

    .line 51
    .line 52
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 53
    .line 54
    .line 55
    move-result v0

    .line 56
    if-nez v0, :cond_1

    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_1
    const/4 v0, 0x0

    .line 60
    :cond_2
    :goto_1
    packed-switch v0, :pswitch_data_0

    .line 61
    .line 62
    .line 63
    goto :goto_2

    .line 64
    :pswitch_0
    new-instance v0, Lj3/g;

    .line 65
    .line 66
    iget-object v1, v1, Lr1/p;->r:Ljava/util/List;

    .line 67
    .line 68
    invoke-direct {v0, v4, v1}, Lj3/g;-><init>(ILjava/util/List;)V

    .line 69
    .line 70
    .line 71
    goto :goto_3

    .line 72
    :pswitch_1
    new-instance v0, Lj3/c;

    .line 73
    .line 74
    invoke-direct {v0, v3, v4}, Lj3/c;-><init>(Ljava/lang/String;I)V

    .line 75
    .line 76
    .line 77
    goto :goto_3

    .line 78
    :cond_3
    :goto_2
    iget-object v0, v2, La1/i;->b:Ljava/lang/Object;

    .line 79
    .line 80
    check-cast v0, Lha/l2;

    .line 81
    .line 82
    invoke-virtual {v0, v1}, Lha/l2;->m(Lr1/p;)Z

    .line 83
    .line 84
    .line 85
    move-result v2

    .line 86
    if-eqz v2, :cond_4

    .line 87
    .line 88
    invoke-virtual {v0, v1}, Lha/l2;->k(Lr1/p;)Li3/j;

    .line 89
    .line 90
    .line 91
    move-result-object v0

    .line 92
    new-instance v1, Lg2/b;

    .line 93
    .line 94
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 95
    .line 96
    .line 97
    move-result-object v2

    .line 98
    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object v2

    .line 102
    const-string v3, "Decoder"

    .line 103
    .line 104
    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    invoke-direct {v1, v0}, Lg2/b;-><init>(Li3/j;)V

    .line 108
    .line 109
    .line 110
    move-object v0, v1

    .line 111
    :goto_3
    iput-object v0, p0, Lg2/f;->A:Li3/e;

    .line 112
    .line 113
    iget-wide v1, p0, Ly1/a;->l:J

    .line 114
    .line 115
    invoke-interface {v0, v1, v2}, Lx1/d;->c(J)V

    .line 116
    .line 117
    .line 118
    return-void

    .line 119
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 120
    .line 121
    const-string v1, "Attempted to create decoder for unsupported MIME type: "

    .line 122
    .line 123
    invoke-static {v1, v3}, Lda/b;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object v1

    .line 127
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 128
    .line 129
    .line 130
    goto :goto_5

    .line 131
    :goto_4
    throw v0

    .line 132
    :goto_5
    goto :goto_4

    .line 133
    :sswitch_data_0
    .sparse-switch
        0x37713300 -> :sswitch_2
        0x5d578071 -> :sswitch_1
        0x5d578432 -> :sswitch_0
    .end sparse-switch

    .line 134
    .line 135
    .line 136
    .line 137
    .line 138
    .line 139
    .line 140
    .line 141
    .line 142
    .line 143
    .line 144
    .line 145
    .line 146
    .line 147
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final I(Lt1/c;)V
    .locals 5

    .line 1
    iget-object v0, p1, Lt1/c;->a:Lu7/y0;

    .line 2
    .line 3
    iget-object v1, p0, Lg2/f;->G:Ly1/t;

    .line 4
    .line 5
    iget-object v2, v1, Ly1/t;->a:Ly1/x;

    .line 6
    .line 7
    iget-object v2, v2, Ly1/x;->m:Lu1/m;

    .line 8
    .line 9
    new-instance v3, Lua/g5;

    .line 10
    .line 11
    const/16 v4, 0x1a

    .line 12
    .line 13
    invoke-direct {v3, v4, v0}, Lua/g5;-><init>(ILjava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    const/16 v0, 0x1b

    .line 17
    .line 18
    invoke-virtual {v2, v0, v3}, Lu1/m;->e(ILu1/j;)V

    .line 19
    .line 20
    .line 21
    iget-object v1, v1, Ly1/t;->a:Ly1/x;

    .line 22
    .line 23
    iput-object p1, v1, Ly1/x;->V0:Lt1/c;

    .line 24
    .line 25
    new-instance v2, Lua/g5;

    .line 26
    .line 27
    const/16 v3, 0x17

    .line 28
    .line 29
    invoke-direct {v2, v3, p1}, Lua/g5;-><init>(ILjava/lang/Object;)V

    .line 30
    .line 31
    .line 32
    iget-object p1, v1, Ly1/x;->m:Lu1/m;

    .line 33
    .line 34
    invoke-virtual {p1, v0, v2}, Lu1/m;->e(ILu1/j;)V

    .line 35
    .line 36
    .line 37
    return-void
.end method

.method public final J()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lg2/f;->B:Li3/g;

    .line 3
    .line 4
    const/4 v1, -0x1

    .line 5
    iput v1, p0, Lg2/f;->E:I

    .line 6
    .line 7
    iget-object v1, p0, Lg2/f;->C:Li3/c;

    .line 8
    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    invoke-virtual {v1}, Lx1/h;->i()V

    .line 12
    .line 13
    .line 14
    iput-object v0, p0, Lg2/f;->C:Li3/c;

    .line 15
    .line 16
    :cond_0
    iget-object v1, p0, Lg2/f;->D:Li3/c;

    .line 17
    .line 18
    if-eqz v1, :cond_1

    .line 19
    .line 20
    invoke-virtual {v1}, Lx1/h;->i()V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lg2/f;->D:Li3/c;

    .line 24
    .line 25
    :cond_1
    return-void
.end method

.method public final handleMessage(Landroid/os/Message;)Z
    .locals 2

    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-ne v0, v1, :cond_0

    .line 5
    .line 6
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast p1, Lt1/c;

    .line 9
    .line 10
    invoke-virtual {p0, p1}, Lg2/f;->I(Lt1/c;)V

    .line 11
    .line 12
    .line 13
    return v1

    .line 14
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 15
    .line 16
    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    .line 17
    .line 18
    .line 19
    throw p1
.end method

.method public final j()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "TextRenderer"

    .line 2
    .line 3
    return-object v0
.end method

.method public final l()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lg2/f;->K:Z

    .line 2
    .line 3
    return v0
.end method

.method public final m()Z
    .locals 7

    .line 1
    iget-object v0, p0, Lg2/f;->L:Lr1/p;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    iget-object v0, v0, Lr1/p;->o:Ljava/lang/String;

    .line 8
    .line 9
    const-string v2, "application/x-media3-cues"

    .line 10
    .line 11
    invoke-static {v0, v2}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    const/4 v2, 0x0

    .line 16
    if-eqz v0, :cond_2

    .line 17
    .line 18
    iget-object v0, p0, Lg2/f;->w:Lg2/a;

    .line 19
    .line 20
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 21
    .line 22
    .line 23
    iget-wide v3, p0, Lg2/f;->M:J

    .line 24
    .line 25
    invoke-interface {v0, v3, v4}, Lg2/a;->a(J)J

    .line 26
    .line 27
    .line 28
    move-result-wide v3

    .line 29
    const-wide/high16 v5, -0x8000000000000000L

    .line 30
    .line 31
    cmp-long v0, v3, v5

    .line 32
    .line 33
    if-eqz v0, :cond_1

    .line 34
    .line 35
    return v1

    .line 36
    :cond_1
    :try_start_0
    iget-object v0, p0, Ly1/a;->i:Lf2/c1;

    .line 37
    .line 38
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 39
    .line 40
    .line 41
    invoke-interface {v0}, Lf2/c1;->j()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 42
    .line 43
    .line 44
    return v1

    .line 45
    :catch_0
    return v2

    .line 46
    :cond_2
    iget-boolean v0, p0, Lg2/f;->K:Z

    .line 47
    .line 48
    if-nez v0, :cond_5

    .line 49
    .line 50
    iget-boolean v0, p0, Lg2/f;->I:Z

    .line 51
    .line 52
    if-eqz v0, :cond_6

    .line 53
    .line 54
    iget-object v0, p0, Lg2/f;->C:Li3/c;

    .line 55
    .line 56
    iget-wide v3, p0, Lg2/f;->M:J

    .line 57
    .line 58
    if-eqz v0, :cond_3

    .line 59
    .line 60
    invoke-virtual {v0}, Li3/c;->j()I

    .line 61
    .line 62
    .line 63
    move-result v5

    .line 64
    if-lez v5, :cond_3

    .line 65
    .line 66
    invoke-virtual {v0}, Li3/c;->j()I

    .line 67
    .line 68
    .line 69
    move-result v5

    .line 70
    sub-int/2addr v5, v1

    .line 71
    invoke-virtual {v0, v5}, Li3/c;->e(I)J

    .line 72
    .line 73
    .line 74
    move-result-wide v5

    .line 75
    cmp-long v0, v5, v3

    .line 76
    .line 77
    if-lez v0, :cond_3

    .line 78
    .line 79
    goto :goto_0

    .line 80
    :cond_3
    iget-object v0, p0, Lg2/f;->D:Li3/c;

    .line 81
    .line 82
    iget-wide v3, p0, Lg2/f;->M:J

    .line 83
    .line 84
    if-eqz v0, :cond_4

    .line 85
    .line 86
    invoke-virtual {v0}, Li3/c;->j()I

    .line 87
    .line 88
    .line 89
    move-result v5

    .line 90
    if-lez v5, :cond_4

    .line 91
    .line 92
    invoke-virtual {v0}, Li3/c;->j()I

    .line 93
    .line 94
    .line 95
    move-result v5

    .line 96
    sub-int/2addr v5, v1

    .line 97
    invoke-virtual {v0, v5}, Li3/c;->e(I)J

    .line 98
    .line 99
    .line 100
    move-result-wide v5

    .line 101
    cmp-long v0, v5, v3

    .line 102
    .line 103
    if-lez v0, :cond_4

    .line 104
    .line 105
    goto :goto_0

    .line 106
    :cond_4
    iget-object v0, p0, Lg2/f;->B:Li3/g;

    .line 107
    .line 108
    if-nez v0, :cond_5

    .line 109
    .line 110
    goto :goto_0

    .line 111
    :cond_5
    const/4 v1, 0x0

    .line 112
    :cond_6
    :goto_0
    return v1
.end method

.method public final n()V
    .locals 7

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lg2/f;->L:Lr1/p;

    .line 3
    .line 4
    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    .line 5
    .line 6
    .line 7
    .line 8
    .line 9
    iput-wide v1, p0, Lg2/f;->N:J

    .line 10
    .line 11
    new-instance v3, Lt1/c;

    .line 12
    .line 13
    sget-object v4, Lu7/y0;->e:Lu7/y0;

    .line 14
    .line 15
    iget-wide v5, p0, Lg2/f;->M:J

    .line 16
    .line 17
    invoke-virtual {p0, v5, v6}, Lg2/f;->G(J)J

    .line 18
    .line 19
    .line 20
    invoke-direct {v3, v4}, Lt1/c;-><init>(Ljava/util/List;)V

    .line 21
    .line 22
    .line 23
    iget-object v4, p0, Lg2/f;->F:Landroid/os/Handler;

    .line 24
    .line 25
    if-eqz v4, :cond_0

    .line 26
    .line 27
    const/4 v5, 0x1

    .line 28
    invoke-virtual {v4, v5, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 29
    .line 30
    .line 31
    move-result-object v3

    .line 32
    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    .line 33
    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_0
    invoke-virtual {p0, v3}, Lg2/f;->I(Lt1/c;)V

    .line 37
    .line 38
    .line 39
    :goto_0
    iput-wide v1, p0, Lg2/f;->M:J

    .line 40
    .line 41
    iget-object v1, p0, Lg2/f;->A:Li3/e;

    .line 42
    .line 43
    if-eqz v1, :cond_1

    .line 44
    .line 45
    invoke-virtual {p0}, Lg2/f;->J()V

    .line 46
    .line 47
    .line 48
    iget-object v1, p0, Lg2/f;->A:Li3/e;

    .line 49
    .line 50
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 51
    .line 52
    .line 53
    invoke-interface {v1}, Lx1/d;->a()V

    .line 54
    .line 55
    .line 56
    iput-object v0, p0, Lg2/f;->A:Li3/e;

    .line 57
    .line 58
    const/4 v0, 0x0

    .line 59
    iput v0, p0, Lg2/f;->z:I

    .line 60
    .line 61
    :cond_1
    return-void
.end method

.method public final p(JZZ)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lg2/f;->M:J

    .line 2
    .line 3
    iget-object p1, p0, Lg2/f;->w:Lg2/a;

    .line 4
    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    invoke-interface {p1}, Lg2/a;->clear()V

    .line 8
    .line 9
    .line 10
    :cond_0
    new-instance p1, Lt1/c;

    .line 11
    .line 12
    sget-object p2, Lu7/y0;->e:Lu7/y0;

    .line 13
    .line 14
    iget-wide p3, p0, Lg2/f;->M:J

    .line 15
    .line 16
    invoke-virtual {p0, p3, p4}, Lg2/f;->G(J)J

    .line 17
    .line 18
    .line 19
    invoke-direct {p1, p2}, Lt1/c;-><init>(Ljava/util/List;)V

    .line 20
    .line 21
    .line 22
    iget-object p2, p0, Lg2/f;->F:Landroid/os/Handler;

    .line 23
    .line 24
    if-eqz p2, :cond_1

    .line 25
    .line 26
    const/4 p3, 0x1

    .line 27
    invoke-virtual {p2, p3, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 32
    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_1
    invoke-virtual {p0, p1}, Lg2/f;->I(Lt1/c;)V

    .line 36
    .line 37
    .line 38
    :goto_0
    const/4 p1, 0x0

    .line 39
    iput-boolean p1, p0, Lg2/f;->I:Z

    .line 40
    .line 41
    iput-boolean p1, p0, Lg2/f;->K:Z

    .line 42
    .line 43
    const-wide p2, -0x7fffffffffffffffL    # -4.9E-324

    .line 44
    .line 45
    .line 46
    .line 47
    .line 48
    iput-wide p2, p0, Lg2/f;->N:J

    .line 49
    .line 50
    iget-object p2, p0, Lg2/f;->L:Lr1/p;

    .line 51
    .line 52
    if-eqz p2, :cond_3

    .line 53
    .line 54
    iget-object p2, p2, Lr1/p;->o:Ljava/lang/String;

    .line 55
    .line 56
    const-string p3, "application/x-media3-cues"

    .line 57
    .line 58
    invoke-static {p2, p3}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 59
    .line 60
    .line 61
    move-result p2

    .line 62
    if-nez p2, :cond_3

    .line 63
    .line 64
    iget p2, p0, Lg2/f;->z:I

    .line 65
    .line 66
    if-eqz p2, :cond_2

    .line 67
    .line 68
    invoke-virtual {p0}, Lg2/f;->J()V

    .line 69
    .line 70
    .line 71
    iget-object p2, p0, Lg2/f;->A:Li3/e;

    .line 72
    .line 73
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 74
    .line 75
    .line 76
    invoke-interface {p2}, Lx1/d;->a()V

    .line 77
    .line 78
    .line 79
    const/4 p2, 0x0

    .line 80
    iput-object p2, p0, Lg2/f;->A:Li3/e;

    .line 81
    .line 82
    iput p1, p0, Lg2/f;->z:I

    .line 83
    .line 84
    invoke-virtual {p0}, Lg2/f;->H()V

    .line 85
    .line 86
    .line 87
    goto :goto_1

    .line 88
    :cond_2
    invoke-virtual {p0}, Lg2/f;->J()V

    .line 89
    .line 90
    .line 91
    iget-object p1, p0, Lg2/f;->A:Li3/e;

    .line 92
    .line 93
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 94
    .line 95
    .line 96
    invoke-interface {p1}, Lx1/d;->flush()V

    .line 97
    .line 98
    .line 99
    iget-wide p2, p0, Ly1/a;->l:J

    .line 100
    .line 101
    invoke-interface {p1, p2, p3}, Lx1/d;->c(J)V

    .line 102
    .line 103
    .line 104
    :cond_3
    :goto_1
    return-void
.end method

.method public final u([Lr1/p;JJLf2/c0;)V
    .locals 0

    .line 1
    const/4 p2, 0x0

    .line 2
    aget-object p1, p1, p2

    .line 3
    .line 4
    iput-object p1, p0, Lg2/f;->L:Lr1/p;

    .line 5
    .line 6
    iget-object p1, p1, Lr1/p;->o:Ljava/lang/String;

    .line 7
    .line 8
    const-string p2, "application/x-media3-cues"

    .line 9
    .line 10
    invoke-static {p1, p2}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    const/4 p2, 0x1

    .line 15
    if-nez p1, :cond_1

    .line 16
    .line 17
    invoke-virtual {p0}, Lg2/f;->E()V

    .line 18
    .line 19
    .line 20
    iget-object p1, p0, Lg2/f;->A:Li3/e;

    .line 21
    .line 22
    if-eqz p1, :cond_0

    .line 23
    .line 24
    iput p2, p0, Lg2/f;->z:I

    .line 25
    .line 26
    goto :goto_1

    .line 27
    :cond_0
    invoke-virtual {p0}, Lg2/f;->H()V

    .line 28
    .line 29
    .line 30
    goto :goto_1

    .line 31
    :cond_1
    iget-object p1, p0, Lg2/f;->L:Lr1/p;

    .line 32
    .line 33
    iget p1, p1, Lr1/p;->M:I

    .line 34
    .line 35
    if-ne p1, p2, :cond_2

    .line 36
    .line 37
    new-instance p1, Lg2/d;

    .line 38
    .line 39
    invoke-direct {p1}, Lg2/d;-><init>()V

    .line 40
    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_2
    new-instance p1, Lag/c;

    .line 44
    .line 45
    const/4 p2, 0x1

    .line 46
    invoke-direct {p1, p2}, Lag/c;-><init>(I)V

    .line 47
    .line 48
    .line 49
    :goto_0
    iput-object p1, p0, Lg2/f;->w:Lg2/a;

    .line 50
    .line 51
    :goto_1
    return-void
.end method

.method public final x(JJ)V
    .locals 17

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-wide/from16 v2, p1

    .line 4
    .line 5
    const/4 v4, 0x1

    .line 6
    iget-boolean v0, v1, Ly1/a;->n:Z

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    iget-wide v5, v1, Lg2/f;->N:J

    .line 11
    .line 12
    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    .line 13
    .line 14
    .line 15
    .line 16
    .line 17
    cmp-long v0, v5, v7

    .line 18
    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    cmp-long v0, v2, v5

    .line 22
    .line 23
    if-ltz v0, :cond_0

    .line 24
    .line 25
    invoke-virtual/range {p0 .. p0}, Lg2/f;->J()V

    .line 26
    .line 27
    .line 28
    iput-boolean v4, v1, Lg2/f;->K:Z

    .line 29
    .line 30
    :cond_0
    iget-boolean v0, v1, Lg2/f;->K:Z

    .line 31
    .line 32
    if-eqz v0, :cond_1

    .line 33
    .line 34
    return-void

    .line 35
    :cond_1
    iget-object v0, v1, Lg2/f;->L:Lr1/p;

    .line 36
    .line 37
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 38
    .line 39
    .line 40
    iget-object v0, v0, Lr1/p;->o:Ljava/lang/String;

    .line 41
    .line 42
    const-string v5, "application/x-media3-cues"

    .line 43
    .line 44
    invoke-static {v0, v5}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 45
    .line 46
    .line 47
    move-result v0

    .line 48
    iget-object v5, v1, Lg2/f;->F:Landroid/os/Handler;

    .line 49
    .line 50
    const/4 v6, 0x0

    .line 51
    const/4 v7, 0x4

    .line 52
    const/4 v8, -0x4

    .line 53
    iget-object v9, v1, Lg2/f;->H:Lua/i8;

    .line 54
    .line 55
    if-eqz v0, :cond_b

    .line 56
    .line 57
    iget-object v0, v1, Lg2/f;->w:Lg2/a;

    .line 58
    .line 59
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 60
    .line 61
    .line 62
    iget-boolean v0, v1, Lg2/f;->I:Z

    .line 63
    .line 64
    if-eqz v0, :cond_2

    .line 65
    .line 66
    goto/16 :goto_2

    .line 67
    .line 68
    :cond_2
    iget-object v0, v1, Lg2/f;->v:Lx1/g;

    .line 69
    .line 70
    invoke-virtual {v1, v9, v0, v6}, Ly1/a;->w(Lua/i8;Lx1/g;I)I

    .line 71
    .line 72
    .line 73
    move-result v9

    .line 74
    if-eq v9, v8, :cond_3

    .line 75
    .line 76
    goto/16 :goto_2

    .line 77
    .line 78
    :cond_3
    invoke-virtual {v0, v7}, Lab/a;->c(I)Z

    .line 79
    .line 80
    .line 81
    move-result v8

    .line 82
    if-eqz v8, :cond_4

    .line 83
    .line 84
    iput-boolean v4, v1, Lg2/f;->I:Z

    .line 85
    .line 86
    goto/16 :goto_2

    .line 87
    .line 88
    :cond_4
    invoke-virtual {v0}, Lx1/g;->l()V

    .line 89
    .line 90
    .line 91
    iget-object v8, v0, Lx1/g;->e:Ljava/nio/ByteBuffer;

    .line 92
    .line 93
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 94
    .line 95
    .line 96
    iget-wide v10, v0, Lx1/g;->g:J

    .line 97
    .line 98
    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->array()[B

    .line 99
    .line 100
    .line 101
    move-result-object v9

    .line 102
    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->arrayOffset()I

    .line 103
    .line 104
    .line 105
    move-result v12

    .line 106
    invoke-virtual {v8}, Ljava/nio/Buffer;->limit()I

    .line 107
    .line 108
    .line 109
    move-result v8

    .line 110
    iget-object v13, v1, Lg2/f;->t:Lha/l2;

    .line 111
    .line 112
    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 113
    .line 114
    .line 115
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    .line 116
    .line 117
    .line 118
    move-result-object v13

    .line 119
    invoke-virtual {v13, v9, v12, v8}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 120
    .line 121
    .line 122
    invoke-virtual {v13, v6}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 123
    .line 124
    .line 125
    const-class v8, Landroid/os/Bundle;

    .line 126
    .line 127
    invoke-virtual {v8}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    .line 128
    .line 129
    .line 130
    move-result-object v8

    .line 131
    invoke-virtual {v13, v8}, Landroid/os/Parcel;->readBundle(Ljava/lang/ClassLoader;)Landroid/os/Bundle;

    .line 132
    .line 133
    .line 134
    move-result-object v8

    .line 135
    invoke-virtual {v13}, Landroid/os/Parcel;->recycle()V

    .line 136
    .line 137
    .line 138
    const-string v9, "c"

    .line 139
    .line 140
    invoke-virtual {v8, v9}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 141
    .line 142
    .line 143
    move-result-object v9

    .line 144
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 145
    .line 146
    .line 147
    new-instance v15, Li3/a;

    .line 148
    .line 149
    new-instance v12, Lha/jd;

    .line 150
    .line 151
    const/16 v13, 0xa

    .line 152
    .line 153
    invoke-direct {v12, v13}, Lha/jd;-><init>(I)V

    .line 154
    .line 155
    .line 156
    sget-object v13, Lu7/g0;->b:Lu7/e0;

    .line 157
    .line 158
    const-string v13, "initialCapacity"

    .line 159
    .line 160
    invoke-static {v7, v13}, Lu7/q;->c(ILjava/lang/String;)V

    .line 161
    .line 162
    .line 163
    new-array v7, v7, [Ljava/lang/Object;

    .line 164
    .line 165
    move-object v13, v7

    .line 166
    const/4 v7, 0x0

    .line 167
    :goto_0
    invoke-interface {v9}, Ljava/util/List;->size()I

    .line 168
    .line 169
    .line 170
    move-result v14

    .line 171
    if-ge v6, v14, :cond_6

    .line 172
    .line 173
    invoke-interface {v9, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 174
    .line 175
    .line 176
    move-result-object v14

    .line 177
    check-cast v14, Landroid/os/Bundle;

    .line 178
    .line 179
    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 180
    .line 181
    .line 182
    invoke-virtual {v12, v14}, Lha/jd;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    .line 184
    .line 185
    move-result-object v14

    .line 186
    move-object/from16 p3, v9

    .line 187
    .line 188
    array-length v9, v13

    .line 189
    move-object/from16 p4, v12

    .line 190
    .line 191
    add-int/lit8 v12, v7, 0x1

    .line 192
    .line 193
    invoke-static {v9, v12}, Lu7/a0;->f(II)I

    .line 194
    .line 195
    .line 196
    move-result v9

    .line 197
    array-length v4, v13

    .line 198
    if-gt v9, v4, :cond_5

    .line 199
    .line 200
    goto :goto_1

    .line 201
    :cond_5
    invoke-static {v13, v9}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 202
    .line 203
    .line 204
    move-result-object v4

    .line 205
    move-object v13, v4

    .line 206
    :goto_1
    aput-object v14, v13, v7

    .line 207
    .line 208
    const/4 v4, 0x1

    .line 209
    add-int/2addr v6, v4

    .line 210
    move-object/from16 v9, p3

    .line 211
    .line 212
    move v7, v12

    .line 213
    move-object/from16 v12, p4

    .line 214
    .line 215
    goto :goto_0

    .line 216
    :cond_6
    invoke-static {v7, v13}, Lu7/g0;->i(I[Ljava/lang/Object;)Lu7/y0;

    .line 217
    .line 218
    .line 219
    move-result-object v14

    .line 220
    const-string v4, "d"

    .line 221
    .line 222
    invoke-virtual {v8, v4}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    .line 223
    .line 224
    .line 225
    move-result-wide v12

    .line 226
    move-object v9, v15

    .line 227
    invoke-direct/range {v9 .. v14}, Li3/a;-><init>(JJLjava/util/List;)V

    .line 228
    .line 229
    .line 230
    invoke-virtual {v0}, Lx1/g;->g()V

    .line 231
    .line 232
    .line 233
    iget-object v0, v1, Lg2/f;->w:Lg2/a;

    .line 234
    .line 235
    invoke-interface {v0, v15, v2, v3}, Lg2/a;->b(Li3/a;J)Z

    .line 236
    .line 237
    .line 238
    move-result v6

    .line 239
    :goto_2
    iget-object v0, v1, Lg2/f;->w:Lg2/a;

    .line 240
    .line 241
    iget-wide v7, v1, Lg2/f;->M:J

    .line 242
    .line 243
    invoke-interface {v0, v7, v8}, Lg2/a;->a(J)J

    .line 244
    .line 245
    .line 246
    move-result-wide v7

    .line 247
    const-wide/high16 v9, -0x8000000000000000L

    .line 248
    .line 249
    cmp-long v0, v7, v9

    .line 250
    .line 251
    if-nez v0, :cond_7

    .line 252
    .line 253
    iget-boolean v0, v1, Lg2/f;->I:Z

    .line 254
    .line 255
    if-eqz v0, :cond_7

    .line 256
    .line 257
    if-nez v6, :cond_7

    .line 258
    .line 259
    const/4 v4, 0x1

    .line 260
    iput-boolean v4, v1, Lg2/f;->K:Z

    .line 261
    .line 262
    :cond_7
    cmp-long v0, v7, v9

    .line 263
    .line 264
    if-eqz v0, :cond_8

    .line 265
    .line 266
    cmp-long v0, v7, v2

    .line 267
    .line 268
    if-gtz v0, :cond_8

    .line 269
    .line 270
    const/4 v6, 0x1

    .line 271
    :cond_8
    if-eqz v6, :cond_a

    .line 272
    .line 273
    iget-object v0, v1, Lg2/f;->w:Lg2/a;

    .line 274
    .line 275
    invoke-interface {v0, v2, v3}, Lg2/a;->c(J)Lu7/g0;

    .line 276
    .line 277
    .line 278
    move-result-object v0

    .line 279
    iget-object v4, v1, Lg2/f;->w:Lg2/a;

    .line 280
    .line 281
    invoke-interface {v4, v2, v3}, Lg2/a;->d(J)J

    .line 282
    .line 283
    .line 284
    move-result-wide v6

    .line 285
    new-instance v4, Lt1/c;

    .line 286
    .line 287
    invoke-virtual {v1, v6, v7}, Lg2/f;->G(J)J

    .line 288
    .line 289
    .line 290
    invoke-direct {v4, v0}, Lt1/c;-><init>(Ljava/util/List;)V

    .line 291
    .line 292
    .line 293
    if-eqz v5, :cond_9

    .line 294
    .line 295
    const/4 v8, 0x1

    .line 296
    invoke-virtual {v5, v8, v4}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 297
    .line 298
    .line 299
    move-result-object v0

    .line 300
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 301
    .line 302
    .line 303
    goto :goto_3

    .line 304
    :cond_9
    invoke-virtual {v1, v4}, Lg2/f;->I(Lt1/c;)V

    .line 305
    .line 306
    .line 307
    :goto_3
    iget-object v0, v1, Lg2/f;->w:Lg2/a;

    .line 308
    .line 309
    invoke-interface {v0, v6, v7}, Lg2/a;->e(J)V

    .line 310
    .line 311
    .line 312
    :cond_a
    iput-wide v2, v1, Lg2/f;->M:J

    .line 313
    .line 314
    goto/16 :goto_10

    .line 315
    .line 316
    :cond_b
    invoke-virtual/range {p0 .. p0}, Lg2/f;->E()V

    .line 317
    .line 318
    .line 319
    iput-wide v2, v1, Lg2/f;->M:J

    .line 320
    .line 321
    iget-object v0, v1, Lg2/f;->D:Li3/c;

    .line 322
    .line 323
    const-string v4, "Subtitle decoding failed. streamFormat="

    .line 324
    .line 325
    const/4 v10, 0x0

    .line 326
    if-nez v0, :cond_d

    .line 327
    .line 328
    iget-object v0, v1, Lg2/f;->A:Li3/e;

    .line 329
    .line 330
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 331
    .line 332
    .line 333
    invoke-interface {v0, v2, v3}, Li3/e;->d(J)V

    .line 334
    .line 335
    .line 336
    :try_start_0
    iget-object v0, v1, Lg2/f;->A:Li3/e;

    .line 337
    .line 338
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 339
    .line 340
    .line 341
    invoke-interface {v0}, Lx1/d;->e()Ljava/lang/Object;

    .line 342
    .line 343
    .line 344
    move-result-object v0

    .line 345
    check-cast v0, Li3/c;

    .line 346
    .line 347
    iput-object v0, v1, Lg2/f;->D:Li3/c;
    :try_end_0
    .catch Li3/f; {:try_start_0 .. :try_end_0} :catch_0

    .line 348
    .line 349
    goto :goto_5

    .line 350
    :catch_0
    move-exception v0

    .line 351
    new-instance v2, Ljava/lang/StringBuilder;

    .line 352
    .line 353
    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 354
    .line 355
    .line 356
    iget-object v3, v1, Lg2/f;->L:Lr1/p;

    .line 357
    .line 358
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 359
    .line 360
    .line 361
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 362
    .line 363
    .line 364
    move-result-object v2

    .line 365
    invoke-static {v2, v0}, Lu1/a;->g(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 366
    .line 367
    .line 368
    new-instance v0, Lt1/c;

    .line 369
    .line 370
    sget-object v2, Lu7/y0;->e:Lu7/y0;

    .line 371
    .line 372
    iget-wide v3, v1, Lg2/f;->M:J

    .line 373
    .line 374
    invoke-virtual {v1, v3, v4}, Lg2/f;->G(J)J

    .line 375
    .line 376
    .line 377
    invoke-direct {v0, v2}, Lt1/c;-><init>(Ljava/util/List;)V

    .line 378
    .line 379
    .line 380
    if-eqz v5, :cond_c

    .line 381
    .line 382
    const/4 v2, 0x1

    .line 383
    invoke-virtual {v5, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 384
    .line 385
    .line 386
    move-result-object v0

    .line 387
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 388
    .line 389
    .line 390
    goto :goto_4

    .line 391
    :cond_c
    invoke-virtual {v1, v0}, Lg2/f;->I(Lt1/c;)V

    .line 392
    .line 393
    .line 394
    :goto_4
    invoke-virtual/range {p0 .. p0}, Lg2/f;->J()V

    .line 395
    .line 396
    .line 397
    iget-object v0, v1, Lg2/f;->A:Li3/e;

    .line 398
    .line 399
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 400
    .line 401
    .line 402
    invoke-interface {v0}, Lx1/d;->a()V

    .line 403
    .line 404
    .line 405
    iput-object v10, v1, Lg2/f;->A:Li3/e;

    .line 406
    .line 407
    iput v6, v1, Lg2/f;->z:I

    .line 408
    .line 409
    invoke-virtual/range {p0 .. p0}, Lg2/f;->H()V

    .line 410
    .line 411
    .line 412
    goto/16 :goto_10

    .line 413
    .line 414
    :cond_d
    :goto_5
    iget v0, v1, Ly1/a;->h:I

    .line 415
    .line 416
    const/4 v11, 0x2

    .line 417
    if-eq v0, v11, :cond_e

    .line 418
    .line 419
    goto/16 :goto_10

    .line 420
    .line 421
    :cond_e
    iget-object v0, v1, Lg2/f;->C:Li3/c;

    .line 422
    .line 423
    if-eqz v0, :cond_f

    .line 424
    .line 425
    invoke-virtual/range {p0 .. p0}, Lg2/f;->F()J

    .line 426
    .line 427
    .line 428
    move-result-wide v12

    .line 429
    const/4 v0, 0x0

    .line 430
    :goto_6
    cmp-long v14, v12, v2

    .line 431
    .line 432
    if-gtz v14, :cond_10

    .line 433
    .line 434
    iget v0, v1, Lg2/f;->E:I

    .line 435
    .line 436
    const/4 v12, 0x1

    .line 437
    add-int/2addr v0, v12

    .line 438
    iput v0, v1, Lg2/f;->E:I

    .line 439
    .line 440
    invoke-virtual/range {p0 .. p0}, Lg2/f;->F()J

    .line 441
    .line 442
    .line 443
    move-result-wide v12

    .line 444
    const/4 v0, 0x1

    .line 445
    goto :goto_6

    .line 446
    :cond_f
    const/4 v0, 0x0

    .line 447
    :cond_10
    iget-object v12, v1, Lg2/f;->D:Li3/c;

    .line 448
    .line 449
    if-eqz v12, :cond_14

    .line 450
    .line 451
    invoke-virtual {v12, v7}, Lab/a;->c(I)Z

    .line 452
    .line 453
    .line 454
    move-result v13

    .line 455
    if-eqz v13, :cond_12

    .line 456
    .line 457
    if-nez v0, :cond_14

    .line 458
    .line 459
    invoke-virtual/range {p0 .. p0}, Lg2/f;->F()J

    .line 460
    .line 461
    .line 462
    move-result-wide v12

    .line 463
    const-wide v14, 0x7fffffffffffffffL

    .line 464
    .line 465
    .line 466
    .line 467
    .line 468
    cmp-long v16, v12, v14

    .line 469
    .line 470
    if-nez v16, :cond_14

    .line 471
    .line 472
    iget v12, v1, Lg2/f;->z:I

    .line 473
    .line 474
    if-ne v12, v11, :cond_11

    .line 475
    .line 476
    invoke-virtual/range {p0 .. p0}, Lg2/f;->J()V

    .line 477
    .line 478
    .line 479
    iget-object v12, v1, Lg2/f;->A:Li3/e;

    .line 480
    .line 481
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 482
    .line 483
    .line 484
    invoke-interface {v12}, Lx1/d;->a()V

    .line 485
    .line 486
    .line 487
    iput-object v10, v1, Lg2/f;->A:Li3/e;

    .line 488
    .line 489
    iput v6, v1, Lg2/f;->z:I

    .line 490
    .line 491
    invoke-virtual/range {p0 .. p0}, Lg2/f;->H()V

    .line 492
    .line 493
    .line 494
    goto :goto_7

    .line 495
    :cond_11
    invoke-virtual/range {p0 .. p0}, Lg2/f;->J()V

    .line 496
    .line 497
    .line 498
    const/4 v12, 0x1

    .line 499
    iput-boolean v12, v1, Lg2/f;->K:Z

    .line 500
    .line 501
    goto :goto_7

    .line 502
    :cond_12
    iget-wide v13, v12, Lx1/h;->c:J

    .line 503
    .line 504
    cmp-long v15, v13, v2

    .line 505
    .line 506
    if-gtz v15, :cond_14

    .line 507
    .line 508
    iget-object v0, v1, Lg2/f;->C:Li3/c;

    .line 509
    .line 510
    if-eqz v0, :cond_13

    .line 511
    .line 512
    invoke-virtual {v0}, Lx1/h;->i()V

    .line 513
    .line 514
    .line 515
    :cond_13
    invoke-virtual {v12, v2, v3}, Li3/c;->d(J)I

    .line 516
    .line 517
    .line 518
    move-result v0

    .line 519
    iput v0, v1, Lg2/f;->E:I

    .line 520
    .line 521
    iput-object v12, v1, Lg2/f;->C:Li3/c;

    .line 522
    .line 523
    iput-object v10, v1, Lg2/f;->D:Li3/c;

    .line 524
    .line 525
    const/4 v0, 0x1

    .line 526
    :cond_14
    :goto_7
    if-eqz v0, :cond_19

    .line 527
    .line 528
    iget-object v0, v1, Lg2/f;->C:Li3/c;

    .line 529
    .line 530
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 531
    .line 532
    .line 533
    iget-object v0, v1, Lg2/f;->C:Li3/c;

    .line 534
    .line 535
    invoke-virtual {v0, v2, v3}, Li3/c;->d(J)I

    .line 536
    .line 537
    .line 538
    move-result v0

    .line 539
    if-eqz v0, :cond_17

    .line 540
    .line 541
    iget-object v12, v1, Lg2/f;->C:Li3/c;

    .line 542
    .line 543
    invoke-virtual {v12}, Li3/c;->j()I

    .line 544
    .line 545
    .line 546
    move-result v12

    .line 547
    if-nez v12, :cond_15

    .line 548
    .line 549
    goto :goto_8

    .line 550
    :cond_15
    const/4 v12, -0x1

    .line 551
    if-ne v0, v12, :cond_16

    .line 552
    .line 553
    iget-object v0, v1, Lg2/f;->C:Li3/c;

    .line 554
    .line 555
    invoke-virtual {v0}, Li3/c;->j()I

    .line 556
    .line 557
    .line 558
    move-result v12

    .line 559
    const/4 v13, 0x1

    .line 560
    sub-int/2addr v12, v13

    .line 561
    invoke-virtual {v0, v12}, Li3/c;->e(I)J

    .line 562
    .line 563
    .line 564
    move-result-wide v14

    .line 565
    goto :goto_9

    .line 566
    :cond_16
    const/4 v13, 0x1

    .line 567
    iget-object v12, v1, Lg2/f;->C:Li3/c;

    .line 568
    .line 569
    sub-int/2addr v0, v13

    .line 570
    invoke-virtual {v12, v0}, Li3/c;->e(I)J

    .line 571
    .line 572
    .line 573
    move-result-wide v14

    .line 574
    goto :goto_9

    .line 575
    :cond_17
    :goto_8
    iget-object v0, v1, Lg2/f;->C:Li3/c;

    .line 576
    .line 577
    iget-wide v14, v0, Lx1/h;->c:J

    .line 578
    .line 579
    :goto_9
    invoke-virtual {v1, v14, v15}, Lg2/f;->G(J)J

    .line 580
    .line 581
    .line 582
    new-instance v0, Lt1/c;

    .line 583
    .line 584
    iget-object v12, v1, Lg2/f;->C:Li3/c;

    .line 585
    .line 586
    invoke-virtual {v12, v2, v3}, Li3/c;->h(J)Ljava/util/List;

    .line 587
    .line 588
    .line 589
    move-result-object v2

    .line 590
    invoke-direct {v0, v2}, Lt1/c;-><init>(Ljava/util/List;)V

    .line 591
    .line 592
    .line 593
    if-eqz v5, :cond_18

    .line 594
    .line 595
    const/4 v2, 0x1

    .line 596
    invoke-virtual {v5, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 597
    .line 598
    .line 599
    move-result-object v0

    .line 600
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 601
    .line 602
    .line 603
    goto :goto_a

    .line 604
    :cond_18
    invoke-virtual {v1, v0}, Lg2/f;->I(Lt1/c;)V

    .line 605
    .line 606
    .line 607
    :cond_19
    :goto_a
    iget v0, v1, Lg2/f;->z:I

    .line 608
    .line 609
    if-ne v0, v11, :cond_1a

    .line 610
    .line 611
    goto/16 :goto_10

    .line 612
    .line 613
    :cond_1a
    :goto_b
    :try_start_1
    iget-boolean v0, v1, Lg2/f;->I:Z

    .line 614
    .line 615
    if-nez v0, :cond_22

    .line 616
    .line 617
    iget-object v0, v1, Lg2/f;->B:Li3/g;

    .line 618
    .line 619
    if-nez v0, :cond_1c

    .line 620
    .line 621
    iget-object v0, v1, Lg2/f;->A:Li3/e;

    .line 622
    .line 623
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 624
    .line 625
    .line 626
    invoke-interface {v0}, Lx1/d;->f()Ljava/lang/Object;

    .line 627
    .line 628
    .line 629
    move-result-object v0

    .line 630
    check-cast v0, Li3/g;

    .line 631
    .line 632
    if-nez v0, :cond_1b

    .line 633
    .line 634
    goto/16 :goto_10

    .line 635
    .line 636
    :cond_1b
    iput-object v0, v1, Lg2/f;->B:Li3/g;

    .line 637
    .line 638
    goto :goto_c

    .line 639
    :catch_1
    move-exception v0

    .line 640
    goto :goto_e

    .line 641
    :cond_1c
    :goto_c
    iget v2, v1, Lg2/f;->z:I

    .line 642
    .line 643
    const/4 v3, 0x1

    .line 644
    if-ne v2, v3, :cond_1d

    .line 645
    .line 646
    iput v7, v0, Lab/a;->b:I

    .line 647
    .line 648
    iget-object v2, v1, Lg2/f;->A:Li3/e;

    .line 649
    .line 650
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 651
    .line 652
    .line 653
    invoke-interface {v2, v0}, Lx1/d;->b(Li3/g;)V

    .line 654
    .line 655
    .line 656
    iput-object v10, v1, Lg2/f;->B:Li3/g;

    .line 657
    .line 658
    iput v11, v1, Lg2/f;->z:I

    .line 659
    .line 660
    goto/16 :goto_10

    .line 661
    .line 662
    :cond_1d
    invoke-virtual {v1, v9, v0, v6}, Ly1/a;->w(Lua/i8;Lx1/g;I)I

    .line 663
    .line 664
    .line 665
    move-result v2

    .line 666
    if-ne v2, v8, :cond_20

    .line 667
    .line 668
    invoke-virtual {v0, v7}, Lab/a;->c(I)Z

    .line 669
    .line 670
    .line 671
    move-result v2

    .line 672
    if-eqz v2, :cond_1e

    .line 673
    .line 674
    const/4 v2, 0x1

    .line 675
    iput-boolean v2, v1, Lg2/f;->I:Z

    .line 676
    .line 677
    iput-boolean v6, v1, Lg2/f;->y:Z

    .line 678
    .line 679
    goto :goto_d

    .line 680
    :cond_1e
    iget-object v2, v9, Lua/i8;->c:Ljava/lang/Object;

    .line 681
    .line 682
    check-cast v2, Lr1/p;

    .line 683
    .line 684
    if-nez v2, :cond_1f

    .line 685
    .line 686
    goto :goto_10

    .line 687
    :cond_1f
    iget-wide v2, v2, Lr1/p;->t:J

    .line 688
    .line 689
    iput-wide v2, v0, Li3/g;->j:J

    .line 690
    .line 691
    invoke-virtual {v0}, Lx1/g;->l()V

    .line 692
    .line 693
    .line 694
    iget-boolean v2, v1, Lg2/f;->y:Z

    .line 695
    .line 696
    const/4 v3, 0x1

    .line 697
    invoke-virtual {v0, v3}, Lab/a;->c(I)Z

    .line 698
    .line 699
    .line 700
    move-result v12

    .line 701
    xor-int/2addr v12, v3

    .line 702
    and-int/2addr v2, v12

    .line 703
    iput-boolean v2, v1, Lg2/f;->y:Z

    .line 704
    .line 705
    :goto_d
    iget-boolean v2, v1, Lg2/f;->y:Z

    .line 706
    .line 707
    if-nez v2, :cond_1a

    .line 708
    .line 709
    iget-object v2, v1, Lg2/f;->A:Li3/e;

    .line 710
    .line 711
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 712
    .line 713
    .line 714
    invoke-interface {v2, v0}, Lx1/d;->b(Li3/g;)V

    .line 715
    .line 716
    .line 717
    iput-object v10, v1, Lg2/f;->B:Li3/g;
    :try_end_1
    .catch Li3/f; {:try_start_1 .. :try_end_1} :catch_1

    .line 718
    .line 719
    goto :goto_b

    .line 720
    :cond_20
    const/4 v0, -0x3

    .line 721
    if-ne v2, v0, :cond_1a

    .line 722
    .line 723
    goto :goto_10

    .line 724
    :goto_e
    new-instance v2, Ljava/lang/StringBuilder;

    .line 725
    .line 726
    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 727
    .line 728
    .line 729
    iget-object v3, v1, Lg2/f;->L:Lr1/p;

    .line 730
    .line 731
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 732
    .line 733
    .line 734
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 735
    .line 736
    .line 737
    move-result-object v2

    .line 738
    invoke-static {v2, v0}, Lu1/a;->g(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 739
    .line 740
    .line 741
    new-instance v0, Lt1/c;

    .line 742
    .line 743
    sget-object v2, Lu7/y0;->e:Lu7/y0;

    .line 744
    .line 745
    iget-wide v3, v1, Lg2/f;->M:J

    .line 746
    .line 747
    invoke-virtual {v1, v3, v4}, Lg2/f;->G(J)J

    .line 748
    .line 749
    .line 750
    invoke-direct {v0, v2}, Lt1/c;-><init>(Ljava/util/List;)V

    .line 751
    .line 752
    .line 753
    if-eqz v5, :cond_21

    .line 754
    .line 755
    const/4 v2, 0x1

    .line 756
    invoke-virtual {v5, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 757
    .line 758
    .line 759
    move-result-object v0

    .line 760
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 761
    .line 762
    .line 763
    goto :goto_f

    .line 764
    :cond_21
    invoke-virtual {v1, v0}, Lg2/f;->I(Lt1/c;)V

    .line 765
    .line 766
    .line 767
    :goto_f
    invoke-virtual/range {p0 .. p0}, Lg2/f;->J()V

    .line 768
    .line 769
    .line 770
    iget-object v0, v1, Lg2/f;->A:Li3/e;

    .line 771
    .line 772
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 773
    .line 774
    .line 775
    invoke-interface {v0}, Lx1/d;->a()V

    .line 776
    .line 777
    .line 778
    iput-object v10, v1, Lg2/f;->A:Li3/e;

    .line 779
    .line 780
    iput v6, v1, Lg2/f;->z:I

    .line 781
    .line 782
    invoke-virtual/range {p0 .. p0}, Lg2/f;->H()V

    .line 783
    .line 784
    .line 785
    :cond_22
    :goto_10
    return-void
.end method
