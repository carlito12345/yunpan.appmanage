.class public final Lc8/p;
.super Lz7/a0;
.source "SourceFile"


# instance fields
.field public final a:Lc8/b0;

.field public final b:Lc8/b0;

.field public final c:Lb8/o;

.field public final synthetic d:Lc8/d;


# direct methods
.method public constructor <init>(Lc8/d;Lc8/b0;Lc8/b0;Lb8/o;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lc8/p;->d:Lc8/d;

    .line 2
    .line 3
    invoke-direct {p0}, Lz7/a0;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object p2, p0, Lc8/p;->a:Lc8/b0;

    .line 7
    .line 8
    iput-object p3, p0, Lc8/p;->b:Lc8/b0;

    .line 9
    .line 10
    iput-object p4, p0, Lc8/p;->c:Lb8/o;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final b(Lh8/a;)Ljava/lang/Object;
    .locals 6

    .line 1
    invoke-virtual {p1}, Lh8/a;->e0()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/16 v1, 0x9

    .line 6
    .line 7
    if-ne v0, v1, :cond_0

    .line 8
    .line 9
    invoke-virtual {p1}, Lh8/a;->a0()V

    .line 10
    .line 11
    .line 12
    const/4 p1, 0x0

    .line 13
    goto/16 :goto_4

    .line 14
    .line 15
    :cond_0
    iget-object v2, p0, Lc8/p;->c:Lb8/o;

    .line 16
    .line 17
    invoke-interface {v2}, Lb8/o;->c()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    check-cast v2, Ljava/util/Map;

    .line 22
    .line 23
    const/4 v3, 0x1

    .line 24
    const-string v4, "duplicate key: "

    .line 25
    .line 26
    if-ne v0, v3, :cond_3

    .line 27
    .line 28
    invoke-virtual {p1}, Lh8/a;->r()V

    .line 29
    .line 30
    .line 31
    :goto_0
    invoke-virtual {p1}, Lh8/a;->R()Z

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    if-eqz v0, :cond_2

    .line 36
    .line 37
    invoke-virtual {p1}, Lh8/a;->r()V

    .line 38
    .line 39
    .line 40
    iget-object v0, p0, Lc8/p;->a:Lc8/b0;

    .line 41
    .line 42
    iget-object v0, v0, Lc8/b0;->b:Lz7/a0;

    .line 43
    .line 44
    invoke-virtual {v0, p1}, Lz7/a0;->b(Lh8/a;)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    iget-object v1, p0, Lc8/p;->b:Lc8/b0;

    .line 49
    .line 50
    iget-object v1, v1, Lc8/b0;->b:Lz7/a0;

    .line 51
    .line 52
    invoke-virtual {v1, p1}, Lz7/a0;->b(Lh8/a;)Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    if-nez v1, :cond_1

    .line 61
    .line 62
    invoke-virtual {p1}, Lh8/a;->L()V

    .line 63
    .line 64
    .line 65
    goto :goto_0

    .line 66
    :cond_1
    new-instance p1, Lz7/q;

    .line 67
    .line 68
    new-instance v1, Ljava/lang/StringBuilder;

    .line 69
    .line 70
    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    invoke-direct {p1, v0}, Lz7/q;-><init>(Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    throw p1

    .line 84
    :cond_2
    invoke-virtual {p1}, Lh8/a;->L()V

    .line 85
    .line 86
    .line 87
    goto/16 :goto_3

    .line 88
    .line 89
    :cond_3
    invoke-virtual {p1}, Lh8/a;->A()V

    .line 90
    .line 91
    .line 92
    :goto_1
    invoke-virtual {p1}, Lh8/a;->R()Z

    .line 93
    .line 94
    .line 95
    move-result v0

    .line 96
    if-eqz v0, :cond_a

    .line 97
    .line 98
    sget-object v0, Lm7/e;->c:Lm7/e;

    .line 99
    .line 100
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 101
    .line 102
    .line 103
    instance-of v0, p1, Lc8/o;

    .line 104
    .line 105
    if-eqz v0, :cond_4

    .line 106
    .line 107
    move-object v0, p1

    .line 108
    check-cast v0, Lc8/o;

    .line 109
    .line 110
    const/4 v3, 0x5

    .line 111
    invoke-virtual {v0, v3}, Lc8/o;->o0(I)V

    .line 112
    .line 113
    .line 114
    invoke-virtual {v0}, Lc8/o;->s0()Ljava/lang/Object;

    .line 115
    .line 116
    .line 117
    move-result-object v3

    .line 118
    check-cast v3, Ljava/util/Iterator;

    .line 119
    .line 120
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 121
    .line 122
    .line 123
    move-result-object v3

    .line 124
    check-cast v3, Ljava/util/Map$Entry;

    .line 125
    .line 126
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 127
    .line 128
    .line 129
    move-result-object v5

    .line 130
    invoke-virtual {v0, v5}, Lc8/o;->u0(Ljava/lang/Object;)V

    .line 131
    .line 132
    .line 133
    new-instance v5, Lz7/t;

    .line 134
    .line 135
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 136
    .line 137
    .line 138
    move-result-object v3

    .line 139
    check-cast v3, Ljava/lang/String;

    .line 140
    .line 141
    invoke-direct {v5, v3}, Lz7/t;-><init>(Ljava/lang/String;)V

    .line 142
    .line 143
    .line 144
    invoke-virtual {v0, v5}, Lc8/o;->u0(Ljava/lang/Object;)V

    .line 145
    .line 146
    .line 147
    goto :goto_2

    .line 148
    :cond_4
    iget v0, p1, Lh8/a;->g:I

    .line 149
    .line 150
    if-nez v0, :cond_5

    .line 151
    .line 152
    invoke-virtual {p1}, Lh8/a;->K()I

    .line 153
    .line 154
    .line 155
    move-result v0

    .line 156
    :cond_5
    const/16 v3, 0xd

    .line 157
    .line 158
    if-ne v0, v3, :cond_6

    .line 159
    .line 160
    iput v1, p1, Lh8/a;->g:I

    .line 161
    .line 162
    goto :goto_2

    .line 163
    :cond_6
    const/16 v3, 0xc

    .line 164
    .line 165
    if-ne v0, v3, :cond_7

    .line 166
    .line 167
    const/16 v0, 0x8

    .line 168
    .line 169
    iput v0, p1, Lh8/a;->g:I

    .line 170
    .line 171
    goto :goto_2

    .line 172
    :cond_7
    const/16 v3, 0xe

    .line 173
    .line 174
    if-ne v0, v3, :cond_9

    .line 175
    .line 176
    const/16 v0, 0xa

    .line 177
    .line 178
    iput v0, p1, Lh8/a;->g:I

    .line 179
    .line 180
    :goto_2
    iget-object v0, p0, Lc8/p;->a:Lc8/b0;

    .line 181
    .line 182
    iget-object v0, v0, Lc8/b0;->b:Lz7/a0;

    .line 183
    .line 184
    invoke-virtual {v0, p1}, Lz7/a0;->b(Lh8/a;)Ljava/lang/Object;

    .line 185
    .line 186
    .line 187
    move-result-object v0

    .line 188
    iget-object v3, p0, Lc8/p;->b:Lc8/b0;

    .line 189
    .line 190
    iget-object v3, v3, Lc8/b0;->b:Lz7/a0;

    .line 191
    .line 192
    invoke-virtual {v3, p1}, Lz7/a0;->b(Lh8/a;)Ljava/lang/Object;

    .line 193
    .line 194
    .line 195
    move-result-object v3

    .line 196
    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 197
    .line 198
    .line 199
    move-result-object v3

    .line 200
    if-nez v3, :cond_8

    .line 201
    .line 202
    goto :goto_1

    .line 203
    :cond_8
    new-instance p1, Lz7/q;

    .line 204
    .line 205
    new-instance v1, Ljava/lang/StringBuilder;

    .line 206
    .line 207
    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 208
    .line 209
    .line 210
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 211
    .line 212
    .line 213
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 214
    .line 215
    .line 216
    move-result-object v0

    .line 217
    invoke-direct {p1, v0}, Lz7/q;-><init>(Ljava/lang/String;)V

    .line 218
    .line 219
    .line 220
    throw p1

    .line 221
    :cond_9
    const-string v0, "a name"

    .line 222
    .line 223
    invoke-virtual {p1, v0}, Lh8/a;->n0(Ljava/lang/String;)Ljava/lang/IllegalStateException;

    .line 224
    .line 225
    .line 226
    move-result-object p1

    .line 227
    throw p1

    .line 228
    :cond_a
    invoke-virtual {p1}, Lh8/a;->M()V

    .line 229
    .line 230
    .line 231
    :goto_3
    move-object p1, v2

    .line 232
    :goto_4
    return-object p1
.end method

.method public final c(Lh8/b;Ljava/lang/Object;)V
    .locals 3

    .line 1
    check-cast p2, Ljava/util/Map;

    .line 2
    .line 3
    if-nez p2, :cond_0

    .line 4
    .line 5
    invoke-virtual {p1}, Lh8/b;->P()Lh8/b;

    .line 6
    .line 7
    .line 8
    goto :goto_1

    .line 9
    :cond_0
    iget-object v0, p0, Lc8/p;->d:Lc8/d;

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lc8/p;->b:Lc8/b0;

    .line 15
    .line 16
    invoke-virtual {p1}, Lh8/b;->J()V

    .line 17
    .line 18
    .line 19
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 20
    .line 21
    .line 22
    move-result-object p2

    .line 23
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 24
    .line 25
    .line 26
    move-result-object p2

    .line 27
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    if-eqz v1, :cond_1

    .line 32
    .line 33
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    check-cast v1, Ljava/util/Map$Entry;

    .line 38
    .line 39
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    invoke-virtual {p1, v2}, Lh8/b;->N(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    invoke-virtual {v0, p1, v1}, Lc8/b0;->c(Lh8/b;Ljava/lang/Object;)V

    .line 55
    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_1
    invoke-virtual {p1}, Lh8/b;->M()V

    .line 59
    .line 60
    .line 61
    :goto_1
    return-void
.end method
