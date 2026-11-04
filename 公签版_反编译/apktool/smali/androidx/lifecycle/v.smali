.class public final Landroidx/lifecycle/v;
.super Landroidx/lifecycle/o;
.source "SourceFile"


# instance fields
.field public final a:Z

.field public b:Ly/a;

.field public c:Landroidx/lifecycle/n;

.field public final d:Ljava/lang/ref/WeakReference;

.field public e:I

.field public f:Z

.field public g:Z

.field public final h:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Landroidx/lifecycle/t;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/lifecycle/o;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Landroidx/lifecycle/v;->a:Z

    .line 6
    .line 7
    new-instance v0, Ly/a;

    .line 8
    .line 9
    invoke-direct {v0}, Ly/a;-><init>()V

    .line 10
    .line 11
    .line 12
    iput-object v0, p0, Landroidx/lifecycle/v;->b:Ly/a;

    .line 13
    .line 14
    sget-object v0, Landroidx/lifecycle/n;->b:Landroidx/lifecycle/n;

    .line 15
    .line 16
    iput-object v0, p0, Landroidx/lifecycle/v;->c:Landroidx/lifecycle/n;

    .line 17
    .line 18
    new-instance v0, Ljava/util/ArrayList;

    .line 19
    .line 20
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Landroidx/lifecycle/v;->h:Ljava/util/ArrayList;

    .line 24
    .line 25
    new-instance v0, Ljava/lang/ref/WeakReference;

    .line 26
    .line 27
    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 28
    .line 29
    .line 30
    iput-object v0, p0, Landroidx/lifecycle/v;->d:Ljava/lang/ref/WeakReference;

    .line 31
    .line 32
    return-void
.end method


# virtual methods
.method public final a(Landroidx/lifecycle/s;)V
    .locals 6

    .line 1
    const-string v0, "addObserver"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Landroidx/lifecycle/v;->d(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Landroidx/lifecycle/v;->c:Landroidx/lifecycle/n;

    .line 7
    .line 8
    sget-object v1, Landroidx/lifecycle/n;->a:Landroidx/lifecycle/n;

    .line 9
    .line 10
    if-ne v0, v1, :cond_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    sget-object v1, Landroidx/lifecycle/n;->b:Landroidx/lifecycle/n;

    .line 14
    .line 15
    :goto_0
    new-instance v0, Landroidx/lifecycle/u;

    .line 16
    .line 17
    invoke-direct {v0, p1, v1}, Landroidx/lifecycle/u;-><init>(Landroidx/lifecycle/s;Landroidx/lifecycle/n;)V

    .line 18
    .line 19
    .line 20
    iget-object v1, p0, Landroidx/lifecycle/v;->b:Ly/a;

    .line 21
    .line 22
    invoke-virtual {v1, p1}, Ly/a;->a(Ljava/lang/Object;)Ly/c;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    if-eqz v2, :cond_1

    .line 27
    .line 28
    iget-object v1, v2, Ly/c;->b:Ljava/lang/Object;

    .line 29
    .line 30
    goto :goto_2

    .line 31
    :cond_1
    iget-object v2, v1, Ly/a;->e:Ljava/util/HashMap;

    .line 32
    .line 33
    new-instance v3, Ly/c;

    .line 34
    .line 35
    invoke-direct {v3, p1, v0}, Ly/c;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 36
    .line 37
    .line 38
    iget v4, v1, Ly/f;->d:I

    .line 39
    .line 40
    add-int/lit8 v4, v4, 0x1

    .line 41
    .line 42
    iput v4, v1, Ly/f;->d:I

    .line 43
    .line 44
    iget-object v4, v1, Ly/f;->b:Ly/c;

    .line 45
    .line 46
    if-nez v4, :cond_2

    .line 47
    .line 48
    iput-object v3, v1, Ly/f;->a:Ly/c;

    .line 49
    .line 50
    iput-object v3, v1, Ly/f;->b:Ly/c;

    .line 51
    .line 52
    goto :goto_1

    .line 53
    :cond_2
    iput-object v3, v4, Ly/c;->c:Ly/c;

    .line 54
    .line 55
    iput-object v4, v3, Ly/c;->d:Ly/c;

    .line 56
    .line 57
    iput-object v3, v1, Ly/f;->b:Ly/c;

    .line 58
    .line 59
    :goto_1
    invoke-virtual {v2, p1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    const/4 v1, 0x0

    .line 63
    :goto_2
    check-cast v1, Landroidx/lifecycle/u;

    .line 64
    .line 65
    if-eqz v1, :cond_3

    .line 66
    .line 67
    return-void

    .line 68
    :cond_3
    iget-object v1, p0, Landroidx/lifecycle/v;->d:Ljava/lang/ref/WeakReference;

    .line 69
    .line 70
    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    move-result-object v1

    .line 74
    check-cast v1, Landroidx/lifecycle/t;

    .line 75
    .line 76
    if-nez v1, :cond_4

    .line 77
    .line 78
    return-void

    .line 79
    :cond_4
    iget v2, p0, Landroidx/lifecycle/v;->e:I

    .line 80
    .line 81
    const/4 v3, 0x1

    .line 82
    if-nez v2, :cond_6

    .line 83
    .line 84
    iget-boolean v2, p0, Landroidx/lifecycle/v;->f:Z

    .line 85
    .line 86
    if-eqz v2, :cond_5

    .line 87
    .line 88
    goto :goto_3

    .line 89
    :cond_5
    const/4 v2, 0x0

    .line 90
    goto :goto_4

    .line 91
    :cond_6
    :goto_3
    const/4 v2, 0x1

    .line 92
    :goto_4
    invoke-virtual {p0, p1}, Landroidx/lifecycle/v;->c(Landroidx/lifecycle/s;)Landroidx/lifecycle/n;

    .line 93
    .line 94
    .line 95
    move-result-object v4

    .line 96
    iget v5, p0, Landroidx/lifecycle/v;->e:I

    .line 97
    .line 98
    add-int/2addr v5, v3

    .line 99
    iput v5, p0, Landroidx/lifecycle/v;->e:I

    .line 100
    .line 101
    :goto_5
    iget-object v5, v0, Landroidx/lifecycle/u;->a:Landroidx/lifecycle/n;

    .line 102
    .line 103
    invoke-virtual {v5, v4}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    .line 104
    .line 105
    .line 106
    move-result v4

    .line 107
    if-gez v4, :cond_8

    .line 108
    .line 109
    iget-object v4, p0, Landroidx/lifecycle/v;->b:Ly/a;

    .line 110
    .line 111
    iget-object v4, v4, Ly/a;->e:Ljava/util/HashMap;

    .line 112
    .line 113
    invoke-virtual {v4, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 114
    .line 115
    .line 116
    move-result v4

    .line 117
    if-eqz v4, :cond_8

    .line 118
    .line 119
    iget-object v4, v0, Landroidx/lifecycle/u;->a:Landroidx/lifecycle/n;

    .line 120
    .line 121
    iget-object v5, p0, Landroidx/lifecycle/v;->h:Ljava/util/ArrayList;

    .line 122
    .line 123
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 124
    .line 125
    .line 126
    sget-object v4, Landroidx/lifecycle/m;->Companion:Landroidx/lifecycle/k;

    .line 127
    .line 128
    iget-object v5, v0, Landroidx/lifecycle/u;->a:Landroidx/lifecycle/n;

    .line 129
    .line 130
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 131
    .line 132
    .line 133
    invoke-static {v5}, Landroidx/lifecycle/k;->a(Landroidx/lifecycle/n;)Landroidx/lifecycle/m;

    .line 134
    .line 135
    .line 136
    move-result-object v4

    .line 137
    if-eqz v4, :cond_7

    .line 138
    .line 139
    invoke-virtual {v0, v1, v4}, Landroidx/lifecycle/u;->a(Landroidx/lifecycle/t;Landroidx/lifecycle/m;)V

    .line 140
    .line 141
    .line 142
    iget-object v4, p0, Landroidx/lifecycle/v;->h:Ljava/util/ArrayList;

    .line 143
    .line 144
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 145
    .line 146
    .line 147
    move-result v5

    .line 148
    sub-int/2addr v5, v3

    .line 149
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 150
    .line 151
    .line 152
    invoke-virtual {p0, p1}, Landroidx/lifecycle/v;->c(Landroidx/lifecycle/s;)Landroidx/lifecycle/n;

    .line 153
    .line 154
    .line 155
    move-result-object v4

    .line 156
    goto :goto_5

    .line 157
    :cond_7
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 158
    .line 159
    new-instance v1, Ljava/lang/StringBuilder;

    .line 160
    .line 161
    const-string v2, "no event up from "

    .line 162
    .line 163
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 164
    .line 165
    .line 166
    iget-object v0, v0, Landroidx/lifecycle/u;->a:Landroidx/lifecycle/n;

    .line 167
    .line 168
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 169
    .line 170
    .line 171
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 172
    .line 173
    .line 174
    move-result-object v0

    .line 175
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 176
    .line 177
    .line 178
    throw p1

    .line 179
    :cond_8
    if-nez v2, :cond_9

    .line 180
    .line 181
    invoke-virtual {p0}, Landroidx/lifecycle/v;->h()V

    .line 182
    .line 183
    .line 184
    :cond_9
    iget p1, p0, Landroidx/lifecycle/v;->e:I

    .line 185
    .line 186
    add-int/lit8 p1, p1, -0x1

    .line 187
    .line 188
    iput p1, p0, Landroidx/lifecycle/v;->e:I

    .line 189
    .line 190
    return-void
.end method

.method public final b(Landroidx/lifecycle/s;)V
    .locals 1

    .line 1
    const-string v0, "observer"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lue/d;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "removeObserver"

    .line 7
    .line 8
    invoke-virtual {p0, v0}, Landroidx/lifecycle/v;->d(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Landroidx/lifecycle/v;->b:Ly/a;

    .line 12
    .line 13
    invoke-virtual {v0, p1}, Ly/a;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public final c(Landroidx/lifecycle/s;)Landroidx/lifecycle/n;
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/lifecycle/v;->b:Ly/a;

    .line 2
    .line 3
    iget-object v0, v0, Ly/a;->e:Ljava/util/HashMap;

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    const/4 v2, 0x0

    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    check-cast p1, Ly/c;

    .line 17
    .line 18
    iget-object p1, p1, Ly/c;->d:Ly/c;

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    move-object p1, v2

    .line 22
    :goto_0
    if-eqz p1, :cond_1

    .line 23
    .line 24
    iget-object p1, p1, Ly/c;->b:Ljava/lang/Object;

    .line 25
    .line 26
    check-cast p1, Landroidx/lifecycle/u;

    .line 27
    .line 28
    if-eqz p1, :cond_1

    .line 29
    .line 30
    iget-object p1, p1, Landroidx/lifecycle/u;->a:Landroidx/lifecycle/n;

    .line 31
    .line 32
    goto :goto_1

    .line 33
    :cond_1
    move-object p1, v2

    .line 34
    :goto_1
    iget-object v0, p0, Landroidx/lifecycle/v;->h:Ljava/util/ArrayList;

    .line 35
    .line 36
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 37
    .line 38
    .line 39
    move-result v1

    .line 40
    if-nez v1, :cond_2

    .line 41
    .line 42
    const/4 v1, 0x1

    .line 43
    invoke-static {v1, v0}, Lta/q;->h(ILjava/util/ArrayList;)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    move-object v2, v0

    .line 48
    check-cast v2, Landroidx/lifecycle/n;

    .line 49
    .line 50
    :cond_2
    iget-object v0, p0, Landroidx/lifecycle/v;->c:Landroidx/lifecycle/n;

    .line 51
    .line 52
    const-string v1, "state1"

    .line 53
    .line 54
    invoke-static {v0, v1}, Lue/d;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    if-eqz p1, :cond_3

    .line 58
    .line 59
    invoke-virtual {p1, v0}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    .line 60
    .line 61
    .line 62
    move-result v1

    .line 63
    if-gez v1, :cond_3

    .line 64
    .line 65
    goto :goto_2

    .line 66
    :cond_3
    move-object p1, v0

    .line 67
    :goto_2
    if-eqz v2, :cond_4

    .line 68
    .line 69
    invoke-virtual {v2, p1}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    .line 70
    .line 71
    .line 72
    move-result v0

    .line 73
    if-gez v0, :cond_4

    .line 74
    .line 75
    goto :goto_3

    .line 76
    :cond_4
    move-object v2, p1

    .line 77
    :goto_3
    return-object v2
.end method

.method public final d(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Landroidx/lifecycle/v;->a:Z

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    invoke-static {}, Lx/a;->d0()Lx/a;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iget-object v0, v0, Lx/a;->b:Lx/c;

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    if-ne v0, v1, :cond_0

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    const-string v0, "Method "

    .line 30
    .line 31
    const-string v1, " must be called on the main thread"

    .line 32
    .line 33
    invoke-static {v0, p1, v1}, Lg/b;->A(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 38
    .line 39
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    throw v0

    .line 47
    :cond_1
    :goto_0
    return-void
.end method

.method public final e(Landroidx/lifecycle/m;)V
    .locals 1

    .line 1
    const-string v0, "event"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lue/d;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "handleLifecycleEvent"

    .line 7
    .line 8
    invoke-virtual {p0, v0}, Landroidx/lifecycle/v;->d(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1}, Landroidx/lifecycle/m;->a()Landroidx/lifecycle/n;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-virtual {p0, p1}, Landroidx/lifecycle/v;->f(Landroidx/lifecycle/n;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public final f(Landroidx/lifecycle/n;)V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/lifecycle/v;->c:Landroidx/lifecycle/n;

    .line 2
    .line 3
    if-ne v0, p1, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    sget-object v1, Landroidx/lifecycle/n;->b:Landroidx/lifecycle/n;

    .line 7
    .line 8
    sget-object v2, Landroidx/lifecycle/n;->a:Landroidx/lifecycle/n;

    .line 9
    .line 10
    if-ne v0, v1, :cond_2

    .line 11
    .line 12
    if-eq p1, v2, :cond_1

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    .line 16
    .line 17
    const-string v0, "no event down from "

    .line 18
    .line 19
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    iget-object v0, p0, Landroidx/lifecycle/v;->c:Landroidx/lifecycle/n;

    .line 23
    .line 24
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    const-string v0, " in component "

    .line 28
    .line 29
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    iget-object v0, p0, Landroidx/lifecycle/v;->d:Ljava/lang/ref/WeakReference;

    .line 33
    .line 34
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 46
    .line 47
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    throw v0

    .line 55
    :cond_2
    :goto_0
    iput-object p1, p0, Landroidx/lifecycle/v;->c:Landroidx/lifecycle/n;

    .line 56
    .line 57
    iget-boolean p1, p0, Landroidx/lifecycle/v;->f:Z

    .line 58
    .line 59
    const/4 v0, 0x1

    .line 60
    if-nez p1, :cond_5

    .line 61
    .line 62
    iget p1, p0, Landroidx/lifecycle/v;->e:I

    .line 63
    .line 64
    if-eqz p1, :cond_3

    .line 65
    .line 66
    goto :goto_1

    .line 67
    :cond_3
    iput-boolean v0, p0, Landroidx/lifecycle/v;->f:Z

    .line 68
    .line 69
    invoke-virtual {p0}, Landroidx/lifecycle/v;->h()V

    .line 70
    .line 71
    .line 72
    const/4 p1, 0x0

    .line 73
    iput-boolean p1, p0, Landroidx/lifecycle/v;->f:Z

    .line 74
    .line 75
    iget-object p1, p0, Landroidx/lifecycle/v;->c:Landroidx/lifecycle/n;

    .line 76
    .line 77
    if-ne p1, v2, :cond_4

    .line 78
    .line 79
    new-instance p1, Ly/a;

    .line 80
    .line 81
    invoke-direct {p1}, Ly/a;-><init>()V

    .line 82
    .line 83
    .line 84
    iput-object p1, p0, Landroidx/lifecycle/v;->b:Ly/a;

    .line 85
    .line 86
    :cond_4
    return-void

    .line 87
    :cond_5
    :goto_1
    iput-boolean v0, p0, Landroidx/lifecycle/v;->g:Z

    .line 88
    .line 89
    return-void
.end method

.method public final g()V
    .locals 2

    .line 1
    sget-object v0, Landroidx/lifecycle/n;->c:Landroidx/lifecycle/n;

    .line 2
    .line 3
    const-string v1, "setCurrentState"

    .line 4
    .line 5
    invoke-virtual {p0, v1}, Landroidx/lifecycle/v;->d(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, v0}, Landroidx/lifecycle/v;->f(Landroidx/lifecycle/n;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final h()V
    .locals 7

    .line 1
    iget-object v0, p0, Landroidx/lifecycle/v;->d:Ljava/lang/ref/WeakReference;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroidx/lifecycle/t;

    .line 8
    .line 9
    if-eqz v0, :cond_b

    .line 10
    .line 11
    :cond_0
    iget-object v1, p0, Landroidx/lifecycle/v;->b:Ly/a;

    .line 12
    .line 13
    iget v2, v1, Ly/f;->d:I

    .line 14
    .line 15
    const/4 v3, 0x0

    .line 16
    if-nez v2, :cond_1

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_1
    iget-object v1, v1, Ly/f;->a:Ly/c;

    .line 20
    .line 21
    invoke-static {v1}, Lue/d;->b(Ljava/lang/Object;)V

    .line 22
    .line 23
    .line 24
    iget-object v1, v1, Ly/c;->b:Ljava/lang/Object;

    .line 25
    .line 26
    check-cast v1, Landroidx/lifecycle/u;

    .line 27
    .line 28
    iget-object v1, v1, Landroidx/lifecycle/u;->a:Landroidx/lifecycle/n;

    .line 29
    .line 30
    iget-object v2, p0, Landroidx/lifecycle/v;->b:Ly/a;

    .line 31
    .line 32
    iget-object v2, v2, Ly/f;->b:Ly/c;

    .line 33
    .line 34
    invoke-static {v2}, Lue/d;->b(Ljava/lang/Object;)V

    .line 35
    .line 36
    .line 37
    iget-object v2, v2, Ly/c;->b:Ljava/lang/Object;

    .line 38
    .line 39
    check-cast v2, Landroidx/lifecycle/u;

    .line 40
    .line 41
    iget-object v2, v2, Landroidx/lifecycle/u;->a:Landroidx/lifecycle/n;

    .line 42
    .line 43
    if-ne v1, v2, :cond_2

    .line 44
    .line 45
    iget-object v1, p0, Landroidx/lifecycle/v;->c:Landroidx/lifecycle/n;

    .line 46
    .line 47
    if-ne v1, v2, :cond_2

    .line 48
    .line 49
    :goto_0
    iput-boolean v3, p0, Landroidx/lifecycle/v;->g:Z

    .line 50
    .line 51
    return-void

    .line 52
    :cond_2
    iput-boolean v3, p0, Landroidx/lifecycle/v;->g:Z

    .line 53
    .line 54
    iget-object v1, p0, Landroidx/lifecycle/v;->c:Landroidx/lifecycle/n;

    .line 55
    .line 56
    iget-object v2, p0, Landroidx/lifecycle/v;->b:Ly/a;

    .line 57
    .line 58
    iget-object v2, v2, Ly/f;->a:Ly/c;

    .line 59
    .line 60
    invoke-static {v2}, Lue/d;->b(Ljava/lang/Object;)V

    .line 61
    .line 62
    .line 63
    iget-object v2, v2, Ly/c;->b:Ljava/lang/Object;

    .line 64
    .line 65
    check-cast v2, Landroidx/lifecycle/u;

    .line 66
    .line 67
    iget-object v2, v2, Landroidx/lifecycle/u;->a:Landroidx/lifecycle/n;

    .line 68
    .line 69
    invoke-virtual {v1, v2}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    .line 70
    .line 71
    .line 72
    move-result v1

    .line 73
    if-gez v1, :cond_8

    .line 74
    .line 75
    iget-object v1, p0, Landroidx/lifecycle/v;->b:Ly/a;

    .line 76
    .line 77
    new-instance v2, Ly/b;

    .line 78
    .line 79
    iget-object v3, v1, Ly/f;->b:Ly/c;

    .line 80
    .line 81
    iget-object v4, v1, Ly/f;->a:Ly/c;

    .line 82
    .line 83
    const/4 v5, 0x1

    .line 84
    invoke-direct {v2, v3, v4, v5}, Ly/b;-><init>(Ly/c;Ly/c;I)V

    .line 85
    .line 86
    .line 87
    iget-object v1, v1, Ly/f;->c:Ljava/util/WeakHashMap;

    .line 88
    .line 89
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 90
    .line 91
    invoke-virtual {v1, v2, v3}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    .line 93
    .line 94
    :cond_3
    invoke-virtual {v2}, Ly/b;->hasNext()Z

    .line 95
    .line 96
    .line 97
    move-result v1

    .line 98
    if-eqz v1, :cond_8

    .line 99
    .line 100
    iget-boolean v1, p0, Landroidx/lifecycle/v;->g:Z

    .line 101
    .line 102
    if-nez v1, :cond_8

    .line 103
    .line 104
    invoke-virtual {v2}, Ly/b;->next()Ljava/lang/Object;

    .line 105
    .line 106
    .line 107
    move-result-object v1

    .line 108
    check-cast v1, Ljava/util/Map$Entry;

    .line 109
    .line 110
    const-string v3, "next()"

    .line 111
    .line 112
    invoke-static {v1, v3}, Lue/d;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 113
    .line 114
    .line 115
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 116
    .line 117
    .line 118
    move-result-object v3

    .line 119
    check-cast v3, Landroidx/lifecycle/s;

    .line 120
    .line 121
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 122
    .line 123
    .line 124
    move-result-object v1

    .line 125
    check-cast v1, Landroidx/lifecycle/u;

    .line 126
    .line 127
    :goto_1
    iget-object v4, v1, Landroidx/lifecycle/u;->a:Landroidx/lifecycle/n;

    .line 128
    .line 129
    iget-object v5, p0, Landroidx/lifecycle/v;->c:Landroidx/lifecycle/n;

    .line 130
    .line 131
    invoke-virtual {v4, v5}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    .line 132
    .line 133
    .line 134
    move-result v4

    .line 135
    if-lez v4, :cond_3

    .line 136
    .line 137
    iget-boolean v4, p0, Landroidx/lifecycle/v;->g:Z

    .line 138
    .line 139
    if-nez v4, :cond_3

    .line 140
    .line 141
    iget-object v4, p0, Landroidx/lifecycle/v;->b:Ly/a;

    .line 142
    .line 143
    iget-object v4, v4, Ly/a;->e:Ljava/util/HashMap;

    .line 144
    .line 145
    invoke-virtual {v4, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 146
    .line 147
    .line 148
    move-result v4

    .line 149
    if-eqz v4, :cond_3

    .line 150
    .line 151
    sget-object v4, Landroidx/lifecycle/m;->Companion:Landroidx/lifecycle/k;

    .line 152
    .line 153
    iget-object v5, v1, Landroidx/lifecycle/u;->a:Landroidx/lifecycle/n;

    .line 154
    .line 155
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 156
    .line 157
    .line 158
    const-string v4, "state"

    .line 159
    .line 160
    invoke-static {v5, v4}, Lue/d;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 161
    .line 162
    .line 163
    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    .line 164
    .line 165
    .line 166
    move-result v4

    .line 167
    const/4 v5, 0x2

    .line 168
    if-eq v4, v5, :cond_6

    .line 169
    .line 170
    const/4 v5, 0x3

    .line 171
    if-eq v4, v5, :cond_5

    .line 172
    .line 173
    const/4 v5, 0x4

    .line 174
    if-eq v4, v5, :cond_4

    .line 175
    .line 176
    const/4 v4, 0x0

    .line 177
    goto :goto_2

    .line 178
    :cond_4
    sget-object v4, Landroidx/lifecycle/m;->ON_PAUSE:Landroidx/lifecycle/m;

    .line 179
    .line 180
    goto :goto_2

    .line 181
    :cond_5
    sget-object v4, Landroidx/lifecycle/m;->ON_STOP:Landroidx/lifecycle/m;

    .line 182
    .line 183
    goto :goto_2

    .line 184
    :cond_6
    sget-object v4, Landroidx/lifecycle/m;->ON_DESTROY:Landroidx/lifecycle/m;

    .line 185
    .line 186
    :goto_2
    if-eqz v4, :cond_7

    .line 187
    .line 188
    invoke-virtual {v4}, Landroidx/lifecycle/m;->a()Landroidx/lifecycle/n;

    .line 189
    .line 190
    .line 191
    move-result-object v5

    .line 192
    iget-object v6, p0, Landroidx/lifecycle/v;->h:Ljava/util/ArrayList;

    .line 193
    .line 194
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 195
    .line 196
    .line 197
    invoke-virtual {v1, v0, v4}, Landroidx/lifecycle/u;->a(Landroidx/lifecycle/t;Landroidx/lifecycle/m;)V

    .line 198
    .line 199
    .line 200
    iget-object v4, p0, Landroidx/lifecycle/v;->h:Ljava/util/ArrayList;

    .line 201
    .line 202
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 203
    .line 204
    .line 205
    move-result v5

    .line 206
    add-int/lit8 v5, v5, -0x1

    .line 207
    .line 208
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 209
    .line 210
    .line 211
    goto :goto_1

    .line 212
    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 213
    .line 214
    new-instance v2, Ljava/lang/StringBuilder;

    .line 215
    .line 216
    const-string v3, "no event down from "

    .line 217
    .line 218
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 219
    .line 220
    .line 221
    iget-object v1, v1, Landroidx/lifecycle/u;->a:Landroidx/lifecycle/n;

    .line 222
    .line 223
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 224
    .line 225
    .line 226
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 227
    .line 228
    .line 229
    move-result-object v1

    .line 230
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 231
    .line 232
    .line 233
    throw v0

    .line 234
    :cond_8
    iget-object v1, p0, Landroidx/lifecycle/v;->b:Ly/a;

    .line 235
    .line 236
    iget-object v1, v1, Ly/f;->b:Ly/c;

    .line 237
    .line 238
    iget-boolean v2, p0, Landroidx/lifecycle/v;->g:Z

    .line 239
    .line 240
    if-nez v2, :cond_0

    .line 241
    .line 242
    if-eqz v1, :cond_0

    .line 243
    .line 244
    iget-object v2, p0, Landroidx/lifecycle/v;->c:Landroidx/lifecycle/n;

    .line 245
    .line 246
    iget-object v1, v1, Ly/c;->b:Ljava/lang/Object;

    .line 247
    .line 248
    check-cast v1, Landroidx/lifecycle/u;

    .line 249
    .line 250
    iget-object v1, v1, Landroidx/lifecycle/u;->a:Landroidx/lifecycle/n;

    .line 251
    .line 252
    invoke-virtual {v2, v1}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    .line 253
    .line 254
    .line 255
    move-result v1

    .line 256
    if-lez v1, :cond_0

    .line 257
    .line 258
    iget-object v1, p0, Landroidx/lifecycle/v;->b:Ly/a;

    .line 259
    .line 260
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 261
    .line 262
    .line 263
    new-instance v2, Ly/d;

    .line 264
    .line 265
    invoke-direct {v2, v1}, Ly/d;-><init>(Ly/f;)V

    .line 266
    .line 267
    .line 268
    iget-object v1, v1, Ly/f;->c:Ljava/util/WeakHashMap;

    .line 269
    .line 270
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 271
    .line 272
    invoke-virtual {v1, v2, v3}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 273
    .line 274
    .line 275
    :cond_9
    invoke-virtual {v2}, Ly/d;->hasNext()Z

    .line 276
    .line 277
    .line 278
    move-result v1

    .line 279
    if-eqz v1, :cond_0

    .line 280
    .line 281
    iget-boolean v1, p0, Landroidx/lifecycle/v;->g:Z

    .line 282
    .line 283
    if-nez v1, :cond_0

    .line 284
    .line 285
    invoke-virtual {v2}, Ly/d;->next()Ljava/lang/Object;

    .line 286
    .line 287
    .line 288
    move-result-object v1

    .line 289
    check-cast v1, Ljava/util/Map$Entry;

    .line 290
    .line 291
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 292
    .line 293
    .line 294
    move-result-object v3

    .line 295
    check-cast v3, Landroidx/lifecycle/s;

    .line 296
    .line 297
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 298
    .line 299
    .line 300
    move-result-object v1

    .line 301
    check-cast v1, Landroidx/lifecycle/u;

    .line 302
    .line 303
    :goto_3
    iget-object v4, v1, Landroidx/lifecycle/u;->a:Landroidx/lifecycle/n;

    .line 304
    .line 305
    iget-object v5, p0, Landroidx/lifecycle/v;->c:Landroidx/lifecycle/n;

    .line 306
    .line 307
    invoke-virtual {v4, v5}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    .line 308
    .line 309
    .line 310
    move-result v4

    .line 311
    if-gez v4, :cond_9

    .line 312
    .line 313
    iget-boolean v4, p0, Landroidx/lifecycle/v;->g:Z

    .line 314
    .line 315
    if-nez v4, :cond_9

    .line 316
    .line 317
    iget-object v4, p0, Landroidx/lifecycle/v;->b:Ly/a;

    .line 318
    .line 319
    iget-object v4, v4, Ly/a;->e:Ljava/util/HashMap;

    .line 320
    .line 321
    invoke-virtual {v4, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 322
    .line 323
    .line 324
    move-result v4

    .line 325
    if-eqz v4, :cond_9

    .line 326
    .line 327
    iget-object v4, v1, Landroidx/lifecycle/u;->a:Landroidx/lifecycle/n;

    .line 328
    .line 329
    iget-object v5, p0, Landroidx/lifecycle/v;->h:Ljava/util/ArrayList;

    .line 330
    .line 331
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 332
    .line 333
    .line 334
    sget-object v4, Landroidx/lifecycle/m;->Companion:Landroidx/lifecycle/k;

    .line 335
    .line 336
    iget-object v5, v1, Landroidx/lifecycle/u;->a:Landroidx/lifecycle/n;

    .line 337
    .line 338
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 339
    .line 340
    .line 341
    invoke-static {v5}, Landroidx/lifecycle/k;->a(Landroidx/lifecycle/n;)Landroidx/lifecycle/m;

    .line 342
    .line 343
    .line 344
    move-result-object v4

    .line 345
    if-eqz v4, :cond_a

    .line 346
    .line 347
    invoke-virtual {v1, v0, v4}, Landroidx/lifecycle/u;->a(Landroidx/lifecycle/t;Landroidx/lifecycle/m;)V

    .line 348
    .line 349
    .line 350
    iget-object v4, p0, Landroidx/lifecycle/v;->h:Ljava/util/ArrayList;

    .line 351
    .line 352
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 353
    .line 354
    .line 355
    move-result v5

    .line 356
    add-int/lit8 v5, v5, -0x1

    .line 357
    .line 358
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 359
    .line 360
    .line 361
    goto :goto_3

    .line 362
    :cond_a
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 363
    .line 364
    new-instance v2, Ljava/lang/StringBuilder;

    .line 365
    .line 366
    const-string v3, "no event up from "

    .line 367
    .line 368
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 369
    .line 370
    .line 371
    iget-object v1, v1, Landroidx/lifecycle/u;->a:Landroidx/lifecycle/n;

    .line 372
    .line 373
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 374
    .line 375
    .line 376
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 377
    .line 378
    .line 379
    move-result-object v1

    .line 380
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 381
    .line 382
    .line 383
    throw v0

    .line 384
    :cond_b
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 385
    .line 386
    const-string v1, "LifecycleOwner of this LifecycleRegistry is already garbage collected. It is too late to change lifecycle state."

    .line 387
    .line 388
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 389
    .line 390
    .line 391
    goto :goto_5

    .line 392
    :goto_4
    throw v0

    .line 393
    :goto_5
    goto :goto_4
.end method
