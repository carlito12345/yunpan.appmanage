.class public final Lce/b1;
.super Lee/b;
.source "SourceFile"

# interfaces
.implements Lce/q0;


# static fields
.field public static final E:[B

.field public static final F:Lce/t;

.field public static final G:Lde/d;


# instance fields
.field public final A:I

.field public B:I

.field public C:Z

.field public D:Ljava/lang/String;

.field public final h:Ljava/net/InetAddress;

.field public final i:I

.field public final j:Lwd/c;

.field public k:Ljava/net/Socket;

.field public l:I

.field public m:I

.field public n:Ljava/io/OutputStream;

.field public p:Ljava/io/InputStream;

.field public final q:[B

.field public final r:Lce/t;

.field public s:J

.field public t:Lce/r;

.field public final v:Ljava/util/LinkedList;

.field public final w:Lce/a1;

.field public x:I

.field public y:I

.field public z:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const v0, 0xffff

    .line 2
    .line 3
    .line 4
    new-array v0, v0, [B

    .line 5
    .line 6
    sput-object v0, Lce/b1;->E:[B

    .line 7
    .line 8
    new-instance v0, Lce/t;

    .line 9
    .line 10
    const/4 v1, 0x4

    .line 11
    invoke-direct {v0, v1}, Lce/t;-><init>(I)V

    .line 12
    .line 13
    .line 14
    sput-object v0, Lce/b1;->F:Lce/t;

    .line 15
    .line 16
    invoke-static {}, Lde/d;->r()Lde/d;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    sput-object v0, Lce/b1;->G:Lde/d;

    .line 21
    .line 22
    return-void
.end method

.method public constructor <init>(Lwd/c;ILjava/net/InetAddress;I)V
    .locals 4

    .line 1
    invoke-direct {p0}, Lee/b;-><init>()V

    .line 2
    .line 3
    .line 4
    const/16 v0, 0x200

    .line 5
    .line 6
    new-array v0, v0, [B

    .line 7
    .line 8
    iput-object v0, p0, Lce/b1;->q:[B

    .line 9
    .line 10
    new-instance v0, Lce/t;

    .line 11
    .line 12
    const/4 v1, 0x0

    .line 13
    invoke-direct {v0, v1}, Lce/t;-><init>(I)V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lce/b1;->r:Lce/t;

    .line 17
    .line 18
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 19
    .line 20
    .line 21
    move-result-wide v0

    .line 22
    sget v2, Lce/q0;->u0:I

    .line 23
    .line 24
    int-to-long v2, v2

    .line 25
    add-long/2addr v0, v2

    .line 26
    iput-wide v0, p0, Lce/b1;->s:J

    .line 27
    .line 28
    new-instance v0, Ljava/util/LinkedList;

    .line 29
    .line 30
    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 31
    .line 32
    .line 33
    const/4 v0, 0x0

    .line 34
    iput-object v0, p0, Lce/b1;->t:Lce/r;

    .line 35
    .line 36
    new-instance v1, Ljava/util/LinkedList;

    .line 37
    .line 38
    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 39
    .line 40
    .line 41
    iput-object v1, p0, Lce/b1;->v:Ljava/util/LinkedList;

    .line 42
    .line 43
    new-instance v1, Lce/a1;

    .line 44
    .line 45
    invoke-direct {v1}, Lce/a1;-><init>()V

    .line 46
    .line 47
    .line 48
    iput-object v1, p0, Lce/b1;->w:Lce/a1;

    .line 49
    .line 50
    sget v1, Lce/q0;->o0:I

    .line 51
    .line 52
    iput v1, p0, Lce/b1;->x:I

    .line 53
    .line 54
    sget v1, Lce/q0;->c0:I

    .line 55
    .line 56
    iput v1, p0, Lce/b1;->y:I

    .line 57
    .line 58
    sget v1, Lce/q0;->d0:I

    .line 59
    .line 60
    iput v1, p0, Lce/b1;->z:I

    .line 61
    .line 62
    sget v1, Lce/q0;->e0:I

    .line 63
    .line 64
    iput v1, p0, Lce/b1;->A:I

    .line 65
    .line 66
    sget v1, Lce/q0;->p0:I

    .line 67
    .line 68
    iput v1, p0, Lce/b1;->B:I

    .line 69
    .line 70
    sget-boolean v1, Lce/q0;->f0:Z

    .line 71
    .line 72
    iput-boolean v1, p0, Lce/b1;->C:Z

    .line 73
    .line 74
    iput-object v0, p0, Lce/b1;->D:Ljava/lang/String;

    .line 75
    .line 76
    iput-object p1, p0, Lce/b1;->j:Lwd/c;

    .line 77
    .line 78
    iput p2, p0, Lce/b1;->l:I

    .line 79
    .line 80
    iput-object p3, p0, Lce/b1;->h:Ljava/net/InetAddress;

    .line 81
    .line 82
    iput p4, p0, Lce/b1;->i:I

    .line 83
    .line 84
    return-void
.end method

.method public static declared-synchronized o(Lwd/c;I)Lce/b1;
    .locals 3

    .line 1
    const-class v0, Lce/b1;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Lce/q0;->a0:Ljava/net/InetAddress;

    .line 5
    .line 6
    sget v2, Lce/q0;->b0:I

    .line 7
    .line 8
    invoke-static {p0, p1, v1, v2}, Lce/b1;->p(Lwd/c;ILjava/net/InetAddress;I)Lce/b1;

    .line 9
    .line 10
    .line 11
    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    monitor-exit v0

    .line 13
    return-object p0

    .line 14
    :catchall_0
    move-exception p0

    .line 15
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 16
    throw p0
.end method

.method public static declared-synchronized p(Lwd/c;ILjava/net/InetAddress;I)Lce/b1;
    .locals 6

    .line 1
    const-class v0, Lce/b1;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Lce/q0;->r0:Ljava/util/LinkedList;

    .line 5
    .line 6
    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 7
    :try_start_1
    sget v2, Lce/q0;->s0:I

    .line 8
    .line 9
    const/4 v3, 0x1

    .line 10
    if-eq v2, v3, :cond_5

    .line 11
    .line 12
    invoke-virtual {v1}, Ljava/util/AbstractList;->listIterator()Ljava/util/ListIterator;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    :cond_0
    invoke-interface {v2}, Ljava/util/ListIterator;->hasNext()Z

    .line 17
    .line 18
    .line 19
    move-result v3

    .line 20
    if-eqz v3, :cond_5

    .line 21
    .line 22
    invoke-interface {v2}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v3

    .line 26
    check-cast v3, Lce/b1;

    .line 27
    .line 28
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0}, Lwd/c;->d()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v4

    .line 35
    iget-object v5, v3, Lce/b1;->D:Ljava/lang/String;

    .line 36
    .line 37
    if-eqz v5, :cond_1

    .line 38
    .line 39
    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 40
    .line 41
    .line 42
    move-result v4

    .line 43
    if-eqz v4, :cond_0

    .line 44
    .line 45
    :cond_1
    iget-object v4, v3, Lce/b1;->j:Lwd/c;

    .line 46
    .line 47
    invoke-virtual {p0, v4}, Lwd/c;->equals(Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    move-result v4

    .line 51
    if-eqz v4, :cond_0

    .line 52
    .line 53
    if-eqz p1, :cond_2

    .line 54
    .line 55
    iget v4, v3, Lce/b1;->l:I

    .line 56
    .line 57
    if-eq p1, v4, :cond_2

    .line 58
    .line 59
    const/16 v5, 0x1bd

    .line 60
    .line 61
    if-ne p1, v5, :cond_0

    .line 62
    .line 63
    const/16 v5, 0x8b

    .line 64
    .line 65
    if-ne v4, v5, :cond_0

    .line 66
    .line 67
    :cond_2
    iget-object v4, v3, Lce/b1;->h:Ljava/net/InetAddress;

    .line 68
    .line 69
    if-eq p2, v4, :cond_3

    .line 70
    .line 71
    if-eqz p2, :cond_0

    .line 72
    .line 73
    invoke-virtual {p2, v4}, Ljava/net/InetAddress;->equals(Ljava/lang/Object;)Z

    .line 74
    .line 75
    .line 76
    move-result v4

    .line 77
    if-eqz v4, :cond_0

    .line 78
    .line 79
    :cond_3
    iget v4, v3, Lce/b1;->i:I

    .line 80
    .line 81
    if-ne p3, v4, :cond_0

    .line 82
    .line 83
    sget v4, Lce/q0;->s0:I

    .line 84
    .line 85
    if-eqz v4, :cond_4

    .line 86
    .line 87
    iget-object v5, v3, Lce/b1;->v:Ljava/util/LinkedList;

    .line 88
    .line 89
    invoke-virtual {v5}, Ljava/util/LinkedList;->size()I

    .line 90
    .line 91
    .line 92
    move-result v5

    .line 93
    if-ge v5, v4, :cond_0

    .line 94
    .line 95
    goto :goto_0

    .line 96
    :catchall_0
    move-exception p0

    .line 97
    goto :goto_1

    .line 98
    :cond_4
    :goto_0
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 99
    monitor-exit v0

    .line 100
    return-object v3

    .line 101
    :cond_5
    :try_start_2
    new-instance v2, Lce/b1;

    .line 102
    .line 103
    invoke-direct {v2, p0, p1, p2, p3}, Lce/b1;-><init>(Lwd/c;ILjava/net/InetAddress;I)V

    .line 104
    .line 105
    .line 106
    sget-object p0, Lce/q0;->r0:Ljava/util/LinkedList;

    .line 107
    .line 108
    const/4 p1, 0x0

    .line 109
    invoke-virtual {p0, p1, v2}, Ljava/util/LinkedList;->add(ILjava/lang/Object;)V

    .line 110
    .line 111
    .line 112
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 113
    monitor-exit v0

    .line 114
    return-object v2

    .line 115
    :goto_1
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 116
    :try_start_4
    throw p0

    .line 117
    :catchall_1
    move-exception p0

    .line 118
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 119
    goto :goto_3

    .line 120
    :goto_2
    throw p0

    .line 121
    :goto_3
    goto :goto_2
.end method


# virtual methods
.method public final c()V
    .locals 5

    .line 1
    new-instance v0, Lce/z;

    .line 2
    .line 3
    iget-object v1, p0, Lce/b1;->w:Lce/a1;

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lce/z;-><init>(Lce/a1;)V

    .line 6
    .line 7
    .line 8
    const/16 v2, 0x8b

    .line 9
    .line 10
    const/16 v3, 0x1bd

    .line 11
    .line 12
    :try_start_0
    iget v4, p0, Lce/b1;->l:I

    .line 13
    .line 14
    invoke-virtual {p0, v4, v0}, Lce/b1;->r(ILce/z;)V
    :try_end_0
    .catch Ljava/net/ConnectException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/net/NoRouteToHostException; {:try_start_0 .. :try_end_0} :catch_0

    .line 15
    .line 16
    .line 17
    goto :goto_4

    .line 18
    :catch_0
    nop

    .line 19
    goto :goto_0

    .line 20
    :catch_1
    nop

    .line 21
    goto :goto_2

    .line 22
    :goto_0
    iget v4, p0, Lce/b1;->l:I

    .line 23
    .line 24
    if-eqz v4, :cond_1

    .line 25
    .line 26
    if-ne v4, v3, :cond_0

    .line 27
    .line 28
    goto :goto_1

    .line 29
    :cond_0
    const/16 v2, 0x1bd

    .line 30
    .line 31
    :cond_1
    :goto_1
    invoke-virtual {p0, v2, v0}, Lce/b1;->r(ILce/z;)V

    .line 32
    .line 33
    .line 34
    iput v2, p0, Lce/b1;->l:I

    .line 35
    .line 36
    goto :goto_4

    .line 37
    :goto_2
    iget v4, p0, Lce/b1;->l:I

    .line 38
    .line 39
    if-eqz v4, :cond_3

    .line 40
    .line 41
    if-ne v4, v3, :cond_2

    .line 42
    .line 43
    goto :goto_3

    .line 44
    :cond_2
    const/16 v2, 0x1bd

    .line 45
    .line 46
    :cond_3
    :goto_3
    invoke-virtual {p0, v2, v0}, Lce/b1;->r(ILce/z;)V

    .line 47
    .line 48
    .line 49
    iput v2, p0, Lce/b1;->l:I

    .line 50
    .line 51
    :goto_4
    iget v0, v0, Lce/z;->C:I

    .line 52
    .line 53
    const/16 v2, 0xa

    .line 54
    .line 55
    if-gt v0, v2, :cond_c

    .line 56
    .line 57
    iget v0, v1, Lce/a1;->d:I

    .line 58
    .line 59
    const/high16 v2, -0x80000000

    .line 60
    .line 61
    and-int/2addr v0, v2

    .line 62
    if-eq v0, v2, :cond_5

    .line 63
    .line 64
    iget v0, v1, Lce/a1;->o:I

    .line 65
    .line 66
    const/16 v3, 0x8

    .line 67
    .line 68
    if-eq v0, v3, :cond_5

    .line 69
    .line 70
    sget v0, Lce/q0;->j0:I

    .line 71
    .line 72
    if-eqz v0, :cond_4

    .line 73
    .line 74
    goto :goto_5

    .line 75
    :cond_4
    new-instance v0, Lce/r0;

    .line 76
    .line 77
    new-instance v2, Ljava/lang/StringBuilder;

    .line 78
    .line 79
    const-string v3, "Unexpected encryption key length: "

    .line 80
    .line 81
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    iget v1, v1, Lce/a1;->o:I

    .line 85
    .line 86
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v1

    .line 93
    invoke-direct {v0, v1}, Lce/r0;-><init>(Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    throw v0

    .line 97
    :cond_5
    :goto_5
    iget-object v0, p0, Lce/b1;->j:Lwd/c;

    .line 98
    .line 99
    invoke-virtual {v0}, Lwd/c;->d()Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v0

    .line 103
    iput-object v0, p0, Lce/b1;->D:Ljava/lang/String;

    .line 104
    .line 105
    iget-boolean v0, v1, Lce/a1;->j:Z

    .line 106
    .line 107
    if-nez v0, :cond_7

    .line 108
    .line 109
    iget-boolean v0, v1, Lce/a1;->i:Z

    .line 110
    .line 111
    if-eqz v0, :cond_6

    .line 112
    .line 113
    sget-boolean v0, Lce/q0;->i0:Z

    .line 114
    .line 115
    if-eqz v0, :cond_6

    .line 116
    .line 117
    goto :goto_6

    .line 118
    :cond_6
    iget v0, p0, Lce/b1;->x:I

    .line 119
    .line 120
    const v3, 0xfffb

    .line 121
    .line 122
    .line 123
    and-int/2addr v0, v3

    .line 124
    iput v0, p0, Lce/b1;->x:I

    .line 125
    .line 126
    goto :goto_7

    .line 127
    :cond_7
    :goto_6
    iget v0, p0, Lce/b1;->x:I

    .line 128
    .line 129
    or-int/lit8 v0, v0, 0x4

    .line 130
    .line 131
    iput v0, p0, Lce/b1;->x:I

    .line 132
    .line 133
    :goto_7
    iget v0, p0, Lce/b1;->y:I

    .line 134
    .line 135
    iget v3, v1, Lce/a1;->a:I

    .line 136
    .line 137
    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    .line 138
    .line 139
    .line 140
    move-result v0

    .line 141
    iput v0, p0, Lce/b1;->y:I

    .line 142
    .line 143
    const/4 v3, 0x1

    .line 144
    if-ge v0, v3, :cond_8

    .line 145
    .line 146
    iput v3, p0, Lce/b1;->y:I

    .line 147
    .line 148
    :cond_8
    iget v0, p0, Lce/b1;->z:I

    .line 149
    .line 150
    iget v3, v1, Lce/a1;->b:I

    .line 151
    .line 152
    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    .line 153
    .line 154
    .line 155
    move-result v0

    .line 156
    iput v0, p0, Lce/b1;->z:I

    .line 157
    .line 158
    iget v0, p0, Lce/b1;->B:I

    .line 159
    .line 160
    iget v1, v1, Lce/a1;->d:I

    .line 161
    .line 162
    and-int/2addr v0, v1

    .line 163
    iput v0, p0, Lce/b1;->B:I

    .line 164
    .line 165
    and-int/2addr v1, v2

    .line 166
    if-ne v1, v2, :cond_9

    .line 167
    .line 168
    or-int/2addr v0, v2

    .line 169
    iput v0, p0, Lce/b1;->B:I

    .line 170
    .line 171
    :cond_9
    iget v0, p0, Lce/b1;->B:I

    .line 172
    .line 173
    and-int/lit8 v1, v0, 0x4

    .line 174
    .line 175
    if-nez v1, :cond_b

    .line 176
    .line 177
    sget-boolean v1, Lce/q0;->g0:Z

    .line 178
    .line 179
    if-eqz v1, :cond_a

    .line 180
    .line 181
    or-int/lit8 v0, v0, 0x4

    .line 182
    .line 183
    iput v0, p0, Lce/b1;->B:I

    .line 184
    .line 185
    goto :goto_8

    .line 186
    :cond_a
    const/4 v0, 0x0

    .line 187
    iput-boolean v0, p0, Lce/b1;->C:Z

    .line 188
    .line 189
    iget v0, p0, Lce/b1;->x:I

    .line 190
    .line 191
    and-int/lit16 v0, v0, 0x7fff

    .line 192
    .line 193
    iput v0, p0, Lce/b1;->x:I

    .line 194
    .line 195
    :cond_b
    :goto_8
    return-void

    .line 196
    :cond_c
    new-instance v0, Lce/r0;

    .line 197
    .line 198
    const-string v1, "This client does not support the negotiated dialect."

    .line 199
    .line 200
    invoke-direct {v0, v1}, Lce/r0;-><init>(Ljava/lang/String;)V

    .line 201
    .line 202
    .line 203
    throw v0
.end method

.method public final d(Z)V
    .locals 3

    .line 1
    iget-object v0, p0, Lce/b1;->v:Ljava/util/LinkedList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/AbstractList;->listIterator()Ljava/util/ListIterator;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    :goto_0
    const/4 v1, 0x0

    .line 8
    :try_start_0
    invoke-interface {v0}, Ljava/util/ListIterator;->hasNext()Z

    .line 9
    .line 10
    .line 11
    move-result v2

    .line 12
    if-eqz v2, :cond_0

    .line 13
    .line 14
    invoke-interface {v0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    check-cast v2, Lce/y0;

    .line 19
    .line 20
    invoke-virtual {v2, p1}, Lce/y0;->b(Z)V

    .line 21
    .line 22
    .line 23
    goto :goto_0

    .line 24
    :catchall_0
    move-exception p1

    .line 25
    goto :goto_1

    .line 26
    :cond_0
    iget-object p1, p0, Lce/b1;->k:Ljava/net/Socket;

    .line 27
    .line 28
    invoke-virtual {p1}, Ljava/net/Socket;->shutdownOutput()V

    .line 29
    .line 30
    .line 31
    iget-object p1, p0, Lce/b1;->n:Ljava/io/OutputStream;

    .line 32
    .line 33
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V

    .line 34
    .line 35
    .line 36
    iget-object p1, p0, Lce/b1;->p:Ljava/io/InputStream;

    .line 37
    .line 38
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    .line 39
    .line 40
    .line 41
    iget-object p1, p0, Lce/b1;->k:Ljava/net/Socket;

    .line 42
    .line 43
    invoke-virtual {p1}, Ljava/net/Socket;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 44
    .line 45
    .line 46
    iput-object v1, p0, Lce/b1;->t:Lce/r;

    .line 47
    .line 48
    iput-object v1, p0, Lce/b1;->k:Ljava/net/Socket;

    .line 49
    .line 50
    iput-object v1, p0, Lce/b1;->D:Ljava/lang/String;

    .line 51
    .line 52
    return-void

    .line 53
    :goto_1
    iput-object v1, p0, Lce/b1;->t:Lce/r;

    .line 54
    .line 55
    iput-object v1, p0, Lce/b1;->k:Ljava/net/Socket;

    .line 56
    .line 57
    iput-object v1, p0, Lce/b1;->D:Ljava/lang/String;

    .line 58
    .line 59
    goto :goto_3

    .line 60
    :goto_2
    throw p1

    .line 61
    :goto_3
    goto :goto_2
.end method

.method public final e(Lee/a;)V
    .locals 7

    .line 1
    const-string v0, "Invalid payload size: "

    .line 2
    .line 3
    check-cast p1, Lce/q;

    .line 4
    .line 5
    iget-boolean v1, p0, Lce/b1;->C:Z

    .line 6
    .line 7
    iput-boolean v1, p1, Lce/q;->q:Z

    .line 8
    .line 9
    iget v1, p0, Lce/b1;->B:I

    .line 10
    .line 11
    const/high16 v2, -0x80000000

    .line 12
    .line 13
    and-int/2addr v1, v2

    .line 14
    const/4 v3, 0x0

    .line 15
    if-ne v1, v2, :cond_0

    .line 16
    .line 17
    const/4 v1, 0x1

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const/4 v1, 0x0

    .line 20
    :goto_0
    iput-boolean v1, p1, Lce/q;->s:Z

    .line 21
    .line 22
    sget-object v1, Lce/b1;->E:[B

    .line 23
    .line 24
    monitor-enter v1

    .line 25
    :try_start_0
    iget-object v2, p0, Lce/b1;->q:[B

    .line 26
    .line 27
    const/16 v4, 0x24

    .line 28
    .line 29
    invoke-static {v2, v3, v1, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 30
    .line 31
    .line 32
    const/4 v2, 0x2

    .line 33
    invoke-static {v2, v1}, La9/o;->A(I[B)S

    .line 34
    .line 35
    .line 36
    move-result v2

    .line 37
    const v3, 0xffff

    .line 38
    .line 39
    .line 40
    and-int/2addr v2, v3

    .line 41
    const/16 v3, 0x21

    .line 42
    .line 43
    if-lt v2, v3, :cond_7

    .line 44
    .line 45
    add-int/lit8 v3, v2, 0x4

    .line 46
    .line 47
    iget v5, p0, Lce/b1;->A:I

    .line 48
    .line 49
    if-gt v3, v5, :cond_7

    .line 50
    .line 51
    const/16 v0, 0x9

    .line 52
    .line 53
    invoke-static {v0, v1}, La9/o;->D(I[B)I

    .line 54
    .line 55
    .line 56
    move-result v0

    .line 57
    iget-byte v3, p1, Lce/q;->c:B

    .line 58
    .line 59
    const/16 v5, 0x2e

    .line 60
    .line 61
    const/4 v6, 0x4

    .line 62
    if-ne v3, v5, :cond_3

    .line 63
    .line 64
    if-eqz v0, :cond_1

    .line 65
    .line 66
    const v3, -0x7ffffffb

    .line 67
    .line 68
    .line 69
    if-ne v0, v3, :cond_3

    .line 70
    .line 71
    :cond_1
    move-object v0, p1

    .line 72
    check-cast v0, Lce/e0;

    .line 73
    .line 74
    iget-object v3, p0, Lce/b1;->p:Ljava/io/InputStream;

    .line 75
    .line 76
    const/16 v5, 0x1b

    .line 77
    .line 78
    invoke-static {v3, v1, v4, v5}, Lee/b;->i(Ljava/io/InputStream;[BII)I

    .line 79
    .line 80
    .line 81
    invoke-virtual {p1, v1}, Lce/q;->b([B)V

    .line 82
    .line 83
    .line 84
    iget v3, v0, Lce/e0;->K:I

    .line 85
    .line 86
    add-int/lit8 v3, v3, -0x3b

    .line 87
    .line 88
    iget v4, v0, Lce/q;->p:I

    .line 89
    .line 90
    if-lez v4, :cond_2

    .line 91
    .line 92
    if-lez v3, :cond_2

    .line 93
    .line 94
    if-ge v3, v6, :cond_2

    .line 95
    .line 96
    iget-object v4, p0, Lce/b1;->p:Ljava/io/InputStream;

    .line 97
    .line 98
    const/16 v5, 0x3f

    .line 99
    .line 100
    invoke-static {v4, v1, v5, v3}, Lee/b;->i(Ljava/io/InputStream;[BII)I

    .line 101
    .line 102
    .line 103
    goto :goto_1

    .line 104
    :catchall_0
    move-exception p1

    .line 105
    goto :goto_3

    .line 106
    :cond_2
    :goto_1
    iget v3, v0, Lce/e0;->I:I

    .line 107
    .line 108
    if-lez v3, :cond_4

    .line 109
    .line 110
    iget-object v4, p0, Lce/b1;->p:Ljava/io/InputStream;

    .line 111
    .line 112
    iget-object v5, v0, Lce/e0;->F:[B

    .line 113
    .line 114
    iget v0, v0, Lce/e0;->G:I

    .line 115
    .line 116
    invoke-static {v4, v5, v0, v3}, Lee/b;->i(Ljava/io/InputStream;[BII)I

    .line 117
    .line 118
    .line 119
    goto :goto_2

    .line 120
    :cond_3
    iget-object v0, p0, Lce/b1;->p:Ljava/io/InputStream;

    .line 121
    .line 122
    add-int/lit8 v3, v2, -0x20

    .line 123
    .line 124
    invoke-static {v0, v1, v4, v3}, Lee/b;->i(Ljava/io/InputStream;[BII)I

    .line 125
    .line 126
    .line 127
    invoke-virtual {p1, v1}, Lce/q;->b([B)V

    .line 128
    .line 129
    .line 130
    instance-of v0, p1, Lce/j0;

    .line 131
    .line 132
    if-eqz v0, :cond_4

    .line 133
    .line 134
    move-object v0, p1

    .line 135
    check-cast v0, Lce/j0;

    .line 136
    .line 137
    invoke-virtual {v0}, Lce/j0;->nextElement()Ljava/lang/Object;

    .line 138
    .line 139
    .line 140
    :cond_4
    :goto_2
    iget-object v0, p0, Lce/b1;->t:Lce/r;

    .line 141
    .line 142
    if-eqz v0, :cond_5

    .line 143
    .line 144
    iget v3, p1, Lce/q;->h:I

    .line 145
    .line 146
    if-nez v3, :cond_5

    .line 147
    .line 148
    invoke-virtual {v0, v1, p1}, Lce/r;->c([BLce/q;)V

    .line 149
    .line 150
    .line 151
    :cond_5
    sget p1, Lde/d;->b:I

    .line 152
    .line 153
    if-lt p1, v6, :cond_6

    .line 154
    .line 155
    sget-object p1, Lce/b1;->G:Lde/d;

    .line 156
    .line 157
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 158
    .line 159
    .line 160
    sget v0, Lde/d;->b:I

    .line 161
    .line 162
    const/4 v3, 0x6

    .line 163
    if-lt v0, v3, :cond_6

    .line 164
    .line 165
    invoke-static {p1, v1, v6, v2}, Lde/c;->a(Ljava/io/PrintStream;[BII)V

    .line 166
    .line 167
    .line 168
    :cond_6
    monitor-exit v1

    .line 169
    return-void

    .line 170
    :cond_7
    new-instance p1, Ljava/io/IOException;

    .line 171
    .line 172
    new-instance v3, Ljava/lang/StringBuilder;

    .line 173
    .line 174
    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 175
    .line 176
    .line 177
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 178
    .line 179
    .line 180
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 181
    .line 182
    .line 183
    move-result-object v0

    .line 184
    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 185
    .line 186
    .line 187
    throw p1

    .line 188
    :goto_3
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 189
    throw p1
.end method

.method public final f(Lce/q;)V
    .locals 6

    .line 1
    sget-object v0, Lce/b1;->E:[B

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-virtual {p1, v0}, Lce/q;->c([B)I

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    const v2, 0xffff

    .line 9
    .line 10
    .line 11
    and-int/2addr v2, v1

    .line 12
    const/4 v3, 0x0

    .line 13
    invoke-static {v2, v3, v0}, La9/o;->G(II[B)V

    .line 14
    .line 15
    .line 16
    sget v2, Lde/d;->b:I

    .line 17
    .line 18
    const/4 v4, 0x4

    .line 19
    if-lt v2, v4, :cond_2

    .line 20
    .line 21
    :cond_0
    sget-object v2, Lce/b1;->G:Lde/d;

    .line 22
    .line 23
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 24
    .line 25
    .line 26
    instance-of v5, p1, Lce/a;

    .line 27
    .line 28
    if-eqz v5, :cond_1

    .line 29
    .line 30
    check-cast p1, Lce/a;

    .line 31
    .line 32
    iget-object p1, p1, Lce/a;->E:Lce/q;

    .line 33
    .line 34
    if-nez p1, :cond_0

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :catchall_0
    move-exception p1

    .line 38
    goto :goto_1

    .line 39
    :cond_1
    :goto_0
    sget p1, Lde/d;->b:I

    .line 40
    .line 41
    const/4 v5, 0x6

    .line 42
    if-lt p1, v5, :cond_2

    .line 43
    .line 44
    sget-object p1, Lce/b1;->E:[B

    .line 45
    .line 46
    invoke-static {v2, p1, v4, v1}, Lde/c;->a(Ljava/io/PrintStream;[BII)V

    .line 47
    .line 48
    .line 49
    :cond_2
    iget-object p1, p0, Lce/b1;->n:Ljava/io/OutputStream;

    .line 50
    .line 51
    sget-object v2, Lce/b1;->E:[B

    .line 52
    .line 53
    add-int/2addr v1, v4

    .line 54
    invoke-virtual {p1, v2, v3, v1}, Ljava/io/OutputStream;->write([BII)V

    .line 55
    .line 56
    .line 57
    monitor-exit v0

    .line 58
    return-void

    .line 59
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 60
    goto :goto_3

    .line 61
    :goto_2
    throw p1

    .line 62
    :goto_3
    goto :goto_2
.end method

.method public final h()Lce/t;
    .locals 8

    .line 1
    :cond_0
    iget-object v0, p0, Lce/b1;->p:Ljava/io/InputStream;

    .line 2
    .line 3
    iget-object v1, p0, Lce/b1;->q:[B

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    const/4 v3, 0x4

    .line 7
    invoke-static {v0, v1, v2, v3}, Lee/b;->i(Ljava/io/InputStream;[BII)I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    const/4 v4, 0x0

    .line 12
    if-ge v0, v3, :cond_1

    .line 13
    .line 14
    return-object v4

    .line 15
    :cond_1
    aget-byte v0, v1, v2

    .line 16
    .line 17
    const/16 v5, -0x7b

    .line 18
    .line 19
    if-eq v0, v5, :cond_0

    .line 20
    .line 21
    iget-object v0, p0, Lce/b1;->p:Ljava/io/InputStream;

    .line 22
    .line 23
    const/16 v5, 0x20

    .line 24
    .line 25
    invoke-static {v0, v1, v3, v5}, Lee/b;->i(Ljava/io/InputStream;[BII)I

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    if-ge v0, v5, :cond_2

    .line 30
    .line 31
    return-object v4

    .line 32
    :cond_2
    sget v0, Lde/d;->b:I

    .line 33
    .line 34
    if-lt v0, v3, :cond_3

    .line 35
    .line 36
    invoke-virtual {p0}, Lce/b1;->toString()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    sget-object v0, Lce/b1;->G:Lde/d;

    .line 40
    .line 41
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 42
    .line 43
    .line 44
    invoke-static {v0, v1, v3, v5}, Lde/c;->a(Ljava/io/PrintStream;[BII)V

    .line 45
    .line 46
    .line 47
    :cond_3
    :goto_0
    aget-byte v0, v1, v2

    .line 48
    .line 49
    const/4 v5, -0x1

    .line 50
    if-nez v0, :cond_4

    .line 51
    .line 52
    const/4 v0, 0x1

    .line 53
    aget-byte v0, v1, v0

    .line 54
    .line 55
    if-nez v0, :cond_4

    .line 56
    .line 57
    aget-byte v0, v1, v3

    .line 58
    .line 59
    if-ne v0, v5, :cond_4

    .line 60
    .line 61
    const/4 v0, 0x5

    .line 62
    aget-byte v0, v1, v0

    .line 63
    .line 64
    const/16 v6, 0x53

    .line 65
    .line 66
    if-ne v0, v6, :cond_4

    .line 67
    .line 68
    const/4 v0, 0x6

    .line 69
    aget-byte v0, v1, v0

    .line 70
    .line 71
    const/16 v6, 0x4d

    .line 72
    .line 73
    if-ne v0, v6, :cond_4

    .line 74
    .line 75
    const/4 v0, 0x7

    .line 76
    aget-byte v0, v1, v0

    .line 77
    .line 78
    const/16 v6, 0x42

    .line 79
    .line 80
    if-ne v0, v6, :cond_4

    .line 81
    .line 82
    const/16 v0, 0x22

    .line 83
    .line 84
    invoke-static {v0, v1}, La9/o;->B(I[B)S

    .line 85
    .line 86
    .line 87
    move-result v0

    .line 88
    const v1, 0xffff

    .line 89
    .line 90
    .line 91
    and-int/2addr v0, v1

    .line 92
    iget-object v1, p0, Lce/b1;->r:Lce/t;

    .line 93
    .line 94
    iput v0, v1, Lce/q;->m:I

    .line 95
    .line 96
    return-object v1

    .line 97
    :cond_4
    const/4 v0, 0x0

    .line 98
    :goto_1
    const/16 v6, 0x23

    .line 99
    .line 100
    if-ge v0, v6, :cond_5

    .line 101
    .line 102
    add-int/lit8 v6, v0, 0x1

    .line 103
    .line 104
    aget-byte v7, v1, v6

    .line 105
    .line 106
    aput-byte v7, v1, v0

    .line 107
    .line 108
    move v0, v6

    .line 109
    goto :goto_1

    .line 110
    :cond_5
    iget-object v0, p0, Lce/b1;->p:Ljava/io/InputStream;

    .line 111
    .line 112
    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    .line 113
    .line 114
    .line 115
    move-result v0

    .line 116
    if-ne v0, v5, :cond_6

    .line 117
    .line 118
    return-object v4

    .line 119
    :cond_6
    int-to-byte v0, v0

    .line 120
    aput-byte v0, v1, v6

    .line 121
    .line 122
    goto :goto_0
.end method

.method public final k(Lce/q;Lce/q;)V
    .locals 8

    .line 1
    iget v0, p2, Lce/q;->h:I

    .line 2
    .line 3
    invoke-static {v0}, Lce/r0;->b(I)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    iput v0, p2, Lce/q;->h:I

    .line 8
    .line 9
    if-eqz v0, :cond_7

    .line 10
    .line 11
    sparse-switch v0, :sswitch_data_0

    .line 12
    .line 13
    .line 14
    packed-switch v0, :pswitch_data_0

    .line 15
    .line 16
    .line 17
    new-instance p1, Lce/r0;

    .line 18
    .line 19
    iget p2, p2, Lce/q;->h:I

    .line 20
    .line 21
    invoke-direct {p1, p2}, Lce/r0;-><init>(I)V

    .line 22
    .line 23
    .line 24
    throw p1

    .line 25
    :sswitch_0
    iget-object v0, p1, Lce/q;->w:Lce/p;

    .line 26
    .line 27
    if-eqz v0, :cond_6

    .line 28
    .line 29
    iget-object v1, p1, Lce/q;->x:Ljava/lang/String;

    .line 30
    .line 31
    const/4 v2, 0x1

    .line 32
    invoke-virtual {p0, v0, v1, v2}, Lce/b1;->m(Lce/p;Ljava/lang/String;I)Lce/e;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    if-eqz v0, :cond_5

    .line 37
    .line 38
    sget-object v1, Lce/t0;->A:Lce/d;

    .line 39
    .line 40
    iget-object p1, p1, Lce/q;->x:Ljava/lang/String;

    .line 41
    .line 42
    monitor-enter v1

    .line 43
    :try_start_0
    sget-boolean p2, Lce/d;->f:Z

    .line 44
    .line 45
    if-nez p2, :cond_4

    .line 46
    .line 47
    const/16 p2, 0x5c

    .line 48
    .line 49
    invoke-virtual {p1, p2, v2}, Ljava/lang/String;->indexOf(II)I

    .line 50
    .line 51
    .line 52
    move-result v3

    .line 53
    add-int/lit8 v4, v3, 0x1

    .line 54
    .line 55
    invoke-virtual {p1, p2, v4}, Ljava/lang/String;->indexOf(II)I

    .line 56
    .line 57
    .line 58
    move-result v5

    .line 59
    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v3

    .line 63
    invoke-virtual {p1, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v4

    .line 67
    iget v5, v0, Lce/e;->c:I

    .line 68
    .line 69
    const/4 v6, 0x0

    .line 70
    invoke-virtual {p1, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object p1

    .line 78
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 79
    .line 80
    .line 81
    move-result v5

    .line 82
    :goto_0
    if-le v5, v2, :cond_0

    .line 83
    .line 84
    add-int/lit8 v7, v5, -0x1

    .line 85
    .line 86
    invoke-virtual {p1, v7}, Ljava/lang/String;->charAt(I)C

    .line 87
    .line 88
    .line 89
    move-result v7

    .line 90
    if-ne v7, p2, :cond_0

    .line 91
    .line 92
    add-int/lit8 v5, v5, -0x1

    .line 93
    .line 94
    goto :goto_0

    .line 95
    :catchall_0
    move-exception p1

    .line 96
    goto :goto_2

    .line 97
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 98
    .line 99
    .line 100
    move-result p2

    .line 101
    if-ge v5, p2, :cond_1

    .line 102
    .line 103
    invoke-virtual {p1, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object p1

    .line 107
    :cond_1
    iget p2, v0, Lce/e;->c:I

    .line 108
    .line 109
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    .line 110
    .line 111
    .line 112
    move-result v2

    .line 113
    add-int/lit8 v2, v2, 0x2

    .line 114
    .line 115
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    .line 116
    .line 117
    .line 118
    move-result v3

    .line 119
    add-int/2addr v2, v3

    .line 120
    sub-int/2addr p2, v2

    .line 121
    iput p2, v0, Lce/e;->c:I

    .line 122
    .line 123
    iget-object p2, v1, Lce/d;->b:Lce/c;

    .line 124
    .line 125
    if-eqz p2, :cond_2

    .line 126
    .line 127
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 128
    .line 129
    .line 130
    move-result-wide v2

    .line 131
    const-wide/16 v4, 0x2710

    .line 132
    .line 133
    add-long/2addr v2, v4

    .line 134
    iget-object p2, v1, Lce/d;->b:Lce/c;

    .line 135
    .line 136
    iget-wide v4, p2, Lce/c;->a:J

    .line 137
    .line 138
    cmp-long p2, v2, v4

    .line 139
    .line 140
    if-lez p2, :cond_2

    .line 141
    .line 142
    const/4 p2, 0x0

    .line 143
    iput-object p2, v1, Lce/d;->b:Lce/c;

    .line 144
    .line 145
    :cond_2
    iget-object p2, v1, Lce/d;->b:Lce/c;

    .line 146
    .line 147
    if-nez p2, :cond_3

    .line 148
    .line 149
    new-instance p2, Lce/c;

    .line 150
    .line 151
    const-wide/16 v2, 0x0

    .line 152
    .line 153
    invoke-direct {p2, v2, v3}, Lce/c;-><init>(J)V

    .line 154
    .line 155
    .line 156
    iput-object p2, v1, Lce/d;->b:Lce/c;

    .line 157
    .line 158
    :cond_3
    iget-object p2, v1, Lce/d;->b:Lce/c;

    .line 159
    .line 160
    iget-object p2, p2, Lce/c;->b:Ljava/util/HashMap;

    .line 161
    .line 162
    invoke-virtual {p2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 163
    .line 164
    .line 165
    monitor-exit v1

    .line 166
    goto :goto_1

    .line 167
    :cond_4
    monitor-exit v1

    .line 168
    :goto_1
    throw v0

    .line 169
    :goto_2
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 170
    throw p1

    .line 171
    :cond_5
    new-instance p1, Lce/r0;

    .line 172
    .line 173
    iget p2, p2, Lce/q;->h:I

    .line 174
    .line 175
    invoke-direct {p1, p2}, Lce/r0;-><init>(I)V

    .line 176
    .line 177
    .line 178
    throw p1

    .line 179
    :cond_6
    new-instance p1, Lce/r0;

    .line 180
    .line 181
    iget p2, p2, Lce/q;->h:I

    .line 182
    .line 183
    invoke-direct {p1, p2}, Lce/r0;-><init>(I)V

    .line 184
    .line 185
    .line 186
    throw p1

    .line 187
    :pswitch_0
    :sswitch_1
    new-instance p1, Lce/s;

    .line 188
    .line 189
    iget p2, p2, Lce/q;->h:I

    .line 190
    .line 191
    invoke-direct {p1, p2}, Lce/s;-><init>(I)V

    .line 192
    .line 193
    .line 194
    throw p1

    .line 195
    :cond_7
    :sswitch_2
    iget-boolean p1, p2, Lce/q;->v:Z

    .line 196
    .line 197
    if-nez p1, :cond_8

    .line 198
    .line 199
    return-void

    .line 200
    :cond_8
    new-instance p1, Lce/r0;

    .line 201
    .line 202
    const-string p2, "Signature verification failed."

    .line 203
    .line 204
    invoke-direct {p1, p2}, Lce/r0;-><init>(Ljava/lang/String;)V

    .line 205
    .line 206
    .line 207
    goto :goto_4

    .line 208
    :goto_3
    throw p1

    .line 209
    :goto_4
    goto :goto_3

    .line 210
    nop

    .line 211
    :sswitch_data_0
    .sparse-switch
        -0x7ffffffb -> :sswitch_2
        -0x3fffffea -> :sswitch_2
        -0x3fffffde -> :sswitch_1
        -0x3fffff96 -> :sswitch_1
        -0x3ffffe74 -> :sswitch_1
        -0x3ffffdcc -> :sswitch_1
        -0x3ffffda9 -> :sswitch_0
        0x0 -> :sswitch_2
    .end sparse-switch

    .line 212
    .line 213
    .line 214
    .line 215
    .line 216
    .line 217
    .line 218
    .line 219
    .line 220
    .line 221
    .line 222
    .line 223
    .line 224
    .line 225
    .line 226
    .line 227
    .line 228
    .line 229
    .line 230
    .line 231
    .line 232
    .line 233
    .line 234
    .line 235
    .line 236
    .line 237
    .line 238
    .line 239
    .line 240
    .line 241
    .line 242
    .line 243
    .line 244
    .line 245
    :pswitch_data_0
    .packed-switch -0x3fffff93
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final l()V
    .locals 4

    .line 1
    :try_start_0
    sget v0, Lce/q0;->q0:I

    .line 2
    .line 3
    int-to-long v0, v0

    .line 4
    invoke-virtual {p0, v0, v1}, Lee/b;->a(J)V
    :try_end_0
    .catch Lee/c; {:try_start_0 .. :try_end_0} :catch_0

    .line 5
    .line 6
    .line 7
    return-void

    .line 8
    :catch_0
    move-exception v0

    .line 9
    new-instance v1, Lce/r0;

    .line 10
    .line 11
    new-instance v2, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    const-string v3, "Failed to connect: "

    .line 14
    .line 15
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    iget-object v3, p0, Lce/b1;->j:Lwd/c;

    .line 19
    .line 20
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    invoke-direct {v1, v2, v0}, Lce/r0;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 28
    .line 29
    .line 30
    throw v1
.end method

.method public final m(Lce/p;Ljava/lang/String;I)Lce/e;
    .locals 16

    .line 1
    move-object/from16 v0, p2

    .line 2
    .line 3
    move/from16 v1, p3

    .line 4
    .line 5
    invoke-virtual/range {p0 .. p1}, Lce/b1;->n(Lce/p;)Lce/y0;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    const-string v3, "IPC$"

    .line 10
    .line 11
    const/4 v4, 0x0

    .line 12
    invoke-virtual {v2, v3, v4}, Lce/y0;->a(Ljava/lang/String;Ljava/lang/String;)Lce/c1;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    new-instance v3, Lce/j1;

    .line 17
    .line 18
    invoke-direct {v3}, Lce/j1;-><init>()V

    .line 19
    .line 20
    .line 21
    new-instance v5, Lce/h1;

    .line 22
    .line 23
    invoke-direct {v5, v0}, Lce/h1;-><init>(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v2, v5, v3}, Lce/c1;->b(Lce/q;Lce/q;)V

    .line 27
    .line 28
    .line 29
    iget v2, v3, Lce/j1;->M0:I

    .line 30
    .line 31
    if-nez v2, :cond_0

    .line 32
    .line 33
    return-object v4

    .line 34
    :cond_0
    if-eqz v1, :cond_1

    .line 35
    .line 36
    if-ge v2, v1, :cond_2

    .line 37
    .line 38
    :cond_1
    move v1, v2

    .line 39
    :cond_2
    new-instance v2, Lce/e;

    .line 40
    .line 41
    invoke-direct {v2}, Lce/e;-><init>()V

    .line 42
    .line 43
    .line 44
    const/4 v4, 0x4

    .line 45
    new-array v5, v4, [Ljava/lang/String;

    .line 46
    .line 47
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 48
    .line 49
    .line 50
    move-result-wide v6

    .line 51
    sget-wide v8, Lce/d;->e:J

    .line 52
    .line 53
    const-wide/16 v10, 0x3e8

    .line 54
    .line 55
    mul-long v8, v8, v10

    .line 56
    .line 57
    add-long/2addr v8, v6

    .line 58
    const/4 v7, 0x0

    .line 59
    :goto_0
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 60
    .line 61
    .line 62
    iget-object v10, v3, Lce/j1;->O0:[Lce/i1;

    .line 63
    .line 64
    aget-object v10, v10, v7

    .line 65
    .line 66
    iget v10, v10, Lce/i1;->i:I

    .line 67
    .line 68
    int-to-long v10, v10

    .line 69
    iput-wide v10, v2, Lce/e;->d:J

    .line 70
    .line 71
    iput-wide v8, v2, Lce/e;->i:J

    .line 72
    .line 73
    const-string v10, ""

    .line 74
    .line 75
    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 76
    .line 77
    .line 78
    move-result v11

    .line 79
    const/4 v12, 0x1

    .line 80
    if-eqz v11, :cond_3

    .line 81
    .line 82
    iget-object v10, v3, Lce/j1;->O0:[Lce/i1;

    .line 83
    .line 84
    aget-object v10, v10, v7

    .line 85
    .line 86
    iget-object v10, v10, Lce/i1;->j:Ljava/lang/String;

    .line 87
    .line 88
    invoke-virtual {v10, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v10

    .line 92
    invoke-virtual {v10}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v10

    .line 96
    iput-object v10, v2, Lce/e;->e:Ljava/lang/String;

    .line 97
    .line 98
    const/4 v12, 0x4

    .line 99
    goto :goto_4

    .line 100
    :cond_3
    iget-object v11, v3, Lce/j1;->O0:[Lce/i1;

    .line 101
    .line 102
    aget-object v11, v11, v7

    .line 103
    .line 104
    iget-object v11, v11, Lce/i1;->k:Ljava/lang/String;

    .line 105
    .line 106
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    .line 107
    .line 108
    .line 109
    move-result v13

    .line 110
    const/4 v6, 0x0

    .line 111
    const/4 v14, 0x0

    .line 112
    const/4 v15, 0x0

    .line 113
    :goto_1
    const/4 v12, 0x3

    .line 114
    if-ne v14, v12, :cond_5

    .line 115
    .line 116
    invoke-virtual {v11, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object v6

    .line 120
    aput-object v6, v5, v12

    .line 121
    .line 122
    const/4 v12, 0x4

    .line 123
    :cond_4
    const/4 v15, 0x1

    .line 124
    goto :goto_3

    .line 125
    :cond_5
    if-eq v15, v13, :cond_6

    .line 126
    .line 127
    invoke-virtual {v11, v15}, Ljava/lang/String;->charAt(I)C

    .line 128
    .line 129
    .line 130
    move-result v12

    .line 131
    const/16 v4, 0x5c

    .line 132
    .line 133
    if-ne v12, v4, :cond_7

    .line 134
    .line 135
    :cond_6
    add-int/lit8 v4, v14, 0x1

    .line 136
    .line 137
    invoke-virtual {v11, v6, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object v6

    .line 141
    aput-object v6, v5, v14

    .line 142
    .line 143
    add-int/lit8 v6, v15, 0x1

    .line 144
    .line 145
    move v14, v4

    .line 146
    :cond_7
    add-int/lit8 v4, v15, 0x1

    .line 147
    .line 148
    if-lt v15, v13, :cond_9

    .line 149
    .line 150
    const/4 v12, 0x4

    .line 151
    :goto_2
    if-ge v14, v12, :cond_4

    .line 152
    .line 153
    add-int/lit8 v4, v14, 0x1

    .line 154
    .line 155
    aput-object v10, v5, v14

    .line 156
    .line 157
    move v14, v4

    .line 158
    goto :goto_2

    .line 159
    :goto_3
    aget-object v4, v5, v15

    .line 160
    .line 161
    iput-object v4, v2, Lce/e;->e:Ljava/lang/String;

    .line 162
    .line 163
    const/4 v4, 0x2

    .line 164
    aget-object v4, v5, v4

    .line 165
    .line 166
    iput-object v4, v2, Lce/e;->f:Ljava/lang/String;

    .line 167
    .line 168
    const/4 v4, 0x3

    .line 169
    aget-object v4, v5, v4

    .line 170
    .line 171
    iput-object v4, v2, Lce/e;->h:Ljava/lang/String;

    .line 172
    .line 173
    :goto_4
    iget v4, v3, Lce/j1;->t0:I

    .line 174
    .line 175
    iput v4, v2, Lce/e;->c:I

    .line 176
    .line 177
    add-int/lit8 v7, v7, 0x1

    .line 178
    .line 179
    if-ne v7, v1, :cond_8

    .line 180
    .line 181
    iget-object v0, v2, Lce/e;->j:Lce/e;

    .line 182
    .line 183
    return-object v0

    .line 184
    :cond_8
    new-instance v4, Lce/e;

    .line 185
    .line 186
    invoke-direct {v4}, Lce/e;-><init>()V

    .line 187
    .line 188
    .line 189
    iget-object v6, v2, Lce/e;->j:Lce/e;

    .line 190
    .line 191
    iput-object v6, v4, Lce/e;->j:Lce/e;

    .line 192
    .line 193
    iput-object v4, v2, Lce/e;->j:Lce/e;

    .line 194
    .line 195
    move-object v2, v4

    .line 196
    const/4 v4, 0x4

    .line 197
    goto/16 :goto_0

    .line 198
    .line 199
    :cond_9
    move v15, v4

    .line 200
    const/4 v4, 0x4

    .line 201
    goto :goto_1
.end method

.method public final declared-synchronized n(Lce/p;)Lce/y0;
    .locals 8

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lce/b1;->v:Ljava/util/LinkedList;

    .line 3
    .line 4
    invoke-virtual {v0}, Ljava/util/AbstractList;->listIterator()Ljava/util/ListIterator;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    :cond_0
    invoke-interface {v0}, Ljava/util/ListIterator;->hasNext()Z

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    const/4 v2, 0x0

    .line 13
    if-eqz v1, :cond_3

    .line 14
    .line 15
    invoke-interface {v0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    check-cast v1, Lce/y0;

    .line 20
    .line 21
    iget-object v3, v1, Lce/y0;->i:Lce/p;

    .line 22
    .line 23
    if-eq v3, p1, :cond_1

    .line 24
    .line 25
    invoke-virtual {v3, p1}, Lce/p;->equals(Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    move-result v3

    .line 29
    if-eqz v3, :cond_2

    .line 30
    .line 31
    :cond_1
    const/4 v2, 0x1

    .line 32
    :cond_2
    if-eqz v2, :cond_0

    .line 33
    .line 34
    iput-object p1, v1, Lce/y0;->i:Lce/p;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 35
    .line 36
    monitor-exit p0

    .line 37
    return-object v1

    .line 38
    :catchall_0
    move-exception p1

    .line 39
    goto :goto_1

    .line 40
    :cond_3
    :try_start_1
    sget v0, Lce/q0;->u0:I

    .line 41
    .line 42
    if-lez v0, :cond_5

    .line 43
    .line 44
    iget-wide v3, p0, Lce/b1;->s:J

    .line 45
    .line 46
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 47
    .line 48
    .line 49
    move-result-wide v5

    .line 50
    cmp-long v1, v3, v5

    .line 51
    .line 52
    if-gez v1, :cond_5

    .line 53
    .line 54
    int-to-long v0, v0

    .line 55
    add-long/2addr v0, v5

    .line 56
    iput-wide v0, p0, Lce/b1;->s:J

    .line 57
    .line 58
    iget-object v0, p0, Lce/b1;->v:Ljava/util/LinkedList;

    .line 59
    .line 60
    invoke-virtual {v0}, Ljava/util/AbstractList;->listIterator()Ljava/util/ListIterator;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    :cond_4
    :goto_0
    invoke-interface {v0}, Ljava/util/ListIterator;->hasNext()Z

    .line 65
    .line 66
    .line 67
    move-result v1

    .line 68
    if-eqz v1, :cond_5

    .line 69
    .line 70
    invoke-interface {v0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    move-result-object v1

    .line 74
    check-cast v1, Lce/y0;

    .line 75
    .line 76
    iget-wide v3, v1, Lce/y0;->j:J

    .line 77
    .line 78
    cmp-long v7, v3, v5

    .line 79
    .line 80
    if-gez v7, :cond_4

    .line 81
    .line 82
    invoke-virtual {v1, v2}, Lce/y0;->b(Z)V

    .line 83
    .line 84
    .line 85
    goto :goto_0

    .line 86
    :cond_5
    new-instance v6, Lce/y0;

    .line 87
    .line 88
    iget-object v1, p0, Lce/b1;->j:Lwd/c;

    .line 89
    .line 90
    iget v2, p0, Lce/b1;->l:I

    .line 91
    .line 92
    iget-object v3, p0, Lce/b1;->h:Ljava/net/InetAddress;

    .line 93
    .line 94
    iget v4, p0, Lce/b1;->i:I

    .line 95
    .line 96
    move-object v0, v6

    .line 97
    move-object v5, p1

    .line 98
    invoke-direct/range {v0 .. v5}, Lce/y0;-><init>(Lwd/c;ILjava/net/InetAddress;ILce/p;)V

    .line 99
    .line 100
    .line 101
    iput-object p0, v6, Lce/y0;->h:Lce/b1;

    .line 102
    .line 103
    iget-object p1, p0, Lce/b1;->v:Ljava/util/LinkedList;

    .line 104
    .line 105
    invoke-virtual {p1, v6}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 106
    .line 107
    .line 108
    monitor-exit p0

    .line 109
    return-object v6

    .line 110
    :goto_1
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 111
    goto :goto_3

    .line 112
    :goto_2
    throw p1

    .line 113
    :goto_3
    goto :goto_2
.end method

.method public final q(I)Z
    .locals 2

    .line 1
    :try_start_0
    sget v0, Lce/q0;->q0:I

    .line 2
    .line 3
    int-to-long v0, v0

    .line 4
    invoke-virtual {p0, v0, v1}, Lee/b;->a(J)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5
    .line 6
    .line 7
    iget v0, p0, Lce/b1;->B:I

    .line 8
    .line 9
    and-int/2addr v0, p1

    .line 10
    if-ne v0, p1, :cond_0

    .line 11
    .line 12
    const/4 p1, 0x1

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 p1, 0x0

    .line 15
    :goto_0
    return p1

    .line 16
    :catch_0
    move-exception p1

    .line 17
    new-instance v0, Lce/r0;

    .line 18
    .line 19
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-direct {v0, v1, p1}, Lce/r0;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 24
    .line 25
    .line 26
    throw v0
.end method

.method public final r(ILce/z;)V
    .locals 9

    .line 1
    const-string v0, "Invalid payload size: "

    .line 2
    .line 3
    iget-object v1, p0, Lce/b1;->q:[B

    .line 4
    .line 5
    monitor-enter v1

    .line 6
    const/16 v2, 0x8b

    .line 7
    .line 8
    if-ne p1, v2, :cond_0

    .line 9
    .line 10
    :try_start_0
    invoke-virtual {p0}, Lce/b1;->t()V

    .line 11
    .line 12
    .line 13
    goto :goto_0

    .line 14
    :catchall_0
    move-exception p1

    .line 15
    goto/16 :goto_1

    .line 16
    .line 17
    :cond_0
    if-nez p1, :cond_1

    .line 18
    .line 19
    const/16 p1, 0x1bd

    .line 20
    .line 21
    :cond_1
    new-instance v2, Ljava/net/Socket;

    .line 22
    .line 23
    invoke-direct {v2}, Ljava/net/Socket;-><init>()V

    .line 24
    .line 25
    .line 26
    iput-object v2, p0, Lce/b1;->k:Ljava/net/Socket;

    .line 27
    .line 28
    iget-object v3, p0, Lce/b1;->h:Ljava/net/InetAddress;

    .line 29
    .line 30
    if-eqz v3, :cond_2

    .line 31
    .line 32
    new-instance v3, Ljava/net/InetSocketAddress;

    .line 33
    .line 34
    iget-object v4, p0, Lce/b1;->h:Ljava/net/InetAddress;

    .line 35
    .line 36
    iget v5, p0, Lce/b1;->i:I

    .line 37
    .line 38
    invoke-direct {v3, v4, v5}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v2, v3}, Ljava/net/Socket;->bind(Ljava/net/SocketAddress;)V

    .line 42
    .line 43
    .line 44
    :cond_2
    iget-object v2, p0, Lce/b1;->k:Ljava/net/Socket;

    .line 45
    .line 46
    new-instance v3, Ljava/net/InetSocketAddress;

    .line 47
    .line 48
    iget-object v4, p0, Lce/b1;->j:Lwd/c;

    .line 49
    .line 50
    invoke-virtual {v4}, Lwd/c;->c()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v4

    .line 54
    invoke-direct {v3, v4, p1}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    .line 55
    .line 56
    .line 57
    sget p1, Lce/q0;->v0:I

    .line 58
    .line 59
    invoke-virtual {v2, v3, p1}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V

    .line 60
    .line 61
    .line 62
    iget-object p1, p0, Lce/b1;->k:Ljava/net/Socket;

    .line 63
    .line 64
    sget v2, Lce/q0;->u0:I

    .line 65
    .line 66
    invoke-virtual {p1, v2}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 67
    .line 68
    .line 69
    iget-object p1, p0, Lce/b1;->k:Ljava/net/Socket;

    .line 70
    .line 71
    invoke-virtual {p1}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    iput-object p1, p0, Lce/b1;->n:Ljava/io/OutputStream;

    .line 76
    .line 77
    iget-object p1, p0, Lce/b1;->k:Ljava/net/Socket;

    .line 78
    .line 79
    invoke-virtual {p1}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    .line 80
    .line 81
    .line 82
    move-result-object p1

    .line 83
    iput-object p1, p0, Lce/b1;->p:Ljava/io/InputStream;

    .line 84
    .line 85
    :goto_0
    iget p1, p0, Lce/b1;->m:I

    .line 86
    .line 87
    const/4 v2, 0x1

    .line 88
    add-int/2addr p1, v2

    .line 89
    iput p1, p0, Lce/b1;->m:I

    .line 90
    .line 91
    const/16 v3, 0x7d00

    .line 92
    .line 93
    if-ne p1, v3, :cond_3

    .line 94
    .line 95
    iput v2, p0, Lce/b1;->m:I

    .line 96
    .line 97
    :cond_3
    sget-object p1, Lce/b1;->F:Lce/t;

    .line 98
    .line 99
    iget v2, p0, Lce/b1;->m:I

    .line 100
    .line 101
    iput v2, p1, Lce/q;->m:I

    .line 102
    .line 103
    iget-object v2, p0, Lce/b1;->q:[B

    .line 104
    .line 105
    invoke-virtual {p1, v2}, Lce/q;->c([B)I

    .line 106
    .line 107
    .line 108
    move-result p1

    .line 109
    const v2, 0xffff

    .line 110
    .line 111
    .line 112
    and-int v3, p1, v2

    .line 113
    .line 114
    iget-object v4, p0, Lce/b1;->q:[B

    .line 115
    .line 116
    const/4 v5, 0x0

    .line 117
    invoke-static {v3, v5, v4}, La9/o;->G(II[B)V

    .line 118
    .line 119
    .line 120
    sget v3, Lde/d;->b:I

    .line 121
    .line 122
    const/4 v4, 0x4

    .line 123
    const/4 v6, 0x6

    .line 124
    if-lt v3, v4, :cond_4

    .line 125
    .line 126
    sget-object v3, Lce/b1;->G:Lde/d;

    .line 127
    .line 128
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 129
    .line 130
    .line 131
    sget v7, Lde/d;->b:I

    .line 132
    .line 133
    if-lt v7, v6, :cond_4

    .line 134
    .line 135
    iget-object v7, p0, Lce/b1;->q:[B

    .line 136
    .line 137
    invoke-static {v3, v7, v4, p1}, Lde/c;->a(Ljava/io/PrintStream;[BII)V

    .line 138
    .line 139
    .line 140
    :cond_4
    iget-object v3, p0, Lce/b1;->n:Ljava/io/OutputStream;

    .line 141
    .line 142
    iget-object v7, p0, Lce/b1;->q:[B

    .line 143
    .line 144
    add-int/lit8 v8, p1, 0x4

    .line 145
    .line 146
    invoke-virtual {v3, v7, v5, v8}, Ljava/io/OutputStream;->write([BII)V

    .line 147
    .line 148
    .line 149
    iget-object v3, p0, Lce/b1;->n:Ljava/io/OutputStream;

    .line 150
    .line 151
    invoke-virtual {v3}, Ljava/io/OutputStream;->flush()V

    .line 152
    .line 153
    .line 154
    invoke-virtual {p0}, Lce/b1;->h()Lce/t;

    .line 155
    .line 156
    .line 157
    move-result-object v3

    .line 158
    if-eqz v3, :cond_7

    .line 159
    .line 160
    iget-object v3, p0, Lce/b1;->q:[B

    .line 161
    .line 162
    const/4 v5, 0x2

    .line 163
    invoke-static {v5, v3}, La9/o;->A(I[B)S

    .line 164
    .line 165
    .line 166
    move-result v3

    .line 167
    and-int/2addr v2, v3

    .line 168
    const/16 v3, 0x21

    .line 169
    .line 170
    if-lt v2, v3, :cond_6

    .line 171
    .line 172
    add-int/lit8 v3, v2, 0x4

    .line 173
    .line 174
    iget-object v5, p0, Lce/b1;->q:[B

    .line 175
    .line 176
    array-length v7, v5

    .line 177
    if-gt v3, v7, :cond_6

    .line 178
    .line 179
    iget-object v0, p0, Lce/b1;->p:Ljava/io/InputStream;

    .line 180
    .line 181
    add-int/lit8 v2, v2, -0x20

    .line 182
    .line 183
    const/16 v3, 0x24

    .line 184
    .line 185
    invoke-static {v0, v5, v3, v2}, Lee/b;->i(Ljava/io/InputStream;[BII)I

    .line 186
    .line 187
    .line 188
    iget-object v0, p0, Lce/b1;->q:[B

    .line 189
    .line 190
    invoke-virtual {p2, v0}, Lce/q;->b([B)V

    .line 191
    .line 192
    .line 193
    sget p2, Lde/d;->b:I

    .line 194
    .line 195
    if-lt p2, v4, :cond_5

    .line 196
    .line 197
    sget-object p2, Lce/b1;->G:Lde/d;

    .line 198
    .line 199
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 200
    .line 201
    .line 202
    sget v0, Lde/d;->b:I

    .line 203
    .line 204
    if-lt v0, v6, :cond_5

    .line 205
    .line 206
    iget-object v0, p0, Lce/b1;->q:[B

    .line 207
    .line 208
    invoke-static {p2, v0, v4, p1}, Lde/c;->a(Ljava/io/PrintStream;[BII)V

    .line 209
    .line 210
    .line 211
    :cond_5
    monitor-exit v1

    .line 212
    return-void

    .line 213
    :cond_6
    new-instance p1, Ljava/io/IOException;

    .line 214
    .line 215
    new-instance p2, Ljava/lang/StringBuilder;

    .line 216
    .line 217
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 218
    .line 219
    .line 220
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 221
    .line 222
    .line 223
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 224
    .line 225
    .line 226
    move-result-object p2

    .line 227
    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 228
    .line 229
    .line 230
    throw p1

    .line 231
    :cond_7
    new-instance p1, Ljava/io/IOException;

    .line 232
    .line 233
    const-string p2, "transport closed in negotiate"

    .line 234
    .line 235
    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 236
    .line 237
    .line 238
    throw p1

    .line 239
    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 240
    throw p1
.end method

.method public final s(Lce/q;Lce/q;)V
    .locals 7

    .line 1
    invoke-virtual {p0}, Lce/b1;->l()V

    .line 2
    .line 3
    .line 4
    iget v0, p1, Lce/q;->i:I

    .line 5
    .line 6
    iget v1, p0, Lce/b1;->x:I

    .line 7
    .line 8
    or-int/2addr v0, v1

    .line 9
    iput v0, p1, Lce/q;->i:I

    .line 10
    .line 11
    iget-boolean v0, p0, Lce/b1;->C:Z

    .line 12
    .line 13
    iput-boolean v0, p1, Lce/q;->q:Z

    .line 14
    .line 15
    iput-object p2, p1, Lce/q;->z:Lce/q;

    .line 16
    .line 17
    iget-object v0, p1, Lce/q;->y:Lce/r;

    .line 18
    .line 19
    if-nez v0, :cond_0

    .line 20
    .line 21
    iget-object v0, p0, Lce/b1;->t:Lce/r;

    .line 22
    .line 23
    iput-object v0, p1, Lce/q;->y:Lce/r;

    .line 24
    .line 25
    :cond_0
    const/4 v0, 0x2

    .line 26
    const/4 v1, 0x1

    .line 27
    if-nez p2, :cond_2

    .line 28
    .line 29
    :try_start_0
    invoke-virtual {p0, p1}, Lce/b1;->f(Lce/q;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 30
    .line 31
    .line 32
    return-void

    .line 33
    :catch_0
    move-exception p1

    .line 34
    :try_start_1
    sget p2, Lde/d;->b:I

    .line 35
    .line 36
    sget-object v2, Lce/b1;->G:Lde/d;

    .line 37
    .line 38
    if-le p2, v0, :cond_1

    .line 39
    .line 40
    invoke-virtual {p1, v2}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintStream;)V
    :try_end_1
    .catch Lce/r0; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    .line 41
    .line 42
    .line 43
    :cond_1
    :try_start_2
    invoke-virtual {p0, v1}, Lee/b;->b(Z)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 44
    .line 45
    .line 46
    goto :goto_0

    .line 47
    :catch_1
    move-exception p2

    .line 48
    :try_start_3
    invoke-virtual {p2, v2}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintStream;)V

    .line 49
    .line 50
    .line 51
    :goto_0
    throw p1

    .line 52
    :cond_2
    instance-of v2, p1, Lce/i0;

    .line 53
    .line 54
    if-eqz v2, :cond_b

    .line 55
    .line 56
    iget-byte v2, p1, Lce/q;->c:B

    .line 57
    .line 58
    iput-byte v2, p2, Lce/q;->c:B

    .line 59
    .line 60
    move-object v2, p1

    .line 61
    check-cast v2, Lce/i0;

    .line 62
    .line 63
    move-object v3, p2

    .line 64
    check-cast v3, Lce/j0;

    .line 65
    .line 66
    iget v4, p0, Lce/b1;->z:I

    .line 67
    .line 68
    iput v4, v2, Lce/i0;->Z:I

    .line 69
    .line 70
    invoke-virtual {v3}, Lce/j0;->m()V
    :try_end_3
    .catch Lce/r0; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .line 71
    .line 72
    .line 73
    :try_start_4
    invoke-static {v2, v3}, Lce/b;->b(Lce/i0;Lce/j0;)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {v2}, Lce/i0;->nextElement()Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    iget-boolean v4, v2, Lce/i0;->E:Z

    .line 80
    .line 81
    if-eqz v4, :cond_4

    .line 82
    .line 83
    new-instance v4, Lce/t;

    .line 84
    .line 85
    const/4 v5, 0x0

    .line 86
    invoke-direct {v4, v5}, Lce/t;-><init>(I)V

    .line 87
    .line 88
    .line 89
    sget v5, Lce/q0;->q0:I

    .line 90
    .line 91
    int-to-long v5, v5

    .line 92
    invoke-virtual {p0, v2, v4, v5, v6}, Lee/b;->j(Lce/q;Lce/q;J)V

    .line 93
    .line 94
    .line 95
    iget v5, v4, Lce/q;->h:I

    .line 96
    .line 97
    if-eqz v5, :cond_3

    .line 98
    .line 99
    invoke-virtual {p0, v2, v4}, Lce/b1;->k(Lce/q;Lce/q;)V

    .line 100
    .line 101
    .line 102
    goto :goto_1

    .line 103
    :catchall_0
    move-exception p1

    .line 104
    goto/16 :goto_9

    .line 105
    .line 106
    :cond_3
    :goto_1
    invoke-virtual {v2}, Lce/i0;->nextElement()Ljava/lang/Object;

    .line 107
    .line 108
    .line 109
    goto :goto_2

    .line 110
    :cond_4
    iget v4, p0, Lce/b1;->m:I

    .line 111
    .line 112
    add-int/2addr v4, v1

    .line 113
    iput v4, p0, Lce/b1;->m:I

    .line 114
    .line 115
    const/16 v5, 0x7d00

    .line 116
    .line 117
    if-ne v4, v5, :cond_5

    .line 118
    .line 119
    iput v1, p0, Lce/b1;->m:I

    .line 120
    .line 121
    :cond_5
    iget v4, p0, Lce/b1;->m:I

    .line 122
    .line 123
    iput v4, v2, Lce/q;->m:I

    .line 124
    .line 125
    :goto_2
    monitor-enter p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 126
    const/4 v4, 0x0

    .line 127
    :try_start_5
    iput-boolean v4, p2, Lce/q;->r:Z

    .line 128
    .line 129
    iput-boolean v4, v3, Lee/a;->b:Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 130
    .line 131
    :try_start_6
    iget-object v4, p0, Lee/b;->e:Ljava/util/HashMap;

    .line 132
    .line 133
    invoke-virtual {v4, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_6
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 134
    .line 135
    .line 136
    :goto_3
    :try_start_7
    invoke-virtual {p0, v2}, Lce/b1;->f(Lce/q;)V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5
    .catch Ljava/lang/InterruptedException; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 137
    .line 138
    .line 139
    :try_start_8
    iget-boolean v4, v2, Lce/i0;->E:Z

    .line 140
    .line 141
    if-eqz v4, :cond_6

    .line 142
    .line 143
    invoke-virtual {v2}, Lce/i0;->nextElement()Ljava/lang/Object;

    .line 144
    .line 145
    .line 146
    goto :goto_3

    .line 147
    :catchall_1
    move-exception p1

    .line 148
    goto/16 :goto_7

    .line 149
    .line 150
    :catch_2
    move-exception p1

    .line 151
    goto :goto_6

    .line 152
    :cond_6
    sget v0, Lce/q0;->q0:I

    .line 153
    .line 154
    int-to-long v0, v0

    .line 155
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 156
    .line 157
    .line 158
    move-result-wide v4

    .line 159
    add-long/2addr v4, v0

    .line 160
    iput-wide v4, v3, Lee/a;->a:J

    .line 161
    .line 162
    :goto_4
    invoke-virtual {v3}, Lce/j0;->hasMoreElements()Z

    .line 163
    .line 164
    .line 165
    move-result v4

    .line 166
    if-eqz v4, :cond_8

    .line 167
    .line 168
    invoke-virtual {p0, v0, v1}, Ljava/lang/Object;->wait(J)V

    .line 169
    .line 170
    .line 171
    iget-wide v0, v3, Lee/a;->a:J

    .line 172
    .line 173
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 174
    .line 175
    .line 176
    move-result-wide v4

    .line 177
    sub-long/2addr v0, v4

    .line 178
    const-wide/16 v4, 0x0

    .line 179
    .line 180
    cmp-long v6, v0, v4

    .line 181
    .line 182
    if-lez v6, :cond_7

    .line 183
    .line 184
    goto :goto_4

    .line 185
    :cond_7
    new-instance p1, Lee/c;

    .line 186
    .line 187
    new-instance p2, Ljava/lang/StringBuilder;

    .line 188
    .line 189
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 190
    .line 191
    .line 192
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 193
    .line 194
    .line 195
    const-string v0, " timedout waiting for response to "

    .line 196
    .line 197
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 198
    .line 199
    .line 200
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 201
    .line 202
    .line 203
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 204
    .line 205
    .line 206
    move-result-object p2

    .line 207
    invoke-direct {p1, p2}, Lee/c;-><init>(Ljava/lang/String;)V

    .line 208
    .line 209
    .line 210
    throw p1

    .line 211
    :cond_8
    iget v0, p2, Lce/q;->h:I

    .line 212
    .line 213
    if-eqz v0, :cond_9

    .line 214
    .line 215
    invoke-virtual {p0, v2, v3}, Lce/b1;->k(Lce/q;Lce/q;)V
    :try_end_8
    .catch Ljava/lang/InterruptedException; {:try_start_8 .. :try_end_8} :catch_2
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 216
    .line 217
    .line 218
    :cond_9
    :try_start_9
    iget-object v0, p0, Lee/b;->e:Ljava/util/HashMap;

    .line 219
    .line 220
    invoke-virtual {v0, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 221
    .line 222
    .line 223
    monitor-exit p0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 224
    :try_start_a
    iget-object v0, v2, Lce/i0;->h0:[B

    .line 225
    .line 226
    invoke-static {v0}, Lce/b;->c([B)V

    .line 227
    .line 228
    .line 229
    iget-object v0, v3, Lce/j0;->X:[B

    .line 230
    .line 231
    invoke-static {v0}, Lce/b;->c([B)V
    :try_end_a
    .catch Lce/r0; {:try_start_a .. :try_end_a} :catch_4
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_3

    .line 232
    .line 233
    .line 234
    goto :goto_a

    .line 235
    :catch_3
    move-exception p1

    .line 236
    goto :goto_b

    .line 237
    :catch_4
    move-exception p1

    .line 238
    goto :goto_c

    .line 239
    :catchall_2
    move-exception p1

    .line 240
    goto :goto_8

    .line 241
    :catch_5
    move-exception p1

    .line 242
    :try_start_b
    sget p2, Lde/d;->b:I

    .line 243
    .line 244
    sget-object v4, Lce/b1;->G:Lde/d;

    .line 245
    .line 246
    if-le p2, v0, :cond_a

    .line 247
    .line 248
    invoke-virtual {p1, v4}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintStream;)V
    :try_end_b
    .catch Ljava/lang/InterruptedException; {:try_start_b .. :try_end_b} :catch_2
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    .line 249
    .line 250
    .line 251
    :cond_a
    :try_start_c
    invoke-virtual {p0, v1}, Lee/b;->b(Z)V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_6
    .catch Ljava/lang/InterruptedException; {:try_start_c .. :try_end_c} :catch_2
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    .line 252
    .line 253
    .line 254
    goto :goto_5

    .line 255
    :catch_6
    move-exception p2

    .line 256
    :try_start_d
    invoke-virtual {p2, v4}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintStream;)V

    .line 257
    .line 258
    .line 259
    :goto_5
    throw p1
    :try_end_d
    .catch Ljava/lang/InterruptedException; {:try_start_d .. :try_end_d} :catch_2
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    .line 260
    :goto_6
    :try_start_e
    new-instance p2, Lee/c;

    .line 261
    .line 262
    invoke-direct {p2, p1}, Lee/c;-><init>(Ljava/lang/Exception;)V

    .line 263
    .line 264
    .line 265
    throw p2
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    .line 266
    :goto_7
    :try_start_f
    iget-object p2, p0, Lee/b;->e:Ljava/util/HashMap;

    .line 267
    .line 268
    invoke-virtual {p2, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 269
    .line 270
    .line 271
    throw p1

    .line 272
    :goto_8
    monitor-exit p0
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_2

    .line 273
    :try_start_10
    throw p1
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    .line 274
    :goto_9
    :try_start_11
    iget-object p2, v2, Lce/i0;->h0:[B

    .line 275
    .line 276
    invoke-static {p2}, Lce/b;->c([B)V

    .line 277
    .line 278
    .line 279
    iget-object p2, v3, Lce/j0;->X:[B

    .line 280
    .line 281
    invoke-static {p2}, Lce/b;->c([B)V

    .line 282
    .line 283
    .line 284
    throw p1

    .line 285
    :cond_b
    iget-byte v0, p1, Lce/q;->c:B

    .line 286
    .line 287
    iput-byte v0, p2, Lce/q;->c:B

    .line 288
    .line 289
    sget v0, Lce/q0;->q0:I

    .line 290
    .line 291
    int-to-long v0, v0

    .line 292
    invoke-virtual {p0, p1, p2, v0, v1}, Lee/b;->j(Lce/q;Lce/q;J)V
    :try_end_11
    .catch Lce/r0; {:try_start_11 .. :try_end_11} :catch_4
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_3

    .line 293
    .line 294
    .line 295
    :goto_a
    invoke-virtual {p0, p1, p2}, Lce/b1;->k(Lce/q;Lce/q;)V

    .line 296
    .line 297
    .line 298
    return-void

    .line 299
    :goto_b
    new-instance p2, Lce/r0;

    .line 300
    .line 301
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 302
    .line 303
    .line 304
    move-result-object v0

    .line 305
    invoke-direct {p2, v0, p1}, Lce/r0;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 306
    .line 307
    .line 308
    throw p2

    .line 309
    :goto_c
    goto :goto_e

    .line 310
    :goto_d
    throw p1

    .line 311
    :goto_e
    goto :goto_d
.end method

.method public final t()V
    .locals 15

    .line 1
    new-instance v0, Lae/b;

    .line 2
    .line 3
    iget-object v1, p0, Lce/b1;->j:Lwd/c;

    .line 4
    .line 5
    iget-object v2, v1, Lwd/c;->a:Ljava/lang/Object;

    .line 6
    .line 7
    instance-of v3, v2, Lae/g;

    .line 8
    .line 9
    const/4 v4, 0x1

    .line 10
    const/4 v5, 0x3

    .line 11
    const-string v6, "*SMBSERVER     "

    .line 12
    .line 13
    const/4 v7, 0x0

    .line 14
    const/16 v8, 0x2e

    .line 15
    .line 16
    if-eqz v3, :cond_4

    .line 17
    .line 18
    check-cast v2, Lae/g;

    .line 19
    .line 20
    iget-object v3, v2, Lae/g;->a:Lae/b;

    .line 21
    .line 22
    iget-object v3, v3, Lae/b;->a:Ljava/lang/String;

    .line 23
    .line 24
    iput-object v3, v2, Lae/g;->d:Ljava/lang/String;

    .line 25
    .line 26
    invoke-virtual {v3, v7}, Ljava/lang/String;->charAt(I)C

    .line 27
    .line 28
    .line 29
    move-result v3

    .line 30
    invoke-static {v3}, Ljava/lang/Character;->isDigit(C)Z

    .line 31
    .line 32
    .line 33
    move-result v3

    .line 34
    if-eqz v3, :cond_2

    .line 35
    .line 36
    iget-object v3, v2, Lae/g;->d:Ljava/lang/String;

    .line 37
    .line 38
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    .line 39
    .line 40
    .line 41
    move-result v3

    .line 42
    iget-object v9, v2, Lae/g;->d:Ljava/lang/String;

    .line 43
    .line 44
    invoke-virtual {v9}, Ljava/lang/String;->toCharArray()[C

    .line 45
    .line 46
    .line 47
    move-result-object v9

    .line 48
    const/4 v10, 0x0

    .line 49
    const/4 v11, 0x0

    .line 50
    :goto_0
    if-ge v10, v3, :cond_3

    .line 51
    .line 52
    add-int/lit8 v12, v10, 0x1

    .line 53
    .line 54
    aget-char v13, v9, v10

    .line 55
    .line 56
    invoke-static {v13}, Ljava/lang/Character;->isDigit(C)Z

    .line 57
    .line 58
    .line 59
    move-result v13

    .line 60
    if-eqz v13, :cond_3

    .line 61
    .line 62
    if-ne v12, v3, :cond_0

    .line 63
    .line 64
    if-ne v11, v5, :cond_0

    .line 65
    .line 66
    iput-object v6, v2, Lae/g;->d:Ljava/lang/String;

    .line 67
    .line 68
    goto :goto_1

    .line 69
    :cond_0
    if-ge v12, v3, :cond_1

    .line 70
    .line 71
    aget-char v13, v9, v12

    .line 72
    .line 73
    if-ne v13, v8, :cond_1

    .line 74
    .line 75
    add-int/lit8 v11, v11, 0x1

    .line 76
    .line 77
    add-int/lit8 v10, v10, 0x2

    .line 78
    .line 79
    goto :goto_0

    .line 80
    :cond_1
    move v10, v12

    .line 81
    goto :goto_0

    .line 82
    :cond_2
    iget-object v3, v2, Lae/g;->a:Lae/b;

    .line 83
    .line 84
    iget v3, v3, Lae/b;->c:I

    .line 85
    .line 86
    packed-switch v3, :pswitch_data_0

    .line 87
    .line 88
    .line 89
    goto :goto_1

    .line 90
    :pswitch_0
    iput-object v6, v2, Lae/g;->d:Ljava/lang/String;

    .line 91
    .line 92
    :cond_3
    :goto_1
    iget-object v2, v2, Lae/g;->d:Ljava/lang/String;

    .line 93
    .line 94
    goto :goto_3

    .line 95
    :cond_4
    check-cast v2, Ljava/net/InetAddress;

    .line 96
    .line 97
    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostName()Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v2

    .line 101
    iput-object v2, v1, Lwd/c;->b:Ljava/lang/String;

    .line 102
    .line 103
    invoke-static {v2}, Lwd/c;->e(Ljava/lang/String;)Z

    .line 104
    .line 105
    .line 106
    move-result v2

    .line 107
    if-eqz v2, :cond_5

    .line 108
    .line 109
    iput-object v6, v1, Lwd/c;->b:Ljava/lang/String;

    .line 110
    .line 111
    goto :goto_2

    .line 112
    :cond_5
    iget-object v2, v1, Lwd/c;->b:Ljava/lang/String;

    .line 113
    .line 114
    invoke-virtual {v2, v8}, Ljava/lang/String;->indexOf(I)I

    .line 115
    .line 116
    .line 117
    move-result v2

    .line 118
    const/16 v3, 0xf

    .line 119
    .line 120
    if-le v2, v4, :cond_6

    .line 121
    .line 122
    if-ge v2, v3, :cond_6

    .line 123
    .line 124
    iget-object v3, v1, Lwd/c;->b:Ljava/lang/String;

    .line 125
    .line 126
    invoke-virtual {v3, v7, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object v2

    .line 130
    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object v2

    .line 134
    iput-object v2, v1, Lwd/c;->b:Ljava/lang/String;

    .line 135
    .line 136
    goto :goto_2

    .line 137
    :cond_6
    iget-object v2, v1, Lwd/c;->b:Ljava/lang/String;

    .line 138
    .line 139
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 140
    .line 141
    .line 142
    move-result v2

    .line 143
    if-le v2, v3, :cond_7

    .line 144
    .line 145
    iput-object v6, v1, Lwd/c;->b:Ljava/lang/String;

    .line 146
    .line 147
    goto :goto_2

    .line 148
    :cond_7
    iget-object v2, v1, Lwd/c;->b:Ljava/lang/String;

    .line 149
    .line 150
    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    .line 151
    .line 152
    .line 153
    move-result-object v2

    .line 154
    iput-object v2, v1, Lwd/c;->b:Ljava/lang/String;

    .line 155
    .line 156
    :goto_2
    iget-object v2, v1, Lwd/c;->b:Ljava/lang/String;

    .line 157
    .line 158
    :goto_3
    const/16 v3, 0x20

    .line 159
    .line 160
    const/4 v8, 0x0

    .line 161
    invoke-direct {v0, v2, v3, v8}, Lae/b;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 162
    .line 163
    .line 164
    :goto_4
    new-instance v2, Ljava/net/Socket;

    .line 165
    .line 166
    invoke-direct {v2}, Ljava/net/Socket;-><init>()V

    .line 167
    .line 168
    .line 169
    iput-object v2, p0, Lce/b1;->k:Ljava/net/Socket;

    .line 170
    .line 171
    iget-object v9, p0, Lce/b1;->h:Ljava/net/InetAddress;

    .line 172
    .line 173
    if-eqz v9, :cond_8

    .line 174
    .line 175
    new-instance v10, Ljava/net/InetSocketAddress;

    .line 176
    .line 177
    iget v11, p0, Lce/b1;->i:I

    .line 178
    .line 179
    invoke-direct {v10, v9, v11}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    .line 180
    .line 181
    .line 182
    invoke-virtual {v2, v10}, Ljava/net/Socket;->bind(Ljava/net/SocketAddress;)V

    .line 183
    .line 184
    .line 185
    :cond_8
    iget-object v2, p0, Lce/b1;->k:Ljava/net/Socket;

    .line 186
    .line 187
    new-instance v9, Ljava/net/InetSocketAddress;

    .line 188
    .line 189
    invoke-virtual {v1}, Lwd/c;->c()Ljava/lang/String;

    .line 190
    .line 191
    .line 192
    move-result-object v10

    .line 193
    const/16 v11, 0x8b

    .line 194
    .line 195
    invoke-direct {v9, v10, v11}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    .line 196
    .line 197
    .line 198
    sget v10, Lce/q0;->v0:I

    .line 199
    .line 200
    invoke-virtual {v2, v9, v10}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V

    .line 201
    .line 202
    .line 203
    iget-object v2, p0, Lce/b1;->k:Ljava/net/Socket;

    .line 204
    .line 205
    sget v9, Lce/q0;->u0:I

    .line 206
    .line 207
    invoke-virtual {v2, v9}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 208
    .line 209
    .line 210
    iget-object v2, p0, Lce/b1;->k:Ljava/net/Socket;

    .line 211
    .line 212
    invoke-virtual {v2}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    .line 213
    .line 214
    .line 215
    move-result-object v2

    .line 216
    iput-object v2, p0, Lce/b1;->n:Ljava/io/OutputStream;

    .line 217
    .line 218
    iget-object v2, p0, Lce/b1;->k:Ljava/net/Socket;

    .line 219
    .line 220
    invoke-virtual {v2}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    .line 221
    .line 222
    .line 223
    move-result-object v2

    .line 224
    iput-object v2, p0, Lce/b1;->p:Ljava/io/InputStream;

    .line 225
    .line 226
    sget-object v2, Lae/g;->m:Lae/g;

    .line 227
    .line 228
    iget-object v2, v2, Lae/g;->a:Lae/b;

    .line 229
    .line 230
    iget-object v9, p0, Lce/b1;->n:Ljava/io/OutputStream;

    .line 231
    .line 232
    iget-object v10, p0, Lce/b1;->q:[B

    .line 233
    .line 234
    const/4 v11, 0x4

    .line 235
    invoke-virtual {v0, v11, v10}, Lae/b;->b(I[B)I

    .line 236
    .line 237
    .line 238
    move-result v12

    .line 239
    add-int/2addr v12, v11

    .line 240
    invoke-virtual {v2, v12, v10}, Lae/b;->b(I[B)I

    .line 241
    .line 242
    .line 243
    move-result v2

    .line 244
    add-int/2addr v2, v12

    .line 245
    add-int/lit8 v12, v2, -0x4

    .line 246
    .line 247
    const/16 v13, 0x81

    .line 248
    .line 249
    int-to-byte v13, v13

    .line 250
    aput-byte v13, v10, v7

    .line 251
    .line 252
    const v13, 0xffff

    .line 253
    .line 254
    .line 255
    if-le v12, v13, :cond_9

    .line 256
    .line 257
    aput-byte v4, v10, v4

    .line 258
    .line 259
    :cond_9
    shr-int/lit8 v13, v12, 0x8

    .line 260
    .line 261
    and-int/lit16 v13, v13, 0xff

    .line 262
    .line 263
    int-to-byte v13, v13

    .line 264
    const/4 v14, 0x2

    .line 265
    aput-byte v13, v10, v14

    .line 266
    .line 267
    and-int/lit16 v12, v12, 0xff

    .line 268
    .line 269
    int-to-byte v12, v12

    .line 270
    aput-byte v12, v10, v5

    .line 271
    .line 272
    invoke-virtual {v9, v10, v7, v2}, Ljava/io/OutputStream;->write([BII)V

    .line 273
    .line 274
    .line 275
    iget-object v2, p0, Lce/b1;->p:Ljava/io/InputStream;

    .line 276
    .line 277
    invoke-static {v2, v10, v7, v11}, Lee/b;->i(Ljava/io/InputStream;[BII)I

    .line 278
    .line 279
    .line 280
    move-result v2

    .line 281
    if-lt v2, v11, :cond_18

    .line 282
    .line 283
    aget-byte v2, v10, v7

    .line 284
    .line 285
    and-int/lit16 v2, v2, 0xff

    .line 286
    .line 287
    const/4 v9, -0x1

    .line 288
    if-eq v2, v9, :cond_17

    .line 289
    .line 290
    const/16 v9, 0x82

    .line 291
    .line 292
    if-eq v2, v9, :cond_15

    .line 293
    .line 294
    const/16 v10, 0x83

    .line 295
    .line 296
    if-ne v2, v10, :cond_14

    .line 297
    .line 298
    iget-object v2, p0, Lce/b1;->p:Ljava/io/InputStream;

    .line 299
    .line 300
    invoke-virtual {v2}, Ljava/io/InputStream;->read()I

    .line 301
    .line 302
    .line 303
    move-result v2

    .line 304
    and-int/lit16 v2, v2, 0xff

    .line 305
    .line 306
    const/16 v10, 0x80

    .line 307
    .line 308
    if-eq v2, v10, :cond_b

    .line 309
    .line 310
    if-ne v2, v9, :cond_a

    .line 311
    .line 312
    goto :goto_5

    .line 313
    :cond_a
    invoke-virtual {p0, v4}, Lee/b;->b(Z)V

    .line 314
    .line 315
    .line 316
    new-instance v0, Lae/h;

    .line 317
    .line 318
    invoke-direct {v0, v2}, Lae/h;-><init>(I)V

    .line 319
    .line 320
    .line 321
    throw v0

    .line 322
    :cond_b
    :goto_5
    iget-object v2, p0, Lce/b1;->k:Ljava/net/Socket;

    .line 323
    .line 324
    invoke-virtual {v2}, Ljava/net/Socket;->close()V

    .line 325
    .line 326
    .line 327
    iget-object v2, v1, Lwd/c;->a:Ljava/lang/Object;

    .line 328
    .line 329
    instance-of v9, v2, Lae/g;

    .line 330
    .line 331
    if-eqz v9, :cond_11

    .line 332
    .line 333
    check-cast v2, Lae/g;

    .line 334
    .line 335
    iget-object v9, v2, Lae/g;->d:Ljava/lang/String;

    .line 336
    .line 337
    iget-object v10, v2, Lae/g;->a:Lae/b;

    .line 338
    .line 339
    iget-object v10, v10, Lae/b;->a:Ljava/lang/String;

    .line 340
    .line 341
    if-ne v9, v10, :cond_c

    .line 342
    .line 343
    iput-object v6, v2, Lae/g;->d:Ljava/lang/String;

    .line 344
    .line 345
    goto :goto_7

    .line 346
    :cond_c
    if-ne v9, v6, :cond_f

    .line 347
    .line 348
    :try_start_0
    sget-object v9, Lae/g;->f:Lae/d;

    .line 349
    .line 350
    invoke-virtual {v9, v2}, Lae/d;->c(Lae/g;)[Lae/g;

    .line 351
    .line 352
    .line 353
    move-result-object v9

    .line 354
    iget-object v10, v2, Lae/g;->a:Lae/b;

    .line 355
    .line 356
    iget v11, v10, Lae/b;->c:I

    .line 357
    .line 358
    const/16 v12, 0x1d

    .line 359
    .line 360
    if-ne v11, v12, :cond_e

    .line 361
    .line 362
    const/4 v10, 0x0

    .line 363
    :goto_6
    array-length v11, v9

    .line 364
    if-ge v10, v11, :cond_12

    .line 365
    .line 366
    aget-object v11, v9, v10

    .line 367
    .line 368
    iget-object v11, v11, Lae/g;->a:Lae/b;

    .line 369
    .line 370
    iget v12, v11, Lae/b;->c:I

    .line 371
    .line 372
    if-ne v12, v3, :cond_d

    .line 373
    .line 374
    iget-object v2, v11, Lae/b;->a:Ljava/lang/String;

    .line 375
    .line 376
    goto :goto_8

    .line 377
    :cond_d
    add-int/lit8 v10, v10, 0x1

    .line 378
    .line 379
    goto :goto_6

    .line 380
    :cond_e
    iget-boolean v9, v2, Lae/g;->c:Z

    .line 381
    .line 382
    if-eqz v9, :cond_10

    .line 383
    .line 384
    iput-object v8, v2, Lae/g;->d:Ljava/lang/String;

    .line 385
    .line 386
    iget-object v2, v10, Lae/b;->a:Ljava/lang/String;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    .line 387
    .line 388
    goto :goto_8

    .line 389
    :catch_0
    iput-object v8, v2, Lae/g;->d:Ljava/lang/String;

    .line 390
    .line 391
    goto :goto_7

    .line 392
    :cond_f
    iput-object v8, v2, Lae/g;->d:Ljava/lang/String;

    .line 393
    .line 394
    :cond_10
    :goto_7
    iget-object v2, v2, Lae/g;->d:Ljava/lang/String;

    .line 395
    .line 396
    goto :goto_8

    .line 397
    :cond_11
    iget-object v2, v1, Lwd/c;->b:Ljava/lang/String;

    .line 398
    .line 399
    if-eq v2, v6, :cond_12

    .line 400
    .line 401
    iput-object v6, v1, Lwd/c;->b:Ljava/lang/String;

    .line 402
    .line 403
    move-object v2, v6

    .line 404
    goto :goto_8

    .line 405
    :cond_12
    move-object v2, v8

    .line 406
    :goto_8
    iput-object v2, v0, Lae/b;->a:Ljava/lang/String;

    .line 407
    .line 408
    if-eqz v2, :cond_13

    .line 409
    .line 410
    goto/16 :goto_4

    .line 411
    .line 412
    :cond_13
    new-instance v0, Ljava/io/IOException;

    .line 413
    .line 414
    new-instance v2, Ljava/lang/StringBuilder;

    .line 415
    .line 416
    const-string v3, "Failed to establish session with "

    .line 417
    .line 418
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 419
    .line 420
    .line 421
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 422
    .line 423
    .line 424
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 425
    .line 426
    .line 427
    move-result-object v1

    .line 428
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 429
    .line 430
    .line 431
    throw v0

    .line 432
    :cond_14
    invoke-virtual {p0, v4}, Lee/b;->b(Z)V

    .line 433
    .line 434
    .line 435
    new-instance v0, Lae/h;

    .line 436
    .line 437
    invoke-direct {v0, v7}, Lae/h;-><init>(I)V

    .line 438
    .line 439
    .line 440
    throw v0

    .line 441
    :cond_15
    sget v0, Lde/d;->b:I

    .line 442
    .line 443
    if-lt v0, v11, :cond_16

    .line 444
    .line 445
    invoke-virtual {v1}, Lwd/c;->toString()Ljava/lang/String;

    .line 446
    .line 447
    .line 448
    sget-object v0, Lce/b1;->G:Lde/d;

    .line 449
    .line 450
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 451
    .line 452
    .line 453
    :cond_16
    return-void

    .line 454
    :cond_17
    invoke-virtual {p0, v4}, Lee/b;->b(Z)V

    .line 455
    .line 456
    .line 457
    new-instance v0, Lae/h;

    .line 458
    .line 459
    invoke-direct {v0, v9}, Lae/h;-><init>(I)V

    .line 460
    .line 461
    .line 462
    throw v0

    .line 463
    :cond_18
    :try_start_1
    iget-object v0, p0, Lce/b1;->k:Ljava/net/Socket;

    .line 464
    .line 465
    invoke-virtual {v0}, Ljava/net/Socket;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 466
    .line 467
    .line 468
    :catch_1
    new-instance v0, Lce/r0;

    .line 469
    .line 470
    const-string v1, "EOF during NetBIOS session request"

    .line 471
    .line 472
    invoke-direct {v0, v1}, Lce/r0;-><init>(Ljava/lang/String;)V

    .line 473
    .line 474
    .line 475
    goto :goto_a

    .line 476
    :goto_9
    throw v0

    .line 477
    :goto_a
    goto :goto_9

    .line 478
    nop

    .line 479
    :pswitch_data_0
    .packed-switch 0x1b
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lee/b;->b:Ljava/lang/String;

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    const-string v1, "["

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    iget-object v1, p0, Lce/b1;->j:Lwd/c;

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    const-string v1, ":"

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    iget v1, p0, Lce/b1;->l:I

    .line 27
    .line 28
    const-string v2, "]"

    .line 29
    .line 30
    invoke-static {v0, v1, v2}, Landroid/support/v4/media/session/a;->s(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    return-object v0
.end method
