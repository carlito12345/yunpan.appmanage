.class public abstract Lu4/t;
.super Lu4/f0;
.source "SourceFile"


# direct methods
.method public constructor <init>(Ljava/lang/String;Lu4/f;)V
    .locals 1

    .line 1
    const/4 v0, 0x4

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lu4/f0;-><init>(Ljava/lang/String;Lu4/f;I)V

    .line 3
    .line 4
    .line 5
    return-void
.end method


# virtual methods
.method public final k()V
    .locals 12

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    const/4 v2, 0x2

    .line 4
    invoke-virtual {p0}, Lu4/a0;->c()Ljava/util/Collection;

    .line 5
    .line 6
    .line 7
    move-result-object v3

    .line 8
    invoke-interface {v3}, Ljava/util/Collection;->size()I

    .line 9
    .line 10
    .line 11
    move-result v3

    .line 12
    const/high16 v4, 0x10000

    .line 13
    .line 14
    if-le v3, v4, :cond_5

    .line 15
    .line 16
    new-instance v3, Lo4/a;

    .line 17
    .line 18
    new-instance v5, Ljava/util/TreeMap;

    .line 19
    .line 20
    invoke-direct {v5}, Ljava/util/TreeMap;-><init>()V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0}, Lu4/a0;->c()Ljava/util/Collection;

    .line 24
    .line 25
    .line 26
    move-result-object v6

    .line 27
    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 28
    .line 29
    .line 30
    move-result-object v6

    .line 31
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 32
    .line 33
    .line 34
    move-result v7

    .line 35
    if-eqz v7, :cond_2

    .line 36
    .line 37
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v7

    .line 41
    check-cast v7, Lu4/s;

    .line 42
    .line 43
    iget-object v7, v7, Lu4/n;->b:Lx4/u;

    .line 44
    .line 45
    invoke-virtual {v7}, Lx4/u;->e()Lx4/t;

    .line 46
    .line 47
    .line 48
    move-result-object v7

    .line 49
    iget-object v7, v7, Lx4/t;->a:Ljava/lang/String;

    .line 50
    .line 51
    const/16 v8, 0x2f

    .line 52
    .line 53
    invoke-virtual {v7, v8}, Ljava/lang/String;->lastIndexOf(I)I

    .line 54
    .line 55
    .line 56
    move-result v9

    .line 57
    const/16 v10, 0x5b

    .line 58
    .line 59
    invoke-virtual {v7, v10}, Ljava/lang/String;->lastIndexOf(I)I

    .line 60
    .line 61
    .line 62
    move-result v10

    .line 63
    const/4 v11, -0x1

    .line 64
    if-ne v9, v11, :cond_0

    .line 65
    .line 66
    const-string v7, "default"

    .line 67
    .line 68
    goto :goto_1

    .line 69
    :cond_0
    add-int/2addr v10, v2

    .line 70
    invoke-virtual {v7, v10, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v7

    .line 74
    const/16 v9, 0x2e

    .line 75
    .line 76
    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v7

    .line 80
    :goto_1
    invoke-virtual {v5, v7}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    move-result-object v8

    .line 84
    check-cast v8, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 85
    .line 86
    if-nez v8, :cond_1

    .line 87
    .line 88
    new-instance v8, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 89
    .line 90
    invoke-direct {v8}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    .line 91
    .line 92
    .line 93
    invoke-virtual {v5, v7, v8}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    .line 95
    .line 96
    :cond_1
    invoke-virtual {v8}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 97
    .line 98
    .line 99
    goto :goto_0

    .line 100
    :cond_2
    new-instance v6, Ljava/util/Formatter;

    .line 101
    .line 102
    invoke-direct {v6}, Ljava/util/Formatter;-><init>()V

    .line 103
    .line 104
    .line 105
    :try_start_0
    instance-of v7, p0, Lu4/v;

    .line 106
    .line 107
    if-eqz v7, :cond_3

    .line 108
    .line 109
    const-string v7, "method"

    .line 110
    .line 111
    goto :goto_2

    .line 112
    :catchall_0
    move-exception v0

    .line 113
    goto :goto_4

    .line 114
    :cond_3
    const-string v7, "field"

    .line 115
    .line 116
    :goto_2
    const-string v8, "Too many %1$s references to fit in one dex file: %2$d; max is %3$d.%nYou may try using multi-dex. If multi-dex is enabled then the list of classes for the main dex list is too large.%nReferences by package:"

    .line 117
    .line 118
    invoke-virtual {p0}, Lu4/a0;->c()Ljava/util/Collection;

    .line 119
    .line 120
    .line 121
    move-result-object v9

    .line 122
    invoke-interface {v9}, Ljava/util/Collection;->size()I

    .line 123
    .line 124
    .line 125
    move-result v9

    .line 126
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 127
    .line 128
    .line 129
    move-result-object v9

    .line 130
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 131
    .line 132
    .line 133
    move-result-object v4

    .line 134
    const/4 v10, 0x3

    .line 135
    new-array v10, v10, [Ljava/lang/Object;

    .line 136
    .line 137
    aput-object v7, v10, v1

    .line 138
    .line 139
    aput-object v9, v10, v0

    .line 140
    .line 141
    aput-object v4, v10, v2

    .line 142
    .line 143
    invoke-virtual {v6, v8, v10}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    .line 144
    .line 145
    .line 146
    invoke-virtual {v5}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    .line 147
    .line 148
    .line 149
    move-result-object v4

    .line 150
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 151
    .line 152
    .line 153
    move-result-object v4

    .line 154
    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 155
    .line 156
    .line 157
    move-result v5

    .line 158
    if-eqz v5, :cond_4

    .line 159
    .line 160
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 161
    .line 162
    .line 163
    move-result-object v5

    .line 164
    check-cast v5, Ljava/util/Map$Entry;

    .line 165
    .line 166
    const-string v7, "%n%6d %s"

    .line 167
    .line 168
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 169
    .line 170
    .line 171
    move-result-object v8

    .line 172
    check-cast v8, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 173
    .line 174
    invoke-virtual {v8}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 175
    .line 176
    .line 177
    move-result v8

    .line 178
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 179
    .line 180
    .line 181
    move-result-object v8

    .line 182
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 183
    .line 184
    .line 185
    move-result-object v5

    .line 186
    new-array v9, v2, [Ljava/lang/Object;

    .line 187
    .line 188
    aput-object v8, v9, v1

    .line 189
    .line 190
    aput-object v5, v9, v0

    .line 191
    .line 192
    invoke-virtual {v6, v7, v9}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    .line 193
    .line 194
    .line 195
    goto :goto_3

    .line 196
    :cond_4
    invoke-virtual {v6}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    .line 197
    .line 198
    .line 199
    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 200
    invoke-virtual {v6}, Ljava/util/Formatter;->close()V

    .line 201
    .line 202
    .line 203
    invoke-direct {v3, v0}, Lo4/a;-><init>(Ljava/lang/String;)V

    .line 204
    .line 205
    .line 206
    throw v3

    .line 207
    :goto_4
    invoke-virtual {v6}, Ljava/util/Formatter;->close()V

    .line 208
    .line 209
    .line 210
    throw v0

    .line 211
    :cond_5
    invoke-virtual {p0}, Lu4/a0;->c()Ljava/util/Collection;

    .line 212
    .line 213
    .line 214
    move-result-object v2

    .line 215
    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 216
    .line 217
    .line 218
    move-result-object v2

    .line 219
    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 220
    .line 221
    .line 222
    move-result v3

    .line 223
    if-eqz v3, :cond_6

    .line 224
    .line 225
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 226
    .line 227
    .line 228
    move-result-object v3

    .line 229
    check-cast v3, Lu4/s;

    .line 230
    .line 231
    invoke-virtual {v3, v1}, Lu4/o;->g(I)V

    .line 232
    .line 233
    .line 234
    add-int/2addr v1, v0

    .line 235
    goto :goto_5

    .line 236
    :cond_6
    return-void
.end method
