.class public final Lq4/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lq4/i;

.field public final b:Ljava/util/ArrayList;

.field public c:Lq4/g;

.field public d:Z

.field public final e:Lq4/h;

.field public final f:Ljava/util/ArrayList;

.field public final g:Ljava/util/ArrayList;

.field public final h:Lw4/p;

.field public final i:Ljava/util/ArrayList;

.field public final j:Ly4/b;


# direct methods
.method public constructor <init>(Lq4/d;)V
    .locals 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lq4/b;->b:Ljava/util/ArrayList;

    .line 10
    .line 11
    new-instance v0, Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lq4/b;->f:Ljava/util/ArrayList;

    .line 17
    .line 18
    new-instance v1, Ljava/util/ArrayList;

    .line 19
    .line 20
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object v1, p0, Lq4/b;->g:Ljava/util/ArrayList;

    .line 24
    .line 25
    sget-object v1, Lw4/p;->a:Lw4/p;

    .line 26
    .line 27
    iput-object v1, p0, Lq4/b;->h:Lw4/p;

    .line 28
    .line 29
    new-instance v1, Ljava/util/ArrayList;

    .line 30
    .line 31
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 32
    .line 33
    .line 34
    new-instance v1, Ljava/util/ArrayList;

    .line 35
    .line 36
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 37
    .line 38
    .line 39
    iput-object v1, p0, Lq4/b;->i:Ljava/util/ArrayList;

    .line 40
    .line 41
    sget-object v1, Ly4/b;->c:Ly4/b;

    .line 42
    .line 43
    iput-object v1, p0, Lq4/b;->j:Ly4/b;

    .line 44
    .line 45
    iget-object v1, p1, Lq4/d;->a:Lq4/i;

    .line 46
    .line 47
    iput-object v1, p0, Lq4/b;->a:Lq4/i;

    .line 48
    .line 49
    iget p1, p1, Lq4/d;->b:I

    .line 50
    .line 51
    and-int/lit8 p1, p1, 0x8

    .line 52
    .line 53
    if-eqz p1, :cond_0

    .line 54
    .line 55
    const/4 p1, 0x0

    .line 56
    iput-object p1, p0, Lq4/b;->e:Lq4/h;

    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_0
    new-instance p1, Lq4/h;

    .line 60
    .line 61
    iget-object v2, v1, Lq4/i;->a:Lq4/j;

    .line 62
    .line 63
    invoke-direct {p1, p0, v2}, Lq4/h;-><init>(Lq4/b;Lq4/j;)V

    .line 64
    .line 65
    .line 66
    iput-object p1, p0, Lq4/b;->e:Lq4/h;

    .line 67
    .line 68
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 69
    .line 70
    .line 71
    :goto_0
    iget-object p1, v1, Lq4/i;->d:Lq4/k;

    .line 72
    .line 73
    iget-object p1, p1, Lq4/k;->a:[Lq4/j;

    .line 74
    .line 75
    array-length v0, p1

    .line 76
    const/4 v1, 0x0

    .line 77
    :goto_1
    if-ge v1, v0, :cond_1

    .line 78
    .line 79
    aget-object v2, p1, v1

    .line 80
    .line 81
    iget-object v3, p0, Lq4/b;->f:Ljava/util/ArrayList;

    .line 82
    .line 83
    new-instance v4, Lq4/h;

    .line 84
    .line 85
    invoke-direct {v4, p0, v2}, Lq4/h;-><init>(Lq4/b;Lq4/j;)V

    .line 86
    .line 87
    .line 88
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 89
    .line 90
    .line 91
    add-int/lit8 v1, v1, 0x1

    .line 92
    .line 93
    goto :goto_1

    .line 94
    :cond_1
    new-instance p1, Lq4/g;

    .line 95
    .line 96
    invoke-direct {p1}, Lq4/g;-><init>()V

    .line 97
    .line 98
    .line 99
    iput-object p1, p0, Lq4/b;->c:Lq4/g;

    .line 100
    .line 101
    invoke-virtual {p0, p1}, Lq4/b;->b(Lq4/g;)V

    .line 102
    .line 103
    .line 104
    iget-object p1, p0, Lq4/b;->c:Lq4/g;

    .line 105
    .line 106
    const/4 v0, 0x1

    .line 107
    iput-boolean v0, p1, Lq4/g;->c:Z

    .line 108
    .line 109
    return-void
.end method

.method public static d(Lq4/h;Lq4/j;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lq4/h;->b:Lq4/j;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lq4/j;->equals(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 11
    .line 12
    new-instance v1, Ljava/lang/StringBuilder;

    .line 13
    .line 14
    const-string v2, "requested "

    .line 15
    .line 16
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    const-string p1, " but was "

    .line 23
    .line 24
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    iget-object p0, p0, Lq4/h;->b:Lq4/j;

    .line 28
    .line 29
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    throw v0
.end method


# virtual methods
.method public final a(Lw4/f;Lq4/g;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lq4/b;->c:Lq4/g;

    .line 2
    .line 3
    if-eqz v0, :cond_a

    .line 4
    .line 5
    iget-boolean v1, v0, Lq4/g;->c:Z

    .line 6
    .line 7
    if-eqz v1, :cond_a

    .line 8
    .line 9
    iget-object v0, v0, Lq4/g;->a:Ljava/util/ArrayList;

    .line 10
    .line 11
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    iget-object p1, p1, Lw4/f;->a:Lw4/n;

    .line 15
    .line 16
    iget p1, p1, Lw4/n;->e:I

    .line 17
    .line 18
    const/4 v0, 0x1

    .line 19
    const-string v1, "unexpected branch: "

    .line 20
    .line 21
    if-eq p1, v0, :cond_8

    .line 22
    .line 23
    const/4 v2, 0x2

    .line 24
    const/4 v3, 0x0

    .line 25
    if-eq p1, v2, :cond_6

    .line 26
    .line 27
    const/4 v2, 0x3

    .line 28
    const-string v4, "branch == null"

    .line 29
    .line 30
    if-eq p1, v2, :cond_4

    .line 31
    .line 32
    const/4 v2, 0x4

    .line 33
    if-eq p1, v2, :cond_2

    .line 34
    .line 35
    const/4 v2, 0x6

    .line 36
    if-ne p1, v2, :cond_1

    .line 37
    .line 38
    if-nez p2, :cond_0

    .line 39
    .line 40
    new-instance p1, Ljava/util/ArrayList;

    .line 41
    .line 42
    iget-object p2, p0, Lq4/b;->i:Ljava/util/ArrayList;

    .line 43
    .line 44
    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 45
    .line 46
    .line 47
    new-instance p2, Lq4/g;

    .line 48
    .line 49
    invoke-direct {p2}, Lq4/g;-><init>()V

    .line 50
    .line 51
    .line 52
    invoke-virtual {p0, p2}, Lq4/b;->b(Lq4/g;)V

    .line 53
    .line 54
    .line 55
    iget-object v1, p0, Lq4/b;->c:Lq4/g;

    .line 56
    .line 57
    iput-object p2, v1, Lq4/g;->e:Lq4/g;

    .line 58
    .line 59
    iput-object v3, v1, Lq4/g;->f:Lq4/g;

    .line 60
    .line 61
    iput-object p1, v1, Lq4/g;->d:Ljava/util/List;

    .line 62
    .line 63
    iput-object p2, p0, Lq4/b;->c:Lq4/g;

    .line 64
    .line 65
    iput-boolean v0, p2, Lq4/g;->c:Z

    .line 66
    .line 67
    goto :goto_0

    .line 68
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 69
    .line 70
    new-instance v0, Ljava/lang/StringBuilder;

    .line 71
    .line 72
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object p2

    .line 82
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    throw p1

    .line 86
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 87
    .line 88
    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    .line 89
    .line 90
    .line 91
    throw p1

    .line 92
    :cond_2
    if-eqz p2, :cond_3

    .line 93
    .line 94
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 95
    .line 96
    .line 97
    move-result-object p1

    .line 98
    new-instance v1, Lq4/g;

    .line 99
    .line 100
    invoke-direct {v1}, Lq4/g;-><init>()V

    .line 101
    .line 102
    .line 103
    invoke-virtual {p0, v1}, Lq4/b;->b(Lq4/g;)V

    .line 104
    .line 105
    .line 106
    iget-object v2, p0, Lq4/b;->c:Lq4/g;

    .line 107
    .line 108
    iput-object v1, v2, Lq4/g;->e:Lq4/g;

    .line 109
    .line 110
    iput-object p2, v2, Lq4/g;->f:Lq4/g;

    .line 111
    .line 112
    iput-object p1, v2, Lq4/g;->d:Ljava/util/List;

    .line 113
    .line 114
    iput-object v1, p0, Lq4/b;->c:Lq4/g;

    .line 115
    .line 116
    iput-boolean v0, v1, Lq4/g;->c:Z

    .line 117
    .line 118
    goto :goto_0

    .line 119
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 120
    .line 121
    invoke-direct {p1, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 122
    .line 123
    .line 124
    throw p1

    .line 125
    :cond_4
    if-eqz p2, :cond_5

    .line 126
    .line 127
    iget-object p1, p0, Lq4/b;->c:Lq4/g;

    .line 128
    .line 129
    iput-object p2, p1, Lq4/g;->e:Lq4/g;

    .line 130
    .line 131
    iput-object v3, p0, Lq4/b;->c:Lq4/g;

    .line 132
    .line 133
    goto :goto_0

    .line 134
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 135
    .line 136
    invoke-direct {p1, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 137
    .line 138
    .line 139
    throw p1

    .line 140
    :cond_6
    if-nez p2, :cond_7

    .line 141
    .line 142
    iput-object v3, p0, Lq4/b;->c:Lq4/g;

    .line 143
    .line 144
    :goto_0
    return-void

    .line 145
    :cond_7
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 146
    .line 147
    new-instance v0, Ljava/lang/StringBuilder;

    .line 148
    .line 149
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 150
    .line 151
    .line 152
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 153
    .line 154
    .line 155
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 156
    .line 157
    .line 158
    move-result-object p2

    .line 159
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 160
    .line 161
    .line 162
    throw p1

    .line 163
    :cond_8
    if-nez p2, :cond_9

    .line 164
    .line 165
    return-void

    .line 166
    :cond_9
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 167
    .line 168
    new-instance v0, Ljava/lang/StringBuilder;

    .line 169
    .line 170
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 171
    .line 172
    .line 173
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 174
    .line 175
    .line 176
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 177
    .line 178
    .line 179
    move-result-object p2

    .line 180
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 181
    .line 182
    .line 183
    throw p1

    .line 184
    :cond_a
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 185
    .line 186
    const-string p2, "no current label"

    .line 187
    .line 188
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 189
    .line 190
    .line 191
    throw p1
.end method

.method public final b(Lq4/g;)V
    .locals 1

    .line 1
    iget-object v0, p1, Lq4/g;->b:Lq4/b;

    .line 2
    .line 3
    if-ne v0, p0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    if-nez v0, :cond_1

    .line 7
    .line 8
    iput-object p0, p1, Lq4/g;->b:Lq4/b;

    .line 9
    .line 10
    iget-object v0, p0, Lq4/b;->b:Ljava/util/ArrayList;

    .line 11
    .line 12
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    return-void

    .line 16
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 17
    .line 18
    const-string v0, "Cannot adopt label; it belongs to another Code"

    .line 19
    .line 20
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    throw p1
.end method

.method public final c(Lq4/h;Lq4/h;)V
    .locals 11

    .line 1
    iget-object v0, p2, Lq4/h;->b:Lq4/j;

    .line 2
    .line 3
    iget-object v0, v0, Lq4/j;->b:Ly4/c;

    .line 4
    .line 5
    iget v1, v0, Ly4/c;->b:I

    .line 6
    .line 7
    const/16 v2, 0x9

    .line 8
    .line 9
    const/4 v3, 0x1

    .line 10
    if-ne v1, v2, :cond_0

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
    const/4 v4, 0x0

    .line 16
    if-eqz v2, :cond_1

    .line 17
    .line 18
    new-instance v0, Lw4/q;

    .line 19
    .line 20
    sget-object v6, Lw4/o;->L1:Lw4/n;

    .line 21
    .line 22
    invoke-virtual {p2}, Lq4/h;->a()Lw4/k;

    .line 23
    .line 24
    .line 25
    move-result-object p2

    .line 26
    invoke-static {p2}, Lw4/l;->g(Lw4/k;)Lw4/l;

    .line 27
    .line 28
    .line 29
    move-result-object v8

    .line 30
    iget-object p2, p1, Lq4/h;->b:Lq4/j;

    .line 31
    .line 32
    iget-object v10, p2, Lq4/j;->c:Lx4/u;

    .line 33
    .line 34
    iget-object v7, p0, Lq4/b;->h:Lw4/p;

    .line 35
    .line 36
    iget-object v9, p0, Lq4/b;->j:Ly4/b;

    .line 37
    .line 38
    move-object v5, v0

    .line 39
    invoke-direct/range {v5 .. v10}, Lw4/q;-><init>(Lw4/n;Lw4/p;Lw4/l;Ly4/e;Lx4/a;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {p0, v0, v4}, Lq4/b;->a(Lw4/f;Lq4/g;)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {p0, p1, v3}, Lq4/b;->j(Lq4/h;Z)V

    .line 46
    .line 47
    .line 48
    goto/16 :goto_6

    .line 49
    .line 50
    :cond_1
    new-instance v2, Lw4/i;

    .line 51
    .line 52
    iget-object v3, p1, Lq4/h;->b:Lq4/j;

    .line 53
    .line 54
    iget-object v3, v3, Lq4/j;->b:Ly4/c;

    .line 55
    .line 56
    const/4 v5, 0x6

    .line 57
    if-ne v1, v5, :cond_5

    .line 58
    .line 59
    iget v1, v3, Ly4/c;->b:I

    .line 60
    .line 61
    const/4 v6, 0x2

    .line 62
    if-eq v1, v6, :cond_4

    .line 63
    .line 64
    const/4 v6, 0x3

    .line 65
    if-eq v1, v6, :cond_3

    .line 66
    .line 67
    const/16 v6, 0x8

    .line 68
    .line 69
    if-eq v1, v6, :cond_2

    .line 70
    .line 71
    goto :goto_1

    .line 72
    :cond_2
    sget-object v0, Lw4/o;->Z0:Lw4/n;

    .line 73
    .line 74
    goto/16 :goto_5

    .line 75
    .line 76
    :cond_3
    sget-object v0, Lw4/o;->Y0:Lw4/n;

    .line 77
    .line 78
    goto/16 :goto_5

    .line 79
    .line 80
    :cond_4
    sget-object v0, Lw4/o;->X0:Lw4/n;

    .line 81
    .line 82
    goto/16 :goto_5

    .line 83
    .line 84
    :cond_5
    :goto_1
    sget-object v1, Lw4/o;->a:Lw4/n;

    .line 85
    .line 86
    invoke-virtual {v3}, Ly4/c;->b()I

    .line 87
    .line 88
    .line 89
    move-result v1

    .line 90
    invoke-virtual {v0}, Ly4/c;->b()I

    .line 91
    .line 92
    .line 93
    move-result v6

    .line 94
    const/4 v7, 0x7

    .line 95
    const/4 v8, 0x5

    .line 96
    const/4 v9, 0x4

    .line 97
    if-eq v6, v9, :cond_11

    .line 98
    .line 99
    if-eq v6, v8, :cond_d

    .line 100
    .line 101
    if-eq v6, v5, :cond_6

    .line 102
    .line 103
    if-ne v6, v7, :cond_12

    .line 104
    .line 105
    goto :goto_2

    .line 106
    :cond_6
    if-eq v1, v9, :cond_c

    .line 107
    .line 108
    if-eq v1, v8, :cond_b

    .line 109
    .line 110
    if-eq v1, v7, :cond_a

    .line 111
    .line 112
    :goto_2
    if-eq v1, v9, :cond_9

    .line 113
    .line 114
    if-eq v1, v8, :cond_8

    .line 115
    .line 116
    if-eq v1, v5, :cond_7

    .line 117
    .line 118
    goto :goto_3

    .line 119
    :cond_7
    sget-object v0, Lw4/o;->L0:Lw4/n;

    .line 120
    .line 121
    goto :goto_5

    .line 122
    :cond_8
    sget-object v0, Lw4/o;->S0:Lw4/n;

    .line 123
    .line 124
    goto :goto_5

    .line 125
    :cond_9
    sget-object v0, Lw4/o;->V0:Lw4/n;

    .line 126
    .line 127
    goto :goto_5

    .line 128
    :cond_a
    sget-object v0, Lw4/o;->O0:Lw4/n;

    .line 129
    .line 130
    goto :goto_5

    .line 131
    :cond_b
    sget-object v0, Lw4/o;->R0:Lw4/n;

    .line 132
    .line 133
    goto :goto_5

    .line 134
    :cond_c
    sget-object v0, Lw4/o;->U0:Lw4/n;

    .line 135
    .line 136
    goto :goto_5

    .line 137
    :cond_d
    :goto_3
    if-eq v1, v9, :cond_10

    .line 138
    .line 139
    if-eq v1, v5, :cond_f

    .line 140
    .line 141
    if-eq v1, v7, :cond_e

    .line 142
    .line 143
    goto :goto_4

    .line 144
    :cond_e
    sget-object v0, Lw4/o;->P0:Lw4/n;

    .line 145
    .line 146
    goto :goto_5

    .line 147
    :cond_f
    sget-object v0, Lw4/o;->M0:Lw4/n;

    .line 148
    .line 149
    goto :goto_5

    .line 150
    :cond_10
    sget-object v0, Lw4/o;->W0:Lw4/n;

    .line 151
    .line 152
    goto :goto_5

    .line 153
    :cond_11
    :goto_4
    if-eq v1, v8, :cond_14

    .line 154
    .line 155
    if-eq v1, v5, :cond_13

    .line 156
    .line 157
    if-ne v1, v7, :cond_12

    .line 158
    .line 159
    sget-object v0, Lw4/o;->Q0:Lw4/n;

    .line 160
    .line 161
    goto :goto_5

    .line 162
    :cond_12
    invoke-static {v3, v0}, Ly4/b;->h(Ly4/c;Ly4/c;)Ly4/b;

    .line 163
    .line 164
    .line 165
    move-result-object p1

    .line 166
    new-instance p2, Ljava/lang/IllegalArgumentException;

    .line 167
    .line 168
    new-instance v0, Ljava/lang/StringBuilder;

    .line 169
    .line 170
    const-string v1, "bad types: "

    .line 171
    .line 172
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 173
    .line 174
    .line 175
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 176
    .line 177
    .line 178
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 179
    .line 180
    .line 181
    move-result-object p1

    .line 182
    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 183
    .line 184
    .line 185
    throw p2

    .line 186
    :cond_13
    sget-object v0, Lw4/o;->N0:Lw4/n;

    .line 187
    .line 188
    goto :goto_5

    .line 189
    :cond_14
    sget-object v0, Lw4/o;->T0:Lw4/n;

    .line 190
    .line 191
    :goto_5
    invoke-virtual {p1}, Lq4/h;->a()Lw4/k;

    .line 192
    .line 193
    .line 194
    move-result-object p1

    .line 195
    invoke-virtual {p2}, Lq4/h;->a()Lw4/k;

    .line 196
    .line 197
    .line 198
    move-result-object p2

    .line 199
    invoke-static {p2}, Lw4/l;->g(Lw4/k;)Lw4/l;

    .line 200
    .line 201
    .line 202
    move-result-object p2

    .line 203
    iget-object v1, p0, Lq4/b;->h:Lw4/p;

    .line 204
    .line 205
    invoke-direct {v2, v0, v1, p1, p2}, Lw4/i;-><init>(Lw4/n;Lw4/p;Lw4/k;Lw4/l;)V

    .line 206
    .line 207
    .line 208
    invoke-virtual {p0, v2, v4}, Lq4/b;->a(Lw4/f;Lq4/g;)V

    .line 209
    .line 210
    .line 211
    :goto_6
    return-void
.end method

.method public final e(ILq4/j;)Lq4/h;
    .locals 1

    .line 1
    iget-object v0, p0, Lq4/b;->e:Lq4/h;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    add-int/lit8 p1, p1, 0x1

    .line 6
    .line 7
    :cond_0
    iget-object v0, p0, Lq4/b;->f:Ljava/util/ArrayList;

    .line 8
    .line 9
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    check-cast p1, Lq4/h;

    .line 14
    .line 15
    invoke-static {p1, p2}, Lq4/b;->d(Lq4/h;Lq4/j;)V

    .line 16
    .line 17
    .line 18
    return-object p1
.end method

.method public final f()V
    .locals 14

    .line 1
    iget-boolean v0, p0, Lq4/b;->d:Z

    .line 2
    .line 3
    if-nez v0, :cond_7

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    iput-boolean v0, p0, Lq4/b;->d:Z

    .line 7
    .line 8
    iget-object v0, p0, Lq4/b;->g:Ljava/util/ArrayList;

    .line 9
    .line 10
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    const/4 v1, 0x0

    .line 15
    const/4 v2, 0x0

    .line 16
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 17
    .line 18
    .line 19
    move-result v3

    .line 20
    if-eqz v3, :cond_0

    .line 21
    .line 22
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v3

    .line 26
    check-cast v3, Lq4/h;

    .line 27
    .line 28
    iput v2, v3, Lq4/h;->c:I

    .line 29
    .line 30
    iget-object v4, v3, Lq4/h;->b:Lq4/j;

    .line 31
    .line 32
    iget-object v5, v4, Lq4/j;->b:Ly4/c;

    .line 33
    .line 34
    invoke-static {v2, v5}, Lw4/k;->d(ILy4/c;)Lw4/k;

    .line 35
    .line 36
    .line 37
    move-result-object v5

    .line 38
    iput-object v5, v3, Lq4/h;->d:Lw4/k;

    .line 39
    .line 40
    iget-object v3, v4, Lq4/j;->b:Ly4/c;

    .line 41
    .line 42
    invoke-virtual {v3}, Ly4/c;->c()I

    .line 43
    .line 44
    .line 45
    move-result v3

    .line 46
    add-int/2addr v2, v3

    .line 47
    goto :goto_0

    .line 48
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    .line 49
    .line 50
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 51
    .line 52
    .line 53
    iget-object v3, p0, Lq4/b;->f:Ljava/util/ArrayList;

    .line 54
    .line 55
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 56
    .line 57
    .line 58
    move-result-object v3

    .line 59
    move v4, v2

    .line 60
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 61
    .line 62
    .line 63
    move-result v5

    .line 64
    if-eqz v5, :cond_6

    .line 65
    .line 66
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    move-result-object v5

    .line 70
    check-cast v5, Lq4/h;

    .line 71
    .line 72
    sub-int v6, v4, v2

    .line 73
    .line 74
    invoke-static {v6}, Lx4/j;->h(I)Lx4/j;

    .line 75
    .line 76
    .line 77
    move-result-object v12

    .line 78
    iput v4, v5, Lq4/h;->c:I

    .line 79
    .line 80
    iget-object v6, v5, Lq4/h;->b:Lq4/j;

    .line 81
    .line 82
    iget-object v7, v6, Lq4/j;->b:Ly4/c;

    .line 83
    .line 84
    invoke-static {v4, v7}, Lw4/k;->d(ILy4/c;)Lw4/k;

    .line 85
    .line 86
    .line 87
    move-result-object v7

    .line 88
    iput-object v7, v5, Lq4/h;->d:Lw4/k;

    .line 89
    .line 90
    iget-object v7, v6, Lq4/j;->b:Ly4/c;

    .line 91
    .line 92
    invoke-virtual {v7}, Ly4/c;->c()I

    .line 93
    .line 94
    .line 95
    move-result v7

    .line 96
    add-int/2addr v4, v7

    .line 97
    new-instance v13, Lw4/h;

    .line 98
    .line 99
    iget-object v6, v6, Lq4/j;->b:Ly4/c;

    .line 100
    .line 101
    sget-object v7, Lw4/o;->a:Lw4/n;

    .line 102
    .line 103
    invoke-virtual {v6}, Ly4/c;->b()I

    .line 104
    .line 105
    .line 106
    move-result v7

    .line 107
    const/4 v8, 0x4

    .line 108
    if-eq v7, v8, :cond_5

    .line 109
    .line 110
    const/4 v8, 0x5

    .line 111
    if-eq v7, v8, :cond_4

    .line 112
    .line 113
    const/4 v8, 0x6

    .line 114
    if-eq v7, v8, :cond_3

    .line 115
    .line 116
    const/4 v8, 0x7

    .line 117
    if-eq v7, v8, :cond_2

    .line 118
    .line 119
    const/16 v8, 0x9

    .line 120
    .line 121
    if-ne v7, v8, :cond_1

    .line 122
    .line 123
    sget-object v6, Lw4/o;->k:Lw4/n;

    .line 124
    .line 125
    :goto_2
    move-object v8, v6

    .line 126
    goto :goto_3

    .line 127
    :cond_1
    invoke-static {v6}, Lw4/o;->a(Ly4/d;)V

    .line 128
    .line 129
    .line 130
    const/4 v0, 0x0

    .line 131
    throw v0

    .line 132
    :cond_2
    sget-object v6, Lw4/o;->h:Lw4/n;

    .line 133
    .line 134
    goto :goto_2

    .line 135
    :cond_3
    sget-object v6, Lw4/o;->g:Lw4/n;

    .line 136
    .line 137
    goto :goto_2

    .line 138
    :cond_4
    sget-object v6, Lw4/o;->i:Lw4/n;

    .line 139
    .line 140
    goto :goto_2

    .line 141
    :cond_5
    sget-object v6, Lw4/o;->j:Lw4/n;

    .line 142
    .line 143
    goto :goto_2

    .line 144
    :goto_3
    invoke-virtual {v5}, Lq4/h;->a()Lw4/k;

    .line 145
    .line 146
    .line 147
    move-result-object v10

    .line 148
    sget-object v11, Lw4/l;->c:Lw4/l;

    .line 149
    .line 150
    iget-object v9, p0, Lq4/b;->h:Lw4/p;

    .line 151
    .line 152
    move-object v7, v13

    .line 153
    invoke-direct/range {v7 .. v12}, Lw4/h;-><init>(Lw4/n;Lw4/p;Lw4/k;Lw4/l;Lx4/v;)V

    .line 154
    .line 155
    .line 156
    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 157
    .line 158
    .line 159
    goto :goto_1

    .line 160
    :cond_6
    iget-object v2, p0, Lq4/b;->b:Ljava/util/ArrayList;

    .line 161
    .line 162
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 163
    .line 164
    .line 165
    move-result-object v2

    .line 166
    check-cast v2, Lq4/g;

    .line 167
    .line 168
    iget-object v2, v2, Lq4/g;->a:Ljava/util/ArrayList;

    .line 169
    .line 170
    invoke-virtual {v2, v1, v0}, Ljava/util/ArrayList;->addAll(ILjava/util/Collection;)Z

    .line 171
    .line 172
    .line 173
    return-void

    .line 174
    :cond_7
    new-instance v0, Ljava/lang/AssertionError;

    .line 175
    .line 176
    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    .line 177
    .line 178
    .line 179
    goto :goto_5

    .line 180
    :goto_4
    throw v0

    .line 181
    :goto_5
    goto :goto_4
.end method

.method public final varargs g(Lw4/n;Lq4/i;Lq4/h;Lq4/h;[Lq4/h;)V
    .locals 8

    .line 1
    new-instance v6, Lw4/q;

    .line 2
    .line 3
    const/4 v7, 0x0

    .line 4
    if-eqz p4, :cond_0

    .line 5
    .line 6
    const/4 v0, 0x1

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 v0, 0x0

    .line 9
    :goto_0
    new-instance v3, Lw4/l;

    .line 10
    .line 11
    array-length v1, p5

    .line 12
    add-int/2addr v1, v0

    .line 13
    invoke-direct {v3, v1}, Lw4/l;-><init>(I)V

    .line 14
    .line 15
    .line 16
    if-eqz p4, :cond_1

    .line 17
    .line 18
    invoke-virtual {p4}, Lq4/h;->a()Lw4/k;

    .line 19
    .line 20
    .line 21
    move-result-object p4

    .line 22
    invoke-virtual {v3, v7, p4}, Lb5/c;->e(ILjava/lang/Object;)V

    .line 23
    .line 24
    .line 25
    :cond_1
    const/4 p4, 0x0

    .line 26
    :goto_1
    array-length v1, p5

    .line 27
    if-ge p4, v1, :cond_2

    .line 28
    .line 29
    add-int v1, p4, v0

    .line 30
    .line 31
    aget-object v2, p5, p4

    .line 32
    .line 33
    invoke-virtual {v2}, Lq4/h;->a()Lw4/k;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    invoke-virtual {v3, v1, v2}, Lb5/c;->e(ILjava/lang/Object;)V

    .line 38
    .line 39
    .line 40
    add-int/lit8 p4, p4, 0x1

    .line 41
    .line 42
    goto :goto_1

    .line 43
    :cond_2
    iget-object v4, p0, Lq4/b;->j:Ly4/b;

    .line 44
    .line 45
    iget-object v5, p2, Lq4/i;->e:Lx4/q;

    .line 46
    .line 47
    iget-object v2, p0, Lq4/b;->h:Lw4/p;

    .line 48
    .line 49
    move-object v0, v6

    .line 50
    move-object v1, p1

    .line 51
    invoke-direct/range {v0 .. v5}, Lw4/q;-><init>(Lw4/n;Lw4/p;Lw4/l;Ly4/e;Lx4/a;)V

    .line 52
    .line 53
    .line 54
    const/4 p1, 0x0

    .line 55
    invoke-virtual {p0, v6, p1}, Lq4/b;->a(Lw4/f;Lq4/g;)V

    .line 56
    .line 57
    .line 58
    if-eqz p3, :cond_3

    .line 59
    .line 60
    invoke-virtual {p0, p3, v7}, Lq4/b;->j(Lq4/h;Z)V

    .line 61
    .line 62
    .line 63
    :cond_3
    return-void
.end method

.method public final varargs h(Lq4/i;Lq4/h;Lq4/h;[Lq4/h;)V
    .locals 9

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-virtual {p1, v0}, Lq4/i;->a(Z)Ljava/lang/String;

    .line 3
    .line 4
    .line 5
    move-result-object v0

    .line 6
    if-eqz v0, :cond_2

    .line 7
    .line 8
    sget-object v1, Ly4/a;->e:Lj$/util/concurrent/ConcurrentHashMap;

    .line 9
    .line 10
    invoke-virtual {v1, v0}, Lj$/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    check-cast v2, Ly4/a;

    .line 15
    .line 16
    if-eqz v2, :cond_0

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    invoke-static {v0}, Ly4/a;->b(Ljava/lang/String;)Ly4/a;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    iget-object v2, v0, Ly4/a;->a:Ljava/lang/String;

    .line 24
    .line 25
    invoke-virtual {v1, v2, v0}, Lj$/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    check-cast v1, Ly4/a;

    .line 30
    .line 31
    if-eqz v1, :cond_1

    .line 32
    .line 33
    move-object v2, v1

    .line 34
    goto :goto_0

    .line 35
    :cond_1
    move-object v2, v0

    .line 36
    :goto_0
    sget-object v0, Lw4/o;->a:Lw4/n;

    .line 37
    .line 38
    new-instance v4, Lw4/n;

    .line 39
    .line 40
    invoke-virtual {v2}, Ly4/a;->c()Ly4/b;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    sget-object v1, Ly4/b;->j:Ly4/b;

    .line 45
    .line 46
    const/16 v2, 0x33

    .line 47
    .line 48
    invoke-direct {v4, v2, v0, v1}, Lw4/n;-><init>(ILy4/b;Ly4/b;)V

    .line 49
    .line 50
    .line 51
    move-object v3, p0

    .line 52
    move-object v5, p1

    .line 53
    move-object v6, p2

    .line 54
    move-object v7, p3

    .line 55
    move-object v8, p4

    .line 56
    invoke-virtual/range {v3 .. v8}, Lq4/b;->g(Lw4/n;Lq4/i;Lq4/h;Lq4/h;[Lq4/h;)V

    .line 57
    .line 58
    .line 59
    return-void

    .line 60
    :cond_2
    sget-object p1, Ly4/a;->e:Lj$/util/concurrent/ConcurrentHashMap;

    .line 61
    .line 62
    new-instance p1, Ljava/lang/NullPointerException;

    .line 63
    .line 64
    const-string p2, "descriptor == null"

    .line 65
    .line 66
    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    throw p1
.end method

.method public final i(Lq4/h;Ljava/lang/Object;)V
    .locals 9

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p2, :cond_0

    .line 3
    .line 4
    sget-object v1, Lw4/o;->q:Lw4/n;

    .line 5
    .line 6
    :goto_0
    move-object v3, v1

    .line 7
    goto :goto_1

    .line 8
    :cond_0
    iget-object v1, p1, Lq4/h;->b:Lq4/j;

    .line 9
    .line 10
    iget-object v1, v1, Lq4/j;->b:Ly4/c;

    .line 11
    .line 12
    sget-object v2, Lw4/o;->a:Lw4/n;

    .line 13
    .line 14
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    .line 16
    .line 17
    sget-object v2, Ly4/c;->q:Ly4/c;

    .line 18
    .line 19
    if-ne v1, v2, :cond_1

    .line 20
    .line 21
    sget-object v1, Lw4/o;->q:Lw4/n;

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_1
    invoke-virtual {v1}, Ly4/c;->b()I

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    const/4 v3, 0x4

    .line 29
    if-eq v2, v3, :cond_6

    .line 30
    .line 31
    const/4 v3, 0x5

    .line 32
    if-eq v2, v3, :cond_5

    .line 33
    .line 34
    const/4 v3, 0x6

    .line 35
    if-eq v2, v3, :cond_4

    .line 36
    .line 37
    const/4 v3, 0x7

    .line 38
    if-eq v2, v3, :cond_3

    .line 39
    .line 40
    const/16 v3, 0x9

    .line 41
    .line 42
    if-ne v2, v3, :cond_2

    .line 43
    .line 44
    sget-object v1, Lw4/o;->p:Lw4/n;

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_2
    invoke-static {v1}, Lw4/o;->a(Ly4/d;)V

    .line 48
    .line 49
    .line 50
    throw v0

    .line 51
    :cond_3
    sget-object v1, Lw4/o;->m:Lw4/n;

    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_4
    sget-object v1, Lw4/o;->l:Lw4/n;

    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_5
    sget-object v1, Lw4/o;->n:Lw4/n;

    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_6
    sget-object v1, Lw4/o;->o:Lw4/n;

    .line 61
    .line 62
    goto :goto_0

    .line 63
    :goto_1
    iget v1, v3, Lw4/n;->e:I

    .line 64
    .line 65
    const/4 v8, 0x1

    .line 66
    if-ne v1, v8, :cond_7

    .line 67
    .line 68
    new-instance v1, Lw4/h;

    .line 69
    .line 70
    invoke-virtual {p1}, Lq4/h;->a()Lw4/k;

    .line 71
    .line 72
    .line 73
    move-result-object v5

    .line 74
    sget-object v6, Lw4/l;->c:Lw4/l;

    .line 75
    .line 76
    invoke-static {p2}, Lcom/bumptech/glide/d;->v(Ljava/lang/Object;)Lx4/v;

    .line 77
    .line 78
    .line 79
    move-result-object v7

    .line 80
    iget-object v4, p0, Lq4/b;->h:Lw4/p;

    .line 81
    .line 82
    move-object v2, v1

    .line 83
    invoke-direct/range {v2 .. v7}, Lw4/h;-><init>(Lw4/n;Lw4/p;Lw4/k;Lw4/l;Lx4/v;)V

    .line 84
    .line 85
    .line 86
    invoke-virtual {p0, v1, v0}, Lq4/b;->a(Lw4/f;Lq4/g;)V

    .line 87
    .line 88
    .line 89
    goto :goto_2

    .line 90
    :cond_7
    new-instance v1, Lw4/q;

    .line 91
    .line 92
    sget-object v5, Lw4/l;->c:Lw4/l;

    .line 93
    .line 94
    invoke-static {p2}, Lcom/bumptech/glide/d;->v(Ljava/lang/Object;)Lx4/v;

    .line 95
    .line 96
    .line 97
    move-result-object v7

    .line 98
    iget-object v4, p0, Lq4/b;->h:Lw4/p;

    .line 99
    .line 100
    iget-object v6, p0, Lq4/b;->j:Ly4/b;

    .line 101
    .line 102
    move-object v2, v1

    .line 103
    invoke-direct/range {v2 .. v7}, Lw4/q;-><init>(Lw4/n;Lw4/p;Lw4/l;Ly4/e;Lx4/a;)V

    .line 104
    .line 105
    .line 106
    invoke-virtual {p0, v1, v0}, Lq4/b;->a(Lw4/f;Lq4/g;)V

    .line 107
    .line 108
    .line 109
    invoke-virtual {p0, p1, v8}, Lq4/b;->j(Lq4/h;Z)V

    .line 110
    .line 111
    .line 112
    :goto_2
    return-void
.end method

.method public final j(Lq4/h;Z)V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p2, :cond_0

    .line 3
    .line 4
    iget-object p2, p1, Lq4/h;->b:Lq4/j;

    .line 5
    .line 6
    iget-object p2, p2, Lq4/j;->b:Ly4/c;

    .line 7
    .line 8
    sget-object v1, Lw4/o;->a:Lw4/n;

    .line 9
    .line 10
    new-instance v1, Lw4/n;

    .line 11
    .line 12
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    sget-object v2, Ly4/b;->c:Ly4/b;

    .line 16
    .line 17
    const/16 v3, 0x38

    .line 18
    .line 19
    invoke-direct {v1, v3, p2, v2, v0}, Lw4/n;-><init>(ILy4/c;Ly4/e;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    iget-object p2, p1, Lq4/h;->b:Lq4/j;

    .line 24
    .line 25
    iget-object p2, p2, Lq4/j;->b:Ly4/c;

    .line 26
    .line 27
    sget-object v1, Lw4/o;->a:Lw4/n;

    .line 28
    .line 29
    new-instance v1, Lw4/n;

    .line 30
    .line 31
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 32
    .line 33
    .line 34
    sget-object v2, Ly4/b;->c:Ly4/b;

    .line 35
    .line 36
    const/16 v3, 0x37

    .line 37
    .line 38
    invoke-direct {v1, v3, p2, v2, v0}, Lw4/n;-><init>(ILy4/c;Ly4/e;Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    :goto_0
    new-instance p2, Lw4/i;

    .line 42
    .line 43
    invoke-virtual {p1}, Lq4/h;->a()Lw4/k;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    sget-object v2, Lw4/l;->c:Lw4/l;

    .line 48
    .line 49
    iget-object v3, p0, Lq4/b;->h:Lw4/p;

    .line 50
    .line 51
    invoke-direct {p2, v1, v3, p1, v2}, Lw4/i;-><init>(Lw4/n;Lw4/p;Lw4/k;Lw4/l;)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {p0, p2, v0}, Lq4/b;->a(Lw4/f;Lq4/g;)V

    .line 55
    .line 56
    .line 57
    return-void
.end method

.method public final k(Lq4/j;)Lq4/h;
    .locals 1

    .line 1
    iget-boolean v0, p0, Lq4/b;->d:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lq4/h;

    .line 6
    .line 7
    invoke-direct {v0, p0, p1}, Lq4/h;-><init>(Lq4/b;Lq4/j;)V

    .line 8
    .line 9
    .line 10
    iget-object p1, p0, Lq4/b;->g:Ljava/util/ArrayList;

    .line 11
    .line 12
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    return-object v0

    .line 16
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 17
    .line 18
    const-string v0, "Cannot allocate locals after adding instructions"

    .line 19
    .line 20
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    throw p1
.end method

.method public final l(Lq4/h;)V
    .locals 5

    .line 1
    iget-object v0, p1, Lq4/h;->b:Lq4/j;

    .line 2
    .line 3
    iget-object v1, p0, Lq4/b;->a:Lq4/i;

    .line 4
    .line 5
    iget-object v2, v1, Lq4/i;->b:Lq4/j;

    .line 6
    .line 7
    invoke-virtual {v0, v2}, Lq4/j;->equals(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    iget-object v2, p1, Lq4/h;->b:Lq4/j;

    .line 12
    .line 13
    if-eqz v0, :cond_6

    .line 14
    .line 15
    new-instance v0, Lw4/i;

    .line 16
    .line 17
    iget-object v1, v2, Lq4/j;->b:Ly4/c;

    .line 18
    .line 19
    sget-object v2, Lw4/o;->a:Lw4/n;

    .line 20
    .line 21
    invoke-virtual {v1}, Ly4/c;->b()I

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    const/4 v3, 0x0

    .line 26
    if-eqz v2, :cond_5

    .line 27
    .line 28
    const/16 v4, 0x9

    .line 29
    .line 30
    if-eq v2, v4, :cond_4

    .line 31
    .line 32
    const/4 v4, 0x4

    .line 33
    if-eq v2, v4, :cond_3

    .line 34
    .line 35
    const/4 v4, 0x5

    .line 36
    if-eq v2, v4, :cond_2

    .line 37
    .line 38
    const/4 v4, 0x6

    .line 39
    if-eq v2, v4, :cond_1

    .line 40
    .line 41
    const/4 v4, 0x7

    .line 42
    if-ne v2, v4, :cond_0

    .line 43
    .line 44
    sget-object v1, Lw4/o;->c1:Lw4/n;

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_0
    invoke-static {v1}, Lw4/o;->a(Ly4/d;)V

    .line 48
    .line 49
    .line 50
    throw v3

    .line 51
    :cond_1
    sget-object v1, Lw4/o;->b1:Lw4/n;

    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_2
    sget-object v1, Lw4/o;->d1:Lw4/n;

    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_3
    sget-object v1, Lw4/o;->e1:Lw4/n;

    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_4
    sget-object v1, Lw4/o;->f1:Lw4/n;

    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_5
    sget-object v1, Lw4/o;->a1:Lw4/n;

    .line 64
    .line 65
    :goto_0
    invoke-virtual {p1}, Lq4/h;->a()Lw4/k;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    invoke-static {p1}, Lw4/l;->g(Lw4/k;)Lw4/l;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    iget-object v2, p0, Lq4/b;->h:Lw4/p;

    .line 74
    .line 75
    invoke-direct {v0, v1, v2, v3, p1}, Lw4/i;-><init>(Lw4/n;Lw4/p;Lw4/k;Lw4/l;)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {p0, v0, v3}, Lq4/b;->a(Lw4/f;Lq4/g;)V

    .line 79
    .line 80
    .line 81
    return-void

    .line 82
    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 83
    .line 84
    new-instance v0, Ljava/lang/StringBuilder;

    .line 85
    .line 86
    const-string v3, "declared "

    .line 87
    .line 88
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    iget-object v1, v1, Lq4/i;->b:Lq4/j;

    .line 92
    .line 93
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    const-string v1, " but returned "

    .line 97
    .line 98
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v0

    .line 108
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 109
    .line 110
    .line 111
    throw p1
.end method

.method public final m()V
    .locals 5

    .line 1
    iget-object v0, p0, Lq4/b;->a:Lq4/i;

    .line 2
    .line 3
    iget-object v1, v0, Lq4/i;->b:Lq4/j;

    .line 4
    .line 5
    sget-object v2, Lq4/j;->l:Lq4/j;

    .line 6
    .line 7
    invoke-virtual {v1, v2}, Lq4/j;->equals(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    new-instance v0, Lw4/i;

    .line 14
    .line 15
    sget-object v1, Lw4/o;->a1:Lw4/n;

    .line 16
    .line 17
    iget-object v2, p0, Lq4/b;->h:Lw4/p;

    .line 18
    .line 19
    sget-object v3, Lw4/l;->c:Lw4/l;

    .line 20
    .line 21
    const/4 v4, 0x0

    .line 22
    invoke-direct {v0, v1, v2, v4, v3}, Lw4/i;-><init>(Lw4/n;Lw4/p;Lw4/k;Lw4/l;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0, v0, v4}, Lq4/b;->a(Lw4/f;Lq4/g;)V

    .line 26
    .line 27
    .line 28
    return-void

    .line 29
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 30
    .line 31
    new-instance v2, Ljava/lang/StringBuilder;

    .line 32
    .line 33
    const-string v3, "declared "

    .line 34
    .line 35
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    iget-object v0, v0, Lq4/i;->b:Lq4/j;

    .line 39
    .line 40
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    const-string v0, " but returned void"

    .line 44
    .line 45
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    throw v1
.end method
