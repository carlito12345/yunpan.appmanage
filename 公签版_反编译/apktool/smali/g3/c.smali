.class public final Lg3/c;
.super Lg3/i;
.source "SourceFile"


# instance fields
.field public n:Ll2/t;

.field public o:Lf2/y0;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lg3/i;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final b(Lu1/q;)J
    .locals 4

    .line 1
    iget-object v0, p1, Lu1/q;->a:[B

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    aget-byte v2, v0, v1

    .line 5
    .line 6
    const/4 v3, -0x1

    .line 7
    if-ne v2, v3, :cond_2

    .line 8
    .line 9
    const/4 v2, 0x2

    .line 10
    aget-byte v0, v0, v2

    .line 11
    .line 12
    and-int/lit16 v0, v0, 0xff

    .line 13
    .line 14
    const/4 v2, 0x4

    .line 15
    shr-int/2addr v0, v2

    .line 16
    const/4 v3, 0x6

    .line 17
    if-eq v0, v3, :cond_0

    .line 18
    .line 19
    const/4 v3, 0x7

    .line 20
    if-ne v0, v3, :cond_1

    .line 21
    .line 22
    :cond_0
    invoke-virtual {p1, v2}, Lu1/q;->P(I)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1}, Lu1/q;->J()J

    .line 26
    .line 27
    .line 28
    :cond_1
    invoke-static {v0, p1}, Ll2/b;->t(ILu1/q;)I

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    invoke-virtual {p1, v1}, Lu1/q;->O(I)V

    .line 33
    .line 34
    .line 35
    int-to-long v0, v0

    .line 36
    return-wide v0

    .line 37
    :cond_2
    const-wide/16 v0, -0x1

    .line 38
    .line 39
    return-wide v0
.end method

.method public final c(Lu1/q;JLa2/g1;)Z
    .locals 21

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v2, p4

    .line 6
    .line 7
    iget-object v3, v1, Lu1/q;->a:[B

    .line 8
    .line 9
    iget-object v4, v0, Lg3/c;->n:Ll2/t;

    .line 10
    .line 11
    const/4 v5, 0x1

    .line 12
    if-nez v4, :cond_0

    .line 13
    .line 14
    new-instance v4, Ll2/t;

    .line 15
    .line 16
    const/16 v6, 0x11

    .line 17
    .line 18
    invoke-direct {v4, v3, v6}, Ll2/t;-><init>([BI)V

    .line 19
    .line 20
    .line 21
    iput-object v4, v0, Lg3/c;->n:Ll2/t;

    .line 22
    .line 23
    iget v1, v1, Lu1/q;->c:I

    .line 24
    .line 25
    const/16 v6, 0x9

    .line 26
    .line 27
    invoke-static {v3, v6, v1}, Ljava/util/Arrays;->copyOfRange([BII)[B

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    const/4 v3, 0x0

    .line 32
    invoke-virtual {v4, v1, v3}, Ll2/t;->c([BLr1/d0;)Lr1/p;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    new-instance v3, Lr1/o;

    .line 37
    .line 38
    invoke-direct {v3, v1}, Lr1/o;-><init>(Lr1/p;)V

    .line 39
    .line 40
    .line 41
    const-string v1, "audio/ogg"

    .line 42
    .line 43
    invoke-static {v1}, Lr1/e0;->l(Ljava/lang/String;)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    iput-object v1, v3, Lr1/o;->m:Ljava/lang/String;

    .line 48
    .line 49
    new-instance v1, Lr1/p;

    .line 50
    .line 51
    invoke-direct {v1, v3}, Lr1/p;-><init>(Lr1/o;)V

    .line 52
    .line 53
    .line 54
    iput-object v1, v2, La2/g1;->b:Ljava/lang/Object;

    .line 55
    .line 56
    return v5

    .line 57
    :cond_0
    const/4 v6, 0x0

    .line 58
    aget-byte v3, v3, v6

    .line 59
    .line 60
    and-int/lit8 v7, v3, 0x7f

    .line 61
    .line 62
    const/4 v8, 0x3

    .line 63
    if-ne v7, v8, :cond_1

    .line 64
    .line 65
    invoke-static/range {p1 .. p1}, Ll2/b;->u(Lu1/q;)Lkf/d;

    .line 66
    .line 67
    .line 68
    move-result-object v1

    .line 69
    new-instance v2, Ll2/t;

    .line 70
    .line 71
    iget-wide v6, v4, Ll2/t;->j:J

    .line 72
    .line 73
    iget-object v3, v4, Ll2/t;->l:Lr1/d0;

    .line 74
    .line 75
    iget v10, v4, Ll2/t;->a:I

    .line 76
    .line 77
    iget v11, v4, Ll2/t;->b:I

    .line 78
    .line 79
    iget v12, v4, Ll2/t;->c:I

    .line 80
    .line 81
    iget v13, v4, Ll2/t;->d:I

    .line 82
    .line 83
    iget v14, v4, Ll2/t;->e:I

    .line 84
    .line 85
    iget v15, v4, Ll2/t;->g:I

    .line 86
    .line 87
    iget v4, v4, Ll2/t;->h:I

    .line 88
    .line 89
    move-object v9, v2

    .line 90
    move/from16 v16, v4

    .line 91
    .line 92
    move-wide/from16 v17, v6

    .line 93
    .line 94
    move-object/from16 v19, v1

    .line 95
    .line 96
    move-object/from16 v20, v3

    .line 97
    .line 98
    invoke-direct/range {v9 .. v20}, Ll2/t;-><init>(IIIIIIIJLkf/d;Lr1/d0;)V

    .line 99
    .line 100
    .line 101
    iput-object v2, v0, Lg3/c;->n:Ll2/t;

    .line 102
    .line 103
    new-instance v3, Lf2/y0;

    .line 104
    .line 105
    invoke-direct {v3, v2, v1}, Lf2/y0;-><init>(Ll2/t;Lkf/d;)V

    .line 106
    .line 107
    .line 108
    iput-object v3, v0, Lg3/c;->o:Lf2/y0;

    .line 109
    .line 110
    return v5

    .line 111
    :cond_1
    const/4 v1, -0x1

    .line 112
    if-ne v3, v1, :cond_3

    .line 113
    .line 114
    iget-object v1, v0, Lg3/c;->o:Lf2/y0;

    .line 115
    .line 116
    if-eqz v1, :cond_2

    .line 117
    .line 118
    move-wide/from16 v3, p2

    .line 119
    .line 120
    iput-wide v3, v1, Lf2/y0;->a:J

    .line 121
    .line 122
    iput-object v1, v2, La2/g1;->c:Ljava/lang/Object;

    .line 123
    .line 124
    :cond_2
    iget-object v1, v2, La2/g1;->b:Ljava/lang/Object;

    .line 125
    .line 126
    check-cast v1, Lr1/p;

    .line 127
    .line 128
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 129
    .line 130
    .line 131
    return v6

    .line 132
    :cond_3
    return v5
.end method

.method public final d(Z)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lg3/i;->d(Z)V

    .line 2
    .line 3
    .line 4
    if-eqz p1, :cond_0

    .line 5
    .line 6
    const/4 p1, 0x0

    .line 7
    iput-object p1, p0, Lg3/c;->n:Ll2/t;

    .line 8
    .line 9
    iput-object p1, p0, Lg3/c;->o:Lf2/y0;

    .line 10
    .line 11
    :cond_0
    return-void
.end method
