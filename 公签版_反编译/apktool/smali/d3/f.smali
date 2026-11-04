.class public final Ld3/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ll2/o;


# static fields
.field public static final k0:[B

.field public static final l0:[B

.field public static final m0:[B

.field public static final n0:[B

.field public static final o0:Ljava/util/UUID;

.field public static final p0:Ljava/util/Map;


# instance fields
.field public A:I

.field public B:J

.field public final C:Landroid/util/SparseArray;

.field public D:Z

.field public E:J

.field public F:I

.field public G:J

.field public H:J

.field public I:I

.field public J:Z

.field public K:J

.field public L:J

.field public M:J

.field public N:Z

.field public O:I

.field public P:J

.field public Q:J

.field public R:I

.field public S:I

.field public T:[I

.field public U:I

.field public V:I

.field public W:I

.field public X:I

.field public Y:Z

.field public Z:J

.field public final a:Ld3/b;

.field public a0:I

.field public final b:Ld3/h;

.field public b0:I

.field public final c:Landroid/util/SparseArray;

.field public c0:I

.field public final d:Z

.field public d0:Z

.field public final e:Z

.field public e0:Z

.field public final f:Li3/h;

.field public f0:Z

.field public final g:Lu1/q;

.field public g0:I

.field public final h:Lu1/q;

.field public h0:B

.field public final i:Lu1/q;

.field public i0:Z

.field public final j:Lu1/q;

.field public j0:Ll2/q;

.field public final k:Lu1/q;

.field public final l:Lu1/q;

.field public final m:Lu1/q;

.field public final n:Lu1/q;

.field public final o:Lu1/q;

.field public final p:Lu1/q;

.field public q:Ljava/nio/ByteBuffer;

.field public r:J

.field public s:J

.field public t:J

.field public u:J

.field public v:J

.field public w:Z

.field public x:Z

.field public y:Ld3/e;

.field public z:Z


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    const/16 v0, 0x20

    .line 2
    .line 3
    new-array v1, v0, [B

    .line 4
    .line 5
    fill-array-data v1, :array_0

    .line 6
    .line 7
    .line 8
    sput-object v1, Ld3/f;->k0:[B

    .line 9
    .line 10
    sget-object v1, Lu1/f0;->a:Ljava/lang/String;

    .line 11
    .line 12
    sget-object v1, Lj$/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 13
    .line 14
    const-string v2, "Format: Start, End, ReadOrder, Layer, Style, Name, MarginL, MarginR, MarginV, Effect, Text"

    .line 15
    .line 16
    invoke-virtual {v2, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    sput-object v1, Ld3/f;->l0:[B

    .line 21
    .line 22
    new-array v0, v0, [B

    .line 23
    .line 24
    fill-array-data v0, :array_1

    .line 25
    .line 26
    .line 27
    sput-object v0, Ld3/f;->m0:[B

    .line 28
    .line 29
    const/16 v0, 0x26

    .line 30
    .line 31
    new-array v0, v0, [B

    .line 32
    .line 33
    fill-array-data v0, :array_2

    .line 34
    .line 35
    .line 36
    sput-object v0, Ld3/f;->n0:[B

    .line 37
    .line 38
    new-instance v0, Ljava/util/UUID;

    .line 39
    .line 40
    const-wide v1, 0x100000000001000L

    .line 41
    .line 42
    .line 43
    .line 44
    .line 45
    const-wide v3, -0x7fffff55ffc7648fL    # -3.607411173533E-312

    .line 46
    .line 47
    .line 48
    .line 49
    .line 50
    invoke-direct {v0, v1, v2, v3, v4}, Ljava/util/UUID;-><init>(JJ)V

    .line 51
    .line 52
    .line 53
    sput-object v0, Ld3/f;->o0:Ljava/util/UUID;

    .line 54
    .line 55
    new-instance v0, Ljava/util/HashMap;

    .line 56
    .line 57
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 58
    .line 59
    .line 60
    const/4 v1, 0x0

    .line 61
    const-string v2, "htc_video_rotA-000"

    .line 62
    .line 63
    const/16 v3, 0x5a

    .line 64
    .line 65
    const-string v4, "htc_video_rotA-090"

    .line 66
    .line 67
    invoke-static {v1, v0, v2, v3, v4}, Lg/b;->q(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    .line 68
    .line 69
    .line 70
    const/16 v1, 0xb4

    .line 71
    .line 72
    const-string v2, "htc_video_rotA-180"

    .line 73
    .line 74
    const/16 v3, 0x10e

    .line 75
    .line 76
    const-string v4, "htc_video_rotA-270"

    .line 77
    .line 78
    invoke-static {v1, v0, v2, v3, v4}, Lg/b;->q(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    .line 79
    .line 80
    .line 81
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    sput-object v0, Ld3/f;->p0:Ljava/util/Map;

    .line 86
    .line 87
    return-void

    .line 88
    nop

    .line 89
    :array_0
    .array-data 1
        0x31t
        0xat
        0x30t
        0x30t
        0x3at
        0x30t
        0x30t
        0x3at
        0x30t
        0x30t
        0x2ct
        0x30t
        0x30t
        0x30t
        0x20t
        0x2dt
        0x2dt
        0x3et
        0x20t
        0x30t
        0x30t
        0x3at
        0x30t
        0x30t
        0x3at
        0x30t
        0x30t
        0x2ct
        0x30t
        0x30t
        0x30t
        0xat
    .end array-data

    .line 90
    .line 91
    .line 92
    .line 93
    .line 94
    .line 95
    .line 96
    .line 97
    .line 98
    .line 99
    .line 100
    .line 101
    .line 102
    .line 103
    .line 104
    .line 105
    .line 106
    .line 107
    .line 108
    .line 109
    :array_1
    .array-data 1
        0x44t
        0x69t
        0x61t
        0x6ct
        0x6ft
        0x67t
        0x75t
        0x65t
        0x3at
        0x20t
        0x30t
        0x3at
        0x30t
        0x30t
        0x3at
        0x30t
        0x30t
        0x3at
        0x30t
        0x30t
        0x2ct
        0x30t
        0x3at
        0x30t
        0x30t
        0x3at
        0x30t
        0x30t
        0x3at
        0x30t
        0x30t
        0x2ct
    .end array-data

    .line 110
    .line 111
    .line 112
    .line 113
    .line 114
    .line 115
    .line 116
    .line 117
    .line 118
    .line 119
    .line 120
    .line 121
    .line 122
    .line 123
    .line 124
    .line 125
    .line 126
    .line 127
    .line 128
    .line 129
    :array_2
    .array-data 1
        0x57t
        0x45t
        0x42t
        0x56t
        0x54t
        0x54t
        0xat
        0xat
        0x30t
        0x30t
        0x3at
        0x30t
        0x30t
        0x3at
        0x30t
        0x30t
        0x2et
        0x30t
        0x30t
        0x30t
        0x20t
        0x2dt
        0x2dt
        0x3et
        0x20t
        0x30t
        0x30t
        0x3at
        0x30t
        0x30t
        0x3at
        0x30t
        0x30t
        0x2et
        0x30t
        0x30t
        0x30t
        0xat
    .end array-data
.end method

.method public constructor <init>(Li3/h;I)V
    .locals 6

    .line 1
    new-instance v0, Ld3/b;

    .line 2
    .line 3
    invoke-direct {v0}, Ld3/b;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    const-wide/16 v1, -0x1

    .line 10
    .line 11
    iput-wide v1, p0, Ld3/f;->s:J

    .line 12
    .line 13
    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    .line 14
    .line 15
    .line 16
    .line 17
    .line 18
    iput-wide v3, p0, Ld3/f;->t:J

    .line 19
    .line 20
    iput-wide v3, p0, Ld3/f;->u:J

    .line 21
    .line 22
    iput-wide v3, p0, Ld3/f;->v:J

    .line 23
    .line 24
    iput-wide v3, p0, Ld3/f;->E:J

    .line 25
    .line 26
    const/4 v5, -0x1

    .line 27
    iput v5, p0, Ld3/f;->F:I

    .line 28
    .line 29
    iput-wide v1, p0, Ld3/f;->G:J

    .line 30
    .line 31
    iput-wide v1, p0, Ld3/f;->H:J

    .line 32
    .line 33
    iput v5, p0, Ld3/f;->I:I

    .line 34
    .line 35
    iput-wide v1, p0, Ld3/f;->K:J

    .line 36
    .line 37
    iput-wide v1, p0, Ld3/f;->L:J

    .line 38
    .line 39
    iput-wide v3, p0, Ld3/f;->M:J

    .line 40
    .line 41
    iput-object v0, p0, Ld3/f;->a:Ld3/b;

    .line 42
    .line 43
    new-instance v1, La1/i;

    .line 44
    .line 45
    const/16 v2, 0x10

    .line 46
    .line 47
    invoke-direct {v1, v2, p0}, La1/i;-><init>(ILjava/lang/Object;)V

    .line 48
    .line 49
    .line 50
    iput-object v1, v0, Ld3/b;->d:La1/i;

    .line 51
    .line 52
    iput-object p1, p0, Ld3/f;->f:Li3/h;

    .line 53
    .line 54
    new-instance p1, Landroid/util/SparseArray;

    .line 55
    .line 56
    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    .line 57
    .line 58
    .line 59
    iput-object p1, p0, Ld3/f;->C:Landroid/util/SparseArray;

    .line 60
    .line 61
    and-int/lit8 p1, p2, 0x1

    .line 62
    .line 63
    const/4 v0, 0x1

    .line 64
    const/4 v1, 0x0

    .line 65
    if-nez p1, :cond_0

    .line 66
    .line 67
    const/4 p1, 0x1

    .line 68
    goto :goto_0

    .line 69
    :cond_0
    const/4 p1, 0x0

    .line 70
    :goto_0
    iput-boolean p1, p0, Ld3/f;->d:Z

    .line 71
    .line 72
    and-int/lit8 p1, p2, 0x2

    .line 73
    .line 74
    if-nez p1, :cond_1

    .line 75
    .line 76
    const/4 v1, 0x1

    .line 77
    :cond_1
    iput-boolean v1, p0, Ld3/f;->e:Z

    .line 78
    .line 79
    new-instance p1, Ld3/h;

    .line 80
    .line 81
    invoke-direct {p1}, Ld3/h;-><init>()V

    .line 82
    .line 83
    .line 84
    iput-object p1, p0, Ld3/f;->b:Ld3/h;

    .line 85
    .line 86
    new-instance p1, Landroid/util/SparseArray;

    .line 87
    .line 88
    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    .line 89
    .line 90
    .line 91
    iput-object p1, p0, Ld3/f;->c:Landroid/util/SparseArray;

    .line 92
    .line 93
    new-instance p1, Lu1/q;

    .line 94
    .line 95
    const/4 p2, 0x4

    .line 96
    invoke-direct {p1, p2}, Lu1/q;-><init>(I)V

    .line 97
    .line 98
    .line 99
    iput-object p1, p0, Ld3/f;->i:Lu1/q;

    .line 100
    .line 101
    new-instance p1, Lu1/q;

    .line 102
    .line 103
    invoke-static {p2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    .line 104
    .line 105
    .line 106
    move-result-object v1

    .line 107
    invoke-virtual {v1, v5}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 108
    .line 109
    .line 110
    move-result-object v1

    .line 111
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    .line 112
    .line 113
    .line 114
    move-result-object v1

    .line 115
    invoke-direct {p1, v1}, Lu1/q;-><init>([B)V

    .line 116
    .line 117
    .line 118
    iput-object p1, p0, Ld3/f;->j:Lu1/q;

    .line 119
    .line 120
    new-instance p1, Lu1/q;

    .line 121
    .line 122
    invoke-direct {p1, p2}, Lu1/q;-><init>(I)V

    .line 123
    .line 124
    .line 125
    iput-object p1, p0, Ld3/f;->k:Lu1/q;

    .line 126
    .line 127
    new-instance p1, Lu1/q;

    .line 128
    .line 129
    sget-object v1, Lv1/o;->a:[B

    .line 130
    .line 131
    invoke-direct {p1, v1}, Lu1/q;-><init>([B)V

    .line 132
    .line 133
    .line 134
    iput-object p1, p0, Ld3/f;->g:Lu1/q;

    .line 135
    .line 136
    new-instance p1, Lu1/q;

    .line 137
    .line 138
    invoke-direct {p1, p2}, Lu1/q;-><init>(I)V

    .line 139
    .line 140
    .line 141
    iput-object p1, p0, Ld3/f;->h:Lu1/q;

    .line 142
    .line 143
    new-instance p1, Lu1/q;

    .line 144
    .line 145
    invoke-direct {p1}, Lu1/q;-><init>()V

    .line 146
    .line 147
    .line 148
    iput-object p1, p0, Ld3/f;->l:Lu1/q;

    .line 149
    .line 150
    new-instance p1, Lu1/q;

    .line 151
    .line 152
    invoke-direct {p1}, Lu1/q;-><init>()V

    .line 153
    .line 154
    .line 155
    iput-object p1, p0, Ld3/f;->m:Lu1/q;

    .line 156
    .line 157
    new-instance p1, Lu1/q;

    .line 158
    .line 159
    const/16 p2, 0x8

    .line 160
    .line 161
    invoke-direct {p1, p2}, Lu1/q;-><init>(I)V

    .line 162
    .line 163
    .line 164
    iput-object p1, p0, Ld3/f;->n:Lu1/q;

    .line 165
    .line 166
    new-instance p1, Lu1/q;

    .line 167
    .line 168
    invoke-direct {p1}, Lu1/q;-><init>()V

    .line 169
    .line 170
    .line 171
    iput-object p1, p0, Ld3/f;->o:Lu1/q;

    .line 172
    .line 173
    new-instance p1, Lu1/q;

    .line 174
    .line 175
    invoke-direct {p1}, Lu1/q;-><init>()V

    .line 176
    .line 177
    .line 178
    iput-object p1, p0, Ld3/f;->p:Lu1/q;

    .line 179
    .line 180
    new-array p1, v0, [I

    .line 181
    .line 182
    iput-object p1, p0, Ld3/f;->T:[I

    .line 183
    .line 184
    iput-boolean v0, p0, Ld3/f;->x:Z

    .line 185
    .line 186
    return-void
.end method

.method public static k(JJLjava/lang/String;)[B
    .locals 10

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    .line 4
    .line 5
    .line 6
    .line 7
    .line 8
    cmp-long v4, p0, v2

    .line 9
    .line 10
    if-eqz v4, :cond_0

    .line 11
    .line 12
    const/4 v2, 0x1

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 v2, 0x0

    .line 15
    :goto_0
    invoke-static {v2}, La9/o;->k(Z)V

    .line 16
    .line 17
    .line 18
    const-wide v2, 0xd693a400L

    .line 19
    .line 20
    .line 21
    .line 22
    .line 23
    div-long v4, p0, v2

    .line 24
    .line 25
    long-to-int v5, v4

    .line 26
    int-to-long v6, v5

    .line 27
    mul-long v6, v6, v2

    .line 28
    .line 29
    sub-long/2addr p0, v6

    .line 30
    const-wide/32 v2, 0x3938700

    .line 31
    .line 32
    .line 33
    div-long v6, p0, v2

    .line 34
    .line 35
    long-to-int v4, v6

    .line 36
    int-to-long v6, v4

    .line 37
    mul-long v6, v6, v2

    .line 38
    .line 39
    sub-long/2addr p0, v6

    .line 40
    const-wide/32 v2, 0xf4240

    .line 41
    .line 42
    .line 43
    div-long v6, p0, v2

    .line 44
    .line 45
    long-to-int v7, v6

    .line 46
    int-to-long v8, v7

    .line 47
    mul-long v8, v8, v2

    .line 48
    .line 49
    sub-long/2addr p0, v8

    .line 50
    div-long/2addr p0, p2

    .line 51
    long-to-int p1, p0

    .line 52
    sget-object p0, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 53
    .line 54
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 55
    .line 56
    .line 57
    move-result-object p2

    .line 58
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 59
    .line 60
    .line 61
    move-result-object p3

    .line 62
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 63
    .line 64
    .line 65
    move-result-object v2

    .line 66
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    const/4 v3, 0x4

    .line 71
    new-array v3, v3, [Ljava/lang/Object;

    .line 72
    .line 73
    aput-object p2, v3, v0

    .line 74
    .line 75
    aput-object p3, v3, v1

    .line 76
    .line 77
    const/4 p2, 0x2

    .line 78
    aput-object v2, v3, p2

    .line 79
    .line 80
    const/4 p2, 0x3

    .line 81
    aput-object p1, v3, p2

    .line 82
    .line 83
    invoke-static {p0, p4, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object p0

    .line 87
    sget-object p1, Lu1/f0;->a:Ljava/lang/String;

    .line 88
    .line 89
    sget-object p1, Lj$/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 90
    .line 91
    invoke-virtual {p0, p1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 92
    .line 93
    .line 94
    move-result-object p0

    .line 95
    return-object p0
.end method


# virtual methods
.method public final a()V
    .locals 0

    .line 1
    return-void
.end method

.method public final b()Ll2/o;
    .locals 0

    .line 1
    return-object p0
.end method

.method public final c(Ll2/q;)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Ld3/f;->e:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Landroidx/room/i;

    .line 6
    .line 7
    iget-object v1, p0, Ld3/f;->f:Li3/h;

    .line 8
    .line 9
    invoke-direct {v0, p1, v1}, Landroidx/room/i;-><init>(Ll2/q;Li3/h;)V

    .line 10
    .line 11
    .line 12
    move-object p1, v0

    .line 13
    :cond_0
    iput-object p1, p0, Ld3/f;->j0:Ll2/q;

    .line 14
    .line 15
    return-void
.end method

.method public final d(Ll2/p;Ldd/c;)I
    .locals 49

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    .line 1
    const-string v2, "A_MPEG/L2"

    const-string v3, "A_VORBIS"

    const-string v4, "A_TRUEHD"

    const-string v5, "A_MS/ACM"

    const-string v6, "V_MPEG4/ISO/SP"

    const-string v7, "V_MPEG4/ISO/AP"

    const-string v9, "A_OPUS"

    const/4 v12, 0x0

    iput-boolean v12, v0, Ld3/f;->N:Z

    const/16 v21, 0x1

    :goto_0
    if-eqz v21, :cond_c0

    .line 2
    iget-boolean v8, v0, Ld3/f;->N:Z

    if-nez v8, :cond_c0

    .line 3
    iget-object v8, v0, Ld3/f;->a:Ld3/b;

    iget-object v11, v8, Ld3/b;->d:La1/i;

    .line 4
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    :goto_1
    iget-object v11, v8, Ld3/b;->b:Ljava/util/ArrayDeque;

    invoke-virtual {v11}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v21

    move-object/from16 v10, v21

    check-cast v10, Ld3/a;

    const v15, 0x1549a966

    if-eqz v10, :cond_a8

    .line 6
    move-object/from16 v21, p1

    check-cast v21, Ll2/l;

    invoke-virtual/range {v21 .. v21}, Ll2/l;->getPosition()J

    move-result-wide v23

    iget-wide v12, v10, Ld3/a;->b:J

    cmp-long v10, v23, v12

    if-ltz v10, :cond_a8

    .line 7
    iget-object v8, v8, Ld3/b;->d:La1/i;

    invoke-virtual {v11}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ld3/a;

    .line 8
    iget v10, v10, Ld3/a;->a:I

    .line 9
    iget-object v8, v8, La1/i;->b:Ljava/lang/Object;

    check-cast v8, Ld3/f;

    .line 10
    iget-object v11, v8, Ld3/f;->j0:Ll2/q;

    .line 11
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    iget-object v11, v8, Ld3/f;->c:Landroid/util/SparseArray;

    const/16 v12, 0xa0

    const-wide/16 v23, 0x0

    if-eq v10, v12, :cond_a1

    const/16 v12, 0xae

    const-string v13, "video/webm"

    if-eq v10, v12, :cond_2d

    iget-object v12, v8, Ld3/f;->C:Landroid/util/SparseArray;

    const/16 v14, 0xb7

    const-wide v35, -0x7fffffffffffffffL    # -4.9E-324

    if-eq v10, v14, :cond_2b

    const/16 v14, 0x4dbb

    if-eq v10, v14, :cond_29

    const/16 v14, 0x6240

    if-eq v10, v14, :cond_27

    const/16 v13, 0x6d80

    if-eq v10, v13, :cond_25

    if-eq v10, v15, :cond_23

    const v13, 0x1654ae6b

    if-eq v10, v13, :cond_14

    const v13, 0x1c53bb6b

    if-eq v10, v13, :cond_1

    :cond_0
    move-object/from16 v40, v2

    move-object/from16 v39, v3

    move-object/from16 v22, v4

    move-object/from16 v35, v5

    move-object v10, v7

    move-object v3, v9

    const/4 v1, 0x0

    const/16 v2, 0x19

    const/16 v18, 0x14

    move-object v9, v6

    goto/16 :goto_4e

    .line 13
    :cond_1
    iget-boolean v10, v8, Ld3/f;->z:Z

    if-nez v10, :cond_0

    const/4 v10, 0x0

    .line 14
    :goto_2
    invoke-virtual {v12}, Landroid/util/SparseArray;->size()I

    move-result v13

    if-ge v10, v13, :cond_2

    .line 15
    invoke-virtual {v12, v10}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/List;

    invoke-interface {v13}, Ljava/util/List;->isEmpty()Z

    move-result v13

    if-nez v13, :cond_5

    .line 16
    iget-wide v13, v8, Ld3/f;->v:J

    cmp-long v10, v13, v35

    if-nez v10, :cond_3

    :cond_2
    move-object/from16 v37, v6

    move-object/from16 v38, v7

    const/4 v0, 0x1

    goto :goto_4

    :cond_3
    const/4 v10, 0x0

    .line 17
    :goto_3
    invoke-virtual {v12}, Landroid/util/SparseArray;->size()I

    move-result v13

    if-ge v10, v13, :cond_4

    .line 18
    invoke-virtual {v12, v10}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/List;

    invoke-static {v13}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    const/4 v13, 0x1

    add-int/2addr v10, v13

    goto :goto_3

    .line 19
    :cond_4
    new-instance v10, Ld3/d;

    iget-wide v13, v8, Ld3/f;->v:J

    iget v15, v8, Ld3/f;->I:I

    iget-wide v0, v8, Ld3/f;->s:J

    move-object/from16 v37, v6

    move-object/from16 v38, v7

    iget-wide v6, v8, Ld3/f;->r:J

    move-object/from16 v26, v10

    move-object/from16 v27, v12

    move-wide/from16 v28, v13

    move/from16 v30, v15

    move-wide/from16 v31, v0

    move-wide/from16 v33, v6

    invoke-direct/range {v26 .. v34}, Ld3/d;-><init>(Landroid/util/SparseArray;JIJJ)V

    .line 20
    iget-object v0, v8, Ld3/f;->j0:Ll2/q;

    invoke-interface {v0, v10}, Ll2/q;->s(Ll2/c0;)V

    const/4 v0, 0x1

    goto :goto_5

    :cond_5
    move-object/from16 v37, v6

    move-object/from16 v38, v7

    const/4 v0, 0x1

    add-int/2addr v10, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    goto :goto_2

    .line 21
    :goto_4
    iget-object v1, v8, Ld3/f;->j0:Ll2/q;

    new-instance v6, Ll2/s;

    iget-wide v13, v8, Ld3/f;->v:J

    invoke-direct {v6, v13, v14}, Ll2/s;-><init>(J)V

    invoke-interface {v1, v6}, Ll2/q;->s(Ll2/c0;)V

    .line 22
    :goto_5
    iput-boolean v0, v8, Ld3/f;->z:Z

    const/4 v0, 0x0

    .line 23
    iput-boolean v0, v8, Ld3/f;->D:Z

    const/4 v0, 0x0

    .line 24
    :goto_6
    invoke-virtual {v11}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_12

    .line 25
    invoke-virtual {v11, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ld3/e;

    .line 26
    iget-wide v6, v8, Ld3/f;->v:J

    iget-wide v13, v8, Ld3/f;->s:J

    move-object/from16 v33, v4

    move-object/from16 v34, v5

    iget-wide v4, v8, Ld3/f;->r:J

    .line 27
    iget v10, v1, Ld3/e;->e:I

    const/4 v15, 0x2

    if-eq v10, v15, :cond_7

    :cond_6
    :goto_7
    move/from16 v32, v0

    move-object/from16 v40, v2

    move-object/from16 v39, v3

    move-object/from16 v41, v8

    move-object/from16 v31, v9

    move-object/from16 v21, v11

    move-object/from16 v28, v12

    move-object v2, v1

    goto/16 :goto_f

    .line 28
    :cond_7
    iget v10, v1, Ld3/e;->d:I

    invoke-virtual {v12, v10}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    if-eqz v10, :cond_6

    .line 29
    invoke-interface {v10}, Ljava/util/List;->isEmpty()Z

    move-result v15

    if-eqz v15, :cond_8

    goto :goto_7

    .line 30
    :cond_8
    invoke-interface {v10}, Ljava/util/List;->isEmpty()Z

    move-result v15

    if-eqz v15, :cond_9

    move/from16 v32, v0

    move-object/from16 v43, v1

    move-object/from16 v40, v2

    move-object/from16 v39, v3

    move-object/from16 v41, v8

    move-object/from16 v31, v9

    move-object/from16 v21, v11

    move-object/from16 v28, v12

    :goto_8
    move-wide/from16 v0, v35

    goto/16 :goto_d

    .line 31
    :cond_9
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v15

    move-object/from16 v39, v3

    const/16 v3, 0x14

    invoke-static {v15, v3}, Ljava/lang/Math;->min(II)I

    move-result v15

    const-wide/16 v25, 0x0

    move-object/from16 v40, v2

    const/4 v2, 0x0

    const/4 v3, -0x1

    :goto_9
    if-ge v2, v15, :cond_d

    .line 32
    invoke-interface {v10, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v21

    move/from16 v27, v15

    move-object/from16 v15, v21

    check-cast v15, Ld3/c;

    move-object/from16 v21, v11

    move-object/from16 v28, v12

    .line 33
    iget-wide v11, v15, Ld3/c;->a:J

    const-wide/32 v29, 0x989680

    cmp-long v31, v11, v29

    if-lez v31, :cond_a

    move/from16 v32, v0

    move-object/from16 v43, v1

    move-object/from16 v41, v8

    move-object/from16 v31, v9

    move-object/from16 v42, v10

    :goto_a
    const/4 v0, -0x1

    goto/16 :goto_c

    .line 34
    :cond_a
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v11

    const/4 v12, 0x1

    sub-int/2addr v11, v12

    move-wide/from16 v29, v13

    iget-wide v12, v15, Ld3/c;->a:J

    move-object/from16 v41, v8

    move-object v14, v9

    iget-wide v8, v15, Ld3/c;->c:J

    move-object/from16 v31, v14

    iget-wide v14, v15, Ld3/c;->b:J

    if-ge v2, v11, :cond_b

    move/from16 v32, v0

    const/4 v11, 0x1

    add-int/lit8 v0, v2, 0x1

    .line 35
    invoke-interface {v10, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ld3/c;

    move-object/from16 v42, v10

    .line 36
    iget-wide v10, v0, Ld3/c;->b:J

    move-object/from16 v43, v1

    move/from16 v44, v2

    .line 37
    iget-wide v1, v0, Ld3/c;->c:J

    add-long/2addr v10, v1

    add-long/2addr v14, v8

    sub-long/2addr v10, v14

    .line 38
    iget-wide v0, v0, Ld3/c;->a:J

    sub-long/2addr v0, v12

    goto :goto_b

    :cond_b
    move/from16 v32, v0

    move-object/from16 v43, v1

    move/from16 v44, v2

    move-object/from16 v42, v10

    add-long v0, v29, v4

    add-long/2addr v14, v8

    sub-long v10, v0, v14

    sub-long v0, v6, v12

    :goto_b
    cmp-long v2, v0, v23

    if-lez v2, :cond_c

    long-to-double v8, v10

    long-to-double v0, v0

    .line 39
    invoke-static {v8, v9}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v8, v0

    cmpl-double v0, v8, v25

    if-lez v0, :cond_c

    move-wide/from16 v25, v8

    move/from16 v3, v44

    :cond_c
    const/4 v0, 0x1

    add-int/lit8 v2, v44, 0x1

    move-object/from16 v11, v21

    move/from16 v15, v27

    move-object/from16 v12, v28

    move-wide/from16 v13, v29

    move-object/from16 v9, v31

    move/from16 v0, v32

    move-object/from16 v8, v41

    move-object/from16 v10, v42

    move-object/from16 v1, v43

    goto/16 :goto_9

    :cond_d
    move/from16 v32, v0

    move-object/from16 v43, v1

    move-object/from16 v41, v8

    move-object/from16 v31, v9

    move-object/from16 v42, v10

    move-object/from16 v21, v11

    move-object/from16 v28, v12

    goto :goto_a

    :goto_c
    if-ne v3, v0, :cond_e

    goto/16 :goto_8

    :cond_e
    move-object/from16 v10, v42

    .line 40
    invoke-interface {v10, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ld3/c;

    .line 41
    iget-wide v0, v0, Ld3/c;->a:J

    :goto_d
    cmp-long v2, v0, v35

    if-eqz v2, :cond_10

    move-object/from16 v2, v43

    .line 42
    iget-object v3, v2, Ld3/e;->b0:Lr1/p;

    .line 43
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 44
    new-instance v4, Lu2/c;

    invoke-direct {v4, v0, v1}, Lu2/c;-><init>(J)V

    .line 45
    iget-object v0, v3, Lr1/p;->l:Lr1/d0;

    if-nez v0, :cond_f

    .line 46
    new-instance v0, Lr1/d0;

    const/4 v1, 0x1

    new-array v3, v1, [Lr1/c0;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-direct {v0, v3}, Lr1/d0;-><init>([Lr1/c0;)V

    goto :goto_e

    :cond_f
    const/4 v1, 0x1

    const/4 v5, 0x0

    .line 47
    new-array v3, v1, [Lr1/c0;

    aput-object v4, v3, v5

    invoke-virtual {v0, v3}, Lr1/d0;->a([Lr1/c0;)Lr1/d0;

    move-result-object v0

    .line 48
    :goto_e
    iget-object v1, v2, Ld3/e;->b0:Lr1/p;

    invoke-virtual {v1}, Lr1/p;->a()Lr1/o;

    move-result-object v1

    .line 49
    iput-object v0, v1, Lr1/o;->k:Lr1/d0;

    .line 50
    invoke-virtual {v1}, Lr1/o;->a()Lr1/p;

    move-result-object v0

    iput-object v0, v2, Ld3/e;->b0:Lr1/p;

    goto :goto_f

    :cond_10
    move-object/from16 v2, v43

    .line 51
    :goto_f
    iget-boolean v0, v2, Ld3/e;->W:Z

    if-nez v0, :cond_11

    .line 52
    iget-object v0, v2, Ld3/e;->a0:Ll2/j0;

    .line 53
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 54
    iget-object v0, v2, Ld3/e;->a0:Ll2/j0;

    iget-object v1, v2, Ld3/e;->b0:Lr1/p;

    .line 55
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 56
    invoke-interface {v0, v1}, Ll2/j0;->g(Lr1/p;)V

    :cond_11
    const/4 v0, 0x1

    add-int/lit8 v1, v32, 0x1

    move v0, v1

    move-object/from16 v11, v21

    move-object/from16 v12, v28

    move-object/from16 v9, v31

    move-object/from16 v4, v33

    move-object/from16 v5, v34

    move-object/from16 v3, v39

    move-object/from16 v2, v40

    move-object/from16 v8, v41

    goto/16 :goto_6

    :cond_12
    move-object/from16 v40, v2

    move-object/from16 v39, v3

    move-object/from16 v33, v4

    move-object/from16 v34, v5

    move-object/from16 v41, v8

    move-object/from16 v31, v9

    .line 57
    invoke-virtual/range {v41 .. v41}, Ld3/f;->l()V

    :cond_13
    :goto_10
    move-object/from16 v3, v31

    move-object/from16 v22, v33

    move-object/from16 v35, v34

    move-object/from16 v9, v37

    move-object/from16 v10, v38

    const/4 v1, 0x0

    const/16 v2, 0x19

    const/16 v18, 0x14

    goto/16 :goto_4e

    :cond_14
    move-object/from16 v40, v2

    move-object/from16 v39, v3

    move-object/from16 v33, v4

    move-object/from16 v34, v5

    move-object/from16 v37, v6

    move-object/from16 v38, v7

    move-object/from16 v41, v8

    move-object/from16 v31, v9

    move-object/from16 v21, v11

    .line 58
    invoke-virtual/range {v21 .. v21}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-eqz v0, :cond_22

    move-object/from16 v8, v41

    .line 59
    iget-boolean v0, v8, Ld3/f;->d:Z

    if-eqz v0, :cond_16

    iget-wide v0, v8, Ld3/f;->K:J

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-nez v4, :cond_15

    goto :goto_11

    :cond_15
    const/4 v0, 0x0

    goto :goto_12

    :cond_16
    :goto_11
    const/4 v0, 0x1

    :goto_12
    const/4 v1, -0x1

    const/4 v2, -0x1

    const/4 v3, -0x1

    const/4 v4, -0x1

    const/4 v5, 0x0

    .line 60
    :goto_13
    invoke-virtual/range {v21 .. v21}, Landroid/util/SparseArray;->size()I

    move-result v6

    if-ge v5, v6, :cond_1c

    move-object/from16 v6, v21

    .line 61
    invoke-virtual {v6, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ld3/e;

    .line 62
    iget v9, v7, Ld3/e;->e:I

    const/4 v10, 0x2

    if-ne v9, v10, :cond_18

    .line 63
    iget-boolean v9, v7, Ld3/e;->Y:Z

    if-eqz v9, :cond_17

    .line 64
    iget v1, v7, Ld3/e;->d:I

    :cond_17
    const/4 v10, -0x1

    if-ne v2, v10, :cond_1a

    .line 65
    iget v2, v7, Ld3/e;->d:I

    goto :goto_14

    :cond_18
    const/4 v10, -0x1

    const/4 v11, 0x1

    if-ne v9, v11, :cond_1a

    .line 66
    iget-boolean v9, v7, Ld3/e;->Y:Z

    if-eqz v9, :cond_19

    .line 67
    iget v3, v7, Ld3/e;->d:I

    :cond_19
    if-ne v4, v10, :cond_1a

    .line 68
    iget v4, v7, Ld3/e;->d:I

    :cond_1a
    :goto_14
    if-eqz v0, :cond_1b

    .line 69
    iget-object v9, v7, Ld3/e;->a0:Ll2/j0;

    .line 70
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 71
    iget-boolean v9, v7, Ld3/e;->W:Z

    if-nez v9, :cond_1b

    .line 72
    iget-object v9, v7, Ld3/e;->a0:Ll2/j0;

    iget-object v7, v7, Ld3/e;->b0:Lr1/p;

    .line 73
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 74
    invoke-interface {v9, v7}, Ll2/j0;->g(Lr1/p;)V

    :cond_1b
    const/4 v7, 0x1

    add-int/2addr v5, v7

    move-object/from16 v21, v6

    goto :goto_13

    :cond_1c
    move-object/from16 v6, v21

    const/4 v5, -0x1

    if-eq v1, v5, :cond_1d

    .line 75
    iput v1, v8, Ld3/f;->I:I

    goto :goto_16

    :cond_1d
    if-eq v2, v5, :cond_1e

    .line 76
    iput v2, v8, Ld3/f;->I:I

    goto :goto_16

    :cond_1e
    if-eq v3, v5, :cond_1f

    .line 77
    iput v3, v8, Ld3/f;->I:I

    goto :goto_16

    :cond_1f
    if-eq v4, v5, :cond_20

    .line 78
    iput v4, v8, Ld3/f;->I:I

    goto :goto_16

    .line 79
    :cond_20
    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-lez v1, :cond_21

    const/4 v1, 0x0

    invoke-virtual {v6, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ld3/e;

    iget v1, v2, Ld3/e;->d:I

    goto :goto_15

    :cond_21
    const/4 v1, -0x1

    :goto_15
    iput v1, v8, Ld3/f;->I:I

    :goto_16
    if-eqz v0, :cond_13

    .line 80
    invoke-virtual {v8}, Ld3/f;->l()V

    goto/16 :goto_10

    .line 81
    :cond_22
    const-string v0, "No valid tracks were found"

    const/4 v1, 0x0

    invoke-static {v1, v0}, Lr1/f0;->a(Ljava/lang/RuntimeException;Ljava/lang/String;)Lr1/f0;

    move-result-object v0

    throw v0

    :cond_23
    move-object/from16 v40, v2

    move-object/from16 v39, v3

    move-object/from16 v33, v4

    move-object/from16 v34, v5

    move-object/from16 v37, v6

    move-object/from16 v38, v7

    move-object/from16 v31, v9

    .line 82
    iget-wide v0, v8, Ld3/f;->t:J

    cmp-long v2, v0, v35

    if-nez v2, :cond_24

    const-wide/32 v0, 0xf4240

    .line 83
    iput-wide v0, v8, Ld3/f;->t:J

    .line 84
    :cond_24
    iget-wide v0, v8, Ld3/f;->u:J

    cmp-long v2, v0, v35

    if-eqz v2, :cond_13

    .line 85
    invoke-virtual {v8, v0, v1}, Ld3/f;->o(J)J

    move-result-wide v0

    iput-wide v0, v8, Ld3/f;->v:J

    goto/16 :goto_10

    :cond_25
    move-object/from16 v40, v2

    move-object/from16 v39, v3

    move-object/from16 v33, v4

    move-object/from16 v34, v5

    move-object/from16 v37, v6

    move-object/from16 v38, v7

    move-object/from16 v31, v9

    .line 86
    invoke-virtual {v8, v10}, Ld3/f;->i(I)V

    .line 87
    iget-object v0, v8, Ld3/f;->y:Ld3/e;

    iget-boolean v1, v0, Ld3/e;->i:Z

    if-eqz v1, :cond_13

    iget-object v0, v0, Ld3/e;->j:[B

    if-nez v0, :cond_26

    goto/16 :goto_10

    .line 88
    :cond_26
    const-string v0, "Combining encryption and compression is not supported"

    const/4 v1, 0x0

    invoke-static {v1, v0}, Lr1/f0;->a(Ljava/lang/RuntimeException;Ljava/lang/String;)Lr1/f0;

    move-result-object v0

    throw v0

    :cond_27
    move-object/from16 v40, v2

    move-object/from16 v39, v3

    move-object/from16 v33, v4

    move-object/from16 v34, v5

    move-object/from16 v37, v6

    move-object/from16 v38, v7

    move-object/from16 v31, v9

    .line 89
    invoke-virtual {v8, v10}, Ld3/f;->i(I)V

    .line 90
    iget-object v0, v8, Ld3/f;->y:Ld3/e;

    iget-boolean v1, v0, Ld3/e;->i:Z

    if-eqz v1, :cond_13

    .line 91
    iget-object v1, v0, Ld3/e;->k:Ll2/i0;

    if-eqz v1, :cond_28

    .line 92
    new-instance v2, Lr1/l;

    new-instance v3, Lr1/k;

    sget-object v4, Lr1/f;->a:Ljava/util/UUID;

    .line 93
    iget-object v1, v1, Ll2/i0;->b:[B

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5, v13, v1}, Lr1/k;-><init>(Ljava/util/UUID;Ljava/lang/String;Ljava/lang/String;[B)V

    const/4 v1, 0x1

    .line 94
    new-array v4, v1, [Lr1/k;

    const/4 v6, 0x0

    aput-object v3, v4, v6

    .line 95
    invoke-direct {v2, v5, v1, v4}, Lr1/l;-><init>(Ljava/lang/String;Z[Lr1/k;)V

    .line 96
    iput-object v2, v0, Ld3/e;->m:Lr1/l;

    goto/16 :goto_10

    :cond_28
    const/4 v5, 0x0

    .line 97
    const-string v0, "Encrypted Track found but ContentEncKeyID was not found"

    invoke-static {v5, v0}, Lr1/f0;->a(Ljava/lang/RuntimeException;Ljava/lang/String;)Lr1/f0;

    move-result-object v0

    throw v0

    :cond_29
    move-object/from16 v40, v2

    move-object/from16 v39, v3

    move-object/from16 v33, v4

    move-object/from16 v34, v5

    move-object/from16 v37, v6

    move-object/from16 v38, v7

    move-object/from16 v31, v9

    .line 98
    iget v0, v8, Ld3/f;->A:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2a

    iget-wide v1, v8, Ld3/f;->B:J

    const-wide/16 v3, -0x1

    cmp-long v5, v1, v3

    if-eqz v5, :cond_2a

    const v3, 0x1c53bb6b

    if-ne v0, v3, :cond_13

    .line 99
    iput-wide v1, v8, Ld3/f;->K:J

    goto/16 :goto_10

    .line 100
    :cond_2a
    const-string v0, "Mandatory element SeekID or SeekPosition not found"

    const/4 v1, 0x0

    invoke-static {v1, v0}, Lr1/f0;->a(Ljava/lang/RuntimeException;Ljava/lang/String;)Lr1/f0;

    move-result-object v0

    throw v0

    :cond_2b
    move-object/from16 v40, v2

    move-object/from16 v39, v3

    move-object/from16 v33, v4

    move-object/from16 v34, v5

    move-object/from16 v37, v6

    move-object/from16 v38, v7

    move-object/from16 v31, v9

    move-object/from16 v28, v12

    .line 101
    iget-boolean v0, v8, Ld3/f;->z:Z

    if-nez v0, :cond_13

    .line 102
    invoke-virtual {v8, v10}, Ld3/f;->h(I)V

    .line 103
    iget-wide v0, v8, Ld3/f;->E:J

    cmp-long v2, v0, v35

    if-eqz v2, :cond_13

    iget v0, v8, Ld3/f;->F:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_13

    iget-wide v1, v8, Ld3/f;->G:J

    const-wide/16 v3, -0x1

    cmp-long v5, v1, v3

    if-eqz v5, :cond_13

    move-object/from16 v1, v28

    .line 104
    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_2c

    .line 105
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 106
    iget v2, v8, Ld3/f;->F:I

    invoke-virtual {v1, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 107
    :cond_2c
    new-instance v9, Ld3/c;

    iget-wide v2, v8, Ld3/f;->E:J

    iget-wide v4, v8, Ld3/f;->s:J

    iget-wide v6, v8, Ld3/f;->G:J

    add-long/2addr v4, v6

    iget-wide v6, v8, Ld3/f;->H:J

    move-object v1, v9

    invoke-direct/range {v1 .. v7}, Ld3/c;-><init>(JJJ)V

    invoke-interface {v0, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_10

    :cond_2d
    move-object/from16 v40, v2

    move-object/from16 v39, v3

    move-object/from16 v33, v4

    move-object/from16 v34, v5

    move-object/from16 v37, v6

    move-object/from16 v38, v7

    move-object/from16 v31, v9

    move-object v6, v11

    .line 108
    iget-object v0, v8, Ld3/f;->y:Ld3/e;

    .line 109
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 110
    iget-object v1, v0, Ld3/e;->c:Ljava/lang/String;

    if-eqz v1, :cond_a0

    .line 111
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    move-object/from16 v2, v31

    :goto_17
    move-object/from16 v5, v33

    move-object/from16 v7, v34

    move-object/from16 v9, v37

    move-object/from16 v10, v38

    move-object/from16 v4, v39

    move-object/from16 v3, v40

    :goto_18
    const/4 v11, -0x1

    goto/16 :goto_1d

    :sswitch_0
    move-object/from16 v2, v31

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2e

    goto/16 :goto_19

    :cond_2e
    const/16 v3, 0x21

    move-object/from16 v5, v33

    move-object/from16 v7, v34

    move-object/from16 v9, v37

    move-object/from16 v10, v38

    move-object/from16 v4, v39

    move-object/from16 v3, v40

    const/16 v11, 0x21

    goto/16 :goto_1d

    :sswitch_1
    move-object/from16 v2, v31

    const-string v3, "A_FLAC"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2f

    goto/16 :goto_19

    :cond_2f
    move-object/from16 v5, v33

    move-object/from16 v7, v34

    move-object/from16 v9, v37

    move-object/from16 v10, v38

    move-object/from16 v4, v39

    move-object/from16 v3, v40

    const/16 v11, 0x20

    goto/16 :goto_1d

    :sswitch_2
    move-object/from16 v2, v31

    const-string v3, "A_EAC3"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_30

    goto/16 :goto_19

    :cond_30
    const/16 v3, 0x1f

    move-object/from16 v5, v33

    move-object/from16 v7, v34

    move-object/from16 v9, v37

    move-object/from16 v10, v38

    move-object/from16 v4, v39

    move-object/from16 v3, v40

    const/16 v11, 0x1f

    goto/16 :goto_1d

    :sswitch_3
    move-object/from16 v2, v31

    const-string v3, "V_MPEG2"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_31

    goto/16 :goto_19

    :cond_31
    const/16 v3, 0x1e

    move-object/from16 v5, v33

    move-object/from16 v7, v34

    move-object/from16 v9, v37

    move-object/from16 v10, v38

    move-object/from16 v4, v39

    move-object/from16 v3, v40

    const/16 v11, 0x1e

    goto/16 :goto_1d

    :sswitch_4
    move-object/from16 v2, v31

    const-string v3, "S_TEXT/UTF8"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_32

    goto/16 :goto_19

    :cond_32
    const/16 v3, 0x1d

    move-object/from16 v5, v33

    move-object/from16 v7, v34

    move-object/from16 v9, v37

    move-object/from16 v10, v38

    move-object/from16 v4, v39

    move-object/from16 v3, v40

    const/16 v11, 0x1d

    goto/16 :goto_1d

    :sswitch_5
    move-object/from16 v2, v31

    const-string v3, "S_TEXT/WEBVTT"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_33

    goto/16 :goto_19

    :cond_33
    const/16 v3, 0x1c

    move-object/from16 v5, v33

    move-object/from16 v7, v34

    move-object/from16 v9, v37

    move-object/from16 v10, v38

    move-object/from16 v4, v39

    move-object/from16 v3, v40

    const/16 v11, 0x1c

    goto/16 :goto_1d

    :sswitch_6
    move-object/from16 v2, v31

    const-string v3, "V_MPEGH/ISO/HEVC"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_34

    goto/16 :goto_19

    :cond_34
    const/16 v3, 0x1b

    move-object/from16 v5, v33

    move-object/from16 v7, v34

    move-object/from16 v9, v37

    move-object/from16 v10, v38

    move-object/from16 v4, v39

    move-object/from16 v3, v40

    const/16 v11, 0x1b

    goto/16 :goto_1d

    :sswitch_7
    move-object/from16 v2, v31

    const-string v3, "S_TEXT/SSA"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_35

    goto/16 :goto_19

    :cond_35
    const/16 v3, 0x1a

    move-object/from16 v5, v33

    move-object/from16 v7, v34

    move-object/from16 v9, v37

    move-object/from16 v10, v38

    move-object/from16 v4, v39

    move-object/from16 v3, v40

    const/16 v11, 0x1a

    goto/16 :goto_1d

    :sswitch_8
    move-object/from16 v2, v31

    const-string v3, "S_TEXT/ASS"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_36

    goto/16 :goto_19

    :cond_36
    move-object/from16 v5, v33

    move-object/from16 v7, v34

    move-object/from16 v9, v37

    move-object/from16 v10, v38

    move-object/from16 v4, v39

    move-object/from16 v3, v40

    const/16 v11, 0x19

    goto/16 :goto_1d

    :sswitch_9
    move-object/from16 v2, v31

    const-string v3, "A_PCM/INT/LIT"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_37

    goto/16 :goto_19

    :cond_37
    move-object/from16 v5, v33

    move-object/from16 v7, v34

    move-object/from16 v9, v37

    move-object/from16 v10, v38

    move-object/from16 v4, v39

    move-object/from16 v3, v40

    const/16 v11, 0x18

    goto/16 :goto_1d

    :sswitch_a
    move-object/from16 v2, v31

    const-string v3, "A_PCM/INT/BIG"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_38

    goto/16 :goto_19

    :cond_38
    const/16 v3, 0x17

    move-object/from16 v5, v33

    move-object/from16 v7, v34

    move-object/from16 v9, v37

    move-object/from16 v10, v38

    move-object/from16 v4, v39

    move-object/from16 v3, v40

    const/16 v11, 0x17

    goto/16 :goto_1d

    :sswitch_b
    move-object/from16 v2, v31

    const-string v3, "A_PCM/FLOAT/IEEE"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_39

    goto/16 :goto_19

    :cond_39
    const/16 v3, 0x16

    move-object/from16 v5, v33

    move-object/from16 v7, v34

    move-object/from16 v9, v37

    move-object/from16 v10, v38

    move-object/from16 v4, v39

    move-object/from16 v3, v40

    const/16 v11, 0x16

    goto/16 :goto_1d

    :sswitch_c
    move-object/from16 v2, v31

    const-string v3, "A_DTS/EXPRESS"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3a

    goto/16 :goto_19

    :cond_3a
    const/16 v3, 0x15

    move-object/from16 v5, v33

    move-object/from16 v7, v34

    move-object/from16 v9, v37

    move-object/from16 v10, v38

    move-object/from16 v4, v39

    move-object/from16 v3, v40

    const/16 v11, 0x15

    goto/16 :goto_1d

    :sswitch_d
    move-object/from16 v2, v31

    const-string v3, "V_THEORA"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3b

    goto/16 :goto_19

    :cond_3b
    move-object/from16 v5, v33

    move-object/from16 v7, v34

    move-object/from16 v9, v37

    move-object/from16 v10, v38

    move-object/from16 v4, v39

    move-object/from16 v3, v40

    const/16 v11, 0x14

    goto/16 :goto_1d

    :sswitch_e
    move-object/from16 v2, v31

    const-string v3, "S_HDMV/PGS"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3c

    goto/16 :goto_19

    :cond_3c
    const/16 v3, 0x13

    move-object/from16 v5, v33

    move-object/from16 v7, v34

    move-object/from16 v9, v37

    move-object/from16 v10, v38

    move-object/from16 v4, v39

    move-object/from16 v3, v40

    const/16 v11, 0x13

    goto/16 :goto_1d

    :sswitch_f
    move-object/from16 v2, v31

    const-string v3, "V_VP9"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3d

    goto/16 :goto_19

    :cond_3d
    const/16 v3, 0x12

    move-object/from16 v5, v33

    move-object/from16 v7, v34

    move-object/from16 v9, v37

    move-object/from16 v10, v38

    move-object/from16 v4, v39

    move-object/from16 v3, v40

    const/16 v11, 0x12

    goto/16 :goto_1d

    :sswitch_10
    move-object/from16 v2, v31

    const-string v3, "V_VP8"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3e

    goto/16 :goto_19

    :cond_3e
    const/16 v3, 0x11

    move-object/from16 v5, v33

    move-object/from16 v7, v34

    move-object/from16 v9, v37

    move-object/from16 v10, v38

    move-object/from16 v4, v39

    move-object/from16 v3, v40

    const/16 v11, 0x11

    goto/16 :goto_1d

    :sswitch_11
    move-object/from16 v2, v31

    const-string v3, "V_AV1"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3f

    goto/16 :goto_19

    :cond_3f
    move-object/from16 v5, v33

    move-object/from16 v7, v34

    move-object/from16 v9, v37

    move-object/from16 v10, v38

    move-object/from16 v4, v39

    move-object/from16 v3, v40

    const/16 v11, 0x10

    goto/16 :goto_1d

    :sswitch_12
    move-object/from16 v2, v31

    const-string v3, "A_DTS"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_40

    goto/16 :goto_19

    :cond_40
    move-object/from16 v5, v33

    move-object/from16 v7, v34

    move-object/from16 v9, v37

    move-object/from16 v10, v38

    move-object/from16 v4, v39

    move-object/from16 v3, v40

    const/16 v11, 0xf

    goto/16 :goto_1d

    :sswitch_13
    move-object/from16 v2, v31

    const-string v3, "A_AC3"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_41

    goto/16 :goto_19

    :cond_41
    const/16 v3, 0xe

    move-object/from16 v5, v33

    move-object/from16 v7, v34

    move-object/from16 v9, v37

    move-object/from16 v10, v38

    move-object/from16 v4, v39

    move-object/from16 v3, v40

    const/16 v11, 0xe

    goto/16 :goto_1d

    :sswitch_14
    move-object/from16 v2, v31

    const-string v3, "A_AAC"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_42

    goto/16 :goto_19

    :cond_42
    const/16 v3, 0xd

    move-object/from16 v5, v33

    move-object/from16 v7, v34

    move-object/from16 v9, v37

    move-object/from16 v10, v38

    move-object/from16 v4, v39

    move-object/from16 v3, v40

    const/16 v11, 0xd

    goto/16 :goto_1d

    :sswitch_15
    move-object/from16 v2, v31

    const-string v3, "A_DTS/LOSSLESS"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_43

    goto/16 :goto_19

    :cond_43
    const/16 v3, 0xc

    move-object/from16 v5, v33

    move-object/from16 v7, v34

    move-object/from16 v9, v37

    move-object/from16 v10, v38

    move-object/from16 v4, v39

    move-object/from16 v3, v40

    const/16 v11, 0xc

    goto/16 :goto_1d

    :sswitch_16
    move-object/from16 v2, v31

    const-string v3, "S_VOBSUB"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_44

    goto/16 :goto_19

    :cond_44
    const/16 v3, 0xb

    move-object/from16 v5, v33

    move-object/from16 v7, v34

    move-object/from16 v9, v37

    move-object/from16 v10, v38

    move-object/from16 v4, v39

    move-object/from16 v3, v40

    const/16 v11, 0xb

    goto/16 :goto_1d

    :sswitch_17
    move-object/from16 v2, v31

    const-string v3, "V_MPEG4/ISO/AVC"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_45

    goto/16 :goto_19

    :cond_45
    const/16 v3, 0xa

    move-object/from16 v5, v33

    move-object/from16 v7, v34

    move-object/from16 v9, v37

    move-object/from16 v10, v38

    move-object/from16 v4, v39

    move-object/from16 v3, v40

    const/16 v11, 0xa

    goto/16 :goto_1d

    :sswitch_18
    move-object/from16 v2, v31

    const-string v3, "V_MPEG4/ISO/ASP"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_46

    goto :goto_19

    :cond_46
    const/16 v3, 0x9

    move-object/from16 v5, v33

    move-object/from16 v7, v34

    move-object/from16 v9, v37

    move-object/from16 v10, v38

    move-object/from16 v4, v39

    move-object/from16 v3, v40

    const/16 v11, 0x9

    goto/16 :goto_1d

    :sswitch_19
    move-object/from16 v2, v31

    const-string v3, "S_DVBSUB"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_47

    goto :goto_19

    :cond_47
    move-object/from16 v5, v33

    move-object/from16 v7, v34

    move-object/from16 v9, v37

    move-object/from16 v10, v38

    move-object/from16 v4, v39

    move-object/from16 v3, v40

    const/16 v11, 0x8

    goto/16 :goto_1d

    :sswitch_1a
    move-object/from16 v2, v31

    const-string v3, "V_MS/VFW/FOURCC"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_48

    goto :goto_19

    :cond_48
    const/4 v3, 0x7

    move-object/from16 v5, v33

    move-object/from16 v7, v34

    move-object/from16 v9, v37

    move-object/from16 v10, v38

    move-object/from16 v4, v39

    move-object/from16 v3, v40

    const/4 v11, 0x7

    goto/16 :goto_1d

    :sswitch_1b
    move-object/from16 v2, v31

    const-string v3, "A_MPEG/L3"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_49

    :goto_19
    goto/16 :goto_17

    :cond_49
    const/4 v3, 0x6

    move-object/from16 v5, v33

    move-object/from16 v7, v34

    move-object/from16 v9, v37

    move-object/from16 v10, v38

    move-object/from16 v4, v39

    move-object/from16 v3, v40

    const/4 v11, 0x6

    goto/16 :goto_1d

    :sswitch_1c
    move-object/from16 v2, v31

    move-object/from16 v3, v40

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    move-object/from16 v5, v33

    move-object/from16 v7, v34

    move-object/from16 v9, v37

    move-object/from16 v10, v38

    if-nez v4, :cond_4a

    move-object/from16 v4, v39

    goto/16 :goto_18

    :cond_4a
    move-object/from16 v4, v39

    const/4 v11, 0x5

    goto/16 :goto_1d

    :sswitch_1d
    move-object/from16 v2, v31

    move-object/from16 v4, v39

    move-object/from16 v3, v40

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4b

    move-object/from16 v5, v33

    goto :goto_1a

    :cond_4b
    move-object/from16 v5, v33

    move-object/from16 v7, v34

    move-object/from16 v9, v37

    move-object/from16 v10, v38

    const/4 v11, 0x4

    goto/16 :goto_1d

    :sswitch_1e
    move-object/from16 v2, v31

    move-object/from16 v5, v33

    move-object/from16 v4, v39

    move-object/from16 v3, v40

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4c

    :goto_1a
    move-object/from16 v7, v34

    goto :goto_1b

    :cond_4c
    move-object/from16 v7, v34

    move-object/from16 v9, v37

    move-object/from16 v10, v38

    const/4 v11, 0x3

    goto :goto_1d

    :sswitch_1f
    move-object/from16 v2, v31

    move-object/from16 v5, v33

    move-object/from16 v7, v34

    move-object/from16 v4, v39

    move-object/from16 v3, v40

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_4d

    :goto_1b
    move-object/from16 v9, v37

    goto :goto_1c

    :cond_4d
    move-object/from16 v9, v37

    move-object/from16 v10, v38

    const/4 v11, 0x2

    goto :goto_1d

    :sswitch_20
    move-object/from16 v2, v31

    move-object/from16 v5, v33

    move-object/from16 v7, v34

    move-object/from16 v9, v37

    move-object/from16 v4, v39

    move-object/from16 v3, v40

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_4e

    :goto_1c
    move-object/from16 v10, v38

    goto/16 :goto_18

    :cond_4e
    move-object/from16 v10, v38

    const/4 v11, 0x1

    goto :goto_1d

    :sswitch_21
    move-object/from16 v2, v31

    move-object/from16 v5, v33

    move-object/from16 v7, v34

    move-object/from16 v9, v37

    move-object/from16 v10, v38

    move-object/from16 v4, v39

    move-object/from16 v3, v40

    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_4f

    goto/16 :goto_18

    :cond_4f
    const/4 v11, 0x0

    :goto_1d
    packed-switch v11, :pswitch_data_0

    move-object/from16 v33, v2

    move-object/from16 v40, v3

    move-object/from16 v39, v4

    move-object/from16 v22, v5

    move-object/from16 v35, v7

    const/4 v0, 0x0

    const/16 v2, 0x19

    const/16 v18, 0x14

    goto/16 :goto_49

    .line 112
    :pswitch_0
    iget v11, v0, Ld3/e;->d:I

    .line 113
    const-string v14, "application/dvbsubs"

    const-string v15, "application/vobsub"

    const-string v12, "application/pgs"

    move-object/from16 v26, v13

    const-string v13, "video/x-unknown"

    move-object/from16 v27, v6

    const-string v6, "text/x-ssa"

    move-object/from16 v41, v8

    const-string v8, "text/vtt"

    move/from16 v23, v11

    const-string v11, "application/x-subrip"

    move-object/from16 v24, v14

    const-string v14, ". Setting mimeType to audio/x-unknown"

    const-string v28, "audio/raw"

    const-string v29, "audio/x-unknown"

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v30

    sparse-switch v30, :sswitch_data_1

    :goto_1e
    move-object/from16 v33, v2

    :goto_1f
    const/4 v2, -0x1

    goto/16 :goto_21

    :sswitch_22
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-nez v30, :cond_50

    goto :goto_1e

    :cond_50
    const/16 v30, 0x21

    move-object/from16 v33, v2

    const/16 v2, 0x21

    goto/16 :goto_21

    :sswitch_23
    move-object/from16 v33, v2

    const-string v2, "A_FLAC"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_51

    goto/16 :goto_20

    :cond_51
    const/16 v2, 0x20

    goto/16 :goto_21

    :sswitch_24
    move-object/from16 v33, v2

    const-string v2, "A_EAC3"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_52

    goto/16 :goto_20

    :cond_52
    const/16 v2, 0x1f

    goto/16 :goto_21

    :sswitch_25
    move-object/from16 v33, v2

    const-string v2, "V_MPEG2"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_53

    goto/16 :goto_20

    :cond_53
    const/16 v2, 0x1e

    goto/16 :goto_21

    :sswitch_26
    move-object/from16 v33, v2

    const-string v2, "S_TEXT/UTF8"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_54

    goto/16 :goto_20

    :cond_54
    const/16 v2, 0x1d

    goto/16 :goto_21

    :sswitch_27
    move-object/from16 v33, v2

    const-string v2, "S_TEXT/WEBVTT"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_55

    goto/16 :goto_20

    :cond_55
    const/16 v2, 0x1c

    goto/16 :goto_21

    :sswitch_28
    move-object/from16 v33, v2

    const-string v2, "V_MPEGH/ISO/HEVC"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_56

    goto/16 :goto_20

    :cond_56
    const/16 v2, 0x1b

    goto/16 :goto_21

    :sswitch_29
    move-object/from16 v33, v2

    const-string v2, "S_TEXT/SSA"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_57

    goto/16 :goto_20

    :cond_57
    const/16 v2, 0x1a

    goto/16 :goto_21

    :sswitch_2a
    move-object/from16 v33, v2

    const-string v2, "S_TEXT/ASS"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_58

    goto/16 :goto_20

    :cond_58
    const/16 v2, 0x19

    goto/16 :goto_21

    :sswitch_2b
    move-object/from16 v33, v2

    const-string v2, "A_PCM/INT/LIT"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_59

    goto/16 :goto_20

    :cond_59
    const/16 v2, 0x18

    goto/16 :goto_21

    :sswitch_2c
    move-object/from16 v33, v2

    const-string v2, "A_PCM/INT/BIG"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5a

    goto/16 :goto_20

    :cond_5a
    const/16 v2, 0x17

    goto/16 :goto_21

    :sswitch_2d
    move-object/from16 v33, v2

    const-string v2, "A_PCM/FLOAT/IEEE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5b

    goto/16 :goto_20

    :cond_5b
    const/16 v2, 0x16

    goto/16 :goto_21

    :sswitch_2e
    move-object/from16 v33, v2

    const-string v2, "A_DTS/EXPRESS"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5c

    goto/16 :goto_20

    :cond_5c
    const/16 v2, 0x15

    goto/16 :goto_21

    :sswitch_2f
    move-object/from16 v33, v2

    const-string v2, "V_THEORA"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5d

    goto/16 :goto_20

    :cond_5d
    const/16 v2, 0x14

    goto/16 :goto_21

    :sswitch_30
    move-object/from16 v33, v2

    const-string v2, "S_HDMV/PGS"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5e

    goto/16 :goto_20

    :cond_5e
    const/16 v2, 0x13

    goto/16 :goto_21

    :sswitch_31
    move-object/from16 v33, v2

    const-string v2, "V_VP9"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5f

    goto/16 :goto_20

    :cond_5f
    const/16 v2, 0x12

    goto/16 :goto_21

    :sswitch_32
    move-object/from16 v33, v2

    const-string v2, "V_VP8"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_60

    goto/16 :goto_20

    :cond_60
    const/16 v2, 0x11

    goto/16 :goto_21

    :sswitch_33
    move-object/from16 v33, v2

    const-string v2, "V_AV1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_61

    goto/16 :goto_20

    :cond_61
    const/16 v2, 0x10

    goto/16 :goto_21

    :sswitch_34
    move-object/from16 v33, v2

    const-string v2, "A_DTS"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_62

    goto/16 :goto_20

    :cond_62
    const/16 v2, 0xf

    goto/16 :goto_21

    :sswitch_35
    move-object/from16 v33, v2

    const-string v2, "A_AC3"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_63

    goto/16 :goto_20

    :cond_63
    const/16 v2, 0xe

    goto/16 :goto_21

    :sswitch_36
    move-object/from16 v33, v2

    const-string v2, "A_AAC"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_64

    goto/16 :goto_20

    :cond_64
    const/16 v2, 0xd

    goto/16 :goto_21

    :sswitch_37
    move-object/from16 v33, v2

    const-string v2, "A_DTS/LOSSLESS"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_65

    goto/16 :goto_20

    :cond_65
    const/16 v2, 0xc

    goto/16 :goto_21

    :sswitch_38
    move-object/from16 v33, v2

    const-string v2, "S_VOBSUB"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_66

    goto/16 :goto_20

    :cond_66
    const/16 v2, 0xb

    goto/16 :goto_21

    :sswitch_39
    move-object/from16 v33, v2

    const-string v2, "V_MPEG4/ISO/AVC"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_67

    goto/16 :goto_20

    :cond_67
    const/16 v2, 0xa

    goto/16 :goto_21

    :sswitch_3a
    move-object/from16 v33, v2

    const-string v2, "V_MPEG4/ISO/ASP"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_68

    goto/16 :goto_20

    :cond_68
    const/16 v2, 0x9

    goto/16 :goto_21

    :sswitch_3b
    move-object/from16 v33, v2

    const-string v2, "S_DVBSUB"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_69

    goto/16 :goto_20

    :cond_69
    const/16 v2, 0x8

    goto/16 :goto_21

    :sswitch_3c
    move-object/from16 v33, v2

    const-string v2, "V_MS/VFW/FOURCC"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6a

    goto :goto_20

    :cond_6a
    const/4 v2, 0x7

    goto :goto_21

    :sswitch_3d
    move-object/from16 v33, v2

    const-string v2, "A_MPEG/L3"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6b

    goto :goto_20

    :cond_6b
    const/4 v2, 0x6

    goto :goto_21

    :sswitch_3e
    move-object/from16 v33, v2

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6c

    goto :goto_20

    :cond_6c
    const/4 v2, 0x5

    goto :goto_21

    :sswitch_3f
    move-object/from16 v33, v2

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6d

    goto :goto_20

    :cond_6d
    const/4 v2, 0x4

    goto :goto_21

    :sswitch_40
    move-object/from16 v33, v2

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6e

    goto :goto_20

    :cond_6e
    const/4 v2, 0x3

    goto :goto_21

    :sswitch_41
    move-object/from16 v33, v2

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6f

    goto :goto_20

    :cond_6f
    const/4 v2, 0x2

    goto :goto_21

    :sswitch_42
    move-object/from16 v33, v2

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_70

    goto :goto_20

    :cond_70
    const/4 v2, 0x1

    goto :goto_21

    :sswitch_43
    move-object/from16 v33, v2

    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_71

    :goto_20
    goto/16 :goto_1f

    :cond_71
    const/4 v2, 0x0

    :goto_21
    packed-switch v2, :pswitch_data_1

    .line 114
    const-string v0, "Unrecognized codec identifier."

    const/4 v1, 0x0

    invoke-static {v1, v0}, Lr1/f0;->a(Ljava/lang/RuntimeException;Ljava/lang/String;)Lr1/f0;

    move-result-object v0

    throw v0

    .line 115
    :pswitch_1
    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x3

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 116
    iget-object v2, v0, Ld3/e;->c:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ld3/e;->a(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/16 v2, 0x8

    .line 117
    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v13

    sget-object v14, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v13, v14}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v13

    move-object/from16 v40, v3

    iget-wide v2, v0, Ld3/e;->T:J

    invoke-virtual {v13, v2, v3}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    .line 118
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/16 v2, 0x8

    .line 119
    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v3, v14}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v2

    iget-wide v13, v0, Ld3/e;->U:J

    invoke-virtual {v2, v13, v14}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    .line 120
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 121
    const-string v13, "audio/opus"

    const/16 v2, 0x1680

    move-object/from16 v39, v4

    move-object/from16 v22, v5

    const/4 v2, -0x1

    const/16 v3, 0x18

    const/16 v4, 0x1680

    :goto_22
    const/4 v14, 0x0

    const/16 v18, 0x14

    move-object v5, v1

    goto/16 :goto_3c

    :pswitch_2
    move-object/from16 v40, v3

    .line 122
    invoke-virtual {v0, v1}, Ld3/e;->a(Ljava/lang/String;)[B

    move-result-object v1

    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 123
    const-string v13, "audio/flac"

    :goto_23
    move-object/from16 v39, v4

    move-object/from16 v22, v5

    :goto_24
    const/4 v2, -0x1

    const/16 v3, 0x18

    const/4 v4, -0x1

    goto :goto_22

    :pswitch_3
    move-object/from16 v40, v3

    .line 124
    const-string v13, "audio/eac3"

    :goto_25
    move-object/from16 v39, v4

    move-object/from16 v22, v5

    :goto_26
    const/4 v2, -0x1

    :goto_27
    const/16 v3, 0x18

    const/4 v4, -0x1

    const/4 v5, 0x0

    const/4 v14, 0x0

    const/16 v18, 0x14

    goto/16 :goto_3c

    :pswitch_4
    move-object/from16 v40, v3

    .line 125
    const-string v13, "video/mpeg2"

    goto :goto_25

    :pswitch_5
    move-object/from16 v40, v3

    move-object/from16 v39, v4

    move-object/from16 v22, v5

    move-object v13, v11

    goto :goto_26

    :pswitch_6
    move-object/from16 v40, v3

    move-object/from16 v39, v4

    move-object/from16 v22, v5

    move-object v13, v8

    goto :goto_26

    :pswitch_7
    move-object/from16 v40, v3

    .line 126
    new-instance v1, Lu1/q;

    iget-object v2, v0, Ld3/e;->c:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ld3/e;->a(Ljava/lang/String;)[B

    move-result-object v2

    invoke-direct {v1, v2}, Lu1/q;-><init>([B)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 127
    invoke-static {v1, v2, v3}, Ll2/w;->a(Lu1/q;ZLa2/w0;)Ll2/w;

    move-result-object v1

    .line 128
    iget v2, v1, Ll2/w;->b:I

    iput v2, v0, Ld3/e;->c0:I

    .line 129
    const-string v13, "video/hevc"

    iget-object v2, v1, Ll2/w;->a:Ljava/util/List;

    iget-object v1, v1, Ll2/w;->n:Ljava/lang/String;

    move-object v14, v1

    move-object/from16 v39, v4

    move-object/from16 v22, v5

    const/16 v3, 0x18

    const/4 v4, -0x1

    const/16 v18, 0x14

    move-object v5, v2

    const/4 v2, -0x1

    goto/16 :goto_3c

    :pswitch_8
    move-object/from16 v40, v3

    .line 130
    invoke-virtual {v0, v1}, Ld3/e;->a(Ljava/lang/String;)[B

    move-result-object v1

    sget-object v2, Ld3/f;->l0:[B

    invoke-static {v2, v1}, Lu7/g0;->s(Ljava/lang/Object;Ljava/lang/Object;)Lu7/y0;

    move-result-object v1

    move-object/from16 v39, v4

    move-object/from16 v22, v5

    move-object v13, v6

    goto :goto_24

    :pswitch_9
    move-object/from16 v40, v3

    .line 131
    iget v1, v0, Ld3/e;->R:I

    sget-object v2, Lu1/f0;->a:Ljava/lang/String;

    .line 132
    sget-object v2, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-static {v1, v2}, Lu1/f0;->t(ILjava/nio/ByteOrder;)I

    move-result v1

    if-nez v1, :cond_72

    .line 133
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unsupported little endian PCM bit depth: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, v0, Ld3/e;->R:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lu1/a;->p(Ljava/lang/String;)V

    :goto_28
    move-object/from16 v39, v4

    move-object/from16 v22, v5

    move-object/from16 v13, v29

    goto/16 :goto_26

    :cond_72
    move v2, v1

    move-object/from16 v39, v4

    move-object/from16 v22, v5

    move-object/from16 v13, v28

    goto/16 :goto_27

    :pswitch_a
    move-object/from16 v40, v3

    .line 134
    iget v1, v0, Ld3/e;->R:I

    const/16 v2, 0x8

    if-ne v1, v2, :cond_73

    move-object/from16 v39, v4

    move-object/from16 v22, v5

    move-object/from16 v13, v28

    const/4 v2, 0x3

    goto/16 :goto_27

    :cond_73
    const/16 v2, 0x10

    if-ne v1, v2, :cond_74

    const/high16 v1, 0x10000000

    move-object/from16 v39, v4

    move-object/from16 v22, v5

    move-object/from16 v13, v28

    const/high16 v2, 0x10000000

    goto/16 :goto_27

    :cond_74
    const/16 v2, 0x18

    if-ne v1, v2, :cond_75

    const/high16 v1, 0x50000000

    move-object/from16 v39, v4

    move-object/from16 v22, v5

    move-object/from16 v13, v28

    const/high16 v2, 0x50000000

    goto/16 :goto_27

    :cond_75
    const/16 v2, 0x20

    if-ne v1, v2, :cond_76

    const/high16 v1, 0x60000000

    move-object/from16 v39, v4

    move-object/from16 v22, v5

    move-object/from16 v13, v28

    const/high16 v2, 0x60000000

    goto/16 :goto_27

    .line 135
    :cond_76
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unsupported big endian PCM bit depth: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, v0, Ld3/e;->R:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lu1/a;->p(Ljava/lang/String;)V

    goto :goto_28

    :pswitch_b
    move-object/from16 v40, v3

    .line 136
    iget v1, v0, Ld3/e;->R:I

    const/16 v2, 0x20

    if-ne v1, v2, :cond_77

    move-object/from16 v39, v4

    move-object/from16 v22, v5

    move-object/from16 v13, v28

    const/4 v2, 0x4

    goto/16 :goto_27

    .line 137
    :cond_77
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Unsupported floating point PCM bit depth: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, v0, Ld3/e;->R:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lu1/a;->p(Ljava/lang/String;)V

    goto/16 :goto_28

    :pswitch_c
    move-object/from16 v40, v3

    goto/16 :goto_25

    :pswitch_d
    move-object/from16 v40, v3

    move-object/from16 v39, v4

    move-object/from16 v22, v5

    move-object v13, v12

    goto/16 :goto_26

    :pswitch_e
    move-object/from16 v40, v3

    const/16 v2, 0x20

    .line 138
    iget-object v1, v0, Ld3/e;->l:[B

    if-nez v1, :cond_78

    const/4 v1, 0x0

    goto :goto_29

    :cond_78
    invoke-static {v1}, Lu7/g0;->r(Ljava/lang/Object;)Lu7/y0;

    move-result-object v1

    .line 139
    :goto_29
    const-string v13, "video/x-vnd.on2.vp9"

    goto/16 :goto_23

    :pswitch_f
    move-object/from16 v40, v3

    const/16 v2, 0x20

    .line 140
    const-string v13, "video/x-vnd.on2.vp8"

    goto/16 :goto_25

    :pswitch_10
    move-object/from16 v40, v3

    const/16 v2, 0x20

    .line 141
    iget-object v1, v0, Ld3/e;->l:[B

    if-nez v1, :cond_79

    const/4 v1, 0x0

    goto :goto_2a

    :cond_79
    invoke-static {v1}, Lu7/g0;->r(Ljava/lang/Object;)Lu7/y0;

    move-result-object v1

    .line 142
    :goto_2a
    const-string v13, "video/av01"

    goto/16 :goto_23

    :pswitch_11
    move-object/from16 v40, v3

    const/4 v1, 0x1

    const/16 v2, 0x20

    .line 143
    iput-boolean v1, v0, Ld3/e;->W:Z

    .line 144
    const-string v13, "audio/vnd.dts"

    goto/16 :goto_25

    :pswitch_12
    move-object/from16 v40, v3

    const/16 v2, 0x20

    .line 145
    const-string v13, "audio/ac3"

    goto/16 :goto_25

    :pswitch_13
    move-object/from16 v40, v3

    const/16 v2, 0x20

    .line 146
    invoke-virtual {v0, v1}, Ld3/e;->a(Ljava/lang/String;)[B

    move-result-object v1

    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 147
    iget-object v3, v0, Ld3/e;->l:[B

    .line 148
    new-instance v13, Lj3/f;

    .line 149
    array-length v14, v3

    invoke-direct {v13, v3, v14}, Lj3/f;-><init>([BI)V

    const/4 v3, 0x0

    .line 150
    invoke-static {v13, v3}, Ll2/b;->o(Lj3/f;Z)Ll2/a;

    move-result-object v13

    .line 151
    iget v3, v13, Ll2/a;->b:I

    iput v3, v0, Ld3/e;->S:I

    .line 152
    iget v3, v13, Ll2/a;->c:I

    iput v3, v0, Ld3/e;->Q:I

    .line 153
    const-string v3, "audio/mp4a-latm"

    iget-object v13, v13, Ll2/a;->a:Ljava/lang/String;

    move-object/from16 v39, v4

    move-object/from16 v22, v5

    move-object v14, v13

    const/4 v2, -0x1

    const/4 v4, -0x1

    const/16 v18, 0x14

    move-object v5, v1

    move-object v13, v3

    :goto_2b
    const/16 v3, 0x18

    goto/16 :goto_3c

    :pswitch_14
    move-object/from16 v40, v3

    const/16 v2, 0x20

    .line 154
    const-string v13, "audio/vnd.dts.hd"

    goto/16 :goto_25

    :pswitch_15
    move-object/from16 v40, v3

    const/16 v2, 0x20

    .line 155
    invoke-virtual {v0, v1}, Ld3/e;->a(Ljava/lang/String;)[B

    move-result-object v1

    invoke-static {v1}, Lu7/g0;->r(Ljava/lang/Object;)Lu7/y0;

    move-result-object v1

    move-object/from16 v39, v4

    move-object/from16 v22, v5

    move-object v13, v15

    goto/16 :goto_24

    :pswitch_16
    move-object/from16 v40, v3

    const/16 v2, 0x20

    .line 156
    new-instance v1, Lu1/q;

    iget-object v3, v0, Ld3/e;->c:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ld3/e;->a(Ljava/lang/String;)[B

    move-result-object v3

    invoke-direct {v1, v3}, Lu1/q;-><init>([B)V

    invoke-static {v1}, Ll2/d;->a(Lu1/q;)Ll2/d;

    move-result-object v1

    .line 157
    iget v3, v1, Ll2/d;->b:I

    iput v3, v0, Ld3/e;->c0:I

    .line 158
    iget-object v3, v1, Ll2/d;->a:Ljava/util/ArrayList;

    const-string v13, "video/avc"

    iget-object v1, v1, Ll2/d;->l:Ljava/lang/String;

    move-object v14, v1

    move-object/from16 v39, v4

    move-object/from16 v22, v5

    const/4 v2, -0x1

    const/4 v4, -0x1

    const/16 v18, 0x14

    move-object v5, v3

    goto :goto_2b

    :pswitch_17
    move-object/from16 v40, v3

    const/16 v2, 0x20

    const/4 v3, 0x4

    .line 159
    new-array v13, v3, [B

    .line 160
    invoke-virtual {v0, v1}, Ld3/e;->a(Ljava/lang/String;)[B

    move-result-object v1

    const/4 v14, 0x0

    invoke-static {v1, v14, v13, v14, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 161
    invoke-static {v13}, Lu7/g0;->r(Ljava/lang/Object;)Lu7/y0;

    move-result-object v1

    move-object/from16 v39, v4

    move-object/from16 v22, v5

    move-object/from16 v13, v24

    goto/16 :goto_24

    :pswitch_18
    move-object/from16 v40, v3

    const/16 v2, 0x20

    .line 162
    new-instance v1, Lu1/q;

    iget-object v3, v0, Ld3/e;->c:Ljava/lang/String;

    .line 163
    invoke-virtual {v0, v3}, Ld3/e;->a(Ljava/lang/String;)[B

    move-result-object v3

    invoke-direct {v1, v3}, Lu1/q;-><init>([B)V

    const/16 v3, 0x10

    .line 164
    :try_start_0
    invoke-virtual {v1, v3}, Lu1/q;->P(I)V

    .line 165
    invoke-virtual {v1}, Lu1/q;->s()J

    move-result-wide v20

    const-wide/32 v28, 0x58564944

    cmp-long v14, v20, v28

    if-nez v14, :cond_7a

    .line 166
    new-instance v1, Landroid/util/Pair;

    const-string v13, "video/divx"
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v14, 0x0

    :try_start_1
    invoke-direct {v1, v13, v14}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_2c
    const/4 v2, 0x0

    const/16 v14, 0xf

    const/16 v18, 0x14

    goto/16 :goto_30

    :catch_0
    move-object v2, v14

    goto/16 :goto_31

    :catch_1
    const/4 v2, 0x0

    goto/16 :goto_31

    :cond_7a
    const-wide/32 v28, 0x33363248

    cmp-long v14, v20, v28

    if-nez v14, :cond_7b

    .line 167
    :try_start_2
    new-instance v1, Landroid/util/Pair;

    const-string v13, "video/3gpp"
    :try_end_2
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_1

    const/4 v14, 0x0

    :try_start_3
    invoke-direct {v1, v13, v14}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_2c

    :cond_7b
    const-wide/32 v28, 0x31435657

    cmp-long v14, v20, v28

    if-nez v14, :cond_7f

    .line 168
    :try_start_4
    iget v13, v1, Lu1/q;->b:I

    const/16 v18, 0x14

    add-int/lit8 v13, v13, 0x14

    .line 169
    iget-object v1, v1, Lu1/q;->a:[B

    .line 170
    :goto_2d
    array-length v14, v1

    const/16 v17, 0x4

    add-int/lit8 v14, v14, -0x4

    if-ge v13, v14, :cond_7e

    .line 171
    aget-byte v14, v1, v13

    if-nez v14, :cond_7d

    const/4 v14, 0x1

    add-int/lit8 v20, v13, 0x1

    aget-byte v20, v1, v20

    if-nez v20, :cond_7d

    const/16 v20, 0x2

    add-int/lit8 v21, v13, 0x2

    aget-byte v2, v1, v21

    if-ne v2, v14, :cond_7d

    const/4 v2, 0x3

    add-int/lit8 v14, v13, 0x3

    aget-byte v2, v1, v14

    const/16 v14, 0xf

    if-ne v2, v14, :cond_7c

    .line 172
    array-length v2, v1

    invoke-static {v1, v13, v2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v1

    .line 173
    new-instance v2, Landroid/util/Pair;

    const-string v13, "video/wvc1"

    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v2, v13, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v1, v2

    const/4 v2, 0x0

    goto :goto_30

    :cond_7c
    :goto_2e
    const/4 v2, 0x1

    goto :goto_2f

    :cond_7d
    const/16 v14, 0xf

    goto :goto_2e

    :goto_2f
    add-int/2addr v13, v2

    const/16 v2, 0x20

    goto :goto_2d

    .line 174
    :cond_7e
    const-string v0, "Failed to find FourCC VC1 initialization data"
    :try_end_4
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_4 .. :try_end_4} :catch_1

    const/4 v1, 0x0

    :try_start_5
    invoke-static {v1, v0}, Lr1/f0;->a(Ljava/lang/RuntimeException;Ljava/lang/String;)Lr1/f0;

    move-result-object v0
    :try_end_5
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_5 .. :try_end_5} :catch_2

    :try_start_6
    throw v0
    :try_end_6
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_6 .. :try_end_6} :catch_1

    :catch_2
    move-object v2, v1

    goto :goto_31

    :cond_7f
    const/16 v14, 0xf

    const/16 v18, 0x14

    .line 175
    const-string v1, "Unknown FourCC. Setting mimeType to video/x-unknown"

    invoke-static {v1}, Lu1/a;->p(Ljava/lang/String;)V

    .line 176
    new-instance v1, Landroid/util/Pair;

    const/4 v2, 0x0

    invoke-direct {v1, v13, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 177
    :goto_30
    iget-object v13, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v13, Ljava/lang/String;

    .line 178
    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object/from16 v25, v1

    check-cast v25, Ljava/util/List;

    move-object v14, v2

    move-object/from16 v39, v4

    move-object/from16 v22, v5

    move-object/from16 v5, v25

    const/4 v2, -0x1

    const/16 v3, 0x18

    const/4 v4, -0x1

    goto/16 :goto_3c

    .line 179
    :goto_31
    const-string v0, "Error parsing FourCC private data"

    invoke-static {v2, v0}, Lr1/f0;->a(Ljava/lang/RuntimeException;Ljava/lang/String;)Lr1/f0;

    move-result-object v0

    throw v0

    :pswitch_19
    move-object/from16 v40, v3

    const/16 v3, 0x10

    const/16 v14, 0xf

    const/16 v18, 0x14

    .line 180
    const-string v13, "audio/mpeg"

    :goto_32
    move-object/from16 v39, v4

    move-object/from16 v22, v5

    const/4 v2, -0x1

    const/16 v3, 0x18

    const/16 v4, 0x1000

    :goto_33
    const/4 v5, 0x0

    :goto_34
    const/4 v14, 0x0

    goto/16 :goto_3c

    :pswitch_1a
    move-object/from16 v40, v3

    const/16 v3, 0x10

    const/16 v14, 0xf

    const/16 v18, 0x14

    .line 181
    const-string v13, "audio/mpeg-L2"

    goto :goto_32

    :pswitch_1b
    move-object/from16 v40, v3

    const/16 v3, 0x10

    const/16 v14, 0xf

    const/16 v18, 0x14

    .line 182
    invoke-virtual {v0, v1}, Ld3/e;->a(Ljava/lang/String;)[B

    move-result-object v1

    .line 183
    const-string v2, "Error parsing vorbis codec private"

    const/4 v13, 0x0

    :try_start_7
    aget-byte v3, v1, v13

    const/4 v13, 0x2

    if-ne v3, v13, :cond_85

    const/4 v3, 0x0

    const/4 v13, 0x1

    .line 184
    :goto_35
    aget-byte v14, v1, v13

    move-object/from16 v39, v4

    const/16 v4, 0xff

    and-int/2addr v14, v4

    if-ne v14, v4, :cond_80

    add-int/2addr v3, v4

    const/4 v14, 0x1

    add-int/2addr v13, v14

    move-object/from16 v4, v39

    goto :goto_35

    :cond_80
    const/4 v4, 0x1

    add-int/2addr v13, v4

    add-int/2addr v3, v14

    const/4 v14, 0x0

    .line 185
    :goto_36
    aget-byte v4, v1, v13

    move-object/from16 v22, v5

    const/16 v5, 0xff

    and-int/2addr v4, v5

    if-ne v4, v5, :cond_81

    add-int/2addr v14, v5

    const/4 v4, 0x1

    add-int/2addr v13, v4

    move-object/from16 v5, v22

    goto :goto_36

    :cond_81
    const/4 v5, 0x1

    add-int/2addr v13, v5

    add-int/2addr v14, v4

    .line 186
    aget-byte v4, v1, v13

    if-ne v4, v5, :cond_84

    .line 187
    new-array v4, v3, [B

    const/4 v5, 0x0

    .line 188
    invoke-static {v1, v13, v4, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v13, v3

    .line 189
    aget-byte v3, v1, v13

    const/4 v5, 0x3

    if-ne v3, v5, :cond_83

    add-int/2addr v13, v14

    .line 190
    aget-byte v3, v1, v13

    const/4 v5, 0x5

    if-ne v3, v5, :cond_82

    .line 191
    array-length v3, v1

    sub-int/2addr v3, v13

    new-array v3, v3, [B

    .line 192
    array-length v5, v1

    sub-int/2addr v5, v13

    const/4 v14, 0x0

    invoke-static {v1, v13, v3, v14, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 193
    new-instance v1, Ljava/util/ArrayList;

    const/4 v5, 0x2

    invoke-direct {v1, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 194
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 195
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_7
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_7 .. :try_end_7} :catch_3

    .line 196
    const-string v13, "audio/vorbis"

    const/16 v2, 0x2000

    move-object v5, v1

    const/4 v2, -0x1

    const/16 v3, 0x18

    const/16 v4, 0x2000

    goto :goto_34

    :catch_3
    const/4 v0, 0x0

    goto :goto_37

    :cond_82
    const/4 v0, 0x0

    .line 197
    :try_start_8
    invoke-static {v0, v2}, Lr1/f0;->a(Ljava/lang/RuntimeException;Ljava/lang/String;)Lr1/f0;

    move-result-object v1

    throw v1

    :cond_83
    const/4 v0, 0x0

    .line 198
    invoke-static {v0, v2}, Lr1/f0;->a(Ljava/lang/RuntimeException;Ljava/lang/String;)Lr1/f0;

    move-result-object v1

    throw v1

    :cond_84
    const/4 v0, 0x0

    .line 199
    invoke-static {v0, v2}, Lr1/f0;->a(Ljava/lang/RuntimeException;Ljava/lang/String;)Lr1/f0;

    move-result-object v1

    throw v1

    :cond_85
    const/4 v0, 0x0

    .line 200
    invoke-static {v0, v2}, Lr1/f0;->a(Ljava/lang/RuntimeException;Ljava/lang/String;)Lr1/f0;

    move-result-object v1

    throw v1
    :try_end_8
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_8 .. :try_end_8} :catch_4

    .line 201
    :catch_4
    :goto_37
    invoke-static {v0, v2}, Lr1/f0;->a(Ljava/lang/RuntimeException;Ljava/lang/String;)Lr1/f0;

    move-result-object v0

    throw v0

    :pswitch_1c
    move-object/from16 v40, v3

    move-object/from16 v39, v4

    move-object/from16 v22, v5

    const/16 v18, 0x14

    .line 202
    new-instance v1, Ll2/k0;

    invoke-direct {v1}, Ll2/k0;-><init>()V

    iput-object v1, v0, Ld3/e;->V:Ll2/k0;

    .line 203
    const-string v13, "audio/true-hd"

    const/4 v2, -0x1

    const/16 v3, 0x18

    :goto_38
    const/4 v4, -0x1

    goto/16 :goto_33

    :pswitch_1d
    move-object/from16 v40, v3

    move-object/from16 v39, v4

    move-object/from16 v22, v5

    const/16 v1, 0xf

    const/16 v18, 0x14

    .line 204
    new-instance v2, Lu1/q;

    iget-object v3, v0, Ld3/e;->c:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ld3/e;->a(Ljava/lang/String;)[B

    move-result-object v3

    invoke-direct {v2, v3}, Lu1/q;-><init>([B)V

    .line 205
    :try_start_9
    invoke-virtual {v2}, Lu1/q;->u()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_86

    const/16 v3, 0x18

    goto :goto_39

    :cond_86
    const v4, 0xfffe

    if-ne v3, v4, :cond_88

    const/16 v3, 0x18

    .line 206
    invoke-virtual {v2, v3}, Lu1/q;->O(I)V

    .line 207
    invoke-virtual {v2}, Lu1/q;->v()J

    move-result-wide v4

    .line 208
    sget-object v13, Ld3/f;->o0:Ljava/util/UUID;

    .line 209
    invoke-virtual {v13}, Ljava/util/UUID;->getMostSignificantBits()J

    move-result-wide v30

    cmp-long v19, v4, v30

    if-nez v19, :cond_89

    .line 210
    invoke-virtual {v2}, Lu1/q;->v()J

    move-result-wide v4

    invoke-virtual {v13}, Ljava/util/UUID;->getLeastSignificantBits()J

    move-result-wide v30
    :try_end_9
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_9 .. :try_end_9} :catch_5

    cmp-long v2, v4, v30

    if-nez v2, :cond_89

    .line 211
    :goto_39
    iget v2, v0, Ld3/e;->R:I

    sget-object v4, Lu1/f0;->a:Ljava/lang/String;

    .line 212
    sget-object v4, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-static {v2, v4}, Lu1/f0;->t(ILjava/nio/ByteOrder;)I

    move-result v2

    if-nez v2, :cond_87

    .line 213
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "Unsupported PCM bit depth: "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, v0, Ld3/e;->R:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lu1/a;->p(Ljava/lang/String;)V

    :goto_3a
    move-object/from16 v13, v29

    const/4 v2, -0x1

    goto :goto_38

    :cond_87
    move-object/from16 v13, v28

    goto :goto_38

    :cond_88
    const/16 v3, 0x18

    .line 214
    :cond_89
    const-string v2, "Non-PCM MS/ACM is unsupported. Setting mimeType to audio/x-unknown"

    invoke-static {v2}, Lu1/a;->p(Ljava/lang/String;)V

    goto :goto_3a

    .line 215
    :catch_5
    const-string v0, "Error parsing MS/ACM codec private"

    const/4 v1, 0x0

    invoke-static {v1, v0}, Lr1/f0;->a(Ljava/lang/RuntimeException;Ljava/lang/String;)Lr1/f0;

    move-result-object v0

    throw v0

    :pswitch_1e
    move-object/from16 v40, v3

    move-object/from16 v39, v4

    move-object/from16 v22, v5

    const/16 v1, 0xf

    const/16 v3, 0x18

    const/16 v18, 0x14

    .line 216
    iget-object v2, v0, Ld3/e;->l:[B

    if-nez v2, :cond_8a

    const/4 v2, 0x0

    goto :goto_3b

    :cond_8a
    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    .line 217
    :goto_3b
    const-string v13, "video/mp4v-es"

    move-object v5, v2

    const/4 v2, -0x1

    const/4 v4, -0x1

    goto/16 :goto_34

    .line 218
    :goto_3c
    iget-object v1, v0, Ld3/e;->P:[B

    if-eqz v1, :cond_8b

    .line 219
    new-instance v1, Lu1/q;

    iget-object v3, v0, Ld3/e;->P:[B

    invoke-direct {v1, v3}, Lu1/q;-><init>([B)V

    .line 220
    invoke-static {v1}, Lbd/c;->e(Lu1/q;)Lbd/c;

    move-result-object v1

    if-eqz v1, :cond_8b

    .line 221
    iget-object v14, v1, Lbd/c;->b:Ljava/lang/String;

    const-string v13, "video/dolby-vision"

    .line 222
    :cond_8b
    iget-boolean v1, v0, Ld3/e;->Y:Z

    .line 223
    iget-boolean v3, v0, Ld3/e;->X:Z

    if-eqz v3, :cond_8c

    const/4 v3, 0x2

    goto :goto_3d

    :cond_8c
    const/4 v3, 0x0

    :goto_3d
    or-int/2addr v1, v3

    .line 224
    new-instance v3, Lr1/o;

    invoke-direct {v3}, Lr1/o;-><init>()V

    .line 225
    invoke-static {v13}, Lr1/e0;->h(Ljava/lang/String;)Z

    move-result v21

    move-object/from16 v35, v7

    sget-object v7, Ld3/f;->p0:Ljava/util/Map;

    if-eqz v21, :cond_8d

    .line 226
    iget v6, v0, Ld3/e;->Q:I

    .line 227
    iput v6, v3, Lr1/o;->F:I

    .line 228
    iget v6, v0, Ld3/e;->S:I

    .line 229
    iput v6, v3, Lr1/o;->G:I

    .line 230
    iput v2, v3, Lr1/o;->H:I

    :goto_3e
    const/16 v2, 0x19

    goto/16 :goto_47

    .line 231
    :cond_8d
    invoke-static {v13}, Lr1/e0;->k(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9b

    .line 232
    iget v2, v0, Ld3/e;->s:I

    if-nez v2, :cond_90

    .line 233
    iget v2, v0, Ld3/e;->q:I

    const/4 v6, -0x1

    if-ne v2, v6, :cond_8e

    iget v2, v0, Ld3/e;->n:I

    :cond_8e
    iput v2, v0, Ld3/e;->q:I

    .line 234
    iget v2, v0, Ld3/e;->r:I

    if-ne v2, v6, :cond_8f

    iget v2, v0, Ld3/e;->o:I

    :cond_8f
    iput v2, v0, Ld3/e;->r:I

    goto :goto_3f

    :cond_90
    const/4 v6, -0x1

    .line 235
    :goto_3f
    iget v2, v0, Ld3/e;->q:I

    const/high16 v8, -0x40800000    # -1.0f

    if-eq v2, v6, :cond_91

    iget v11, v0, Ld3/e;->r:I

    if-eq v11, v6, :cond_91

    .line 236
    iget v6, v0, Ld3/e;->o:I

    mul-int v6, v6, v2

    int-to-float v2, v6

    iget v6, v0, Ld3/e;->n:I

    mul-int v6, v6, v11

    int-to-float v6, v6

    div-float/2addr v2, v6

    goto :goto_40

    :cond_91
    const/high16 v2, -0x40800000    # -1.0f

    .line 237
    :goto_40
    iget-boolean v6, v0, Ld3/e;->z:Z

    if-eqz v6, :cond_94

    .line 238
    iget v6, v0, Ld3/e;->F:F

    cmpl-float v6, v6, v8

    if-eqz v6, :cond_92

    iget v6, v0, Ld3/e;->G:F

    cmpl-float v6, v6, v8

    if-eqz v6, :cond_92

    iget v6, v0, Ld3/e;->H:F

    cmpl-float v6, v6, v8

    if-eqz v6, :cond_92

    iget v6, v0, Ld3/e;->I:F

    cmpl-float v6, v6, v8

    if-eqz v6, :cond_92

    iget v6, v0, Ld3/e;->J:F

    cmpl-float v6, v6, v8

    if-eqz v6, :cond_92

    iget v6, v0, Ld3/e;->K:F

    cmpl-float v6, v6, v8

    if-eqz v6, :cond_92

    iget v6, v0, Ld3/e;->L:F

    cmpl-float v6, v6, v8

    if-eqz v6, :cond_92

    iget v6, v0, Ld3/e;->M:F

    cmpl-float v6, v6, v8

    if-eqz v6, :cond_92

    iget v6, v0, Ld3/e;->N:F

    cmpl-float v6, v6, v8

    if-eqz v6, :cond_92

    iget v6, v0, Ld3/e;->O:F

    cmpl-float v6, v6, v8

    if-nez v6, :cond_93

    :cond_92
    const/16 v6, 0x19

    goto/16 :goto_41

    :cond_93
    const/16 v6, 0x19

    .line 239
    new-array v8, v6, [B

    .line 240
    invoke-static {v8}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v11

    sget-object v12, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v11, v12}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v11

    const/4 v12, 0x0

    .line 241
    invoke-virtual {v11, v12}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 242
    iget v12, v0, Ld3/e;->F:F

    const v15, 0x47435000    # 50000.0f

    mul-float v12, v12, v15

    const/high16 v16, 0x3f000000    # 0.5f

    add-float v12, v12, v16

    float-to-int v12, v12

    int-to-short v12, v12

    invoke-virtual {v11, v12}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 243
    iget v12, v0, Ld3/e;->G:F

    mul-float v12, v12, v15

    add-float v12, v12, v16

    float-to-int v12, v12

    int-to-short v12, v12

    invoke-virtual {v11, v12}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 244
    iget v12, v0, Ld3/e;->H:F

    mul-float v12, v12, v15

    add-float v12, v12, v16

    float-to-int v12, v12

    int-to-short v12, v12

    invoke-virtual {v11, v12}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 245
    iget v12, v0, Ld3/e;->I:F

    mul-float v12, v12, v15

    add-float v12, v12, v16

    float-to-int v12, v12

    int-to-short v12, v12

    invoke-virtual {v11, v12}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 246
    iget v12, v0, Ld3/e;->J:F

    mul-float v12, v12, v15

    add-float v12, v12, v16

    float-to-int v12, v12

    int-to-short v12, v12

    invoke-virtual {v11, v12}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 247
    iget v12, v0, Ld3/e;->K:F

    mul-float v12, v12, v15

    add-float v12, v12, v16

    float-to-int v12, v12

    int-to-short v12, v12

    invoke-virtual {v11, v12}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 248
    iget v12, v0, Ld3/e;->L:F

    mul-float v12, v12, v15

    add-float v12, v12, v16

    float-to-int v12, v12

    int-to-short v12, v12

    invoke-virtual {v11, v12}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 249
    iget v12, v0, Ld3/e;->M:F

    mul-float v12, v12, v15

    add-float v12, v12, v16

    float-to-int v12, v12

    int-to-short v12, v12

    invoke-virtual {v11, v12}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 250
    iget v12, v0, Ld3/e;->N:F

    add-float v12, v12, v16

    float-to-int v12, v12

    int-to-short v12, v12

    invoke-virtual {v11, v12}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 251
    iget v12, v0, Ld3/e;->O:F

    add-float v12, v12, v16

    float-to-int v12, v12

    int-to-short v12, v12

    invoke-virtual {v11, v12}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 252
    iget v12, v0, Ld3/e;->D:I

    int-to-short v12, v12

    invoke-virtual {v11, v12}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 253
    iget v12, v0, Ld3/e;->E:I

    int-to-short v12, v12

    invoke-virtual {v11, v12}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    move-object/from16 v46, v8

    goto :goto_42

    :goto_41
    const/16 v46, 0x0

    .line 254
    :goto_42
    iget v8, v0, Ld3/e;->A:I

    .line 255
    iget v11, v0, Ld3/e;->C:I

    .line 256
    iget v12, v0, Ld3/e;->B:I

    .line 257
    iget v15, v0, Ld3/e;->p:I

    .line 258
    new-instance v16, Lr1/g;

    move-object/from16 v42, v16

    move/from16 v43, v8

    move/from16 v44, v11

    move/from16 v45, v12

    move/from16 v47, v15

    move/from16 v48, v15

    invoke-direct/range {v42 .. v48}, Lr1/g;-><init>(III[BII)V

    move-object/from16 v8, v16

    goto :goto_43

    :cond_94
    const/16 v6, 0x19

    const/4 v8, 0x0

    .line 259
    :goto_43
    iget-object v11, v0, Ld3/e;->b:Ljava/lang/String;

    if-eqz v11, :cond_95

    invoke-interface {v7, v11}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_95

    .line 260
    iget-object v11, v0, Ld3/e;->b:Ljava/lang/String;

    invoke-interface {v7, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    goto :goto_44

    :cond_95
    const/4 v11, -0x1

    .line 261
    :goto_44
    iget v12, v0, Ld3/e;->t:I

    if-nez v12, :cond_9a

    iget v12, v0, Ld3/e;->u:F

    const/4 v15, 0x0

    .line 262
    invoke-static {v12, v15}, Ljava/lang/Float;->compare(FF)I

    move-result v12

    if-nez v12, :cond_9a

    iget v12, v0, Ld3/e;->v:F

    .line 263
    invoke-static {v12, v15}, Ljava/lang/Float;->compare(FF)I

    move-result v12

    if-nez v12, :cond_9a

    .line 264
    iget v12, v0, Ld3/e;->w:F

    invoke-static {v12, v15}, Ljava/lang/Float;->compare(FF)I

    move-result v12

    if-nez v12, :cond_96

    const/4 v11, 0x0

    goto :goto_46

    .line 265
    :cond_96
    iget v12, v0, Ld3/e;->w:F

    const/high16 v15, 0x42b40000    # 90.0f

    invoke-static {v12, v15}, Ljava/lang/Float;->compare(FF)I

    move-result v12

    if-nez v12, :cond_97

    const/16 v11, 0x5a

    goto :goto_46

    .line 266
    :cond_97
    iget v12, v0, Ld3/e;->w:F

    const/high16 v15, -0x3ccc0000    # -180.0f

    invoke-static {v12, v15}, Ljava/lang/Float;->compare(FF)I

    move-result v12

    if-eqz v12, :cond_99

    iget v12, v0, Ld3/e;->w:F

    const/high16 v15, 0x43340000    # 180.0f

    .line 267
    invoke-static {v12, v15}, Ljava/lang/Float;->compare(FF)I

    move-result v12

    if-nez v12, :cond_98

    goto :goto_45

    .line 268
    :cond_98
    iget v12, v0, Ld3/e;->w:F

    const/high16 v15, -0x3d4c0000    # -90.0f

    invoke-static {v12, v15}, Ljava/lang/Float;->compare(FF)I

    move-result v12

    if-nez v12, :cond_9a

    const/16 v11, 0x10e

    goto :goto_46

    :cond_99
    :goto_45
    const/16 v11, 0xb4

    .line 269
    :cond_9a
    :goto_46
    iget v12, v0, Ld3/e;->n:I

    .line 270
    iput v12, v3, Lr1/o;->u:I

    .line 271
    iget v12, v0, Ld3/e;->o:I

    .line 272
    iput v12, v3, Lr1/o;->v:I

    .line 273
    iput v2, v3, Lr1/o;->A:F

    .line 274
    iput v11, v3, Lr1/o;->z:I

    .line 275
    iget-object v2, v0, Ld3/e;->x:[B

    .line 276
    iput-object v2, v3, Lr1/o;->B:[B

    .line 277
    iget v2, v0, Ld3/e;->y:I

    .line 278
    iput v2, v3, Lr1/o;->C:I

    .line 279
    iput-object v8, v3, Lr1/o;->D:Lr1/g;

    goto/16 :goto_3e

    :cond_9b
    const/16 v2, 0x19

    .line 280
    invoke-virtual {v11, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_9d

    .line 281
    invoke-virtual {v6, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_9d

    .line 282
    invoke-virtual {v8, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_9d

    .line 283
    invoke-virtual {v15, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_9d

    .line 284
    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_9d

    move-object/from16 v6, v24

    .line 285
    invoke-virtual {v6, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9c

    goto :goto_47

    .line 286
    :cond_9c
    const-string v0, "Unexpected MIME type."

    const/4 v1, 0x0

    invoke-static {v1, v0}, Lr1/f0;->a(Ljava/lang/RuntimeException;Ljava/lang/String;)Lr1/f0;

    move-result-object v0

    throw v0

    .line 287
    :cond_9d
    :goto_47
    iget-object v6, v0, Ld3/e;->b:Ljava/lang/String;

    if-eqz v6, :cond_9e

    invoke-interface {v7, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_9e

    .line 288
    iget-object v6, v0, Ld3/e;->b:Ljava/lang/String;

    .line 289
    iput-object v6, v3, Lr1/o;->b:Ljava/lang/String;

    .line 290
    :cond_9e
    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v3, Lr1/o;->a:Ljava/lang/String;

    .line 291
    iget-boolean v6, v0, Ld3/e;->a:Z

    if-eqz v6, :cond_9f

    goto :goto_48

    :cond_9f
    const-string v6, "video/x-matroska"

    move-object/from16 v26, v6

    .line 292
    :goto_48
    invoke-static/range {v26 .. v26}, Lr1/e0;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v3, Lr1/o;->m:Ljava/lang/String;

    .line 293
    invoke-static {v13}, Lr1/e0;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v3, Lr1/o;->n:Ljava/lang/String;

    .line 294
    iput v4, v3, Lr1/o;->o:I

    .line 295
    iget-object v4, v0, Ld3/e;->Z:Ljava/lang/String;

    .line 296
    iput-object v4, v3, Lr1/o;->d:Ljava/lang/String;

    .line 297
    iput v1, v3, Lr1/o;->e:I

    .line 298
    iput-object v5, v3, Lr1/o;->q:Ljava/util/List;

    .line 299
    iput-object v14, v3, Lr1/o;->j:Ljava/lang/String;

    .line 300
    iget-object v1, v0, Ld3/e;->m:Lr1/l;

    .line 301
    iput-object v1, v3, Lr1/o;->r:Lr1/l;

    .line 302
    invoke-virtual {v3}, Lr1/o;->a()Lr1/p;

    move-result-object v1

    iput-object v1, v0, Ld3/e;->b0:Lr1/p;

    move-object/from16 v8, v41

    .line 303
    iget-object v1, v8, Ld3/f;->j0:Ll2/q;

    iget v3, v0, Ld3/e;->d:I

    iget v4, v0, Ld3/e;->e:I

    invoke-interface {v1, v3, v4}, Ll2/q;->z(II)Ll2/j0;

    move-result-object v1

    iput-object v1, v0, Ld3/e;->a0:Ll2/j0;

    .line 304
    iget v1, v0, Ld3/e;->d:I

    move-object/from16 v3, v27

    invoke-virtual {v3, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/4 v0, 0x0

    .line 305
    :goto_49
    iput-object v0, v8, Ld3/f;->y:Ld3/e;

    goto :goto_4a

    :cond_a0
    const/4 v0, 0x0

    .line 306
    const-string v1, "CodecId is missing in TrackEntry element"

    invoke-static {v0, v1}, Lr1/f0;->a(Ljava/lang/RuntimeException;Ljava/lang/String;)Lr1/f0;

    move-result-object v0

    throw v0

    :cond_a1
    move-object/from16 v40, v2

    move-object/from16 v39, v3

    move-object/from16 v22, v4

    move-object/from16 v35, v5

    move-object v10, v7

    move-object/from16 v33, v9

    move-object v3, v11

    const/16 v2, 0x19

    const/16 v18, 0x14

    move-object v9, v6

    .line 307
    iget v0, v8, Ld3/f;->O:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_a2

    :goto_4a
    move-object/from16 v3, v33

    const/4 v1, 0x0

    goto/16 :goto_4e

    .line 308
    :cond_a2
    iget v0, v8, Ld3/f;->U:I

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ld3/e;

    .line 309
    iget-object v1, v0, Ld3/e;->a0:Ll2/j0;

    .line 310
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 311
    iget-wide v3, v8, Ld3/f;->Z:J

    cmp-long v1, v3, v23

    if-lez v1, :cond_a3

    iget-object v1, v0, Ld3/e;->c:Ljava/lang/String;

    move-object/from16 v3, v33

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a4

    const/16 v1, 0x8

    .line 312
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v4

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    .line 313
    invoke-virtual {v4, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v1

    iget-wide v4, v8, Ld3/f;->Z:J

    .line 314
    invoke-virtual {v1, v4, v5}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 315
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    .line 316
    iget-object v4, v8, Ld3/f;->p:Lu1/q;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 317
    array-length v5, v1

    invoke-virtual {v4, v5, v1}, Lu1/q;->M(I[B)V

    goto :goto_4b

    :cond_a3
    move-object/from16 v3, v33

    :cond_a4
    :goto_4b
    const/4 v1, 0x0

    const/4 v4, 0x0

    .line 318
    :goto_4c
    iget v5, v8, Ld3/f;->S:I

    if-ge v1, v5, :cond_a5

    .line 319
    iget-object v5, v8, Ld3/f;->T:[I

    aget v5, v5, v1

    add-int/2addr v4, v5

    const/4 v5, 0x1

    add-int/2addr v1, v5

    goto :goto_4c

    :cond_a5
    const/4 v1, 0x0

    .line 320
    :goto_4d
    iget v5, v8, Ld3/f;->S:I

    if-ge v1, v5, :cond_a7

    .line 321
    iget-wide v5, v8, Ld3/f;->P:J

    iget v7, v0, Ld3/e;->f:I

    mul-int v7, v7, v1

    div-int/lit16 v7, v7, 0x3e8

    int-to-long v11, v7

    add-long v28, v5, v11

    .line 322
    iget v5, v8, Ld3/f;->W:I

    if-nez v1, :cond_a6

    .line 323
    iget-boolean v6, v8, Ld3/f;->Y:Z

    if-nez v6, :cond_a6

    const/4 v6, 0x1

    or-int/2addr v5, v6

    :cond_a6
    move/from16 v30, v5

    .line 324
    iget-object v5, v8, Ld3/f;->T:[I

    aget v31, v5, v1

    sub-int v4, v4, v31

    move-object/from16 v26, v8

    move-object/from16 v27, v0

    move/from16 v32, v4

    .line 325
    invoke-virtual/range {v26 .. v32}, Ld3/f;->j(Ld3/e;JIII)V

    const/4 v5, 0x1

    add-int/2addr v1, v5

    goto :goto_4d

    :cond_a7
    const/4 v1, 0x0

    .line 326
    iput v1, v8, Ld3/f;->O:I

    :goto_4e
    const/4 v0, 0x0

    const/4 v1, 0x2

    const/16 v6, 0x8

    const/4 v7, 0x3

    const/4 v12, 0x5

    const/4 v15, 0x4

    :goto_4f
    const/16 v21, 0x1

    goto/16 :goto_5c

    :cond_a8
    move-object/from16 v40, v2

    move-object/from16 v39, v3

    move-object/from16 v22, v4

    move-object/from16 v35, v5

    move-object v10, v7

    move-object v3, v9

    const/4 v1, 0x0

    const/16 v2, 0x19

    const/16 v18, 0x14

    move-object v9, v6

    .line 327
    iget v0, v8, Ld3/b;->e:I

    iget-object v4, v8, Ld3/b;->c:Ld3/h;

    if-nez v0, :cond_ae

    .line 328
    move-object/from16 v0, p1

    check-cast v0, Ll2/l;

    const/4 v5, 0x1

    const/4 v6, 0x4

    invoke-virtual {v4, v0, v5, v1, v6}, Ld3/h;->c(Ll2/l;ZZI)J

    move-result-wide v12

    const-wide/16 v23, -0x2

    cmp-long v5, v12, v23

    if-nez v5, :cond_ab

    .line 329
    invoke-virtual {v0}, Ll2/l;->h()V

    .line 330
    :goto_50
    iget-object v5, v8, Ld3/b;->a:[B

    invoke-interface {v0, v1, v6, v5}, Ll2/p;->a(II[B)V

    .line 331
    aget-byte v7, v5, v1

    invoke-static {v7}, Ld3/h;->b(I)I

    move-result v7

    const/4 v12, -0x1

    if-eq v7, v12, :cond_ac

    if-gt v7, v6, :cond_ac

    .line 332
    invoke-static {v7, v5, v1}, Ld3/h;->a(I[BZ)J

    move-result-wide v5

    long-to-int v1, v5

    .line 333
    iget-object v5, v8, Ld3/b;->d:La1/i;

    .line 334
    iget-object v5, v5, La1/i;->b:Ljava/lang/Object;

    check-cast v5, Ld3/f;

    .line 335
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eq v1, v15, :cond_aa

    const v5, 0x1f43b675

    if-eq v1, v5, :cond_aa

    const v5, 0x1c53bb6b

    if-eq v1, v5, :cond_aa

    const v6, 0x1654ae6b

    if-ne v1, v6, :cond_a9

    goto :goto_52

    :cond_a9
    :goto_51
    const/4 v1, 0x1

    goto :goto_53

    .line 336
    :cond_aa
    :goto_52
    invoke-interface {v0, v7}, Ll2/p;->i(I)V

    int-to-long v12, v1

    :cond_ab
    const/4 v1, 0x1

    const-wide/16 v5, -0x1

    goto :goto_54

    :cond_ac
    const v5, 0x1c53bb6b

    const v6, 0x1654ae6b

    goto :goto_51

    .line 337
    :goto_53
    invoke-interface {v0, v1}, Ll2/p;->i(I)V

    const/4 v1, 0x0

    const/4 v6, 0x4

    goto :goto_50

    :goto_54
    cmp-long v0, v12, v5

    if-nez v0, :cond_ad

    const/4 v0, 0x0

    const/4 v1, 0x2

    const/16 v6, 0x8

    const/4 v7, 0x3

    const/4 v12, 0x5

    const/4 v15, 0x4

    const/16 v21, 0x0

    goto/16 :goto_5c

    :cond_ad
    long-to-int v0, v12

    .line 338
    iput v0, v8, Ld3/b;->f:I

    .line 339
    iput v1, v8, Ld3/b;->e:I

    goto :goto_55

    :cond_ae
    const/4 v1, 0x1

    .line 340
    :goto_55
    iget v0, v8, Ld3/b;->e:I

    if-ne v0, v1, :cond_af

    .line 341
    move-object/from16 v0, p1

    check-cast v0, Ll2/l;

    const/4 v5, 0x0

    const/16 v6, 0x8

    invoke-virtual {v4, v0, v5, v1, v6}, Ld3/h;->c(Ll2/l;ZZI)J

    move-result-wide v12

    iput-wide v12, v8, Ld3/b;->g:J

    const/4 v0, 0x2

    .line 342
    iput v0, v8, Ld3/b;->e:I

    goto :goto_56

    :cond_af
    const/16 v6, 0x8

    .line 343
    :goto_56
    iget-object v0, v8, Ld3/b;->d:La1/i;

    iget v1, v8, Ld3/b;->f:I

    .line 344
    iget-object v0, v0, La1/i;->b:Ljava/lang/Object;

    check-cast v0, Ld3/f;

    .line 345
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sparse-switch v1, :sswitch_data_2

    const/4 v0, 0x0

    goto :goto_57

    :sswitch_44
    const/4 v0, 0x5

    goto :goto_57

    :sswitch_45
    const/4 v0, 0x4

    goto :goto_57

    :sswitch_46
    const/4 v0, 0x1

    goto :goto_57

    :sswitch_47
    const/4 v0, 0x3

    goto :goto_57

    :sswitch_48
    const/4 v0, 0x2

    :goto_57
    if-eqz v0, :cond_bf

    const/4 v1, 0x1

    if-eq v0, v1, :cond_bb

    const-wide/16 v4, 0x8

    const/4 v1, 0x2

    if-eq v0, v1, :cond_b9

    const/4 v7, 0x3

    if-eq v0, v7, :cond_b5

    const/4 v11, 0x4

    if-eq v0, v11, :cond_b4

    const/4 v12, 0x5

    if-ne v0, v12, :cond_b3

    .line 346
    iget-wide v13, v8, Ld3/b;->g:J

    const-wide/16 v15, 0x4

    cmp-long v0, v13, v15

    if-eqz v0, :cond_b1

    cmp-long v0, v13, v4

    if-nez v0, :cond_b0

    goto :goto_58

    .line 347
    :cond_b0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Invalid float size: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v1, v8, Ld3/b;->g:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v1, v0}, Lr1/f0;->a(Ljava/lang/RuntimeException;Ljava/lang/String;)Lr1/f0;

    move-result-object v0

    throw v0

    .line 348
    :cond_b1
    :goto_58
    iget-object v0, v8, Ld3/b;->d:La1/i;

    iget v4, v8, Ld3/b;->f:I

    long-to-int v5, v13

    .line 349
    move-object/from16 v11, p1

    check-cast v11, Ll2/l;

    invoke-virtual {v8, v11, v5}, Ld3/b;->a(Ll2/l;I)J

    move-result-wide v13

    const/4 v15, 0x4

    if-ne v5, v15, :cond_b2

    long-to-int v5, v13

    .line 350
    invoke-static {v5}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v5

    float-to-double v13, v5

    goto :goto_59

    .line 351
    :cond_b2
    invoke-static {v13, v14}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v13

    .line 352
    :goto_59
    invoke-virtual {v0, v4, v13, v14}, La1/i;->m(ID)V

    const/4 v0, 0x0

    .line 353
    iput v0, v8, Ld3/b;->e:I

    goto/16 :goto_4f

    .line 354
    :cond_b3
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid element type "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v1, v0}, Lr1/f0;->a(Ljava/lang/RuntimeException;Ljava/lang/String;)Lr1/f0;

    move-result-object v0

    throw v0

    :cond_b4
    const/4 v12, 0x5

    const/4 v15, 0x4

    .line 355
    iget-object v0, v8, Ld3/b;->d:La1/i;

    iget v4, v8, Ld3/b;->f:I

    iget-wide v13, v8, Ld3/b;->g:J

    long-to-int v5, v13

    move-object/from16 v11, p1

    check-cast v11, Ll2/l;

    invoke-virtual {v0, v4, v5, v11}, La1/i;->l(IILl2/l;)V

    const/4 v0, 0x0

    .line 356
    iput v0, v8, Ld3/b;->e:I

    goto/16 :goto_4f

    :cond_b5
    const/4 v12, 0x5

    const/4 v15, 0x4

    .line 357
    iget-wide v4, v8, Ld3/b;->g:J

    const-wide/32 v13, 0x7fffffff

    cmp-long v0, v4, v13

    if-gtz v0, :cond_b8

    .line 358
    iget-object v0, v8, Ld3/b;->d:La1/i;

    iget v11, v8, Ld3/b;->f:I

    long-to-int v5, v4

    if-nez v5, :cond_b6

    .line 359
    const-string v4, ""

    const/4 v14, 0x0

    goto :goto_5b

    .line 360
    :cond_b6
    new-array v4, v5, [B

    .line 361
    move-object/from16 v13, p1

    check-cast v13, Ll2/l;

    const/4 v14, 0x0

    invoke-virtual {v13, v4, v14, v5}, Ll2/l;->readFully([BII)V

    :goto_5a
    if-lez v5, :cond_b7

    const/4 v13, 0x1

    add-int/lit8 v16, v5, -0x1

    .line 362
    aget-byte v13, v4, v16

    if-nez v13, :cond_b7

    const/4 v13, -0x1

    add-int/2addr v5, v13

    goto :goto_5a

    .line 363
    :cond_b7
    new-instance v13, Ljava/lang/String;

    invoke-direct {v13, v4, v14, v5}, Ljava/lang/String;-><init>([BII)V

    move-object v4, v13

    .line 364
    :goto_5b
    invoke-virtual {v0, v11, v4}, La1/i;->H(ILjava/lang/String;)V

    .line 365
    iput v14, v8, Ld3/b;->e:I

    const/4 v0, 0x0

    goto/16 :goto_4f

    .line 366
    :cond_b8
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "String element size: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v1, v8, Ld3/b;->g:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v1, v0}, Lr1/f0;->a(Ljava/lang/RuntimeException;Ljava/lang/String;)Lr1/f0;

    move-result-object v0

    throw v0

    :cond_b9
    const/4 v7, 0x3

    const/4 v12, 0x5

    const/4 v15, 0x4

    .line 367
    iget-wide v13, v8, Ld3/b;->g:J

    cmp-long v0, v13, v4

    if-gtz v0, :cond_ba

    .line 368
    iget-object v0, v8, Ld3/b;->d:La1/i;

    iget v4, v8, Ld3/b;->f:I

    long-to-int v5, v13

    move-object/from16 v11, p1

    check-cast v11, Ll2/l;

    invoke-virtual {v8, v11, v5}, Ld3/b;->a(Ll2/l;I)J

    move-result-wide v13

    invoke-virtual {v0, v4, v13, v14}, La1/i;->u(IJ)V

    const/4 v0, 0x0

    .line 369
    iput v0, v8, Ld3/b;->e:I

    goto/16 :goto_4f

    .line 370
    :cond_ba
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Invalid integer size: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v1, v8, Ld3/b;->g:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v1, v0}, Lr1/f0;->a(Ljava/lang/RuntimeException;Ljava/lang/String;)Lr1/f0;

    move-result-object v0

    throw v0

    :cond_bb
    const/4 v1, 0x2

    const/4 v7, 0x3

    const/4 v12, 0x5

    const/4 v15, 0x4

    .line 371
    move-object/from16 v0, p1

    check-cast v0, Ll2/l;

    invoke-virtual {v0}, Ll2/l;->getPosition()J

    move-result-wide v25

    .line 372
    iget-wide v4, v8, Ld3/b;->g:J

    add-long v4, v25, v4

    .line 373
    new-instance v0, Ld3/a;

    iget v13, v8, Ld3/b;->f:I

    invoke-direct {v0, v13, v4, v5}, Ld3/a;-><init>(IJ)V

    invoke-virtual {v11, v0}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    .line 374
    iget-object v0, v8, Ld3/b;->d:La1/i;

    iget v4, v8, Ld3/b;->f:I

    iget-wide v13, v8, Ld3/b;->g:J

    move-object/from16 v23, v0

    move/from16 v24, v4

    move-wide/from16 v27, v13

    invoke-virtual/range {v23 .. v28}, La1/i;->G(IJJ)V

    const/4 v0, 0x0

    .line 375
    iput v0, v8, Ld3/b;->e:I

    goto/16 :goto_4f

    :goto_5c
    if-eqz v21, :cond_bd

    .line 376
    move-object/from16 v4, p1

    check-cast v4, Ll2/l;

    invoke-virtual {v4}, Ll2/l;->getPosition()J

    move-result-wide v4

    move-object/from16 v11, p0

    .line 377
    iget-boolean v8, v11, Ld3/f;->J:Z

    if-eqz v8, :cond_bc

    .line 378
    iput-wide v4, v11, Ld3/f;->L:J

    .line 379
    iget-wide v1, v11, Ld3/f;->K:J

    move-object/from16 v4, p2

    iput-wide v1, v4, Ldd/c;->b:J

    .line 380
    iput-boolean v0, v11, Ld3/f;->J:Z

    :goto_5d
    const/4 v0, 0x1

    goto :goto_5e

    :cond_bc
    move-object/from16 v4, p2

    .line 381
    iget-boolean v0, v11, Ld3/f;->z:Z

    if-eqz v0, :cond_be

    iget-wide v13, v11, Ld3/f;->L:J

    const-wide/16 v1, -0x1

    cmp-long v0, v13, v1

    if-eqz v0, :cond_be

    .line 382
    iput-wide v13, v4, Ldd/c;->b:J

    .line 383
    iput-wide v1, v11, Ld3/f;->L:J

    goto :goto_5d

    :goto_5e
    return v0

    :cond_bd
    move-object/from16 v11, p0

    move-object/from16 v4, p2

    :cond_be
    move-object v1, v4

    move-object v6, v9

    move-object v7, v10

    move-object v0, v11

    move-object/from16 v4, v22

    move-object/from16 v5, v35

    move-object/from16 v2, v40

    const/4 v12, 0x0

    move-object v9, v3

    move-object/from16 v3, v39

    goto/16 :goto_0

    :cond_bf
    const/4 v7, 0x3

    const/4 v12, 0x5

    const/4 v15, 0x4

    move-object/from16 v11, p0

    move-object/from16 v4, p2

    .line 384
    iget-wide v0, v8, Ld3/b;->g:J

    long-to-int v1, v0

    move-object/from16 v0, p1

    check-cast v0, Ll2/l;

    invoke-virtual {v0, v1}, Ll2/l;->i(I)V

    const/4 v0, 0x0

    .line 385
    iput v0, v8, Ld3/b;->e:I

    move-object v1, v4

    move-object v6, v9

    move-object v7, v10

    move-object v0, v11

    move-object/from16 v4, v22

    move-object/from16 v5, v35

    move-object/from16 v2, v40

    const/4 v12, 0x0

    move-object v9, v3

    move-object/from16 v3, v39

    goto/16 :goto_1

    :cond_c0
    move-object v11, v0

    if-nez v21, :cond_c3

    const/4 v12, 0x0

    .line 386
    :goto_5f
    iget-object v0, v11, Ld3/f;->c:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v12, v1, :cond_c2

    .line 387
    invoke-virtual {v0, v12}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ld3/e;

    .line 388
    iget-object v1, v0, Ld3/e;->a0:Ll2/j0;

    .line 389
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 390
    iget-object v1, v0, Ld3/e;->V:Ll2/k0;

    if-eqz v1, :cond_c1

    .line 391
    iget-object v2, v0, Ld3/e;->a0:Ll2/j0;

    iget-object v0, v0, Ld3/e;->k:Ll2/i0;

    invoke-virtual {v1, v2, v0}, Ll2/k0;->a(Ll2/j0;Ll2/i0;)V

    :cond_c1
    const/4 v0, 0x1

    add-int/2addr v12, v0

    goto :goto_5f

    :cond_c2
    const/4 v1, -0x1

    return v1

    :cond_c3
    const/4 v0, 0x0

    return v0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7ce7f5de -> :sswitch_21
        -0x7ce7f3b0 -> :sswitch_20
        -0x76567dc0 -> :sswitch_1f
        -0x6a615338 -> :sswitch_1e
        -0x672350af -> :sswitch_1d
        -0x585f4fce -> :sswitch_1c
        -0x585f4fcd -> :sswitch_1b
        -0x51dc40b2 -> :sswitch_1a
        -0x37a9c464 -> :sswitch_19
        -0x2016c535 -> :sswitch_18
        -0x2016c4e5 -> :sswitch_17
        -0x19552dbd -> :sswitch_16
        -0x1538b2ba -> :sswitch_15
        0x3c02325 -> :sswitch_14
        0x3c02353 -> :sswitch_13
        0x3c030c5 -> :sswitch_12
        0x4e81333 -> :sswitch_11
        0x4e86155 -> :sswitch_10
        0x4e86156 -> :sswitch_f
        0x5e8da3e -> :sswitch_e
        0x1a8350d6 -> :sswitch_d
        0x2056f406 -> :sswitch_c
        0x25e26ee2 -> :sswitch_b
        0x2b45174d -> :sswitch_a
        0x2b453ce4 -> :sswitch_9
        0x2c0618eb -> :sswitch_8
        0x2c065c6b -> :sswitch_7
        0x32fdf009 -> :sswitch_6
        0x3e4ca2d8 -> :sswitch_5
        0x54c61e47 -> :sswitch_4
        0x6bd6c624 -> :sswitch_3
        0x7446132a -> :sswitch_2
        0x7446b0a6 -> :sswitch_1
        0x744ad97d -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :sswitch_data_1
    .sparse-switch
        -0x7ce7f5de -> :sswitch_43
        -0x7ce7f3b0 -> :sswitch_42
        -0x76567dc0 -> :sswitch_41
        -0x6a615338 -> :sswitch_40
        -0x672350af -> :sswitch_3f
        -0x585f4fce -> :sswitch_3e
        -0x585f4fcd -> :sswitch_3d
        -0x51dc40b2 -> :sswitch_3c
        -0x37a9c464 -> :sswitch_3b
        -0x2016c535 -> :sswitch_3a
        -0x2016c4e5 -> :sswitch_39
        -0x19552dbd -> :sswitch_38
        -0x1538b2ba -> :sswitch_37
        0x3c02325 -> :sswitch_36
        0x3c02353 -> :sswitch_35
        0x3c030c5 -> :sswitch_34
        0x4e81333 -> :sswitch_33
        0x4e86155 -> :sswitch_32
        0x4e86156 -> :sswitch_31
        0x5e8da3e -> :sswitch_30
        0x1a8350d6 -> :sswitch_2f
        0x2056f406 -> :sswitch_2e
        0x25e26ee2 -> :sswitch_2d
        0x2b45174d -> :sswitch_2c
        0x2b453ce4 -> :sswitch_2b
        0x2c0618eb -> :sswitch_2a
        0x2c065c6b -> :sswitch_29
        0x32fdf009 -> :sswitch_28
        0x3e4ca2d8 -> :sswitch_27
        0x54c61e47 -> :sswitch_26
        0x6bd6c624 -> :sswitch_25
        0x7446132a -> :sswitch_24
        0x7446b0a6 -> :sswitch_23
        0x744ad97d -> :sswitch_22
    .end sparse-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1e
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_1e
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_11
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch

    :sswitch_data_2
    .sparse-switch
        0x83 -> :sswitch_48
        0x86 -> :sswitch_47
        0x88 -> :sswitch_48
        0x9b -> :sswitch_48
        0x9f -> :sswitch_48
        0xa0 -> :sswitch_46
        0xa1 -> :sswitch_45
        0xa3 -> :sswitch_45
        0xa5 -> :sswitch_45
        0xa6 -> :sswitch_46
        0xae -> :sswitch_46
        0xb0 -> :sswitch_48
        0xb3 -> :sswitch_48
        0xb5 -> :sswitch_44
        0xb7 -> :sswitch_46
        0xba -> :sswitch_48
        0xbb -> :sswitch_46
        0xd7 -> :sswitch_48
        0xe0 -> :sswitch_46
        0xe1 -> :sswitch_46
        0xe7 -> :sswitch_48
        0xee -> :sswitch_48
        0xf0 -> :sswitch_48
        0xf1 -> :sswitch_48
        0xf7 -> :sswitch_48
        0xfb -> :sswitch_48
        0x41e4 -> :sswitch_46
        0x41e7 -> :sswitch_48
        0x41ed -> :sswitch_45
        0x4254 -> :sswitch_48
        0x4255 -> :sswitch_45
        0x4282 -> :sswitch_47
        0x4285 -> :sswitch_48
        0x42f7 -> :sswitch_48
        0x4489 -> :sswitch_44
        0x47e1 -> :sswitch_48
        0x47e2 -> :sswitch_45
        0x47e7 -> :sswitch_46
        0x47e8 -> :sswitch_48
        0x4dbb -> :sswitch_46
        0x5031 -> :sswitch_48
        0x5032 -> :sswitch_48
        0x5034 -> :sswitch_46
        0x5035 -> :sswitch_46
        0x536e -> :sswitch_47
        0x53ab -> :sswitch_45
        0x53ac -> :sswitch_48
        0x53b8 -> :sswitch_48
        0x54b0 -> :sswitch_48
        0x54b2 -> :sswitch_48
        0x54ba -> :sswitch_48
        0x55aa -> :sswitch_48
        0x55b0 -> :sswitch_46
        0x55b2 -> :sswitch_48
        0x55b9 -> :sswitch_48
        0x55ba -> :sswitch_48
        0x55bb -> :sswitch_48
        0x55bc -> :sswitch_48
        0x55bd -> :sswitch_48
        0x55d0 -> :sswitch_46
        0x55d1 -> :sswitch_44
        0x55d2 -> :sswitch_44
        0x55d3 -> :sswitch_44
        0x55d4 -> :sswitch_44
        0x55d5 -> :sswitch_44
        0x55d6 -> :sswitch_44
        0x55d7 -> :sswitch_44
        0x55d8 -> :sswitch_44
        0x55d9 -> :sswitch_44
        0x55da -> :sswitch_44
        0x55ee -> :sswitch_48
        0x56aa -> :sswitch_48
        0x56bb -> :sswitch_48
        0x6240 -> :sswitch_46
        0x6264 -> :sswitch_48
        0x63a2 -> :sswitch_45
        0x6d80 -> :sswitch_46
        0x75a1 -> :sswitch_46
        0x75a2 -> :sswitch_48
        0x7670 -> :sswitch_46
        0x7671 -> :sswitch_48
        0x7672 -> :sswitch_45
        0x7673 -> :sswitch_44
        0x7674 -> :sswitch_44
        0x7675 -> :sswitch_44
        0x22b59c -> :sswitch_47
        0x23e383 -> :sswitch_48
        0x2ad7b1 -> :sswitch_48
        0x114d9b74 -> :sswitch_46
        0x1549a966 -> :sswitch_46
        0x1654ae6b -> :sswitch_46
        0x18538067 -> :sswitch_46
        0x1a45dfa3 -> :sswitch_46
        0x1c53bb6b -> :sswitch_46
        0x1f43b675 -> :sswitch_46
    .end sparse-switch
.end method

.method public final e(JJ)V
    .locals 1

    .line 1
    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    .line 2
    .line 3
    .line 4
    .line 5
    .line 6
    iput-wide p1, p0, Ld3/f;->M:J

    .line 7
    .line 8
    const/4 p3, 0x0

    .line 9
    iput p3, p0, Ld3/f;->O:I

    .line 10
    .line 11
    iget-object p4, p0, Ld3/f;->a:Ld3/b;

    .line 12
    .line 13
    iput p3, p4, Ld3/b;->e:I

    .line 14
    .line 15
    iget-object v0, p4, Ld3/b;->b:Ljava/util/ArrayDeque;

    .line 16
    .line 17
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->clear()V

    .line 18
    .line 19
    .line 20
    iget-object p4, p4, Ld3/b;->c:Ld3/h;

    .line 21
    .line 22
    iput p3, p4, Ld3/h;->b:I

    .line 23
    .line 24
    iput p3, p4, Ld3/h;->c:I

    .line 25
    .line 26
    iget-object p4, p0, Ld3/f;->b:Ld3/h;

    .line 27
    .line 28
    iput p3, p4, Ld3/h;->b:I

    .line 29
    .line 30
    iput p3, p4, Ld3/h;->c:I

    .line 31
    .line 32
    invoke-virtual {p0}, Ld3/f;->n()V

    .line 33
    .line 34
    .line 35
    iput-boolean p3, p0, Ld3/f;->D:Z

    .line 36
    .line 37
    iput-wide p1, p0, Ld3/f;->E:J

    .line 38
    .line 39
    const/4 p1, -0x1

    .line 40
    iput p1, p0, Ld3/f;->F:I

    .line 41
    .line 42
    const-wide/16 p1, -0x1

    .line 43
    .line 44
    iput-wide p1, p0, Ld3/f;->G:J

    .line 45
    .line 46
    iput-wide p1, p0, Ld3/f;->H:J

    .line 47
    .line 48
    iget-boolean p1, p0, Ld3/f;->z:Z

    .line 49
    .line 50
    if-nez p1, :cond_0

    .line 51
    .line 52
    iget-object p1, p0, Ld3/f;->C:Landroid/util/SparseArray;

    .line 53
    .line 54
    invoke-virtual {p1}, Landroid/util/SparseArray;->clear()V

    .line 55
    .line 56
    .line 57
    :cond_0
    const/4 p1, 0x0

    .line 58
    :goto_0
    iget-object p2, p0, Ld3/f;->c:Landroid/util/SparseArray;

    .line 59
    .line 60
    invoke-virtual {p2}, Landroid/util/SparseArray;->size()I

    .line 61
    .line 62
    .line 63
    move-result p4

    .line 64
    if-ge p1, p4, :cond_2

    .line 65
    .line 66
    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    move-result-object p2

    .line 70
    check-cast p2, Ld3/e;

    .line 71
    .line 72
    iget-object p2, p2, Ld3/e;->V:Ll2/k0;

    .line 73
    .line 74
    if-eqz p2, :cond_1

    .line 75
    .line 76
    iput-boolean p3, p2, Ll2/k0;->b:Z

    .line 77
    .line 78
    iput p3, p2, Ll2/k0;->c:I

    .line 79
    .line 80
    :cond_1
    add-int/lit8 p1, p1, 0x1

    .line 81
    .line 82
    goto :goto_0

    .line 83
    :cond_2
    return-void
.end method

.method public final f()Ljava/util/List;
    .locals 1

    .line 1
    sget-object v0, Lu7/g0;->b:Lu7/e0;

    .line 2
    .line 3
    sget-object v0, Lu7/y0;->e:Lu7/y0;

    .line 4
    .line 5
    return-object v0
.end method

.method public final g(Ll2/p;)Z
    .locals 17

    .line 1
    new-instance v0, Ld3/g;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x0

    .line 5
    invoke-direct {v0, v2, v1}, Ld3/g;-><init>(BI)V

    .line 6
    .line 7
    .line 8
    move-object/from16 v1, p1

    .line 9
    .line 10
    check-cast v1, Ll2/l;

    .line 11
    .line 12
    iget-wide v2, v1, Ll2/l;->c:J

    .line 13
    .line 14
    const-wide/16 v4, 0x400

    .line 15
    .line 16
    const-wide/16 v6, -0x1

    .line 17
    .line 18
    cmp-long v8, v2, v6

    .line 19
    .line 20
    if-eqz v8, :cond_1

    .line 21
    .line 22
    cmp-long v8, v2, v4

    .line 23
    .line 24
    if-lez v8, :cond_0

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    move-wide v4, v2

    .line 28
    :cond_1
    :goto_0
    long-to-int v5, v4

    .line 29
    iget-object v4, v0, Ld3/g;->c:Ljava/lang/Object;

    .line 30
    .line 31
    check-cast v4, Lu1/q;

    .line 32
    .line 33
    iget-object v8, v4, Lu1/q;->a:[B

    .line 34
    .line 35
    const/4 v9, 0x0

    .line 36
    const/4 v10, 0x4

    .line 37
    invoke-virtual {v1, v8, v9, v10, v9}, Ll2/l;->c([BIIZ)Z

    .line 38
    .line 39
    .line 40
    invoke-virtual {v4}, Lu1/q;->D()J

    .line 41
    .line 42
    .line 43
    move-result-wide v11

    .line 44
    iput v10, v0, Ld3/g;->b:I

    .line 45
    .line 46
    :goto_1
    const-wide/32 v13, 0x1a45dfa3

    .line 47
    .line 48
    .line 49
    const/4 v8, 0x1

    .line 50
    cmp-long v10, v11, v13

    .line 51
    .line 52
    if-eqz v10, :cond_3

    .line 53
    .line 54
    iget v10, v0, Ld3/g;->b:I

    .line 55
    .line 56
    add-int/2addr v10, v8

    .line 57
    iput v10, v0, Ld3/g;->b:I

    .line 58
    .line 59
    if-ne v10, v5, :cond_2

    .line 60
    .line 61
    goto :goto_3

    .line 62
    :cond_2
    iget-object v10, v4, Lu1/q;->a:[B

    .line 63
    .line 64
    invoke-virtual {v1, v10, v9, v8, v9}, Ll2/l;->c([BIIZ)Z

    .line 65
    .line 66
    .line 67
    const/16 v8, 0x8

    .line 68
    .line 69
    shl-long v10, v11, v8

    .line 70
    .line 71
    const-wide/16 v12, -0x100

    .line 72
    .line 73
    and-long/2addr v10, v12

    .line 74
    iget-object v8, v4, Lu1/q;->a:[B

    .line 75
    .line 76
    aget-byte v8, v8, v9

    .line 77
    .line 78
    and-int/lit16 v8, v8, 0xff

    .line 79
    .line 80
    int-to-long v12, v8

    .line 81
    or-long/2addr v10, v12

    .line 82
    move-wide v11, v10

    .line 83
    goto :goto_1

    .line 84
    :cond_3
    invoke-virtual {v0, v1}, Ld3/g;->o(Ll2/l;)J

    .line 85
    .line 86
    .line 87
    move-result-wide v4

    .line 88
    iget v10, v0, Ld3/g;->b:I

    .line 89
    .line 90
    int-to-long v10, v10

    .line 91
    const-wide/high16 v12, -0x8000000000000000L

    .line 92
    .line 93
    cmp-long v14, v4, v12

    .line 94
    .line 95
    if-eqz v14, :cond_8

    .line 96
    .line 97
    cmp-long v14, v2, v6

    .line 98
    .line 99
    if-eqz v14, :cond_4

    .line 100
    .line 101
    add-long v6, v10, v4

    .line 102
    .line 103
    cmp-long v14, v6, v2

    .line 104
    .line 105
    if-ltz v14, :cond_4

    .line 106
    .line 107
    goto :goto_3

    .line 108
    :cond_4
    :goto_2
    iget v2, v0, Ld3/g;->b:I

    .line 109
    .line 110
    int-to-long v2, v2

    .line 111
    add-long v6, v10, v4

    .line 112
    .line 113
    cmp-long v14, v2, v6

    .line 114
    .line 115
    if-gez v14, :cond_7

    .line 116
    .line 117
    invoke-virtual {v0, v1}, Ld3/g;->o(Ll2/l;)J

    .line 118
    .line 119
    .line 120
    move-result-wide v2

    .line 121
    cmp-long v6, v2, v12

    .line 122
    .line 123
    if-nez v6, :cond_5

    .line 124
    .line 125
    goto :goto_3

    .line 126
    :cond_5
    invoke-virtual {v0, v1}, Ld3/g;->o(Ll2/l;)J

    .line 127
    .line 128
    .line 129
    move-result-wide v2

    .line 130
    const-wide/16 v6, 0x0

    .line 131
    .line 132
    cmp-long v14, v2, v6

    .line 133
    .line 134
    if-ltz v14, :cond_8

    .line 135
    .line 136
    const-wide/32 v14, 0x7fffffff

    .line 137
    .line 138
    .line 139
    cmp-long v16, v2, v14

    .line 140
    .line 141
    if-lez v16, :cond_6

    .line 142
    .line 143
    goto :goto_3

    .line 144
    :cond_6
    cmp-long v14, v2, v6

    .line 145
    .line 146
    if-eqz v14, :cond_4

    .line 147
    .line 148
    long-to-int v3, v2

    .line 149
    invoke-virtual {v1, v3, v9}, Ll2/l;->k(IZ)Z

    .line 150
    .line 151
    .line 152
    iget v2, v0, Ld3/g;->b:I

    .line 153
    .line 154
    add-int/2addr v2, v3

    .line 155
    iput v2, v0, Ld3/g;->b:I

    .line 156
    .line 157
    goto :goto_2

    .line 158
    :cond_7
    cmp-long v0, v2, v6

    .line 159
    .line 160
    if-nez v0, :cond_8

    .line 161
    .line 162
    const/4 v9, 0x1

    .line 163
    :cond_8
    :goto_3
    return v9
.end method

.method public final h(I)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Ld3/f;->D:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 7
    .line 8
    const-string v1, "Element "

    .line 9
    .line 10
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    const-string p1, " must be in a Cues"

    .line 17
    .line 18
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    const/4 v0, 0x0

    .line 26
    invoke-static {v0, p1}, Lr1/f0;->a(Ljava/lang/RuntimeException;Ljava/lang/String;)Lr1/f0;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    throw p1
.end method

.method public final i(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Ld3/f;->y:Ld3/e;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 7
    .line 8
    const-string v1, "Element "

    .line 9
    .line 10
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    const-string p1, " must be in a TrackEntry"

    .line 17
    .line 18
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    const/4 v0, 0x0

    .line 26
    invoke-static {v0, p1}, Lr1/f0;->a(Ljava/lang/RuntimeException;Ljava/lang/String;)Lr1/f0;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    throw p1
.end method

.method public final j(Ld3/e;JIII)V
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    const/4 v2, 0x2

    .line 6
    const-string v3, "S_TEXT/WEBVTT"

    .line 7
    .line 8
    const-string v4, "S_TEXT/SSA"

    .line 9
    .line 10
    const-string v5, "S_TEXT/ASS"

    .line 11
    .line 12
    const/4 v6, 0x0

    .line 13
    const-string v7, "S_TEXT/UTF8"

    .line 14
    .line 15
    iget-object v8, v1, Ld3/e;->V:Ll2/k0;

    .line 16
    .line 17
    const/4 v15, 0x1

    .line 18
    if-eqz v8, :cond_0

    .line 19
    .line 20
    iget-object v9, v1, Ld3/e;->a0:Ll2/j0;

    .line 21
    .line 22
    iget-object v1, v1, Ld3/e;->k:Ll2/i0;

    .line 23
    .line 24
    move-wide/from16 v10, p2

    .line 25
    .line 26
    move/from16 v12, p4

    .line 27
    .line 28
    move/from16 v13, p5

    .line 29
    .line 30
    move/from16 v14, p6

    .line 31
    .line 32
    const/4 v2, 0x1

    .line 33
    move-object v15, v1

    .line 34
    invoke-virtual/range {v8 .. v15}, Ll2/k0;->b(Ll2/j0;JIIILl2/i0;)V

    .line 35
    .line 36
    .line 37
    const/4 v8, 0x1

    .line 38
    goto/16 :goto_7

    .line 39
    .line 40
    :cond_0
    const/4 v8, 0x1

    .line 41
    iget-object v9, v1, Ld3/e;->c:Ljava/lang/String;

    .line 42
    .line 43
    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    move-result v9

    .line 47
    if-nez v9, :cond_1

    .line 48
    .line 49
    iget-object v9, v1, Ld3/e;->c:Ljava/lang/String;

    .line 50
    .line 51
    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 52
    .line 53
    .line 54
    move-result v9

    .line 55
    if-nez v9, :cond_1

    .line 56
    .line 57
    iget-object v9, v1, Ld3/e;->c:Ljava/lang/String;

    .line 58
    .line 59
    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 60
    .line 61
    .line 62
    move-result v9

    .line 63
    if-nez v9, :cond_1

    .line 64
    .line 65
    iget-object v9, v1, Ld3/e;->c:Ljava/lang/String;

    .line 66
    .line 67
    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 68
    .line 69
    .line 70
    move-result v9

    .line 71
    if-eqz v9, :cond_3

    .line 72
    .line 73
    :cond_1
    iget v9, v0, Ld3/f;->S:I

    .line 74
    .line 75
    if-le v9, v8, :cond_2

    .line 76
    .line 77
    const-string v3, "Skipping subtitle sample in laced block."

    .line 78
    .line 79
    invoke-static {v3}, Lu1/a;->p(Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    goto :goto_0

    .line 83
    :cond_2
    iget-wide v9, v0, Ld3/f;->Q:J

    .line 84
    .line 85
    const-wide v11, -0x7fffffffffffffffL    # -4.9E-324

    .line 86
    .line 87
    .line 88
    .line 89
    .line 90
    cmp-long v13, v9, v11

    .line 91
    .line 92
    if-nez v13, :cond_4

    .line 93
    .line 94
    const-string v3, "Skipping subtitle sample with no duration."

    .line 95
    .line 96
    invoke-static {v3}, Lu1/a;->p(Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    :cond_3
    :goto_0
    move/from16 v3, p5

    .line 100
    .line 101
    goto/16 :goto_5

    .line 102
    .line 103
    :cond_4
    iget-object v11, v1, Ld3/e;->c:Ljava/lang/String;

    .line 104
    .line 105
    iget-object v12, v0, Ld3/f;->m:Lu1/q;

    .line 106
    .line 107
    iget-object v13, v12, Lu1/q;->a:[B

    .line 108
    .line 109
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 110
    .line 111
    .line 112
    const-wide/16 v14, 0x3e8

    .line 113
    .line 114
    const/16 v16, -0x1

    .line 115
    .line 116
    invoke-virtual {v11}, Ljava/lang/String;->hashCode()I

    .line 117
    .line 118
    .line 119
    move-result v17

    .line 120
    sparse-switch v17, :sswitch_data_0

    .line 121
    .line 122
    .line 123
    goto :goto_1

    .line 124
    :sswitch_0
    invoke-virtual {v11, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 125
    .line 126
    .line 127
    move-result v3

    .line 128
    if-nez v3, :cond_5

    .line 129
    .line 130
    goto :goto_1

    .line 131
    :cond_5
    const/4 v3, 0x3

    .line 132
    const/16 v16, 0x3

    .line 133
    .line 134
    goto :goto_1

    .line 135
    :sswitch_1
    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 136
    .line 137
    .line 138
    move-result v3

    .line 139
    if-nez v3, :cond_6

    .line 140
    .line 141
    goto :goto_1

    .line 142
    :cond_6
    const/16 v16, 0x2

    .line 143
    .line 144
    goto :goto_1

    .line 145
    :sswitch_2
    invoke-virtual {v11, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 146
    .line 147
    .line 148
    move-result v3

    .line 149
    if-nez v3, :cond_7

    .line 150
    .line 151
    goto :goto_1

    .line 152
    :cond_7
    const/16 v16, 0x1

    .line 153
    .line 154
    goto :goto_1

    .line 155
    :sswitch_3
    invoke-virtual {v11, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 156
    .line 157
    .line 158
    move-result v3

    .line 159
    if-nez v3, :cond_8

    .line 160
    .line 161
    goto :goto_1

    .line 162
    :cond_8
    const/16 v16, 0x0

    .line 163
    .line 164
    :goto_1
    packed-switch v16, :pswitch_data_0

    .line 165
    .line 166
    .line 167
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 168
    .line 169
    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    .line 170
    .line 171
    .line 172
    throw v1

    .line 173
    :pswitch_0
    const-string v3, "%02d:%02d:%02d,%03d"

    .line 174
    .line 175
    invoke-static {v9, v10, v14, v15, v3}, Ld3/f;->k(JJLjava/lang/String;)[B

    .line 176
    .line 177
    .line 178
    move-result-object v3

    .line 179
    const/16 v4, 0x13

    .line 180
    .line 181
    goto :goto_2

    .line 182
    :pswitch_1
    const-string v3, "%02d:%02d:%02d.%03d"

    .line 183
    .line 184
    invoke-static {v9, v10, v14, v15, v3}, Ld3/f;->k(JJLjava/lang/String;)[B

    .line 185
    .line 186
    .line 187
    move-result-object v3

    .line 188
    const/16 v4, 0x19

    .line 189
    .line 190
    goto :goto_2

    .line 191
    :pswitch_2
    const-string v3, "%01d:%02d:%02d:%02d"

    .line 192
    .line 193
    const-wide/16 v4, 0x2710

    .line 194
    .line 195
    invoke-static {v9, v10, v4, v5, v3}, Ld3/f;->k(JJLjava/lang/String;)[B

    .line 196
    .line 197
    .line 198
    move-result-object v3

    .line 199
    const/16 v4, 0x15

    .line 200
    .line 201
    :goto_2
    array-length v5, v3

    .line 202
    invoke-static {v3, v6, v13, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 203
    .line 204
    .line 205
    iget v3, v12, Lu1/q;->b:I

    .line 206
    .line 207
    :goto_3
    iget v4, v12, Lu1/q;->c:I

    .line 208
    .line 209
    if-ge v3, v4, :cond_a

    .line 210
    .line 211
    iget-object v4, v12, Lu1/q;->a:[B

    .line 212
    .line 213
    aget-byte v4, v4, v3

    .line 214
    .line 215
    if-nez v4, :cond_9

    .line 216
    .line 217
    invoke-virtual {v12, v3}, Lu1/q;->N(I)V

    .line 218
    .line 219
    .line 220
    goto :goto_4

    .line 221
    :cond_9
    add-int/2addr v3, v8

    .line 222
    goto :goto_3

    .line 223
    :cond_a
    :goto_4
    iget-object v3, v1, Ld3/e;->a0:Ll2/j0;

    .line 224
    .line 225
    iget v4, v12, Lu1/q;->c:I

    .line 226
    .line 227
    invoke-interface {v3, v4, v12}, Ll2/j0;->a(ILu1/q;)V

    .line 228
    .line 229
    .line 230
    iget v3, v12, Lu1/q;->c:I

    .line 231
    .line 232
    add-int v3, p5, v3

    .line 233
    .line 234
    :goto_5
    const/high16 v4, 0x10000000

    .line 235
    .line 236
    and-int v4, p4, v4

    .line 237
    .line 238
    if-eqz v4, :cond_c

    .line 239
    .line 240
    iget v4, v0, Ld3/f;->S:I

    .line 241
    .line 242
    iget-object v5, v0, Ld3/f;->p:Lu1/q;

    .line 243
    .line 244
    if-le v4, v8, :cond_b

    .line 245
    .line 246
    invoke-virtual {v5, v6}, Lu1/q;->L(I)V

    .line 247
    .line 248
    .line 249
    goto :goto_6

    .line 250
    :cond_b
    iget v4, v5, Lu1/q;->c:I

    .line 251
    .line 252
    iget-object v6, v1, Ld3/e;->a0:Ll2/j0;

    .line 253
    .line 254
    invoke-interface {v6, v5, v4, v2}, Ll2/j0;->c(Lu1/q;II)V

    .line 255
    .line 256
    .line 257
    add-int/2addr v3, v4

    .line 258
    :cond_c
    :goto_6
    move v13, v3

    .line 259
    iget-object v9, v1, Ld3/e;->a0:Ll2/j0;

    .line 260
    .line 261
    iget-object v15, v1, Ld3/e;->k:Ll2/i0;

    .line 262
    .line 263
    move-wide/from16 v10, p2

    .line 264
    .line 265
    move/from16 v12, p4

    .line 266
    .line 267
    move/from16 v14, p6

    .line 268
    .line 269
    invoke-interface/range {v9 .. v15}, Ll2/j0;->b(JIIILl2/i0;)V

    .line 270
    .line 271
    .line 272
    :goto_7
    iput-boolean v8, v0, Ld3/f;->N:Z

    .line 273
    .line 274
    return-void

    .line 275
    :sswitch_data_0
    .sparse-switch
        0x2c0618eb -> :sswitch_3
        0x2c065c6b -> :sswitch_2
        0x3e4ca2d8 -> :sswitch_1
        0x54c61e47 -> :sswitch_0
    .end sparse-switch

    .line 276
    .line 277
    .line 278
    .line 279
    .line 280
    .line 281
    .line 282
    .line 283
    .line 284
    .line 285
    .line 286
    .line 287
    .line 288
    .line 289
    .line 290
    .line 291
    .line 292
    .line 293
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final l()V
    .locals 4

    .line 1
    iget-boolean v0, p0, Ld3/f;->x:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    const/4 v0, 0x0

    .line 7
    const/4 v1, 0x0

    .line 8
    :goto_0
    iget-object v2, p0, Ld3/f;->c:Landroid/util/SparseArray;

    .line 9
    .line 10
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    .line 11
    .line 12
    .line 13
    move-result v3

    .line 14
    if-ge v1, v3, :cond_2

    .line 15
    .line 16
    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    check-cast v2, Ld3/e;

    .line 21
    .line 22
    iget-boolean v2, v2, Ld3/e;->W:Z

    .line 23
    .line 24
    if-eqz v2, :cond_1

    .line 25
    .line 26
    return-void

    .line 27
    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_2
    iget-object v1, p0, Ld3/f;->j0:Ll2/q;

    .line 31
    .line 32
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 33
    .line 34
    .line 35
    invoke-interface {v1}, Ll2/q;->q()V

    .line 36
    .line 37
    .line 38
    iput-boolean v0, p0, Ld3/f;->x:Z

    .line 39
    .line 40
    return-void
.end method

.method public final m(Ll2/l;I)V
    .locals 5

    .line 1
    iget-object v0, p0, Ld3/f;->i:Lu1/q;

    .line 2
    .line 3
    iget v1, v0, Lu1/q;->c:I

    .line 4
    .line 5
    if-lt v1, p2, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    iget-object v1, v0, Lu1/q;->a:[B

    .line 9
    .line 10
    array-length v2, v1

    .line 11
    if-ge v2, p2, :cond_1

    .line 12
    .line 13
    array-length v1, v1

    .line 14
    mul-int/lit8 v1, v1, 0x2

    .line 15
    .line 16
    invoke-static {v1, p2}, Ljava/lang/Math;->max(II)I

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    invoke-virtual {v0, v1}, Lu1/q;->c(I)V

    .line 21
    .line 22
    .line 23
    :cond_1
    iget-object v1, v0, Lu1/q;->a:[B

    .line 24
    .line 25
    iget v2, v0, Lu1/q;->c:I

    .line 26
    .line 27
    sub-int v3, p2, v2

    .line 28
    .line 29
    const/4 v4, 0x0

    .line 30
    invoke-virtual {p1, v1, v2, v3, v4}, Ll2/l;->b([BIIZ)Z

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0, p2}, Lu1/q;->N(I)V

    .line 34
    .line 35
    .line 36
    return-void
.end method

.method public final n()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Ld3/f;->a0:I

    .line 3
    .line 4
    iput v0, p0, Ld3/f;->b0:I

    .line 5
    .line 6
    iput v0, p0, Ld3/f;->c0:I

    .line 7
    .line 8
    iput-boolean v0, p0, Ld3/f;->d0:Z

    .line 9
    .line 10
    iput-boolean v0, p0, Ld3/f;->e0:Z

    .line 11
    .line 12
    iput-boolean v0, p0, Ld3/f;->f0:Z

    .line 13
    .line 14
    iput v0, p0, Ld3/f;->g0:I

    .line 15
    .line 16
    iput-byte v0, p0, Ld3/f;->h0:B

    .line 17
    .line 18
    iput-boolean v0, p0, Ld3/f;->i0:Z

    .line 19
    .line 20
    iget-object v1, p0, Ld3/f;->l:Lu1/q;

    .line 21
    .line 22
    invoke-virtual {v1, v0}, Lu1/q;->L(I)V

    .line 23
    .line 24
    .line 25
    return-void
.end method

.method public final o(J)J
    .locals 7

    .line 1
    iget-wide v2, p0, Ld3/f;->t:J

    .line 2
    .line 3
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 4
    .line 5
    .line 6
    .line 7
    .line 8
    cmp-long v4, v2, v0

    .line 9
    .line 10
    if-eqz v4, :cond_0

    .line 11
    .line 12
    sget-object v0, Lu1/f0;->a:Ljava/lang/String;

    .line 13
    .line 14
    sget-object v6, Ljava/math/RoundingMode;->DOWN:Ljava/math/RoundingMode;

    .line 15
    .line 16
    const-wide/16 v4, 0x3e8

    .line 17
    .line 18
    move-wide v0, p1

    .line 19
    invoke-static/range {v0 .. v6}, Lu1/f0;->M(JJJLjava/math/RoundingMode;)J

    .line 20
    .line 21
    .line 22
    move-result-wide p1

    .line 23
    return-wide p1

    .line 24
    :cond_0
    const-string p1, "Can\'t scale timecode prior to timecodeScale being set."

    .line 25
    .line 26
    const/4 p2, 0x0

    .line 27
    invoke-static {p2, p1}, Lr1/f0;->a(Ljava/lang/RuntimeException;Ljava/lang/String;)Lr1/f0;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    throw p1
.end method

.method public final p(Ll2/l;Ld3/e;IZ)I
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
    move/from16 v3, p3

    .line 8
    .line 9
    iget-object v4, v2, Ld3/e;->c:Ljava/lang/String;

    .line 10
    .line 11
    const-string v5, "S_TEXT/UTF8"

    .line 12
    .line 13
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    move-result v4

    .line 17
    if-eqz v4, :cond_0

    .line 18
    .line 19
    sget-object v2, Ld3/f;->k0:[B

    .line 20
    .line 21
    invoke-virtual {v0, v1, v2, v3}, Ld3/f;->q(Ll2/l;[BI)V

    .line 22
    .line 23
    .line 24
    iget v1, v0, Ld3/f;->b0:I

    .line 25
    .line 26
    invoke-virtual/range {p0 .. p0}, Ld3/f;->n()V

    .line 27
    .line 28
    .line 29
    return v1

    .line 30
    :cond_0
    const-string v4, "S_TEXT/ASS"

    .line 31
    .line 32
    iget-object v5, v2, Ld3/e;->c:Ljava/lang/String;

    .line 33
    .line 34
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 35
    .line 36
    .line 37
    move-result v4

    .line 38
    if-nez v4, :cond_23

    .line 39
    .line 40
    const-string v4, "S_TEXT/SSA"

    .line 41
    .line 42
    iget-object v5, v2, Ld3/e;->c:Ljava/lang/String;

    .line 43
    .line 44
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 45
    .line 46
    .line 47
    move-result v4

    .line 48
    if-eqz v4, :cond_1

    .line 49
    .line 50
    goto/16 :goto_f

    .line 51
    .line 52
    :cond_1
    const-string v4, "S_TEXT/WEBVTT"

    .line 53
    .line 54
    iget-object v5, v2, Ld3/e;->c:Ljava/lang/String;

    .line 55
    .line 56
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 57
    .line 58
    .line 59
    move-result v4

    .line 60
    if-eqz v4, :cond_2

    .line 61
    .line 62
    sget-object v2, Ld3/f;->n0:[B

    .line 63
    .line 64
    invoke-virtual {v0, v1, v2, v3}, Ld3/f;->q(Ll2/l;[BI)V

    .line 65
    .line 66
    .line 67
    iget v1, v0, Ld3/f;->b0:I

    .line 68
    .line 69
    invoke-virtual/range {p0 .. p0}, Ld3/f;->n()V

    .line 70
    .line 71
    .line 72
    return v1

    .line 73
    :cond_2
    iget-boolean v4, v2, Ld3/e;->W:Z

    .line 74
    .line 75
    const/4 v5, 0x2

    .line 76
    const/4 v6, 0x1

    .line 77
    const/4 v7, 0x0

    .line 78
    if-eqz v4, :cond_7

    .line 79
    .line 80
    iget-object v4, v2, Ld3/e;->b0:Lr1/p;

    .line 81
    .line 82
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 83
    .line 84
    .line 85
    new-instance v4, Lu1/q;

    .line 86
    .line 87
    invoke-direct {v4, v3}, Lu1/q;-><init>(I)V

    .line 88
    .line 89
    .line 90
    iget-object v8, v4, Lu1/q;->a:[B

    .line 91
    .line 92
    invoke-virtual {v1, v8, v7, v3, v6}, Ll2/l;->c([BIIZ)Z

    .line 93
    .line 94
    .line 95
    move-result v8

    .line 96
    if-nez v8, :cond_3

    .line 97
    .line 98
    goto :goto_0

    .line 99
    :cond_3
    iput v7, v1, Ll2/l;->f:I

    .line 100
    .line 101
    invoke-virtual {v4}, Lu1/q;->j()I

    .line 102
    .line 103
    .line 104
    move-result v8

    .line 105
    invoke-static {v8}, Ll2/b;->i(I)I

    .line 106
    .line 107
    .line 108
    move-result v8

    .line 109
    if-ne v8, v6, :cond_6

    .line 110
    .line 111
    invoke-virtual {v4}, Lu1/q;->a()I

    .line 112
    .line 113
    .line 114
    move-result v8

    .line 115
    const/16 v9, 0xa

    .line 116
    .line 117
    if-ge v8, v9, :cond_4

    .line 118
    .line 119
    goto :goto_0

    .line 120
    :cond_4
    new-array v8, v9, [B

    .line 121
    .line 122
    invoke-virtual {v4, v7, v9, v8}, Lu1/q;->l(II[B)V

    .line 123
    .line 124
    .line 125
    invoke-virtual {v4, v7}, Lu1/q;->O(I)V

    .line 126
    .line 127
    .line 128
    invoke-static {v8}, Ll2/b;->g([B)I

    .line 129
    .line 130
    .line 131
    move-result v8

    .line 132
    if-lez v8, :cond_6

    .line 133
    .line 134
    invoke-virtual {v4}, Lu1/q;->a()I

    .line 135
    .line 136
    .line 137
    move-result v9

    .line 138
    add-int/lit8 v10, v8, 0x4

    .line 139
    .line 140
    if-ge v9, v10, :cond_5

    .line 141
    .line 142
    goto :goto_0

    .line 143
    :cond_5
    invoke-virtual {v4, v8}, Lu1/q;->P(I)V

    .line 144
    .line 145
    .line 146
    invoke-virtual {v4}, Lu1/q;->o()I

    .line 147
    .line 148
    .line 149
    move-result v4

    .line 150
    invoke-static {v4}, Ll2/b;->i(I)I

    .line 151
    .line 152
    .line 153
    move-result v4

    .line 154
    if-ne v4, v5, :cond_6

    .line 155
    .line 156
    iget-object v4, v2, Ld3/e;->b0:Lr1/p;

    .line 157
    .line 158
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 159
    .line 160
    .line 161
    new-instance v8, Lr1/o;

    .line 162
    .line 163
    invoke-direct {v8, v4}, Lr1/o;-><init>(Lr1/p;)V

    .line 164
    .line 165
    .line 166
    const-string v4, "audio/vnd.dts.hd"

    .line 167
    .line 168
    invoke-static {v4}, Lr1/e0;->l(Ljava/lang/String;)Ljava/lang/String;

    .line 169
    .line 170
    .line 171
    move-result-object v4

    .line 172
    iput-object v4, v8, Lr1/o;->n:Ljava/lang/String;

    .line 173
    .line 174
    new-instance v4, Lr1/p;

    .line 175
    .line 176
    invoke-direct {v4, v8}, Lr1/p;-><init>(Lr1/o;)V

    .line 177
    .line 178
    .line 179
    iput-object v4, v2, Ld3/e;->b0:Lr1/p;

    .line 180
    .line 181
    :cond_6
    :goto_0
    iget-object v4, v2, Ld3/e;->a0:Ll2/j0;

    .line 182
    .line 183
    iget-object v8, v2, Ld3/e;->b0:Lr1/p;

    .line 184
    .line 185
    invoke-interface {v4, v8}, Ll2/j0;->g(Lr1/p;)V

    .line 186
    .line 187
    .line 188
    iput-boolean v7, v2, Ld3/e;->W:Z

    .line 189
    .line 190
    invoke-virtual/range {p0 .. p0}, Ld3/f;->l()V

    .line 191
    .line 192
    .line 193
    :cond_7
    iget-object v4, v2, Ld3/e;->a0:Ll2/j0;

    .line 194
    .line 195
    iget-boolean v8, v0, Ld3/f;->d0:Z

    .line 196
    .line 197
    iget-object v9, v0, Ld3/f;->l:Lu1/q;

    .line 198
    .line 199
    const/4 v10, 0x4

    .line 200
    if-nez v8, :cond_18

    .line 201
    .line 202
    iget-boolean v8, v2, Ld3/e;->i:Z

    .line 203
    .line 204
    iget-object v11, v0, Ld3/f;->i:Lu1/q;

    .line 205
    .line 206
    if-eqz v8, :cond_13

    .line 207
    .line 208
    iget v8, v0, Ld3/f;->W:I

    .line 209
    .line 210
    const v12, -0x40000001    # -1.9999999f

    .line 211
    .line 212
    .line 213
    and-int/2addr v8, v12

    .line 214
    iput v8, v0, Ld3/f;->W:I

    .line 215
    .line 216
    iget-boolean v8, v0, Ld3/f;->e0:Z

    .line 217
    .line 218
    const/16 v12, 0x80

    .line 219
    .line 220
    if-nez v8, :cond_9

    .line 221
    .line 222
    iget-object v8, v11, Lu1/q;->a:[B

    .line 223
    .line 224
    invoke-virtual {v1, v8, v7, v6, v7}, Ll2/l;->b([BIIZ)Z

    .line 225
    .line 226
    .line 227
    iget v8, v0, Ld3/f;->a0:I

    .line 228
    .line 229
    add-int/2addr v8, v6

    .line 230
    iput v8, v0, Ld3/f;->a0:I

    .line 231
    .line 232
    iget-object v8, v11, Lu1/q;->a:[B

    .line 233
    .line 234
    aget-byte v8, v8, v7

    .line 235
    .line 236
    and-int/lit16 v13, v8, 0x80

    .line 237
    .line 238
    if-eq v13, v12, :cond_8

    .line 239
    .line 240
    iput-byte v8, v0, Ld3/f;->h0:B

    .line 241
    .line 242
    iput-boolean v6, v0, Ld3/f;->e0:Z

    .line 243
    .line 244
    goto :goto_1

    .line 245
    :cond_8
    const-string v1, "Extension bit is set in signal byte"

    .line 246
    .line 247
    const/4 v2, 0x0

    .line 248
    invoke-static {v2, v1}, Lr1/f0;->a(Ljava/lang/RuntimeException;Ljava/lang/String;)Lr1/f0;

    .line 249
    .line 250
    .line 251
    move-result-object v1

    .line 252
    throw v1

    .line 253
    :cond_9
    :goto_1
    iget-byte v8, v0, Ld3/f;->h0:B

    .line 254
    .line 255
    and-int/lit8 v13, v8, 0x1

    .line 256
    .line 257
    if-ne v13, v6, :cond_14

    .line 258
    .line 259
    and-int/2addr v8, v5

    .line 260
    if-ne v8, v5, :cond_a

    .line 261
    .line 262
    const/4 v8, 0x1

    .line 263
    goto :goto_2

    .line 264
    :cond_a
    const/4 v8, 0x0

    .line 265
    :goto_2
    iget v13, v0, Ld3/f;->W:I

    .line 266
    .line 267
    const/high16 v14, 0x40000000    # 2.0f

    .line 268
    .line 269
    or-int/2addr v13, v14

    .line 270
    iput v13, v0, Ld3/f;->W:I

    .line 271
    .line 272
    iget-boolean v13, v0, Ld3/f;->i0:Z

    .line 273
    .line 274
    if-nez v13, :cond_c

    .line 275
    .line 276
    iget-object v13, v0, Ld3/f;->n:Lu1/q;

    .line 277
    .line 278
    iget-object v14, v13, Lu1/q;->a:[B

    .line 279
    .line 280
    const/16 v15, 0x8

    .line 281
    .line 282
    invoke-virtual {v1, v14, v7, v15, v7}, Ll2/l;->b([BIIZ)Z

    .line 283
    .line 284
    .line 285
    iget v14, v0, Ld3/f;->a0:I

    .line 286
    .line 287
    add-int/2addr v14, v15

    .line 288
    iput v14, v0, Ld3/f;->a0:I

    .line 289
    .line 290
    iput-boolean v6, v0, Ld3/f;->i0:Z

    .line 291
    .line 292
    iget-object v14, v11, Lu1/q;->a:[B

    .line 293
    .line 294
    if-eqz v8, :cond_b

    .line 295
    .line 296
    goto :goto_3

    .line 297
    :cond_b
    const/4 v12, 0x0

    .line 298
    :goto_3
    or-int/2addr v12, v15

    .line 299
    int-to-byte v12, v12

    .line 300
    aput-byte v12, v14, v7

    .line 301
    .line 302
    invoke-virtual {v11, v7}, Lu1/q;->O(I)V

    .line 303
    .line 304
    .line 305
    invoke-interface {v4, v11, v6, v6}, Ll2/j0;->c(Lu1/q;II)V

    .line 306
    .line 307
    .line 308
    iget v12, v0, Ld3/f;->b0:I

    .line 309
    .line 310
    add-int/2addr v12, v6

    .line 311
    iput v12, v0, Ld3/f;->b0:I

    .line 312
    .line 313
    invoke-virtual {v13, v7}, Lu1/q;->O(I)V

    .line 314
    .line 315
    .line 316
    invoke-interface {v4, v13, v15, v6}, Ll2/j0;->c(Lu1/q;II)V

    .line 317
    .line 318
    .line 319
    iget v12, v0, Ld3/f;->b0:I

    .line 320
    .line 321
    add-int/2addr v12, v15

    .line 322
    iput v12, v0, Ld3/f;->b0:I

    .line 323
    .line 324
    :cond_c
    if-eqz v8, :cond_14

    .line 325
    .line 326
    iget-boolean v8, v0, Ld3/f;->f0:Z

    .line 327
    .line 328
    if-nez v8, :cond_d

    .line 329
    .line 330
    iget-object v8, v11, Lu1/q;->a:[B

    .line 331
    .line 332
    invoke-virtual {v1, v8, v7, v6, v7}, Ll2/l;->b([BIIZ)Z

    .line 333
    .line 334
    .line 335
    iget v8, v0, Ld3/f;->a0:I

    .line 336
    .line 337
    add-int/2addr v8, v6

    .line 338
    iput v8, v0, Ld3/f;->a0:I

    .line 339
    .line 340
    invoke-virtual {v11, v7}, Lu1/q;->O(I)V

    .line 341
    .line 342
    .line 343
    invoke-virtual {v11}, Lu1/q;->B()I

    .line 344
    .line 345
    .line 346
    move-result v8

    .line 347
    iput v8, v0, Ld3/f;->g0:I

    .line 348
    .line 349
    iput-boolean v6, v0, Ld3/f;->f0:Z

    .line 350
    .line 351
    :cond_d
    iget v8, v0, Ld3/f;->g0:I

    .line 352
    .line 353
    mul-int/lit8 v8, v8, 0x4

    .line 354
    .line 355
    invoke-virtual {v11, v8}, Lu1/q;->L(I)V

    .line 356
    .line 357
    .line 358
    iget-object v12, v11, Lu1/q;->a:[B

    .line 359
    .line 360
    invoke-virtual {v1, v12, v7, v8, v7}, Ll2/l;->b([BIIZ)Z

    .line 361
    .line 362
    .line 363
    iget v12, v0, Ld3/f;->a0:I

    .line 364
    .line 365
    add-int/2addr v12, v8

    .line 366
    iput v12, v0, Ld3/f;->a0:I

    .line 367
    .line 368
    iget v8, v0, Ld3/f;->g0:I

    .line 369
    .line 370
    div-int/2addr v8, v5

    .line 371
    add-int/2addr v8, v6

    .line 372
    int-to-short v8, v8

    .line 373
    mul-int/lit8 v12, v8, 0x6

    .line 374
    .line 375
    add-int/2addr v12, v5

    .line 376
    iget-object v13, v0, Ld3/f;->q:Ljava/nio/ByteBuffer;

    .line 377
    .line 378
    if-eqz v13, :cond_e

    .line 379
    .line 380
    invoke-virtual {v13}, Ljava/nio/Buffer;->capacity()I

    .line 381
    .line 382
    .line 383
    move-result v13

    .line 384
    if-ge v13, v12, :cond_f

    .line 385
    .line 386
    :cond_e
    invoke-static {v12}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    .line 387
    .line 388
    .line 389
    move-result-object v13

    .line 390
    iput-object v13, v0, Ld3/f;->q:Ljava/nio/ByteBuffer;

    .line 391
    .line 392
    :cond_f
    iget-object v13, v0, Ld3/f;->q:Ljava/nio/ByteBuffer;

    .line 393
    .line 394
    invoke-virtual {v13, v7}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 395
    .line 396
    .line 397
    iget-object v13, v0, Ld3/f;->q:Ljava/nio/ByteBuffer;

    .line 398
    .line 399
    invoke-virtual {v13, v8}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 400
    .line 401
    .line 402
    const/4 v8, 0x0

    .line 403
    const/4 v13, 0x0

    .line 404
    :goto_4
    iget v14, v0, Ld3/f;->g0:I

    .line 405
    .line 406
    if-ge v8, v14, :cond_11

    .line 407
    .line 408
    invoke-virtual {v11}, Lu1/q;->F()I

    .line 409
    .line 410
    .line 411
    move-result v14

    .line 412
    rem-int/lit8 v15, v8, 0x2

    .line 413
    .line 414
    if-nez v15, :cond_10

    .line 415
    .line 416
    iget-object v15, v0, Ld3/f;->q:Ljava/nio/ByteBuffer;

    .line 417
    .line 418
    sub-int v13, v14, v13

    .line 419
    .line 420
    int-to-short v13, v13

    .line 421
    invoke-virtual {v15, v13}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 422
    .line 423
    .line 424
    goto :goto_5

    .line 425
    :cond_10
    iget-object v15, v0, Ld3/f;->q:Ljava/nio/ByteBuffer;

    .line 426
    .line 427
    sub-int v13, v14, v13

    .line 428
    .line 429
    invoke-virtual {v15, v13}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 430
    .line 431
    .line 432
    :goto_5
    add-int/lit8 v8, v8, 0x1

    .line 433
    .line 434
    move v13, v14

    .line 435
    goto :goto_4

    .line 436
    :cond_11
    iget v8, v0, Ld3/f;->a0:I

    .line 437
    .line 438
    sub-int v8, v3, v8

    .line 439
    .line 440
    sub-int/2addr v8, v13

    .line 441
    rem-int/2addr v14, v5

    .line 442
    if-ne v14, v6, :cond_12

    .line 443
    .line 444
    iget-object v13, v0, Ld3/f;->q:Ljava/nio/ByteBuffer;

    .line 445
    .line 446
    invoke-virtual {v13, v8}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 447
    .line 448
    .line 449
    goto :goto_6

    .line 450
    :cond_12
    iget-object v13, v0, Ld3/f;->q:Ljava/nio/ByteBuffer;

    .line 451
    .line 452
    int-to-short v8, v8

    .line 453
    invoke-virtual {v13, v8}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 454
    .line 455
    .line 456
    iget-object v8, v0, Ld3/f;->q:Ljava/nio/ByteBuffer;

    .line 457
    .line 458
    invoke-virtual {v8, v7}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 459
    .line 460
    .line 461
    :goto_6
    iget-object v8, v0, Ld3/f;->q:Ljava/nio/ByteBuffer;

    .line 462
    .line 463
    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->array()[B

    .line 464
    .line 465
    .line 466
    move-result-object v8

    .line 467
    iget-object v13, v0, Ld3/f;->o:Lu1/q;

    .line 468
    .line 469
    invoke-virtual {v13, v12, v8}, Lu1/q;->M(I[B)V

    .line 470
    .line 471
    .line 472
    invoke-interface {v4, v13, v12, v6}, Ll2/j0;->c(Lu1/q;II)V

    .line 473
    .line 474
    .line 475
    iget v8, v0, Ld3/f;->b0:I

    .line 476
    .line 477
    add-int/2addr v8, v12

    .line 478
    iput v8, v0, Ld3/f;->b0:I

    .line 479
    .line 480
    goto :goto_7

    .line 481
    :cond_13
    iget-object v8, v2, Ld3/e;->j:[B

    .line 482
    .line 483
    if-eqz v8, :cond_14

    .line 484
    .line 485
    array-length v12, v8

    .line 486
    invoke-virtual {v9, v12, v8}, Lu1/q;->M(I[B)V

    .line 487
    .line 488
    .line 489
    :cond_14
    :goto_7
    iget-object v8, v2, Ld3/e;->c:Ljava/lang/String;

    .line 490
    .line 491
    const-string v12, "A_OPUS"

    .line 492
    .line 493
    invoke-virtual {v12, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 494
    .line 495
    .line 496
    move-result v8

    .line 497
    if-eqz v8, :cond_15

    .line 498
    .line 499
    move/from16 v8, p4

    .line 500
    .line 501
    goto :goto_8

    .line 502
    :cond_15
    iget v8, v2, Ld3/e;->g:I

    .line 503
    .line 504
    if-lez v8, :cond_16

    .line 505
    .line 506
    const/4 v8, 0x1

    .line 507
    goto :goto_8

    .line 508
    :cond_16
    const/4 v8, 0x0

    .line 509
    :goto_8
    if-eqz v8, :cond_17

    .line 510
    .line 511
    iget v8, v0, Ld3/f;->W:I

    .line 512
    .line 513
    const/high16 v12, 0x10000000

    .line 514
    .line 515
    or-int/2addr v8, v12

    .line 516
    iput v8, v0, Ld3/f;->W:I

    .line 517
    .line 518
    iget-object v8, v0, Ld3/f;->p:Lu1/q;

    .line 519
    .line 520
    invoke-virtual {v8, v7}, Lu1/q;->L(I)V

    .line 521
    .line 522
    .line 523
    iget v8, v9, Lu1/q;->c:I

    .line 524
    .line 525
    add-int/2addr v8, v3

    .line 526
    iget v12, v0, Ld3/f;->a0:I

    .line 527
    .line 528
    sub-int/2addr v8, v12

    .line 529
    invoke-virtual {v11, v10}, Lu1/q;->L(I)V

    .line 530
    .line 531
    .line 532
    iget-object v12, v11, Lu1/q;->a:[B

    .line 533
    .line 534
    shr-int/lit8 v13, v8, 0x18

    .line 535
    .line 536
    and-int/lit16 v13, v13, 0xff

    .line 537
    .line 538
    int-to-byte v13, v13

    .line 539
    aput-byte v13, v12, v7

    .line 540
    .line 541
    shr-int/lit8 v13, v8, 0x10

    .line 542
    .line 543
    and-int/lit16 v13, v13, 0xff

    .line 544
    .line 545
    int-to-byte v13, v13

    .line 546
    aput-byte v13, v12, v6

    .line 547
    .line 548
    shr-int/lit8 v13, v8, 0x8

    .line 549
    .line 550
    and-int/lit16 v13, v13, 0xff

    .line 551
    .line 552
    int-to-byte v13, v13

    .line 553
    aput-byte v13, v12, v5

    .line 554
    .line 555
    and-int/lit16 v8, v8, 0xff

    .line 556
    .line 557
    int-to-byte v8, v8

    .line 558
    const/4 v13, 0x3

    .line 559
    aput-byte v8, v12, v13

    .line 560
    .line 561
    invoke-interface {v4, v11, v10, v5}, Ll2/j0;->c(Lu1/q;II)V

    .line 562
    .line 563
    .line 564
    iget v8, v0, Ld3/f;->b0:I

    .line 565
    .line 566
    add-int/2addr v8, v10

    .line 567
    iput v8, v0, Ld3/f;->b0:I

    .line 568
    .line 569
    :cond_17
    iput-boolean v6, v0, Ld3/f;->d0:Z

    .line 570
    .line 571
    :cond_18
    iget v8, v9, Lu1/q;->c:I

    .line 572
    .line 573
    add-int/2addr v3, v8

    .line 574
    const-string v8, "V_MPEG4/ISO/AVC"

    .line 575
    .line 576
    iget-object v11, v2, Ld3/e;->c:Ljava/lang/String;

    .line 577
    .line 578
    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 579
    .line 580
    .line 581
    move-result v8

    .line 582
    if-nez v8, :cond_1d

    .line 583
    .line 584
    const-string v8, "V_MPEGH/ISO/HEVC"

    .line 585
    .line 586
    iget-object v11, v2, Ld3/e;->c:Ljava/lang/String;

    .line 587
    .line 588
    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 589
    .line 590
    .line 591
    move-result v8

    .line 592
    if-eqz v8, :cond_19

    .line 593
    .line 594
    goto :goto_c

    .line 595
    :cond_19
    iget-object v5, v2, Ld3/e;->V:Ll2/k0;

    .line 596
    .line 597
    if-eqz v5, :cond_1b

    .line 598
    .line 599
    iget v5, v9, Lu1/q;->c:I

    .line 600
    .line 601
    if-nez v5, :cond_1a

    .line 602
    .line 603
    goto :goto_9

    .line 604
    :cond_1a
    const/4 v6, 0x0

    .line 605
    :goto_9
    invoke-static {v6}, La9/o;->t(Z)V

    .line 606
    .line 607
    .line 608
    iget-object v5, v2, Ld3/e;->V:Ll2/k0;

    .line 609
    .line 610
    invoke-virtual {v5, v1}, Ll2/k0;->c(Ll2/p;)V

    .line 611
    .line 612
    .line 613
    :cond_1b
    :goto_a
    iget v5, v0, Ld3/f;->a0:I

    .line 614
    .line 615
    if-ge v5, v3, :cond_21

    .line 616
    .line 617
    sub-int v5, v3, v5

    .line 618
    .line 619
    invoke-virtual {v9}, Lu1/q;->a()I

    .line 620
    .line 621
    .line 622
    move-result v6

    .line 623
    if-lez v6, :cond_1c

    .line 624
    .line 625
    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    .line 626
    .line 627
    .line 628
    move-result v5

    .line 629
    invoke-interface {v4, v5, v9}, Ll2/j0;->a(ILu1/q;)V

    .line 630
    .line 631
    .line 632
    goto :goto_b

    .line 633
    :cond_1c
    invoke-interface {v4, v1, v5, v7}, Ll2/j0;->e(Lr1/h;IZ)I

    .line 634
    .line 635
    .line 636
    move-result v5

    .line 637
    :goto_b
    iget v6, v0, Ld3/f;->a0:I

    .line 638
    .line 639
    add-int/2addr v6, v5

    .line 640
    iput v6, v0, Ld3/f;->a0:I

    .line 641
    .line 642
    iget v6, v0, Ld3/f;->b0:I

    .line 643
    .line 644
    add-int/2addr v6, v5

    .line 645
    iput v6, v0, Ld3/f;->b0:I

    .line 646
    .line 647
    goto :goto_a

    .line 648
    :cond_1d
    :goto_c
    iget-object v8, v0, Ld3/f;->h:Lu1/q;

    .line 649
    .line 650
    iget-object v11, v8, Lu1/q;->a:[B

    .line 651
    .line 652
    aput-byte v7, v11, v7

    .line 653
    .line 654
    aput-byte v7, v11, v6

    .line 655
    .line 656
    aput-byte v7, v11, v5

    .line 657
    .line 658
    iget v5, v2, Ld3/e;->c0:I

    .line 659
    .line 660
    rsub-int/lit8 v6, v5, 0x4

    .line 661
    .line 662
    :goto_d
    iget v12, v0, Ld3/f;->a0:I

    .line 663
    .line 664
    if-ge v12, v3, :cond_21

    .line 665
    .line 666
    iget v12, v0, Ld3/f;->c0:I

    .line 667
    .line 668
    if-nez v12, :cond_1f

    .line 669
    .line 670
    invoke-virtual {v9}, Lu1/q;->a()I

    .line 671
    .line 672
    .line 673
    move-result v12

    .line 674
    invoke-static {v5, v12}, Ljava/lang/Math;->min(II)I

    .line 675
    .line 676
    .line 677
    move-result v12

    .line 678
    add-int v13, v6, v12

    .line 679
    .line 680
    sub-int v14, v5, v12

    .line 681
    .line 682
    invoke-virtual {v1, v11, v13, v14, v7}, Ll2/l;->b([BIIZ)Z

    .line 683
    .line 684
    .line 685
    if-lez v12, :cond_1e

    .line 686
    .line 687
    invoke-virtual {v9, v6, v12, v11}, Lu1/q;->l(II[B)V

    .line 688
    .line 689
    .line 690
    :cond_1e
    iget v12, v0, Ld3/f;->a0:I

    .line 691
    .line 692
    add-int/2addr v12, v5

    .line 693
    iput v12, v0, Ld3/f;->a0:I

    .line 694
    .line 695
    invoke-virtual {v8, v7}, Lu1/q;->O(I)V

    .line 696
    .line 697
    .line 698
    invoke-virtual {v8}, Lu1/q;->F()I

    .line 699
    .line 700
    .line 701
    move-result v12

    .line 702
    iput v12, v0, Ld3/f;->c0:I

    .line 703
    .line 704
    iget-object v12, v0, Ld3/f;->g:Lu1/q;

    .line 705
    .line 706
    invoke-virtual {v12, v7}, Lu1/q;->O(I)V

    .line 707
    .line 708
    .line 709
    invoke-interface {v4, v10, v12}, Ll2/j0;->a(ILu1/q;)V

    .line 710
    .line 711
    .line 712
    iget v12, v0, Ld3/f;->b0:I

    .line 713
    .line 714
    add-int/2addr v12, v10

    .line 715
    iput v12, v0, Ld3/f;->b0:I

    .line 716
    .line 717
    goto :goto_d

    .line 718
    :cond_1f
    invoke-virtual {v9}, Lu1/q;->a()I

    .line 719
    .line 720
    .line 721
    move-result v13

    .line 722
    if-lez v13, :cond_20

    .line 723
    .line 724
    invoke-static {v12, v13}, Ljava/lang/Math;->min(II)I

    .line 725
    .line 726
    .line 727
    move-result v12

    .line 728
    invoke-interface {v4, v12, v9}, Ll2/j0;->a(ILu1/q;)V

    .line 729
    .line 730
    .line 731
    goto :goto_e

    .line 732
    :cond_20
    invoke-interface {v4, v1, v12, v7}, Ll2/j0;->e(Lr1/h;IZ)I

    .line 733
    .line 734
    .line 735
    move-result v12

    .line 736
    :goto_e
    iget v13, v0, Ld3/f;->a0:I

    .line 737
    .line 738
    add-int/2addr v13, v12

    .line 739
    iput v13, v0, Ld3/f;->a0:I

    .line 740
    .line 741
    iget v13, v0, Ld3/f;->b0:I

    .line 742
    .line 743
    add-int/2addr v13, v12

    .line 744
    iput v13, v0, Ld3/f;->b0:I

    .line 745
    .line 746
    iget v13, v0, Ld3/f;->c0:I

    .line 747
    .line 748
    sub-int/2addr v13, v12

    .line 749
    iput v13, v0, Ld3/f;->c0:I

    .line 750
    .line 751
    goto :goto_d

    .line 752
    :cond_21
    const-string v1, "A_VORBIS"

    .line 753
    .line 754
    iget-object v2, v2, Ld3/e;->c:Ljava/lang/String;

    .line 755
    .line 756
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 757
    .line 758
    .line 759
    move-result v1

    .line 760
    if-eqz v1, :cond_22

    .line 761
    .line 762
    iget-object v1, v0, Ld3/f;->j:Lu1/q;

    .line 763
    .line 764
    invoke-virtual {v1, v7}, Lu1/q;->O(I)V

    .line 765
    .line 766
    .line 767
    invoke-interface {v4, v10, v1}, Ll2/j0;->a(ILu1/q;)V

    .line 768
    .line 769
    .line 770
    iget v1, v0, Ld3/f;->b0:I

    .line 771
    .line 772
    add-int/2addr v1, v10

    .line 773
    iput v1, v0, Ld3/f;->b0:I

    .line 774
    .line 775
    :cond_22
    iget v1, v0, Ld3/f;->b0:I

    .line 776
    .line 777
    invoke-virtual/range {p0 .. p0}, Ld3/f;->n()V

    .line 778
    .line 779
    .line 780
    return v1

    .line 781
    :cond_23
    :goto_f
    sget-object v2, Ld3/f;->m0:[B

    .line 782
    .line 783
    invoke-virtual {v0, v1, v2, v3}, Ld3/f;->q(Ll2/l;[BI)V

    .line 784
    .line 785
    .line 786
    iget v1, v0, Ld3/f;->b0:I

    .line 787
    .line 788
    invoke-virtual/range {p0 .. p0}, Ld3/f;->n()V

    .line 789
    .line 790
    .line 791
    return v1
.end method

.method public final q(Ll2/l;[BI)V
    .locals 5

    .line 1
    array-length v0, p2

    .line 2
    add-int/2addr v0, p3

    .line 3
    iget-object v1, p0, Ld3/f;->m:Lu1/q;

    .line 4
    .line 5
    iget-object v2, v1, Lu1/q;->a:[B

    .line 6
    .line 7
    array-length v3, v2

    .line 8
    const/4 v4, 0x0

    .line 9
    if-ge v3, v0, :cond_0

    .line 10
    .line 11
    add-int v2, v0, p3

    .line 12
    .line 13
    invoke-static {p2, v2}, Ljava/util/Arrays;->copyOf([BI)[B

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    array-length v3, v2

    .line 18
    invoke-virtual {v1, v3, v2}, Lu1/q;->M(I[B)V

    .line 19
    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    array-length v3, p2

    .line 23
    invoke-static {p2, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 24
    .line 25
    .line 26
    :goto_0
    iget-object v2, v1, Lu1/q;->a:[B

    .line 27
    .line 28
    array-length p2, p2

    .line 29
    invoke-virtual {p1, v2, p2, p3, v4}, Ll2/l;->b([BIIZ)Z

    .line 30
    .line 31
    .line 32
    invoke-virtual {v1, v4}, Lu1/q;->O(I)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v1, v0}, Lu1/q;->N(I)V

    .line 36
    .line 37
    .line 38
    return-void
.end method
