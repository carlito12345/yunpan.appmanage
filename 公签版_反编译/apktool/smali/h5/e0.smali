.class public final Lh5/e0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lh5/g;
.implements Lh5/f;


# instance fields
.field public final a:Lh5/h;

.field public final b:Lh5/j;

.field public volatile c:I

.field public volatile d:Lh5/d;

.field public volatile e:Ljava/lang/Object;

.field public volatile f:Ll5/p;

.field public volatile g:Lh5/e;


# direct methods
.method public constructor <init>(Lh5/h;Lh5/j;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lh5/e0;->a:Lh5/h;

    .line 5
    .line 6
    iput-object p2, p0, Lh5/e0;->b:Lh5/j;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final a(Lf5/f;Ljava/lang/Object;Lcom/bumptech/glide/load/data/e;Lf5/a;Lf5/f;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lh5/e0;->b:Lh5/j;

    .line 2
    .line 3
    iget-object p4, p0, Lh5/e0;->f:Ll5/p;

    .line 4
    .line 5
    iget-object p4, p4, Ll5/p;->c:Lcom/bumptech/glide/load/data/e;

    .line 6
    .line 7
    invoke-interface {p4}, Lcom/bumptech/glide/load/data/e;->c()Lf5/a;

    .line 8
    .line 9
    .line 10
    move-result-object v4

    .line 11
    move-object v1, p1

    .line 12
    move-object v2, p2

    .line 13
    move-object v3, p3

    .line 14
    move-object v5, p1

    .line 15
    invoke-virtual/range {v0 .. v5}, Lh5/j;->a(Lf5/f;Ljava/lang/Object;Lcom/bumptech/glide/load/data/e;Lf5/a;Lf5/f;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public final b()Z
    .locals 7

    .line 1
    iget-object v0, p0, Lh5/e0;->e:Ljava/lang/Object;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lh5/e0;->e:Ljava/lang/Object;

    .line 8
    .line 9
    iput-object v1, p0, Lh5/e0;->e:Ljava/lang/Object;

    .line 10
    .line 11
    :try_start_0
    invoke-virtual {p0, v0}, Lh5/e0;->d(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    return v2

    .line 18
    :catch_0
    nop

    .line 19
    :cond_0
    iget-object v0, p0, Lh5/e0;->d:Lh5/d;

    .line 20
    .line 21
    if-eqz v0, :cond_1

    .line 22
    .line 23
    iget-object v0, p0, Lh5/e0;->d:Lh5/d;

    .line 24
    .line 25
    invoke-virtual {v0}, Lh5/d;->b()Z

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    if-eqz v0, :cond_1

    .line 30
    .line 31
    return v2

    .line 32
    :cond_1
    iput-object v1, p0, Lh5/e0;->d:Lh5/d;

    .line 33
    .line 34
    iput-object v1, p0, Lh5/e0;->f:Ll5/p;

    .line 35
    .line 36
    const/4 v0, 0x0

    .line 37
    :cond_2
    :goto_0
    if-nez v0, :cond_4

    .line 38
    .line 39
    iget v1, p0, Lh5/e0;->c:I

    .line 40
    .line 41
    iget-object v3, p0, Lh5/e0;->a:Lh5/h;

    .line 42
    .line 43
    invoke-virtual {v3}, Lh5/h;->b()Ljava/util/ArrayList;

    .line 44
    .line 45
    .line 46
    move-result-object v3

    .line 47
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 48
    .line 49
    .line 50
    move-result v3

    .line 51
    if-ge v1, v3, :cond_4

    .line 52
    .line 53
    iget-object v1, p0, Lh5/e0;->a:Lh5/h;

    .line 54
    .line 55
    invoke-virtual {v1}, Lh5/h;->b()Ljava/util/ArrayList;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    iget v3, p0, Lh5/e0;->c:I

    .line 60
    .line 61
    add-int/lit8 v4, v3, 0x1

    .line 62
    .line 63
    iput v4, p0, Lh5/e0;->c:I

    .line 64
    .line 65
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object v1

    .line 69
    check-cast v1, Ll5/p;

    .line 70
    .line 71
    iput-object v1, p0, Lh5/e0;->f:Ll5/p;

    .line 72
    .line 73
    iget-object v1, p0, Lh5/e0;->f:Ll5/p;

    .line 74
    .line 75
    if-eqz v1, :cond_2

    .line 76
    .line 77
    iget-object v1, p0, Lh5/e0;->a:Lh5/h;

    .line 78
    .line 79
    iget-object v1, v1, Lh5/h;->p:Lh5/l;

    .line 80
    .line 81
    iget-object v3, p0, Lh5/e0;->f:Ll5/p;

    .line 82
    .line 83
    iget-object v3, v3, Ll5/p;->c:Lcom/bumptech/glide/load/data/e;

    .line 84
    .line 85
    invoke-interface {v3}, Lcom/bumptech/glide/load/data/e;->c()Lf5/a;

    .line 86
    .line 87
    .line 88
    move-result-object v3

    .line 89
    invoke-virtual {v1, v3}, Lh5/l;->a(Lf5/a;)Z

    .line 90
    .line 91
    .line 92
    move-result v1

    .line 93
    if-nez v1, :cond_3

    .line 94
    .line 95
    iget-object v1, p0, Lh5/e0;->a:Lh5/h;

    .line 96
    .line 97
    iget-object v3, p0, Lh5/e0;->f:Ll5/p;

    .line 98
    .line 99
    iget-object v3, v3, Ll5/p;->c:Lcom/bumptech/glide/load/data/e;

    .line 100
    .line 101
    invoke-interface {v3}, Lcom/bumptech/glide/load/data/e;->a()Ljava/lang/Class;

    .line 102
    .line 103
    .line 104
    move-result-object v3

    .line 105
    invoke-virtual {v1, v3}, Lh5/h;->c(Ljava/lang/Class;)Lh5/x;

    .line 106
    .line 107
    .line 108
    move-result-object v1

    .line 109
    if-eqz v1, :cond_2

    .line 110
    .line 111
    :cond_3
    iget-object v0, p0, Lh5/e0;->f:Ll5/p;

    .line 112
    .line 113
    iget-object v1, p0, Lh5/e0;->f:Ll5/p;

    .line 114
    .line 115
    iget-object v1, v1, Ll5/p;->c:Lcom/bumptech/glide/load/data/e;

    .line 116
    .line 117
    iget-object v3, p0, Lh5/e0;->a:Lh5/h;

    .line 118
    .line 119
    iget-object v3, v3, Lh5/h;->o:Lcom/bumptech/glide/i;

    .line 120
    .line 121
    new-instance v4, La2/g1;

    .line 122
    .line 123
    const/16 v5, 0x12

    .line 124
    .line 125
    const/4 v6, 0x0

    .line 126
    invoke-direct {v4, v5, p0, v0, v6}, La2/g1;-><init>(ILjava/lang/Object;Ljava/lang/Object;Z)V

    .line 127
    .line 128
    .line 129
    invoke-interface {v1, v3, v4}, Lcom/bumptech/glide/load/data/e;->d(Lcom/bumptech/glide/i;Lcom/bumptech/glide/load/data/d;)V

    .line 130
    .line 131
    .line 132
    const/4 v0, 0x1

    .line 133
    goto :goto_0

    .line 134
    :cond_4
    return v0
.end method

.method public final c(Lf5/f;Ljava/lang/Exception;Lcom/bumptech/glide/load/data/e;Lf5/a;)V
    .locals 1

    .line 1
    iget-object p4, p0, Lh5/e0;->b:Lh5/j;

    .line 2
    .line 3
    iget-object v0, p0, Lh5/e0;->f:Ll5/p;

    .line 4
    .line 5
    iget-object v0, v0, Ll5/p;->c:Lcom/bumptech/glide/load/data/e;

    .line 6
    .line 7
    invoke-interface {v0}, Lcom/bumptech/glide/load/data/e;->c()Lf5/a;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {p4, p1, p2, p3, v0}, Lh5/j;->c(Lf5/f;Ljava/lang/Exception;Lcom/bumptech/glide/load/data/e;Lf5/a;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public final cancel()V
    .locals 1

    .line 1
    iget-object v0, p0, Lh5/e0;->f:Ll5/p;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, v0, Ll5/p;->c:Lcom/bumptech/glide/load/data/e;

    .line 6
    .line 7
    invoke-interface {v0}, Lcom/bumptech/glide/load/data/e;->cancel()V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method public final d(Ljava/lang/Object;)Z
    .locals 12

    .line 1
    const-string v0, "SourceGenerator"

    .line 2
    .line 3
    sget v1, La6/k;->a:I

    .line 4
    .line 5
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    .line 6
    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    :try_start_0
    iget-object v2, p0, Lh5/e0;->a:Lh5/h;

    .line 10
    .line 11
    iget-object v2, v2, Lh5/h;->c:Lcom/bumptech/glide/f;

    .line 12
    .line 13
    invoke-virtual {v2}, Lcom/bumptech/glide/f;->b()Lcom/bumptech/glide/k;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    invoke-virtual {v2, p1}, Lcom/bumptech/glide/k;->h(Ljava/lang/Object;)Lcom/bumptech/glide/load/data/g;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    invoke-interface {v2}, Lcom/bumptech/glide/load/data/g;->d()Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v6

    .line 25
    iget-object v3, p0, Lh5/e0;->a:Lh5/h;

    .line 26
    .line 27
    invoke-virtual {v3, v6}, Lh5/h;->d(Ljava/lang/Object;)Lf5/c;

    .line 28
    .line 29
    .line 30
    move-result-object v9

    .line 31
    new-instance v10, Lv3/f;

    .line 32
    .line 33
    iget-object v3, p0, Lh5/e0;->a:Lh5/h;

    .line 34
    .line 35
    iget-object v7, v3, Lh5/h;->i:Lf5/i;

    .line 36
    .line 37
    const/16 v4, 0xf

    .line 38
    .line 39
    const/4 v8, 0x0

    .line 40
    move-object v3, v10

    .line 41
    move-object v5, v9

    .line 42
    invoke-direct/range {v3 .. v8}, Lv3/f;-><init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Z)V

    .line 43
    .line 44
    .line 45
    new-instance v3, Lh5/e;

    .line 46
    .line 47
    iget-object v4, p0, Lh5/e0;->f:Ll5/p;

    .line 48
    .line 49
    iget-object v4, v4, Ll5/p;->a:Lf5/f;

    .line 50
    .line 51
    iget-object v5, p0, Lh5/e0;->a:Lh5/h;

    .line 52
    .line 53
    iget-object v6, v5, Lh5/h;->n:Lf5/f;

    .line 54
    .line 55
    invoke-direct {v3, v4, v6}, Lh5/e;-><init>(Lf5/f;Lf5/f;)V

    .line 56
    .line 57
    .line 58
    iget-object v4, v5, Lh5/h;->h:La6/i;

    .line 59
    .line 60
    invoke-virtual {v4}, La6/i;->a()Lj5/a;

    .line 61
    .line 62
    .line 63
    move-result-object v4

    .line 64
    invoke-interface {v4, v3, v10}, Lj5/a;->n(Lf5/f;Lv3/f;)V

    .line 65
    .line 66
    .line 67
    const/4 v5, 0x2

    .line 68
    invoke-static {v0, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 69
    .line 70
    .line 71
    move-result v5

    .line 72
    if-eqz v5, :cond_0

    .line 73
    .line 74
    invoke-virtual {v3}, Lh5/e;->toString()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    .line 84
    .line 85
    .line 86
    goto :goto_0

    .line 87
    :catchall_0
    move-exception p1

    .line 88
    goto :goto_1

    .line 89
    :cond_0
    :goto_0
    invoke-interface {v4, v3}, Lj5/a;->y(Lf5/f;)Ljava/io/File;

    .line 90
    .line 91
    .line 92
    move-result-object v4

    .line 93
    const/4 v5, 0x1

    .line 94
    if-eqz v4, :cond_1

    .line 95
    .line 96
    iput-object v3, p0, Lh5/e0;->g:Lh5/e;

    .line 97
    .line 98
    new-instance p1, Lh5/d;

    .line 99
    .line 100
    iget-object v0, p0, Lh5/e0;->f:Ll5/p;

    .line 101
    .line 102
    iget-object v0, v0, Ll5/p;->a:Lf5/f;

    .line 103
    .line 104
    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 105
    .line 106
    .line 107
    move-result-object v0

    .line 108
    iget-object v2, p0, Lh5/e0;->a:Lh5/h;

    .line 109
    .line 110
    invoke-direct {p1, v0, v2, p0}, Lh5/d;-><init>(Ljava/util/List;Lh5/h;Lh5/f;)V

    .line 111
    .line 112
    .line 113
    iput-object p1, p0, Lh5/e0;->d:Lh5/d;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 114
    .line 115
    iget-object p1, p0, Lh5/e0;->f:Ll5/p;

    .line 116
    .line 117
    iget-object p1, p1, Ll5/p;->c:Lcom/bumptech/glide/load/data/e;

    .line 118
    .line 119
    invoke-interface {p1}, Lcom/bumptech/glide/load/data/e;->b()V

    .line 120
    .line 121
    .line 122
    return v5

    .line 123
    :cond_1
    const/4 v3, 0x3

    .line 124
    :try_start_1
    invoke-static {v0, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 125
    .line 126
    .line 127
    move-result v0

    .line 128
    if-eqz v0, :cond_3

    .line 129
    .line 130
    iget-object v0, p0, Lh5/e0;->g:Lh5/e;

    .line 131
    .line 132
    if-eqz v0, :cond_2

    .line 133
    .line 134
    invoke-virtual {v0}, Lh5/e;->toString()Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 138
    .line 139
    .line 140
    :cond_3
    :try_start_2
    iget-object v6, p0, Lh5/e0;->b:Lh5/j;

    .line 141
    .line 142
    iget-object p1, p0, Lh5/e0;->f:Ll5/p;

    .line 143
    .line 144
    iget-object v7, p1, Ll5/p;->a:Lf5/f;

    .line 145
    .line 146
    invoke-interface {v2}, Lcom/bumptech/glide/load/data/g;->d()Ljava/lang/Object;

    .line 147
    .line 148
    .line 149
    move-result-object v8

    .line 150
    iget-object p1, p0, Lh5/e0;->f:Ll5/p;

    .line 151
    .line 152
    iget-object v9, p1, Ll5/p;->c:Lcom/bumptech/glide/load/data/e;

    .line 153
    .line 154
    iget-object p1, p0, Lh5/e0;->f:Ll5/p;

    .line 155
    .line 156
    iget-object p1, p1, Ll5/p;->c:Lcom/bumptech/glide/load/data/e;

    .line 157
    .line 158
    invoke-interface {p1}, Lcom/bumptech/glide/load/data/e;->c()Lf5/a;

    .line 159
    .line 160
    .line 161
    move-result-object v10

    .line 162
    iget-object p1, p0, Lh5/e0;->f:Ll5/p;

    .line 163
    .line 164
    iget-object v11, p1, Ll5/p;->a:Lf5/f;

    .line 165
    .line 166
    invoke-virtual/range {v6 .. v11}, Lh5/j;->a(Lf5/f;Ljava/lang/Object;Lcom/bumptech/glide/load/data/e;Lf5/a;Lf5/f;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 167
    .line 168
    .line 169
    return v1

    .line 170
    :catchall_1
    move-exception p1

    .line 171
    const/4 v1, 0x1

    .line 172
    :goto_1
    if-nez v1, :cond_4

    .line 173
    .line 174
    iget-object v0, p0, Lh5/e0;->f:Ll5/p;

    .line 175
    .line 176
    iget-object v0, v0, Ll5/p;->c:Lcom/bumptech/glide/load/data/e;

    .line 177
    .line 178
    invoke-interface {v0}, Lcom/bumptech/glide/load/data/e;->b()V

    .line 179
    .line 180
    .line 181
    :cond_4
    throw p1
.end method
