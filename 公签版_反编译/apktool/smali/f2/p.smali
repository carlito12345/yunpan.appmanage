.class public final Lf2/p;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ll2/m;

.field public final b:Ljava/util/HashMap;

.field public final c:Ljava/util/HashMap;

.field public d:Lua/i8;

.field public e:Z

.field public f:Lha/l2;

.field public g:I


# direct methods
.method public constructor <init>(Ll2/m;Lha/l2;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lf2/p;->a:Ll2/m;

    .line 5
    .line 6
    iput-object p2, p0, Lf2/p;->f:Lha/l2;

    .line 7
    .line 8
    new-instance p1, Ljava/util/HashMap;

    .line 9
    .line 10
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 11
    .line 12
    .line 13
    iput-object p1, p0, Lf2/p;->b:Ljava/util/HashMap;

    .line 14
    .line 15
    new-instance p1, Ljava/util/HashMap;

    .line 16
    .line 17
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 18
    .line 19
    .line 20
    iput-object p1, p0, Lf2/p;->c:Ljava/util/HashMap;

    .line 21
    .line 22
    const/4 p1, 0x1

    .line 23
    iput-boolean p1, p0, Lf2/p;->e:Z

    .line 24
    .line 25
    const/4 p1, 0x3

    .line 26
    iput p1, p0, Lf2/p;->g:I

    .line 27
    .line 28
    return-void
.end method

.method public static a(Lf2/p;)V
    .locals 1

    .line 1
    iget-object p0, p0, Lf2/p;->a:Ll2/m;

    .line 2
    .line 3
    monitor-enter p0

    .line 4
    const/4 v0, 0x1

    .line 5
    :try_start_0
    iput v0, p0, Ll2/m;->f:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    .line 7
    monitor-exit p0

    .line 8
    return-void

    .line 9
    :catchall_0
    move-exception v0

    .line 10
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 11
    throw v0
.end method


# virtual methods
.method public final b(I)Lf2/b0;
    .locals 8

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x3

    .line 3
    const/4 v2, 0x2

    .line 4
    const/4 v3, 0x1

    .line 5
    iget-object v4, p0, Lf2/p;->c:Ljava/util/HashMap;

    .line 6
    .line 7
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 8
    .line 9
    .line 10
    move-result-object v5

    .line 11
    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v5

    .line 15
    check-cast v5, Lf2/b0;

    .line 16
    .line 17
    if-eqz v5, :cond_0

    .line 18
    .line 19
    return-object v5

    .line 20
    :cond_0
    iget-object v5, p0, Lf2/p;->b:Ljava/util/HashMap;

    .line 21
    .line 22
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 23
    .line 24
    .line 25
    move-result-object v6

    .line 26
    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v6

    .line 30
    check-cast v6, Lt7/n;

    .line 31
    .line 32
    if-eqz v6, :cond_1

    .line 33
    .line 34
    goto/16 :goto_3

    .line 35
    .line 36
    :cond_1
    iget-object v6, p0, Lf2/p;->d:Lua/i8;

    .line 37
    .line 38
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 39
    .line 40
    .line 41
    const-class v7, Lf2/b0;

    .line 42
    .line 43
    if-eqz p1, :cond_6

    .line 44
    .line 45
    if-eq p1, v3, :cond_5

    .line 46
    .line 47
    if-eq p1, v2, :cond_4

    .line 48
    .line 49
    if-eq p1, v1, :cond_3

    .line 50
    .line 51
    const/4 v0, 0x4

    .line 52
    if-ne p1, v0, :cond_2

    .line 53
    .line 54
    new-instance v0, Lf2/n;

    .line 55
    .line 56
    invoke-direct {v0, p0, v6, v1}, Lf2/n;-><init>(Ljava/lang/Object;Lua/i8;I)V

    .line 57
    .line 58
    .line 59
    move-object v6, v0

    .line 60
    goto :goto_2

    .line 61
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 62
    .line 63
    const-string v1, "Unrecognized contentType: "

    .line 64
    .line 65
    invoke-static {p1, v1}, Lda/b;->a(ILjava/lang/String;)Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    throw v0

    .line 73
    :cond_3
    const-string v1, "androidx.media3.exoplayer.rtsp.RtspMediaSource$Factory"

    .line 74
    .line 75
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 76
    .line 77
    .line 78
    move-result-object v1

    .line 79
    invoke-virtual {v1, v7}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    .line 80
    .line 81
    .line 82
    move-result-object v1

    .line 83
    new-instance v2, Lf2/o;

    .line 84
    .line 85
    invoke-direct {v2, v0, v1}, Lf2/o;-><init>(ILjava/lang/Object;)V

    .line 86
    .line 87
    .line 88
    :goto_0
    move-object v6, v2

    .line 89
    goto :goto_2

    .line 90
    :cond_4
    const-string v0, "androidx.media3.exoplayer.hls.HlsMediaSource$Factory"

    .line 91
    .line 92
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 93
    .line 94
    .line 95
    move-result-object v0

    .line 96
    invoke-virtual {v0, v7}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    .line 97
    .line 98
    .line 99
    move-result-object v0

    .line 100
    new-instance v1, Lf2/n;

    .line 101
    .line 102
    invoke-direct {v1, v0, v6, v2}, Lf2/n;-><init>(Ljava/lang/Object;Lua/i8;I)V

    .line 103
    .line 104
    .line 105
    :goto_1
    move-object v6, v1

    .line 106
    goto :goto_2

    .line 107
    :cond_5
    const-string v0, "androidx.media3.exoplayer.smoothstreaming.SsMediaSource$Factory"

    .line 108
    .line 109
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 110
    .line 111
    .line 112
    move-result-object v0

    .line 113
    invoke-virtual {v0, v7}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    .line 114
    .line 115
    .line 116
    move-result-object v0

    .line 117
    new-instance v1, Lf2/n;

    .line 118
    .line 119
    invoke-direct {v1, v0, v6, v3}, Lf2/n;-><init>(Ljava/lang/Object;Lua/i8;I)V

    .line 120
    .line 121
    .line 122
    goto :goto_1

    .line 123
    :cond_6
    const-string v1, "androidx.media3.exoplayer.dash.DashMediaSource$Factory"

    .line 124
    .line 125
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 126
    .line 127
    .line 128
    move-result-object v1

    .line 129
    invoke-virtual {v1, v7}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    .line 130
    .line 131
    .line 132
    move-result-object v1

    .line 133
    new-instance v2, Lf2/n;

    .line 134
    .line 135
    invoke-direct {v2, v1, v6, v0}, Lf2/n;-><init>(Ljava/lang/Object;Lua/i8;I)V

    .line 136
    .line 137
    .line 138
    goto :goto_0

    .line 139
    :goto_2
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 140
    .line 141
    .line 142
    move-result-object v0

    .line 143
    invoke-virtual {v5, v0, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    .line 145
    .line 146
    :goto_3
    invoke-interface {v6}, Lt7/n;->get()Ljava/lang/Object;

    .line 147
    .line 148
    .line 149
    move-result-object v0

    .line 150
    check-cast v0, Lf2/b0;

    .line 151
    .line 152
    iget-object v1, p0, Lf2/p;->f:Lha/l2;

    .line 153
    .line 154
    invoke-interface {v0, v1}, Lf2/b0;->a(Lha/l2;)Lf2/b0;

    .line 155
    .line 156
    .line 157
    iget-boolean v1, p0, Lf2/p;->e:Z

    .line 158
    .line 159
    invoke-interface {v0, v1}, Lf2/b0;->c(Z)Lf2/b0;

    .line 160
    .line 161
    .line 162
    iget v1, p0, Lf2/p;->g:I

    .line 163
    .line 164
    invoke-interface {v0, v1}, Lf2/b0;->d(I)Lf2/b0;

    .line 165
    .line 166
    .line 167
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 168
    .line 169
    .line 170
    move-result-object p1

    .line 171
    invoke-virtual {v4, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    .line 173
    .line 174
    return-object v0
.end method
