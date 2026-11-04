.class public final Lb8/c;
.super Lz7/a0;
.source "SourceFile"


# instance fields
.field public volatile a:Lz7/a0;

.field public final synthetic b:Z

.field public final synthetic c:Z

.field public final synthetic d:Lz7/m;

.field public final synthetic e:Lg8/a;

.field public final synthetic f:Lb8/d;


# direct methods
.method public constructor <init>(Lb8/d;ZZLz7/m;Lg8/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lb8/c;->f:Lb8/d;

    .line 2
    .line 3
    iput-boolean p2, p0, Lb8/c;->b:Z

    .line 4
    .line 5
    iput-boolean p3, p0, Lb8/c;->c:Z

    .line 6
    .line 7
    iput-object p4, p0, Lb8/c;->d:Lz7/m;

    .line 8
    .line 9
    iput-object p5, p0, Lb8/c;->e:Lg8/a;

    .line 10
    .line 11
    invoke-direct {p0}, Lz7/a0;-><init>()V

    .line 12
    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final b(Lh8/a;)Ljava/lang/Object;
    .locals 10

    .line 1
    iget-boolean v0, p0, Lb8/c;->b:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p1}, Lh8/a;->l0()V

    .line 6
    .line 7
    .line 8
    const/4 p1, 0x0

    .line 9
    return-object p1

    .line 10
    :cond_0
    iget-object v0, p0, Lb8/c;->a:Lz7/a0;

    .line 11
    .line 12
    if-nez v0, :cond_b

    .line 13
    .line 14
    iget-object v0, p0, Lb8/c;->d:Lz7/m;

    .line 15
    .line 16
    iget-object v1, p0, Lb8/c;->f:Lb8/d;

    .line 17
    .line 18
    iget-object v2, p0, Lb8/c;->e:Lg8/a;

    .line 19
    .line 20
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 21
    .line 22
    .line 23
    const-string v3, "skipPast must not be null"

    .line 24
    .line 25
    invoke-static {v1, v3}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    iget-object v3, v0, Lz7/m;->d:Lc8/l;

    .line 29
    .line 30
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 31
    .line 32
    .line 33
    sget-object v4, Lc8/l;->c:Lc8/k;

    .line 34
    .line 35
    const/4 v5, 0x1

    .line 36
    if-ne v1, v4, :cond_1

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_1
    iget-object v4, v3, Lc8/l;->b:Lj$/util/concurrent/ConcurrentHashMap;

    .line 40
    .line 41
    iget-object v6, v2, Lg8/a;->a:Ljava/lang/Class;

    .line 42
    .line 43
    invoke-virtual {v4, v6}, Lj$/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v7

    .line 47
    check-cast v7, Lz7/b0;

    .line 48
    .line 49
    if-eqz v7, :cond_2

    .line 50
    .line 51
    if-ne v7, v1, :cond_6

    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_2
    const-class v7, La8/a;

    .line 55
    .line 56
    invoke-virtual {v6, v7}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    .line 57
    .line 58
    .line 59
    move-result-object v7

    .line 60
    check-cast v7, La8/a;

    .line 61
    .line 62
    if-nez v7, :cond_3

    .line 63
    .line 64
    goto :goto_1

    .line 65
    :cond_3
    invoke-interface {v7}, La8/a;->value()Ljava/lang/Class;

    .line 66
    .line 67
    .line 68
    move-result-object v7

    .line 69
    const-class v8, Lz7/b0;

    .line 70
    .line 71
    invoke-virtual {v8, v7}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 72
    .line 73
    .line 74
    move-result v8

    .line 75
    if-nez v8, :cond_4

    .line 76
    .line 77
    goto :goto_1

    .line 78
    :cond_4
    iget-object v8, v3, Lc8/l;->a:Lcom/bumptech/glide/manager/s;

    .line 79
    .line 80
    new-instance v9, Lg8/a;

    .line 81
    .line 82
    invoke-direct {v9, v7}, Lg8/a;-><init>(Ljava/lang/reflect/Type;)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {v8, v9, v5}, Lcom/bumptech/glide/manager/s;->d(Lg8/a;Z)Lb8/o;

    .line 86
    .line 87
    .line 88
    move-result-object v7

    .line 89
    invoke-interface {v7}, Lb8/o;->c()Ljava/lang/Object;

    .line 90
    .line 91
    .line 92
    move-result-object v7

    .line 93
    check-cast v7, Lz7/b0;

    .line 94
    .line 95
    invoke-virtual {v4, v6, v7}, Lj$/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    .line 97
    .line 98
    move-result-object v4

    .line 99
    check-cast v4, Lz7/b0;

    .line 100
    .line 101
    if-eqz v4, :cond_5

    .line 102
    .line 103
    move-object v7, v4

    .line 104
    :cond_5
    if-ne v7, v1, :cond_6

    .line 105
    .line 106
    :goto_0
    move-object v1, v3

    .line 107
    :cond_6
    :goto_1
    iget-object v3, v0, Lz7/m;->e:Ljava/util/List;

    .line 108
    .line 109
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 110
    .line 111
    .line 112
    move-result-object v3

    .line 113
    const/4 v4, 0x0

    .line 114
    :cond_7
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 115
    .line 116
    .line 117
    move-result v6

    .line 118
    if-eqz v6, :cond_9

    .line 119
    .line 120
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 121
    .line 122
    .line 123
    move-result-object v6

    .line 124
    check-cast v6, Lz7/b0;

    .line 125
    .line 126
    if-nez v4, :cond_8

    .line 127
    .line 128
    if-ne v6, v1, :cond_7

    .line 129
    .line 130
    const/4 v4, 0x1

    .line 131
    goto :goto_2

    .line 132
    :cond_8
    invoke-interface {v6, v0, v2}, Lz7/b0;->a(Lz7/m;Lg8/a;)Lz7/a0;

    .line 133
    .line 134
    .line 135
    move-result-object v6

    .line 136
    if-eqz v6, :cond_7

    .line 137
    .line 138
    move-object v0, v6

    .line 139
    goto :goto_3

    .line 140
    :cond_9
    if-nez v4, :cond_a

    .line 141
    .line 142
    invoke-virtual {v0, v2}, Lz7/m;->c(Lg8/a;)Lz7/a0;

    .line 143
    .line 144
    .line 145
    move-result-object v0

    .line 146
    :goto_3
    iput-object v0, p0, Lb8/c;->a:Lz7/a0;

    .line 147
    .line 148
    goto :goto_4

    .line 149
    :cond_a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 150
    .line 151
    new-instance v0, Ljava/lang/StringBuilder;

    .line 152
    .line 153
    const-string v1, "GSON cannot serialize or deserialize "

    .line 154
    .line 155
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 156
    .line 157
    .line 158
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 159
    .line 160
    .line 161
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 162
    .line 163
    .line 164
    move-result-object v0

    .line 165
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 166
    .line 167
    .line 168
    throw p1

    .line 169
    :cond_b
    :goto_4
    invoke-virtual {v0, p1}, Lz7/a0;->b(Lh8/a;)Ljava/lang/Object;

    .line 170
    .line 171
    .line 172
    move-result-object p1

    .line 173
    return-object p1
.end method

.method public final c(Lh8/b;Ljava/lang/Object;)V
    .locals 10

    .line 1
    iget-boolean v0, p0, Lb8/c;->c:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p1}, Lh8/b;->P()Lh8/b;

    .line 6
    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    iget-object v0, p0, Lb8/c;->a:Lz7/a0;

    .line 10
    .line 11
    if-nez v0, :cond_b

    .line 12
    .line 13
    iget-object v0, p0, Lb8/c;->d:Lz7/m;

    .line 14
    .line 15
    iget-object v1, p0, Lb8/c;->f:Lb8/d;

    .line 16
    .line 17
    iget-object v2, p0, Lb8/c;->e:Lg8/a;

    .line 18
    .line 19
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 20
    .line 21
    .line 22
    const-string v3, "skipPast must not be null"

    .line 23
    .line 24
    invoke-static {v1, v3}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    iget-object v3, v0, Lz7/m;->d:Lc8/l;

    .line 28
    .line 29
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 30
    .line 31
    .line 32
    sget-object v4, Lc8/l;->c:Lc8/k;

    .line 33
    .line 34
    const/4 v5, 0x1

    .line 35
    if-ne v1, v4, :cond_1

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_1
    iget-object v4, v3, Lc8/l;->b:Lj$/util/concurrent/ConcurrentHashMap;

    .line 39
    .line 40
    iget-object v6, v2, Lg8/a;->a:Ljava/lang/Class;

    .line 41
    .line 42
    invoke-virtual {v4, v6}, Lj$/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v7

    .line 46
    check-cast v7, Lz7/b0;

    .line 47
    .line 48
    if-eqz v7, :cond_2

    .line 49
    .line 50
    if-ne v7, v1, :cond_6

    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_2
    const-class v7, La8/a;

    .line 54
    .line 55
    invoke-virtual {v6, v7}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    .line 56
    .line 57
    .line 58
    move-result-object v7

    .line 59
    check-cast v7, La8/a;

    .line 60
    .line 61
    if-nez v7, :cond_3

    .line 62
    .line 63
    goto :goto_1

    .line 64
    :cond_3
    invoke-interface {v7}, La8/a;->value()Ljava/lang/Class;

    .line 65
    .line 66
    .line 67
    move-result-object v7

    .line 68
    const-class v8, Lz7/b0;

    .line 69
    .line 70
    invoke-virtual {v8, v7}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 71
    .line 72
    .line 73
    move-result v8

    .line 74
    if-nez v8, :cond_4

    .line 75
    .line 76
    goto :goto_1

    .line 77
    :cond_4
    iget-object v8, v3, Lc8/l;->a:Lcom/bumptech/glide/manager/s;

    .line 78
    .line 79
    new-instance v9, Lg8/a;

    .line 80
    .line 81
    invoke-direct {v9, v7}, Lg8/a;-><init>(Ljava/lang/reflect/Type;)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {v8, v9, v5}, Lcom/bumptech/glide/manager/s;->d(Lg8/a;Z)Lb8/o;

    .line 85
    .line 86
    .line 87
    move-result-object v7

    .line 88
    invoke-interface {v7}, Lb8/o;->c()Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    move-result-object v7

    .line 92
    check-cast v7, Lz7/b0;

    .line 93
    .line 94
    invoke-virtual {v4, v6, v7}, Lj$/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    .line 96
    .line 97
    move-result-object v4

    .line 98
    check-cast v4, Lz7/b0;

    .line 99
    .line 100
    if-eqz v4, :cond_5

    .line 101
    .line 102
    move-object v7, v4

    .line 103
    :cond_5
    if-ne v7, v1, :cond_6

    .line 104
    .line 105
    :goto_0
    move-object v1, v3

    .line 106
    :cond_6
    :goto_1
    iget-object v3, v0, Lz7/m;->e:Ljava/util/List;

    .line 107
    .line 108
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 109
    .line 110
    .line 111
    move-result-object v3

    .line 112
    const/4 v4, 0x0

    .line 113
    :cond_7
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 114
    .line 115
    .line 116
    move-result v6

    .line 117
    if-eqz v6, :cond_9

    .line 118
    .line 119
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 120
    .line 121
    .line 122
    move-result-object v6

    .line 123
    check-cast v6, Lz7/b0;

    .line 124
    .line 125
    if-nez v4, :cond_8

    .line 126
    .line 127
    if-ne v6, v1, :cond_7

    .line 128
    .line 129
    const/4 v4, 0x1

    .line 130
    goto :goto_2

    .line 131
    :cond_8
    invoke-interface {v6, v0, v2}, Lz7/b0;->a(Lz7/m;Lg8/a;)Lz7/a0;

    .line 132
    .line 133
    .line 134
    move-result-object v6

    .line 135
    if-eqz v6, :cond_7

    .line 136
    .line 137
    move-object v0, v6

    .line 138
    goto :goto_3

    .line 139
    :cond_9
    if-nez v4, :cond_a

    .line 140
    .line 141
    invoke-virtual {v0, v2}, Lz7/m;->c(Lg8/a;)Lz7/a0;

    .line 142
    .line 143
    .line 144
    move-result-object v0

    .line 145
    :goto_3
    iput-object v0, p0, Lb8/c;->a:Lz7/a0;

    .line 146
    .line 147
    goto :goto_4

    .line 148
    :cond_a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 149
    .line 150
    new-instance p2, Ljava/lang/StringBuilder;

    .line 151
    .line 152
    const-string v0, "GSON cannot serialize or deserialize "

    .line 153
    .line 154
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 155
    .line 156
    .line 157
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 158
    .line 159
    .line 160
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 161
    .line 162
    .line 163
    move-result-object p2

    .line 164
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 165
    .line 166
    .line 167
    throw p1

    .line 168
    :cond_b
    :goto_4
    invoke-virtual {v0, p1, p2}, Lz7/a0;->c(Lh8/b;Ljava/lang/Object;)V

    .line 169
    .line 170
    .line 171
    return-void
.end method
