.class public final Ls5/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lf5/k;


# static fields
.field public static final f:Lha/l2;

.field public static final g:Lj5/c;


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Ljava/util/ArrayList;

.field public final c:Lj5/c;

.field public final d:Lha/l2;

.field public final e:Lkf/d;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lha/l2;

    .line 2
    .line 3
    const/16 v1, 0x1d

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lha/l2;-><init>(I)V

    .line 6
    .line 7
    .line 8
    sput-object v0, Ls5/a;->f:Lha/l2;

    .line 9
    .line 10
    new-instance v0, Lj5/c;

    .line 11
    .line 12
    const/4 v1, 0x2

    .line 13
    invoke-direct {v0, v1}, Lj5/c;-><init>(I)V

    .line 14
    .line 15
    .line 16
    sput-object v0, Ls5/a;->g:Lj5/c;

    .line 17
    .line 18
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;Li5/c;La2/k1;)V
    .locals 1

    .line 1
    sget-object v0, Ls5/a;->f:Lha/l2;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    iput-object p1, p0, Ls5/a;->a:Landroid/content/Context;

    .line 11
    .line 12
    iput-object p2, p0, Ls5/a;->b:Ljava/util/ArrayList;

    .line 13
    .line 14
    iput-object v0, p0, Ls5/a;->d:Lha/l2;

    .line 15
    .line 16
    new-instance p1, Lkf/d;

    .line 17
    .line 18
    const/16 p2, 0x11

    .line 19
    .line 20
    invoke-direct {p1, p3, p2, p4}, Lkf/d;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 21
    .line 22
    .line 23
    iput-object p1, p0, Ls5/a;->e:Lkf/d;

    .line 24
    .line 25
    sget-object p1, Ls5/a;->g:Lj5/c;

    .line 26
    .line 27
    iput-object p1, p0, Ls5/a;->c:Lj5/c;

    .line 28
    .line 29
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;IILf5/i;)Lh5/z;
    .locals 7

    .line 1
    move-object v1, p1

    .line 2
    check-cast v1, Ljava/nio/ByteBuffer;

    .line 3
    .line 4
    iget-object p1, p0, Ls5/a;->c:Lj5/c;

    .line 5
    .line 6
    monitor-enter p1

    .line 7
    :try_start_0
    iget-object v0, p1, Lj5/c;->a:Ljava/util/ArrayDeque;

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->poll()Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Le5/c;

    .line 14
    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    new-instance v0, Le5/c;

    .line 18
    .line 19
    invoke-direct {v0}, Le5/c;-><init>()V

    .line 20
    .line 21
    .line 22
    :cond_0
    move-object v6, v0

    .line 23
    goto :goto_0

    .line 24
    :catchall_0
    move-exception p2

    .line 25
    goto :goto_1

    .line 26
    :goto_0
    const/4 v0, 0x0

    .line 27
    iput-object v0, v6, Le5/c;->b:Ljava/nio/ByteBuffer;

    .line 28
    .line 29
    iget-object v0, v6, Le5/c;->a:[B

    .line 30
    .line 31
    const/4 v2, 0x0

    .line 32
    invoke-static {v0, v2}, Ljava/util/Arrays;->fill([BB)V

    .line 33
    .line 34
    .line 35
    new-instance v0, Le5/b;

    .line 36
    .line 37
    invoke-direct {v0}, Le5/b;-><init>()V

    .line 38
    .line 39
    .line 40
    iput-object v0, v6, Le5/c;->c:Le5/b;

    .line 41
    .line 42
    iput v2, v6, Le5/c;->d:I

    .line 43
    .line 44
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->asReadOnlyBuffer()Ljava/nio/ByteBuffer;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    iput-object v0, v6, Le5/c;->b:Ljava/nio/ByteBuffer;

    .line 49
    .line 50
    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 51
    .line 52
    .line 53
    iget-object v0, v6, Le5/c;->b:Ljava/nio/ByteBuffer;

    .line 54
    .line 55
    sget-object v2, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    .line 56
    .line 57
    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 58
    .line 59
    .line 60
    monitor-exit p1

    .line 61
    move-object v0, p0

    .line 62
    move v2, p2

    .line 63
    move v3, p3

    .line 64
    move-object v4, v6

    .line 65
    move-object v5, p4

    .line 66
    :try_start_1
    invoke-virtual/range {v0 .. v5}, Ls5/a;->c(Ljava/nio/ByteBuffer;IILe5/c;Lf5/i;)Lq5/b;

    .line 67
    .line 68
    .line 69
    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 70
    iget-object p2, p0, Ls5/a;->c:Lj5/c;

    .line 71
    .line 72
    invoke-virtual {p2, v6}, Lj5/c;->c(Le5/c;)V

    .line 73
    .line 74
    .line 75
    return-object p1

    .line 76
    :catchall_1
    move-exception p1

    .line 77
    iget-object p2, p0, Ls5/a;->c:Lj5/c;

    .line 78
    .line 79
    invoke-virtual {p2, v6}, Lj5/c;->c(Le5/c;)V

    .line 80
    .line 81
    .line 82
    throw p1

    .line 83
    :goto_1
    :try_start_2
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 84
    throw p2
.end method

.method public final b(Ljava/lang/Object;Lf5/i;)Z
    .locals 1

    .line 1
    check-cast p1, Ljava/nio/ByteBuffer;

    .line 2
    .line 3
    sget-object v0, Ls5/h;->b:Lf5/h;

    .line 4
    .line 5
    invoke-virtual {p2, v0}, Lf5/i;->c(Lf5/h;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p2

    .line 9
    check-cast p2, Ljava/lang/Boolean;

    .line 10
    .line 11
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 12
    .line 13
    .line 14
    move-result p2

    .line 15
    if-nez p2, :cond_0

    .line 16
    .line 17
    iget-object p2, p0, Ls5/a;->b:Ljava/util/ArrayList;

    .line 18
    .line 19
    invoke-static {p2, p1}, Landroid/support/v4/media/session/b;->o(Ljava/util/ArrayList;Ljava/nio/ByteBuffer;)Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    sget-object p2, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;->GIF:Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    .line 24
    .line 25
    if-ne p1, p2, :cond_0

    .line 26
    .line 27
    const/4 p1, 0x1

    .line 28
    goto :goto_0

    .line 29
    :cond_0
    const/4 p1, 0x0

    .line 30
    :goto_0
    return p1
.end method

.method public final c(Ljava/nio/ByteBuffer;IILe5/c;Lf5/i;)Lq5/b;
    .locals 14

    .line 1
    move-object v1, p0

    .line 2
    const/4 v0, 0x1

    .line 3
    const-string v2, "BufferGifDecoder"

    .line 4
    .line 5
    sget v3, La6/k;->a:I

    .line 6
    .line 7
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    .line 8
    .line 9
    .line 10
    const/4 v3, 0x2

    .line 11
    :try_start_0
    invoke-virtual/range {p4 .. p4}, Le5/c;->b()Le5/b;

    .line 12
    .line 13
    .line 14
    move-result-object v4

    .line 15
    iget v5, v4, Le5/b;->c:I

    .line 16
    .line 17
    const/4 v6, 0x0

    .line 18
    if-lez v5, :cond_6

    .line 19
    .line 20
    iget v5, v4, Le5/b;->b:I

    .line 21
    .line 22
    if-eqz v5, :cond_0

    .line 23
    .line 24
    goto/16 :goto_2

    .line 25
    .line 26
    :cond_0
    sget-object v5, Ls5/h;->a:Lf5/h;

    .line 27
    .line 28
    move-object/from16 v7, p5

    .line 29
    .line 30
    invoke-virtual {v7, v5}, Lf5/i;->c(Lf5/h;)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v5

    .line 34
    sget-object v7, Lf5/b;->b:Lf5/b;

    .line 35
    .line 36
    if-ne v5, v7, :cond_1

    .line 37
    .line 38
    sget-object v5, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :catchall_0
    move-exception v0

    .line 42
    goto/16 :goto_3

    .line 43
    .line 44
    :cond_1
    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 45
    .line 46
    :goto_0
    iget v7, v4, Le5/b;->g:I

    .line 47
    .line 48
    div-int v7, v7, p3

    .line 49
    .line 50
    iget v8, v4, Le5/b;->f:I

    .line 51
    .line 52
    div-int v8, v8, p2

    .line 53
    .line 54
    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    .line 55
    .line 56
    .line 57
    move-result v7

    .line 58
    if-nez v7, :cond_2

    .line 59
    .line 60
    const/4 v7, 0x0

    .line 61
    goto :goto_1

    .line 62
    :cond_2
    invoke-static {v7}, Ljava/lang/Integer;->highestOneBit(I)I

    .line 63
    .line 64
    .line 65
    move-result v7

    .line 66
    :goto_1
    invoke-static {v0, v7}, Ljava/lang/Math;->max(II)I

    .line 67
    .line 68
    .line 69
    move-result v7

    .line 70
    iget-object v8, v1, Ls5/a;->d:Lha/l2;

    .line 71
    .line 72
    iget-object v9, v1, Ls5/a;->e:Lkf/d;

    .line 73
    .line 74
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 75
    .line 76
    .line 77
    new-instance v10, Le5/d;

    .line 78
    .line 79
    move-object v8, p1

    .line 80
    invoke-direct {v10, v9, v4, p1, v7}, Le5/d;-><init>(Lkf/d;Le5/b;Ljava/nio/ByteBuffer;I)V

    .line 81
    .line 82
    .line 83
    invoke-virtual {v10, v5}, Le5/d;->c(Landroid/graphics/Bitmap$Config;)V

    .line 84
    .line 85
    .line 86
    iget v4, v10, Le5/d;->k:I

    .line 87
    .line 88
    add-int/2addr v4, v0

    .line 89
    iget-object v5, v10, Le5/d;->l:Le5/b;

    .line 90
    .line 91
    iget v5, v5, Le5/b;->c:I

    .line 92
    .line 93
    rem-int/2addr v4, v5

    .line 94
    iput v4, v10, Le5/d;->k:I

    .line 95
    .line 96
    invoke-virtual {v10}, Le5/d;->b()Landroid/graphics/Bitmap;

    .line 97
    .line 98
    .line 99
    move-result-object v13
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 100
    if-nez v13, :cond_4

    .line 101
    .line 102
    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 103
    .line 104
    .line 105
    move-result v0

    .line 106
    if-eqz v0, :cond_3

    .line 107
    .line 108
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    .line 109
    .line 110
    .line 111
    :cond_3
    return-object v6

    .line 112
    :cond_4
    :try_start_1
    new-instance v4, Ls5/b;

    .line 113
    .line 114
    iget-object v5, v1, Ls5/a;->a:Landroid/content/Context;

    .line 115
    .line 116
    new-instance v6, Li4/e;

    .line 117
    .line 118
    new-instance v7, Ls5/g;

    .line 119
    .line 120
    invoke-static {v5}, Lcom/bumptech/glide/b;->b(Landroid/content/Context;)Lcom/bumptech/glide/b;

    .line 121
    .line 122
    .line 123
    move-result-object v9

    .line 124
    move-object v8, v7

    .line 125
    move/from16 v11, p2

    .line 126
    .line 127
    move/from16 v12, p3

    .line 128
    .line 129
    invoke-direct/range {v8 .. v13}, Ls5/g;-><init>(Lcom/bumptech/glide/b;Le5/d;IILandroid/graphics/Bitmap;)V

    .line 130
    .line 131
    .line 132
    invoke-direct {v6, v0, v7}, Li4/e;-><init>(ILjava/lang/Object;)V

    .line 133
    .line 134
    .line 135
    invoke-direct {v4, v6}, Ls5/b;-><init>(Li4/e;)V

    .line 136
    .line 137
    .line 138
    new-instance v5, Lq5/b;

    .line 139
    .line 140
    invoke-direct {v5, v4, v0}, Lq5/b;-><init>(Landroid/graphics/drawable/Drawable;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 141
    .line 142
    .line 143
    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 144
    .line 145
    .line 146
    move-result v0

    .line 147
    if-eqz v0, :cond_5

    .line 148
    .line 149
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    .line 150
    .line 151
    .line 152
    :cond_5
    return-object v5

    .line 153
    :cond_6
    :goto_2
    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 154
    .line 155
    .line 156
    move-result v0

    .line 157
    if-eqz v0, :cond_7

    .line 158
    .line 159
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    .line 160
    .line 161
    .line 162
    :cond_7
    return-object v6

    .line 163
    :goto_3
    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 164
    .line 165
    .line 166
    move-result v2

    .line 167
    if-eqz v2, :cond_8

    .line 168
    .line 169
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    .line 170
    .line 171
    .line 172
    :cond_8
    throw v0
.end method
