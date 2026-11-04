.class public final Lf2/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lf2/c1;


# instance fields
.field public final a:Lf2/c1;

.field public b:Z

.field public final synthetic c:Lf2/c;


# direct methods
.method public constructor <init>(Lf2/c;Lf2/c1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lf2/b;->c:Lf2/c;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object p2, p0, Lf2/b;->a:Lf2/c1;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final isReady()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lf2/b;->c:Lf2/c;

    .line 2
    .line 3
    invoke-virtual {v0}, Lf2/c;->e()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lf2/b;->a:Lf2/c1;

    .line 10
    .line 11
    invoke-interface {v0}, Lf2/c1;->isReady()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    const/4 v0, 0x1

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const/4 v0, 0x0

    .line 20
    :goto_0
    return v0
.end method

.method public final j()V
    .locals 1

    .line 1
    iget-object v0, p0, Lf2/b;->a:Lf2/c1;

    .line 2
    .line 3
    invoke-interface {v0}, Lf2/c1;->j()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final m(J)I
    .locals 1

    .line 1
    iget-object v0, p0, Lf2/b;->c:Lf2/c;

    .line 2
    .line 3
    invoke-virtual {v0}, Lf2/c;->e()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    const/4 p1, -0x3

    .line 10
    return p1

    .line 11
    :cond_0
    iget-object v0, p0, Lf2/b;->a:Lf2/c1;

    .line 12
    .line 13
    invoke-interface {v0, p1, p2}, Lf2/c1;->m(J)I

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    return p1
.end method

.method public final n(Lua/i8;Lx1/g;I)I
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v2, p2

    .line 6
    .line 7
    iget-object v3, v0, Lf2/b;->c:Lf2/c;

    .line 8
    .line 9
    invoke-virtual {v3}, Lf2/c;->e()Z

    .line 10
    .line 11
    .line 12
    move-result v4

    .line 13
    const/4 v5, -0x3

    .line 14
    if-eqz v4, :cond_0

    .line 15
    .line 16
    return v5

    .line 17
    :cond_0
    iget-object v4, v0, Lf2/b;->a:Lf2/c1;

    .line 18
    .line 19
    const/4 v6, -0x5

    .line 20
    iget-boolean v7, v0, Lf2/b;->b:Z

    .line 21
    .line 22
    const/4 v8, 0x4

    .line 23
    const/4 v9, -0x4

    .line 24
    if-eqz v7, :cond_1

    .line 25
    .line 26
    iput v8, v2, Lab/a;->b:I

    .line 27
    .line 28
    return v9

    .line 29
    :cond_1
    invoke-virtual {v3}, Lf2/c;->p()J

    .line 30
    .line 31
    .line 32
    move-result-wide v10

    .line 33
    move/from16 v7, p3

    .line 34
    .line 35
    invoke-interface {v4, v1, v2, v7}, Lf2/c1;->n(Lua/i8;Lx1/g;I)I

    .line 36
    .line 37
    .line 38
    move-result v4

    .line 39
    iget-wide v12, v3, Lf2/c;->e:J

    .line 40
    .line 41
    const-wide v14, -0x7fffffffffffffffL    # -4.9E-324

    .line 42
    .line 43
    .line 44
    .line 45
    .line 46
    cmp-long v7, v12, v14

    .line 47
    .line 48
    if-eqz v7, :cond_2

    .line 49
    .line 50
    if-eq v4, v5, :cond_2

    .line 51
    .line 52
    iput-wide v14, v3, Lf2/c;->e:J

    .line 53
    .line 54
    :cond_2
    if-ne v4, v6, :cond_7

    .line 55
    .line 56
    iget-wide v4, v3, Lf2/c;->f:J

    .line 57
    .line 58
    iget-wide v2, v3, Lf2/c;->g:J

    .line 59
    .line 60
    iget-object v7, v1, Lua/i8;->c:Ljava/lang/Object;

    .line 61
    .line 62
    check-cast v7, Lr1/p;

    .line 63
    .line 64
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 65
    .line 66
    .line 67
    iget v8, v7, Lr1/p;->K:I

    .line 68
    .line 69
    iget v9, v7, Lr1/p;->J:I

    .line 70
    .line 71
    if-nez v9, :cond_3

    .line 72
    .line 73
    if-eqz v8, :cond_6

    .line 74
    .line 75
    :cond_3
    const-wide/16 v10, 0x0

    .line 76
    .line 77
    const/4 v12, 0x0

    .line 78
    cmp-long v13, v4, v10

    .line 79
    .line 80
    if-eqz v13, :cond_4

    .line 81
    .line 82
    const/4 v9, 0x0

    .line 83
    :cond_4
    const-wide/high16 v4, -0x8000000000000000L

    .line 84
    .line 85
    cmp-long v10, v2, v4

    .line 86
    .line 87
    if-eqz v10, :cond_5

    .line 88
    .line 89
    const/4 v8, 0x0

    .line 90
    :cond_5
    new-instance v2, Lr1/o;

    .line 91
    .line 92
    invoke-direct {v2, v7}, Lr1/o;-><init>(Lr1/p;)V

    .line 93
    .line 94
    .line 95
    iput v9, v2, Lr1/o;->I:I

    .line 96
    .line 97
    iput v8, v2, Lr1/o;->J:I

    .line 98
    .line 99
    new-instance v3, Lr1/p;

    .line 100
    .line 101
    invoke-direct {v3, v2}, Lr1/p;-><init>(Lr1/o;)V

    .line 102
    .line 103
    .line 104
    iput-object v3, v1, Lua/i8;->c:Ljava/lang/Object;

    .line 105
    .line 106
    :cond_6
    return v6

    .line 107
    :cond_7
    iget-wide v6, v3, Lf2/c;->g:J

    .line 108
    .line 109
    const-wide/high16 v12, -0x8000000000000000L

    .line 110
    .line 111
    cmp-long v1, v6, v12

    .line 112
    .line 113
    if-eqz v1, :cond_a

    .line 114
    .line 115
    if-ne v4, v9, :cond_8

    .line 116
    .line 117
    iget-wide v14, v2, Lx1/g;->g:J

    .line 118
    .line 119
    cmp-long v1, v14, v6

    .line 120
    .line 121
    if-gez v1, :cond_9

    .line 122
    .line 123
    :cond_8
    if-ne v4, v5, :cond_a

    .line 124
    .line 125
    cmp-long v1, v10, v12

    .line 126
    .line 127
    if-nez v1, :cond_a

    .line 128
    .line 129
    iget-boolean v1, v2, Lx1/g;->f:Z

    .line 130
    .line 131
    if-nez v1, :cond_a

    .line 132
    .line 133
    :cond_9
    invoke-virtual/range {p2 .. p2}, Lx1/g;->g()V

    .line 134
    .line 135
    .line 136
    iput v8, v2, Lab/a;->b:I

    .line 137
    .line 138
    const/4 v1, 0x1

    .line 139
    iput-boolean v1, v0, Lf2/b;->b:Z

    .line 140
    .line 141
    return v9

    .line 142
    :cond_a
    return v4
.end method
