.class public final La5/d;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final h:Ljava/util/Map;

.field public static final i:Ljava/util/HashMap;

.field public static final j:Ljava/util/HashMap;

.field public static final k:Ljava/util/HashMap;


# instance fields
.field public final a:Ljava/lang/Class;

.field public final b:Ljava/lang/ClassLoader;

.field public c:Laa/a;

.field public d:Ljava/io/File;

.field public final e:[Ljava/lang/Class;

.field public final f:[Ljava/lang/Object;

.field public final g:Ljava/util/ArrayList;


# direct methods
.method static constructor <clinit>()V
    .locals 14

    .line 1
    const/4 v0, 0x0

    .line 2
    new-instance v1, Ljava/util/HashMap;

    .line 3
    .line 4
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 5
    .line 6
    .line 7
    invoke-static {v1}, Lj$/util/DesugarCollections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    sput-object v1, La5/d;->h:Ljava/util/Map;

    .line 12
    .line 13
    new-instance v1, Ljava/util/HashMap;

    .line 14
    .line 15
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 16
    .line 17
    .line 18
    sput-object v1, La5/d;->i:Ljava/util/HashMap;

    .line 19
    .line 20
    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    .line 21
    .line 22
    const-class v3, Ljava/lang/Boolean;

    .line 23
    .line 24
    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 28
    .line 29
    const-class v4, Ljava/lang/Integer;

    .line 30
    .line 31
    invoke-virtual {v1, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    sget-object v2, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    .line 35
    .line 36
    const-class v5, Ljava/lang/Byte;

    .line 37
    .line 38
    invoke-virtual {v1, v2, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    .line 42
    .line 43
    const-class v6, Ljava/lang/Long;

    .line 44
    .line 45
    invoke-virtual {v1, v2, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    sget-object v2, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    .line 49
    .line 50
    const-class v7, Ljava/lang/Short;

    .line 51
    .line 52
    invoke-virtual {v1, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    sget-object v2, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    .line 56
    .line 57
    const-class v8, Ljava/lang/Float;

    .line 58
    .line 59
    invoke-virtual {v1, v2, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    sget-object v2, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    .line 63
    .line 64
    const-class v9, Ljava/lang/Double;

    .line 65
    .line 66
    invoke-virtual {v1, v2, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    sget-object v2, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    .line 70
    .line 71
    const-class v10, Ljava/lang/Character;

    .line 72
    .line 73
    invoke-virtual {v1, v2, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    new-instance v2, Ljava/util/HashMap;

    .line 77
    .line 78
    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 79
    .line 80
    .line 81
    sput-object v2, La5/d;->j:Ljava/util/HashMap;

    .line 82
    .line 83
    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    .line 84
    .line 85
    .line 86
    move-result-object v1

    .line 87
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 88
    .line 89
    .line 90
    move-result-object v1

    .line 91
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 92
    .line 93
    .line 94
    move-result v2

    .line 95
    if-eqz v2, :cond_0

    .line 96
    .line 97
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 98
    .line 99
    .line 100
    move-result-object v2

    .line 101
    check-cast v2, Ljava/util/Map$Entry;

    .line 102
    .line 103
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 104
    .line 105
    .line 106
    move-result-object v11

    .line 107
    check-cast v11, Ljava/lang/Class;

    .line 108
    .line 109
    invoke-static {v11}, Lq4/j;->a(Ljava/lang/Class;)Lq4/j;

    .line 110
    .line 111
    .line 112
    move-result-object v11

    .line 113
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 114
    .line 115
    .line 116
    move-result-object v2

    .line 117
    check-cast v2, Ljava/lang/Class;

    .line 118
    .line 119
    invoke-static {v2}, Lq4/j;->a(Ljava/lang/Class;)Lq4/j;

    .line 120
    .line 121
    .line 122
    move-result-object v2

    .line 123
    const-string v12, "valueOf"

    .line 124
    .line 125
    const/4 v13, 0x1

    .line 126
    new-array v13, v13, [Lq4/j;

    .line 127
    .line 128
    aput-object v11, v13, v0

    .line 129
    .line 130
    invoke-virtual {v2, v2, v12, v13}, Lq4/j;->b(Lq4/j;Ljava/lang/String;[Lq4/j;)Lq4/i;

    .line 131
    .line 132
    .line 133
    move-result-object v2

    .line 134
    sget-object v12, La5/d;->j:Ljava/util/HashMap;

    .line 135
    .line 136
    invoke-virtual {v12, v11, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    .line 138
    .line 139
    goto :goto_0

    .line 140
    :cond_0
    new-instance v1, Ljava/util/HashMap;

    .line 141
    .line 142
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 143
    .line 144
    .line 145
    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    .line 146
    .line 147
    invoke-static {v3}, Lq4/j;->a(Ljava/lang/Class;)Lq4/j;

    .line 148
    .line 149
    .line 150
    move-result-object v3

    .line 151
    sget-object v11, Lq4/j;->d:Lq4/j;

    .line 152
    .line 153
    new-array v12, v0, [Lq4/j;

    .line 154
    .line 155
    const-string v13, "booleanValue"

    .line 156
    .line 157
    invoke-virtual {v3, v11, v13, v12}, Lq4/j;->b(Lq4/j;Ljava/lang/String;[Lq4/j;)Lq4/i;

    .line 158
    .line 159
    .line 160
    move-result-object v3

    .line 161
    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    .line 163
    .line 164
    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 165
    .line 166
    invoke-static {v4}, Lq4/j;->a(Ljava/lang/Class;)Lq4/j;

    .line 167
    .line 168
    .line 169
    move-result-object v3

    .line 170
    sget-object v4, Lq4/j;->i:Lq4/j;

    .line 171
    .line 172
    const-string v11, "intValue"

    .line 173
    .line 174
    new-array v12, v0, [Lq4/j;

    .line 175
    .line 176
    invoke-virtual {v3, v4, v11, v12}, Lq4/j;->b(Lq4/j;Ljava/lang/String;[Lq4/j;)Lq4/i;

    .line 177
    .line 178
    .line 179
    move-result-object v3

    .line 180
    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    .line 182
    .line 183
    sget-object v2, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    .line 184
    .line 185
    invoke-static {v5}, Lq4/j;->a(Ljava/lang/Class;)Lq4/j;

    .line 186
    .line 187
    .line 188
    move-result-object v3

    .line 189
    sget-object v4, Lq4/j;->e:Lq4/j;

    .line 190
    .line 191
    const-string v5, "byteValue"

    .line 192
    .line 193
    new-array v11, v0, [Lq4/j;

    .line 194
    .line 195
    invoke-virtual {v3, v4, v5, v11}, Lq4/j;->b(Lq4/j;Ljava/lang/String;[Lq4/j;)Lq4/i;

    .line 196
    .line 197
    .line 198
    move-result-object v3

    .line 199
    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 200
    .line 201
    .line 202
    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    .line 203
    .line 204
    invoke-static {v6}, Lq4/j;->a(Ljava/lang/Class;)Lq4/j;

    .line 205
    .line 206
    .line 207
    move-result-object v3

    .line 208
    sget-object v4, Lq4/j;->j:Lq4/j;

    .line 209
    .line 210
    const-string v5, "longValue"

    .line 211
    .line 212
    new-array v6, v0, [Lq4/j;

    .line 213
    .line 214
    invoke-virtual {v3, v4, v5, v6}, Lq4/j;->b(Lq4/j;Ljava/lang/String;[Lq4/j;)Lq4/i;

    .line 215
    .line 216
    .line 217
    move-result-object v3

    .line 218
    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 219
    .line 220
    .line 221
    sget-object v2, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    .line 222
    .line 223
    invoke-static {v7}, Lq4/j;->a(Ljava/lang/Class;)Lq4/j;

    .line 224
    .line 225
    .line 226
    move-result-object v3

    .line 227
    sget-object v4, Lq4/j;->k:Lq4/j;

    .line 228
    .line 229
    const-string v5, "shortValue"

    .line 230
    .line 231
    new-array v6, v0, [Lq4/j;

    .line 232
    .line 233
    invoke-virtual {v3, v4, v5, v6}, Lq4/j;->b(Lq4/j;Ljava/lang/String;[Lq4/j;)Lq4/i;

    .line 234
    .line 235
    .line 236
    move-result-object v3

    .line 237
    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 238
    .line 239
    .line 240
    sget-object v2, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    .line 241
    .line 242
    invoke-static {v8}, Lq4/j;->a(Ljava/lang/Class;)Lq4/j;

    .line 243
    .line 244
    .line 245
    move-result-object v3

    .line 246
    sget-object v4, Lq4/j;->h:Lq4/j;

    .line 247
    .line 248
    const-string v5, "floatValue"

    .line 249
    .line 250
    new-array v6, v0, [Lq4/j;

    .line 251
    .line 252
    invoke-virtual {v3, v4, v5, v6}, Lq4/j;->b(Lq4/j;Ljava/lang/String;[Lq4/j;)Lq4/i;

    .line 253
    .line 254
    .line 255
    move-result-object v3

    .line 256
    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 257
    .line 258
    .line 259
    sget-object v2, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    .line 260
    .line 261
    invoke-static {v9}, Lq4/j;->a(Ljava/lang/Class;)Lq4/j;

    .line 262
    .line 263
    .line 264
    move-result-object v3

    .line 265
    sget-object v4, Lq4/j;->g:Lq4/j;

    .line 266
    .line 267
    const-string v5, "doubleValue"

    .line 268
    .line 269
    new-array v6, v0, [Lq4/j;

    .line 270
    .line 271
    invoke-virtual {v3, v4, v5, v6}, Lq4/j;->b(Lq4/j;Ljava/lang/String;[Lq4/j;)Lq4/i;

    .line 272
    .line 273
    .line 274
    move-result-object v3

    .line 275
    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 276
    .line 277
    .line 278
    sget-object v2, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    .line 279
    .line 280
    invoke-static {v10}, Lq4/j;->a(Ljava/lang/Class;)Lq4/j;

    .line 281
    .line 282
    .line 283
    move-result-object v3

    .line 284
    sget-object v4, Lq4/j;->f:Lq4/j;

    .line 285
    .line 286
    const-string v5, "charValue"

    .line 287
    .line 288
    new-array v0, v0, [Lq4/j;

    .line 289
    .line 290
    invoke-virtual {v3, v4, v5, v0}, Lq4/j;->b(Lq4/j;Ljava/lang/String;[Lq4/j;)Lq4/i;

    .line 291
    .line 292
    .line 293
    move-result-object v0

    .line 294
    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 295
    .line 296
    .line 297
    sput-object v1, La5/d;->k:Ljava/util/HashMap;

    .line 298
    .line 299
    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-class v0, La5/d;

    .line 5
    .line 6
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    iput-object v0, p0, La5/d;->b:Ljava/lang/ClassLoader;

    .line 11
    .line 12
    const/4 v0, 0x0

    .line 13
    new-array v1, v0, [Ljava/lang/Class;

    .line 14
    .line 15
    iput-object v1, p0, La5/d;->e:[Ljava/lang/Class;

    .line 16
    .line 17
    new-array v0, v0, [Ljava/lang/Object;

    .line 18
    .line 19
    iput-object v0, p0, La5/d;->f:[Ljava/lang/Object;

    .line 20
    .line 21
    new-instance v0, Ljava/util/ArrayList;

    .line 22
    .line 23
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 24
    .line 25
    .line 26
    iput-object v0, p0, La5/d;->g:Ljava/util/ArrayList;

    .line 27
    .line 28
    iput-object p1, p0, La5/d;->a:Ljava/lang/Class;

    .line 29
    .line 30
    return-void
.end method

.method public static b(Ljava/util/HashSet;Ljava/util/HashSet;Ljava/lang/Class;)V
    .locals 7

    .line 1
    invoke-virtual {p2}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    array-length v1, v0

    .line 6
    const/4 v2, 0x0

    .line 7
    const/4 v3, 0x0

    .line 8
    :goto_0
    if-ge v3, v1, :cond_5

    .line 9
    .line 10
    aget-object v4, v0, v3

    .line 11
    .line 12
    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getModifiers()I

    .line 13
    .line 14
    .line 15
    move-result v5

    .line 16
    and-int/lit8 v5, v5, 0x10

    .line 17
    .line 18
    if-eqz v5, :cond_0

    .line 19
    .line 20
    new-instance v5, La5/b;

    .line 21
    .line 22
    invoke-direct {v5, v4}, La5/b;-><init>(Ljava/lang/reflect/Method;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0, v5}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    goto :goto_1

    .line 32
    :cond_0
    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getModifiers()I

    .line 33
    .line 34
    .line 35
    move-result v5

    .line 36
    and-int/lit8 v5, v5, 0x8

    .line 37
    .line 38
    if-eqz v5, :cond_1

    .line 39
    .line 40
    goto :goto_1

    .line 41
    :cond_1
    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getModifiers()I

    .line 42
    .line 43
    .line 44
    move-result v5

    .line 45
    invoke-static {v5}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    .line 46
    .line 47
    .line 48
    move-result v5

    .line 49
    if-nez v5, :cond_2

    .line 50
    .line 51
    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getModifiers()I

    .line 52
    .line 53
    .line 54
    move-result v5

    .line 55
    invoke-static {v5}, Ljava/lang/reflect/Modifier;->isProtected(I)Z

    .line 56
    .line 57
    .line 58
    move-result v5

    .line 59
    if-nez v5, :cond_2

    .line 60
    .line 61
    goto :goto_1

    .line 62
    :cond_2
    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v5

    .line 66
    const-string v6, "finalize"

    .line 67
    .line 68
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 69
    .line 70
    .line 71
    move-result v5

    .line 72
    if-eqz v5, :cond_3

    .line 73
    .line 74
    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    .line 75
    .line 76
    .line 77
    move-result-object v5

    .line 78
    array-length v5, v5

    .line 79
    if-nez v5, :cond_3

    .line 80
    .line 81
    goto :goto_1

    .line 82
    :cond_3
    new-instance v5, La5/b;

    .line 83
    .line 84
    invoke-direct {v5, v4}, La5/b;-><init>(Ljava/lang/reflect/Method;)V

    .line 85
    .line 86
    .line 87
    invoke-virtual {p1, v5}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 88
    .line 89
    .line 90
    move-result v4

    .line 91
    if-eqz v4, :cond_4

    .line 92
    .line 93
    goto :goto_1

    .line 94
    :cond_4
    invoke-virtual {p0, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 95
    .line 96
    .line 97
    :goto_1
    add-int/lit8 v3, v3, 0x1

    .line 98
    .line 99
    goto :goto_0

    .line 100
    :cond_5
    invoke-virtual {p2}, Ljava/lang/Class;->isInterface()Z

    .line 101
    .line 102
    .line 103
    move-result v0

    .line 104
    if-eqz v0, :cond_6

    .line 105
    .line 106
    invoke-virtual {p2}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    .line 107
    .line 108
    .line 109
    move-result-object p2

    .line 110
    array-length v0, p2

    .line 111
    :goto_2
    if-ge v2, v0, :cond_6

    .line 112
    .line 113
    aget-object v1, p2, v2

    .line 114
    .line 115
    invoke-static {p0, p1, v1}, La5/d;->b(Ljava/util/HashSet;Ljava/util/HashSet;Ljava/lang/Class;)V

    .line 116
    .line 117
    .line 118
    add-int/lit8 v2, v2, 0x1

    .line 119
    .line 120
    goto :goto_2

    .line 121
    :cond_6
    return-void
.end method

.method public static c(Ljava/lang/reflect/Method;)Ljava/lang/String;
    .locals 3

    .line 1
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    new-instance v1, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    const-string v2, "super$"

    .line 12
    .line 13
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string p0, "$"

    .line 24
    .line 25
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    const/16 p0, 0x2e

    .line 29
    .line 30
    const/16 v2, 0x5f

    .line 31
    .line 32
    invoke-virtual {v0, p0, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    const/16 v0, 0x5b

    .line 37
    .line 38
    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object p0

    .line 42
    const/16 v0, 0x3b

    .line 43
    .line 44
    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object p0

    .line 48
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object p0

    .line 55
    return-object p0
.end method

.method public static d(Lq4/b;Ljava/lang/reflect/Method;Lq4/h;Lq4/h;)V
    .locals 15

    .line 1
    move-object v6, p0

    .line 2
    move-object/from16 v0, p2

    .line 3
    .line 4
    move-object/from16 v7, p3

    .line 5
    .line 6
    const-class v1, Ljava/lang/AbstractMethodError;

    .line 7
    .line 8
    invoke-static {v1}, Lq4/j;->a(Ljava/lang/Class;)Lq4/j;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    const/4 v2, 0x1

    .line 13
    new-array v3, v2, [Lq4/j;

    .line 14
    .line 15
    sget-object v4, Lq4/j;->n:Lq4/j;

    .line 16
    .line 17
    const/4 v5, 0x0

    .line 18
    aput-object v4, v3, v5

    .line 19
    .line 20
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 21
    .line 22
    .line 23
    new-instance v4, Lq4/i;

    .line 24
    .line 25
    new-instance v8, Lq4/k;

    .line 26
    .line 27
    invoke-direct {v8, v3}, Lq4/k;-><init>([Lq4/j;)V

    .line 28
    .line 29
    .line 30
    sget-object v3, Lq4/j;->l:Lq4/j;

    .line 31
    .line 32
    const-string v9, "<init>"

    .line 33
    .line 34
    invoke-direct {v4, v1, v3, v9, v8}, Lq4/i;-><init>(Lq4/j;Lq4/j;Ljava/lang/String;Lq4/k;)V

    .line 35
    .line 36
    .line 37
    new-instance v3, Ljava/lang/StringBuilder;

    .line 38
    .line 39
    const-string v8, "\'"

    .line 40
    .line 41
    invoke-direct {v3, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    move-object/from16 v8, p1

    .line 45
    .line 46
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    const-string v8, "\' cannot be called"

    .line 50
    .line 51
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v3

    .line 58
    invoke-virtual {p0, v0, v3}, Lq4/b;->i(Lq4/h;Ljava/lang/Object;)V

    .line 59
    .line 60
    .line 61
    new-array v8, v2, [Lq4/h;

    .line 62
    .line 63
    aput-object v0, v8, v5

    .line 64
    .line 65
    if-eqz v7, :cond_3

    .line 66
    .line 67
    new-instance v0, Lw4/q;

    .line 68
    .line 69
    sget-object v10, Lw4/o;->C1:Lw4/n;

    .line 70
    .line 71
    sget-object v12, Lw4/l;->c:Lw4/l;

    .line 72
    .line 73
    iget-object v11, v6, Lq4/b;->h:Lw4/p;

    .line 74
    .line 75
    iget-object v13, v6, Lq4/b;->j:Ly4/b;

    .line 76
    .line 77
    iget-object v14, v1, Lq4/j;->c:Lx4/u;

    .line 78
    .line 79
    move-object v9, v0

    .line 80
    invoke-direct/range {v9 .. v14}, Lw4/q;-><init>(Lw4/n;Lw4/p;Lw4/l;Ly4/e;Lx4/a;)V

    .line 81
    .line 82
    .line 83
    const/4 v9, 0x0

    .line 84
    invoke-virtual {p0, v0, v9}, Lq4/b;->a(Lw4/f;Lq4/g;)V

    .line 85
    .line 86
    .line 87
    invoke-virtual {p0, v7, v2}, Lq4/b;->j(Lq4/h;Z)V

    .line 88
    .line 89
    .line 90
    invoke-virtual {v4, v2}, Lq4/i;->a(Z)Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v0

    .line 94
    if-eqz v0, :cond_2

    .line 95
    .line 96
    sget-object v1, Ly4/a;->e:Lj$/util/concurrent/ConcurrentHashMap;

    .line 97
    .line 98
    invoke-virtual {v1, v0}, Lj$/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    .line 100
    .line 101
    move-result-object v2

    .line 102
    check-cast v2, Ly4/a;

    .line 103
    .line 104
    if-eqz v2, :cond_0

    .line 105
    .line 106
    goto :goto_0

    .line 107
    :cond_0
    invoke-static {v0}, Ly4/a;->b(Ljava/lang/String;)Ly4/a;

    .line 108
    .line 109
    .line 110
    move-result-object v0

    .line 111
    iget-object v2, v0, Ly4/a;->a:Ljava/lang/String;

    .line 112
    .line 113
    invoke-virtual {v1, v2, v0}, Lj$/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    .line 115
    .line 116
    move-result-object v1

    .line 117
    check-cast v1, Ly4/a;

    .line 118
    .line 119
    if-eqz v1, :cond_1

    .line 120
    .line 121
    move-object v2, v1

    .line 122
    goto :goto_0

    .line 123
    :cond_1
    move-object v2, v0

    .line 124
    :goto_0
    new-instance v1, Lw4/n;

    .line 125
    .line 126
    invoke-virtual {v2}, Ly4/a;->c()Ly4/b;

    .line 127
    .line 128
    .line 129
    move-result-object v0

    .line 130
    sget-object v2, Ly4/b;->j:Ly4/b;

    .line 131
    .line 132
    const/16 v3, 0x34

    .line 133
    .line 134
    invoke-direct {v1, v3, v0, v2}, Lw4/n;-><init>(ILy4/b;Ly4/b;)V

    .line 135
    .line 136
    .line 137
    const/4 v3, 0x0

    .line 138
    move-object v0, p0

    .line 139
    move-object v2, v4

    .line 140
    move-object/from16 v4, p3

    .line 141
    .line 142
    move-object v5, v8

    .line 143
    invoke-virtual/range {v0 .. v5}, Lq4/b;->g(Lw4/n;Lq4/i;Lq4/h;Lq4/h;[Lq4/h;)V

    .line 144
    .line 145
    .line 146
    new-instance v0, Lw4/r;

    .line 147
    .line 148
    sget-object v1, Lw4/o;->h1:Lw4/n;

    .line 149
    .line 150
    invoke-virtual/range {p3 .. p3}, Lq4/h;->a()Lw4/k;

    .line 151
    .line 152
    .line 153
    move-result-object v2

    .line 154
    invoke-static {v2}, Lw4/l;->g(Lw4/k;)Lw4/l;

    .line 155
    .line 156
    .line 157
    move-result-object v2

    .line 158
    iget-object v3, v6, Lq4/b;->j:Ly4/b;

    .line 159
    .line 160
    iget-object v4, v6, Lq4/b;->h:Lw4/p;

    .line 161
    .line 162
    invoke-direct {v0, v1, v4, v2, v3}, Lw4/r;-><init>(Lw4/n;Lw4/p;Lw4/l;Ly4/e;)V

    .line 163
    .line 164
    .line 165
    invoke-virtual {p0, v0, v9}, Lq4/b;->a(Lw4/f;Lq4/g;)V

    .line 166
    .line 167
    .line 168
    return-void

    .line 169
    :cond_2
    sget-object v0, Ly4/a;->e:Lj$/util/concurrent/ConcurrentHashMap;

    .line 170
    .line 171
    new-instance v0, Ljava/lang/NullPointerException;

    .line 172
    .line 173
    const-string v1, "descriptor == null"

    .line 174
    .line 175
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 176
    .line 177
    .line 178
    throw v0

    .line 179
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 180
    .line 181
    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    .line 182
    .line 183
    .line 184
    throw v0
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 71

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    const/16 v0, 0xa

    .line 4
    .line 5
    iget-object v2, v1, La5/d;->b:Ljava/lang/ClassLoader;

    .line 6
    .line 7
    const-string v5, "descriptor == null"

    .line 8
    .line 9
    iget-object v6, v1, La5/d;->c:Laa/a;

    .line 10
    .line 11
    if-eqz v6, :cond_0

    .line 12
    .line 13
    const/4 v6, 0x1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 v6, 0x0

    .line 16
    :goto_0
    if-eqz v6, :cond_35

    .line 17
    .line 18
    iget-object v6, v1, La5/d;->e:[Ljava/lang/Class;

    .line 19
    .line 20
    array-length v9, v6

    .line 21
    iget-object v10, v1, La5/d;->f:[Ljava/lang/Object;

    .line 22
    .line 23
    array-length v11, v10

    .line 24
    if-ne v9, v11, :cond_1

    .line 25
    .line 26
    const/4 v9, 0x1

    .line 27
    goto :goto_1

    .line 28
    :cond_1
    const/4 v9, 0x0

    .line 29
    :goto_1
    if-eqz v9, :cond_34

    .line 30
    .line 31
    new-instance v9, La5/c;

    .line 32
    .line 33
    iget-object v11, v1, La5/d;->g:Ljava/util/ArrayList;

    .line 34
    .line 35
    iget-object v12, v1, La5/d;->a:Ljava/lang/Class;

    .line 36
    .line 37
    invoke-direct {v9, v12, v11, v2}, La5/c;-><init>(Ljava/lang/Class;Ljava/util/ArrayList;Ljava/lang/ClassLoader;)V

    .line 38
    .line 39
    .line 40
    sget-object v13, La5/d;->h:Ljava/util/Map;

    .line 41
    .line 42
    invoke-interface {v13, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v14

    .line 46
    check-cast v14, Ljava/lang/Class;

    .line 47
    .line 48
    const-string v15, "$__handler"

    .line 49
    .line 50
    if-eqz v14, :cond_2

    .line 51
    .line 52
    move-object v2, v1

    .line 53
    move-object v0, v6

    .line 54
    move-object/from16 v20, v10

    .line 55
    .line 56
    move-object/from16 v18, v12

    .line 57
    .line 58
    move-object/from16 v19, v15

    .line 59
    .line 60
    goto/16 :goto_29

    .line 61
    .line 62
    :cond_2
    new-instance v14, Lkf/d;

    .line 63
    .line 64
    invoke-direct {v14, v0}, Lkf/d;-><init>(I)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {v11}, Ljava/util/ArrayList;->hashCode()I

    .line 68
    .line 69
    .line 70
    move-result v16

    .line 71
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v3

    .line 75
    new-instance v7, Ljava/lang/StringBuilder;

    .line 76
    .line 77
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 78
    .line 79
    .line 80
    invoke-virtual {v12}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v8

    .line 84
    const-string v0, "."

    .line 85
    .line 86
    const-string v4, "/"

    .line 87
    .line 88
    invoke-virtual {v8, v0, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v0

    .line 92
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    const-string v0, "_"

    .line 96
    .line 97
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    const-string v0, "_Proxy"

    .line 101
    .line 102
    invoke-static {v3, v0, v7}, Lg/b;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v0

    .line 106
    const-string v3, "L"

    .line 107
    .line 108
    const-string v4, ";"

    .line 109
    .line 110
    invoke-static {v3, v0, v4}, Lg/b;->A(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object v3

    .line 114
    new-instance v4, Lq4/j;

    .line 115
    .line 116
    :try_start_0
    const-string v7, "V"

    .line 117
    .line 118
    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 119
    .line 120
    .line 121
    move-result v7

    .line 122
    if-eqz v7, :cond_3

    .line 123
    .line 124
    sget-object v7, Ly4/c;->p:Ly4/c;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 125
    .line 126
    goto :goto_2

    .line 127
    :catch_0
    move-object v2, v1

    .line 128
    move-object v1, v5

    .line 129
    goto/16 :goto_2e

    .line 130
    .line 131
    :cond_3
    invoke-static {v3}, Ly4/c;->e(Ljava/lang/String;)Ly4/c;

    .line 132
    .line 133
    .line 134
    move-result-object v7

    .line 135
    :goto_2
    invoke-direct {v4, v3, v7}, Lq4/j;-><init>(Ljava/lang/String;Ly4/c;)V

    .line 136
    .line 137
    .line 138
    invoke-static {v12}, Lq4/j;->a(Ljava/lang/Class;)Lq4/j;

    .line 139
    .line 140
    .line 141
    move-result-object v3

    .line 142
    const-class v7, Ljava/lang/reflect/InvocationHandler;

    .line 143
    .line 144
    invoke-static {v7}, Lq4/j;->a(Ljava/lang/Class;)Lq4/j;

    .line 145
    .line 146
    .line 147
    move-result-object v8

    .line 148
    const-class v19, [Ljava/lang/reflect/Method;

    .line 149
    .line 150
    move-object/from16 v20, v10

    .line 151
    .line 152
    invoke-static/range {v19 .. v19}, Lq4/j;->a(Ljava/lang/Class;)Lq4/j;

    .line 153
    .line 154
    .line 155
    move-result-object v10

    .line 156
    move-object/from16 v21, v6

    .line 157
    .line 158
    new-instance v6, Lq4/f;

    .line 159
    .line 160
    invoke-direct {v6, v4, v8, v15}, Lq4/f;-><init>(Lq4/j;Lq4/j;Ljava/lang/String;)V

    .line 161
    .line 162
    .line 163
    const/4 v8, 0x2

    .line 164
    invoke-virtual {v14, v6, v8}, Lkf/d;->s(Lq4/f;I)V

    .line 165
    .line 166
    .line 167
    new-instance v6, Lq4/f;

    .line 168
    .line 169
    const-string v8, "$__methodArray"

    .line 170
    .line 171
    invoke-direct {v6, v4, v10, v8}, Lq4/f;-><init>(Lq4/j;Lq4/j;Ljava/lang/String;)V

    .line 172
    .line 173
    .line 174
    const/16 v10, 0xa

    .line 175
    .line 176
    invoke-virtual {v14, v6, v10}, Lkf/d;->s(Lq4/f;I)V

    .line 177
    .line 178
    .line 179
    invoke-virtual {v12}, Ljava/lang/Class;->getDeclaredConstructors()[Ljava/lang/reflect/Constructor;

    .line 180
    .line 181
    .line 182
    move-result-object v6

    .line 183
    array-length v10, v6

    .line 184
    move-object/from16 v22, v9

    .line 185
    .line 186
    move-object/from16 v18, v12

    .line 187
    .line 188
    const/4 v12, 0x0

    .line 189
    :goto_3
    const-string v9, "static methods cannot access \'this\'"

    .line 190
    .line 191
    if-ge v12, v10, :cond_b

    .line 192
    .line 193
    aget-object v23, v6, v12

    .line 194
    .line 195
    move-object/from16 v24, v6

    .line 196
    .line 197
    invoke-virtual/range {v23 .. v23}, Ljava/lang/reflect/Constructor;->getModifiers()I

    .line 198
    .line 199
    .line 200
    move-result v6

    .line 201
    move/from16 v25, v10

    .line 202
    .line 203
    const/16 v10, 0x10

    .line 204
    .line 205
    if-ne v6, v10, :cond_4

    .line 206
    .line 207
    move-object/from16 v27, v0

    .line 208
    .line 209
    move-object/from16 v26, v2

    .line 210
    .line 211
    move-object/from16 v34, v3

    .line 212
    .line 213
    move-object/from16 v23, v13

    .line 214
    .line 215
    :goto_4
    const/4 v0, 0x1

    .line 216
    goto/16 :goto_8

    .line 217
    .line 218
    :cond_4
    invoke-virtual/range {v23 .. v23}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    .line 219
    .line 220
    .line 221
    move-result-object v6

    .line 222
    array-length v10, v6

    .line 223
    move-object/from16 v23, v13

    .line 224
    .line 225
    new-array v13, v10, [Lq4/j;

    .line 226
    .line 227
    move-object/from16 v26, v2

    .line 228
    .line 229
    const/4 v2, 0x0

    .line 230
    :goto_5
    array-length v1, v6

    .line 231
    if-ge v2, v1, :cond_5

    .line 232
    .line 233
    aget-object v1, v6, v2

    .line 234
    .line 235
    invoke-static {v1}, Lq4/j;->a(Ljava/lang/Class;)Lq4/j;

    .line 236
    .line 237
    .line 238
    move-result-object v1

    .line 239
    aput-object v1, v13, v2

    .line 240
    .line 241
    const/4 v1, 0x1

    .line 242
    add-int/2addr v2, v1

    .line 243
    goto :goto_5

    .line 244
    :cond_5
    new-instance v1, Lq4/i;

    .line 245
    .line 246
    new-instance v2, Lq4/k;

    .line 247
    .line 248
    invoke-direct {v2, v13}, Lq4/k;-><init>([Lq4/j;)V

    .line 249
    .line 250
    .line 251
    sget-object v6, Lq4/j;->l:Lq4/j;

    .line 252
    .line 253
    move-object/from16 v27, v0

    .line 254
    .line 255
    const-string v0, "<init>"

    .line 256
    .line 257
    invoke-direct {v1, v4, v6, v0, v2}, Lq4/i;-><init>(Lq4/j;Lq4/j;Ljava/lang/String;Lq4/k;)V

    .line 258
    .line 259
    .line 260
    invoke-virtual {v14, v1}, Lkf/d;->r(Lq4/i;)Lq4/b;

    .line 261
    .line 262
    .line 263
    move-result-object v1

    .line 264
    iget-object v2, v1, Lq4/b;->e:Lq4/h;

    .line 265
    .line 266
    if-eqz v2, :cond_a

    .line 267
    .line 268
    invoke-static {v2, v4}, Lq4/b;->d(Lq4/h;Lq4/j;)V

    .line 269
    .line 270
    .line 271
    new-array v6, v10, [Lq4/h;

    .line 272
    .line 273
    const/4 v9, 0x0

    .line 274
    :goto_6
    if-ge v9, v10, :cond_6

    .line 275
    .line 276
    move/from16 v28, v10

    .line 277
    .line 278
    aget-object v10, v13, v9

    .line 279
    .line 280
    invoke-virtual {v1, v9, v10}, Lq4/b;->e(ILq4/j;)Lq4/h;

    .line 281
    .line 282
    .line 283
    move-result-object v10

    .line 284
    aput-object v10, v6, v9

    .line 285
    .line 286
    const/4 v10, 0x1

    .line 287
    add-int/2addr v9, v10

    .line 288
    move/from16 v10, v28

    .line 289
    .line 290
    goto :goto_6

    .line 291
    :cond_6
    const/4 v10, 0x1

    .line 292
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 293
    .line 294
    .line 295
    new-instance v9, Lq4/i;

    .line 296
    .line 297
    new-instance v10, Lq4/k;

    .line 298
    .line 299
    invoke-direct {v10, v13}, Lq4/k;-><init>([Lq4/j;)V

    .line 300
    .line 301
    .line 302
    sget-object v13, Lq4/j;->l:Lq4/j;

    .line 303
    .line 304
    invoke-direct {v9, v3, v13, v0, v10}, Lq4/i;-><init>(Lq4/j;Lq4/j;Ljava/lang/String;Lq4/k;)V

    .line 305
    .line 306
    .line 307
    const/4 v0, 0x1

    .line 308
    invoke-virtual {v9, v0}, Lq4/i;->a(Z)Ljava/lang/String;

    .line 309
    .line 310
    .line 311
    move-result-object v10

    .line 312
    if-eqz v10, :cond_9

    .line 313
    .line 314
    sget-object v0, Ly4/a;->e:Lj$/util/concurrent/ConcurrentHashMap;

    .line 315
    .line 316
    invoke-virtual {v0, v10}, Lj$/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 317
    .line 318
    .line 319
    move-result-object v13

    .line 320
    check-cast v13, Ly4/a;

    .line 321
    .line 322
    if-eqz v13, :cond_7

    .line 323
    .line 324
    goto :goto_7

    .line 325
    :cond_7
    invoke-static {v10}, Ly4/a;->b(Ljava/lang/String;)Ly4/a;

    .line 326
    .line 327
    .line 328
    move-result-object v10

    .line 329
    iget-object v13, v10, Ly4/a;->a:Ljava/lang/String;

    .line 330
    .line 331
    invoke-virtual {v0, v13, v10}, Lj$/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 332
    .line 333
    .line 334
    move-result-object v0

    .line 335
    check-cast v0, Ly4/a;

    .line 336
    .line 337
    if-eqz v0, :cond_8

    .line 338
    .line 339
    move-object v13, v0

    .line 340
    goto :goto_7

    .line 341
    :cond_8
    move-object v13, v10

    .line 342
    :goto_7
    sget-object v0, Lw4/o;->a:Lw4/n;

    .line 343
    .line 344
    new-instance v0, Lw4/n;

    .line 345
    .line 346
    invoke-virtual {v13}, Ly4/a;->c()Ly4/b;

    .line 347
    .line 348
    .line 349
    move-result-object v10

    .line 350
    sget-object v13, Ly4/b;->j:Ly4/b;

    .line 351
    .line 352
    move-object/from16 v34, v3

    .line 353
    .line 354
    const/16 v3, 0x34

    .line 355
    .line 356
    invoke-direct {v0, v3, v10, v13}, Lw4/n;-><init>(ILy4/b;Ly4/b;)V

    .line 357
    .line 358
    .line 359
    const/16 v31, 0x0

    .line 360
    .line 361
    move-object/from16 v28, v1

    .line 362
    .line 363
    move-object/from16 v29, v0

    .line 364
    .line 365
    move-object/from16 v30, v9

    .line 366
    .line 367
    move-object/from16 v32, v2

    .line 368
    .line 369
    move-object/from16 v33, v6

    .line 370
    .line 371
    invoke-virtual/range {v28 .. v33}, Lq4/b;->g(Lw4/n;Lq4/i;Lq4/h;Lq4/h;[Lq4/h;)V

    .line 372
    .line 373
    .line 374
    invoke-virtual {v1}, Lq4/b;->m()V

    .line 375
    .line 376
    .line 377
    goto/16 :goto_4

    .line 378
    .line 379
    :goto_8
    add-int/2addr v12, v0

    .line 380
    move-object/from16 v1, p0

    .line 381
    .line 382
    move-object/from16 v13, v23

    .line 383
    .line 384
    move-object/from16 v6, v24

    .line 385
    .line 386
    move/from16 v10, v25

    .line 387
    .line 388
    move-object/from16 v2, v26

    .line 389
    .line 390
    move-object/from16 v0, v27

    .line 391
    .line 392
    move-object/from16 v3, v34

    .line 393
    .line 394
    goto/16 :goto_3

    .line 395
    .line 396
    :cond_9
    sget-object v0, Ly4/a;->e:Lj$/util/concurrent/ConcurrentHashMap;

    .line 397
    .line 398
    new-instance v0, Ljava/lang/NullPointerException;

    .line 399
    .line 400
    invoke-direct {v0, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 401
    .line 402
    .line 403
    throw v0

    .line 404
    :cond_a
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 405
    .line 406
    invoke-direct {v0, v9}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 407
    .line 408
    .line 409
    throw v0

    .line 410
    :cond_b
    move-object/from16 v27, v0

    .line 411
    .line 412
    move-object/from16 v26, v2

    .line 413
    .line 414
    move-object/from16 v34, v3

    .line 415
    .line 416
    move-object/from16 v23, v13

    .line 417
    .line 418
    new-instance v0, Ljava/util/HashSet;

    .line 419
    .line 420
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 421
    .line 422
    .line 423
    new-instance v1, Ljava/util/HashSet;

    .line 424
    .line 425
    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 426
    .line 427
    .line 428
    move-object/from16 v2, v18

    .line 429
    .line 430
    :goto_9
    if-eqz v2, :cond_c

    .line 431
    .line 432
    invoke-static {v0, v1, v2}, La5/d;->b(Ljava/util/HashSet;Ljava/util/HashSet;Ljava/lang/Class;)V

    .line 433
    .line 434
    .line 435
    invoke-virtual {v2}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    .line 436
    .line 437
    .line 438
    move-result-object v2

    .line 439
    goto :goto_9

    .line 440
    :cond_c
    move-object/from16 v2, v18

    .line 441
    .line 442
    :goto_a
    if-eqz v2, :cond_e

    .line 443
    .line 444
    invoke-virtual {v2}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    .line 445
    .line 446
    .line 447
    move-result-object v3

    .line 448
    array-length v6, v3

    .line 449
    const/4 v10, 0x0

    .line 450
    :goto_b
    if-ge v10, v6, :cond_d

    .line 451
    .line 452
    aget-object v12, v3, v10

    .line 453
    .line 454
    invoke-static {v0, v1, v12}, La5/d;->b(Ljava/util/HashSet;Ljava/util/HashSet;Ljava/lang/Class;)V

    .line 455
    .line 456
    .line 457
    const/4 v12, 0x1

    .line 458
    add-int/2addr v10, v12

    .line 459
    goto :goto_b

    .line 460
    :cond_d
    invoke-virtual {v2}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    .line 461
    .line 462
    .line 463
    move-result-object v2

    .line 464
    goto :goto_a

    .line 465
    :cond_e
    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 466
    .line 467
    .line 468
    move-result-object v2

    .line 469
    :goto_c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 470
    .line 471
    .line 472
    move-result v3

    .line 473
    if-eqz v3, :cond_f

    .line 474
    .line 475
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 476
    .line 477
    .line 478
    move-result-object v3

    .line 479
    check-cast v3, Ljava/lang/Class;

    .line 480
    .line 481
    invoke-static {v0, v1, v3}, La5/d;->b(Ljava/util/HashSet;Ljava/util/HashSet;Ljava/lang/Class;)V

    .line 482
    .line 483
    .line 484
    goto :goto_c

    .line 485
    :cond_f
    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    .line 486
    .line 487
    .line 488
    move-result v1

    .line 489
    new-array v2, v1, [Ljava/lang/reflect/Method;

    .line 490
    .line 491
    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 492
    .line 493
    .line 494
    move-result-object v0

    .line 495
    const/4 v3, 0x0

    .line 496
    :goto_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 497
    .line 498
    .line 499
    move-result v6

    .line 500
    if-eqz v6, :cond_10

    .line 501
    .line 502
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 503
    .line 504
    .line 505
    move-result-object v6

    .line 506
    check-cast v6, La5/b;

    .line 507
    .line 508
    const/4 v10, 0x1

    .line 509
    add-int/lit8 v12, v3, 0x1

    .line 510
    .line 511
    iget-object v6, v6, La5/b;->d:Ljava/lang/reflect/Method;

    .line 512
    .line 513
    aput-object v6, v2, v3

    .line 514
    .line 515
    move v3, v12

    .line 516
    goto :goto_d

    .line 517
    :cond_10
    new-instance v0, La5/a;

    .line 518
    .line 519
    const/4 v3, 0x0

    .line 520
    invoke-direct {v0, v3}, La5/a;-><init>(I)V

    .line 521
    .line 522
    .line 523
    invoke-static {v2, v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 524
    .line 525
    .line 526
    invoke-static {v7}, Lq4/j;->a(Ljava/lang/Class;)Lq4/j;

    .line 527
    .line 528
    .line 529
    move-result-object v0

    .line 530
    invoke-static/range {v19 .. v19}, Lq4/j;->a(Ljava/lang/Class;)Lq4/j;

    .line 531
    .line 532
    .line 533
    move-result-object v3

    .line 534
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 535
    .line 536
    .line 537
    new-instance v6, Lx4/r;

    .line 538
    .line 539
    new-instance v7, Lx4/t;

    .line 540
    .line 541
    invoke-direct {v7, v15}, Lx4/t;-><init>(Ljava/lang/String;)V

    .line 542
    .line 543
    .line 544
    new-instance v10, Lx4/t;

    .line 545
    .line 546
    iget-object v12, v0, Lq4/j;->a:Ljava/lang/String;

    .line 547
    .line 548
    invoke-direct {v10, v12}, Lx4/t;-><init>(Ljava/lang/String;)V

    .line 549
    .line 550
    .line 551
    invoke-direct {v6, v7, v10}, Lx4/r;-><init>(Lx4/t;Lx4/t;)V

    .line 552
    .line 553
    .line 554
    new-instance v7, Lx4/h;

    .line 555
    .line 556
    iget-object v10, v4, Lq4/j;->c:Lx4/u;

    .line 557
    .line 558
    invoke-direct {v7, v10, v6}, Lx4/h;-><init>(Lx4/u;Lx4/r;)V

    .line 559
    .line 560
    .line 561
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 562
    .line 563
    .line 564
    new-instance v6, Lx4/r;

    .line 565
    .line 566
    new-instance v12, Lx4/t;

    .line 567
    .line 568
    invoke-direct {v12, v8}, Lx4/t;-><init>(Ljava/lang/String;)V

    .line 569
    .line 570
    .line 571
    new-instance v13, Lx4/t;

    .line 572
    .line 573
    move-object/from16 v19, v15

    .line 574
    .line 575
    iget-object v15, v3, Lq4/j;->a:Ljava/lang/String;

    .line 576
    .line 577
    invoke-direct {v13, v15}, Lx4/t;-><init>(Ljava/lang/String;)V

    .line 578
    .line 579
    .line 580
    invoke-direct {v6, v12, v13}, Lx4/r;-><init>(Lx4/t;Lx4/t;)V

    .line 581
    .line 582
    .line 583
    new-instance v12, Lx4/h;

    .line 584
    .line 585
    invoke-direct {v12, v10, v6}, Lx4/h;-><init>(Lx4/u;Lx4/r;)V

    .line 586
    .line 587
    .line 588
    const-class v6, Ljava/lang/reflect/Method;

    .line 589
    .line 590
    invoke-static {v6}, Lq4/j;->a(Ljava/lang/Class;)Lq4/j;

    .line 591
    .line 592
    .line 593
    move-result-object v6

    .line 594
    const-class v10, [Ljava/lang/Object;

    .line 595
    .line 596
    invoke-static {v10}, Lq4/j;->a(Ljava/lang/Class;)Lq4/j;

    .line 597
    .line 598
    .line 599
    move-result-object v10

    .line 600
    sget-object v13, Lq4/j;->m:Lq4/j;

    .line 601
    .line 602
    const-string v15, "invoke"

    .line 603
    .line 604
    move-object/from16 v24, v8

    .line 605
    .line 606
    move-object/from16 v25, v11

    .line 607
    .line 608
    const/4 v8, 0x3

    .line 609
    new-array v11, v8, [Lq4/j;

    .line 610
    .line 611
    const/4 v8, 0x0

    .line 612
    aput-object v13, v11, v8

    .line 613
    .line 614
    const/4 v8, 0x1

    .line 615
    aput-object v6, v11, v8

    .line 616
    .line 617
    const/4 v8, 0x2

    .line 618
    aput-object v10, v11, v8

    .line 619
    .line 620
    invoke-virtual {v0, v13, v15, v11}, Lq4/j;->b(Lq4/j;Ljava/lang/String;[Lq4/j;)Lq4/i;

    .line 621
    .line 622
    .line 623
    move-result-object v8

    .line 624
    const/4 v11, 0x0

    .line 625
    :goto_e
    if-ge v11, v1, :cond_2f

    .line 626
    .line 627
    aget-object v15, v2, v11

    .line 628
    .line 629
    invoke-virtual {v15}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    .line 630
    .line 631
    .line 632
    move-result-object v13

    .line 633
    move/from16 v35, v1

    .line 634
    .line 635
    invoke-virtual {v15}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    .line 636
    .line 637
    .line 638
    move-result-object v1

    .line 639
    move-object/from16 v36, v2

    .line 640
    .line 641
    array-length v2, v1

    .line 642
    move-object/from16 v37, v9

    .line 643
    .line 644
    new-array v9, v2, [Lq4/j;

    .line 645
    .line 646
    move-object/from16 v38, v8

    .line 647
    .line 648
    const/4 v8, 0x0

    .line 649
    :goto_f
    if-ge v8, v2, :cond_11

    .line 650
    .line 651
    aget-object v28, v1, v8

    .line 652
    .line 653
    invoke-static/range {v28 .. v28}, Lq4/j;->a(Ljava/lang/Class;)Lq4/j;

    .line 654
    .line 655
    .line 656
    move-result-object v28

    .line 657
    aput-object v28, v9, v8

    .line 658
    .line 659
    const/16 v17, 0x1

    .line 660
    .line 661
    add-int/lit8 v8, v8, 0x1

    .line 662
    .line 663
    goto :goto_f

    .line 664
    :cond_11
    invoke-virtual {v15}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    .line 665
    .line 666
    .line 667
    move-result-object v8

    .line 668
    move-object/from16 v39, v5

    .line 669
    .line 670
    invoke-static {v8}, Lq4/j;->a(Ljava/lang/Class;)Lq4/j;

    .line 671
    .line 672
    .line 673
    move-result-object v5

    .line 674
    move-object/from16 v40, v7

    .line 675
    .line 676
    invoke-virtual {v4, v5, v13, v9}, Lq4/j;->b(Lq4/j;Ljava/lang/String;[Lq4/j;)Lq4/i;

    .line 677
    .line 678
    .line 679
    move-result-object v7

    .line 680
    const-class v28, Ljava/lang/AbstractMethodError;

    .line 681
    .line 682
    move/from16 v41, v2

    .line 683
    .line 684
    invoke-static/range {v28 .. v28}, Lq4/j;->a(Ljava/lang/Class;)Lq4/j;

    .line 685
    .line 686
    .line 687
    move-result-object v2

    .line 688
    invoke-virtual {v14, v7}, Lkf/d;->r(Lq4/i;)Lq4/b;

    .line 689
    .line 690
    .line 691
    move-result-object v7

    .line 692
    move-object/from16 v42, v14

    .line 693
    .line 694
    iget-object v14, v7, Lq4/b;->e:Lq4/h;

    .line 695
    .line 696
    if-eqz v14, :cond_2e

    .line 697
    .line 698
    invoke-static {v14, v4}, Lq4/b;->d(Lq4/h;Lq4/j;)V

    .line 699
    .line 700
    .line 701
    move-object/from16 v43, v4

    .line 702
    .line 703
    invoke-virtual {v7, v0}, Lq4/b;->k(Lq4/j;)Lq4/h;

    .line 704
    .line 705
    .line 706
    move-result-object v4

    .line 707
    move-object/from16 v44, v14

    .line 708
    .line 709
    sget-object v14, Lq4/j;->m:Lq4/j;

    .line 710
    .line 711
    move-object/from16 v45, v4

    .line 712
    .line 713
    invoke-virtual {v7, v14}, Lq4/b;->k(Lq4/j;)Lq4/h;

    .line 714
    .line 715
    .line 716
    move-result-object v4

    .line 717
    move-object/from16 v46, v4

    .line 718
    .line 719
    sget-object v4, Lq4/j;->i:Lq4/j;

    .line 720
    .line 721
    move-object/from16 v47, v12

    .line 722
    .line 723
    invoke-virtual {v7, v4}, Lq4/b;->k(Lq4/j;)Lq4/h;

    .line 724
    .line 725
    .line 726
    move-result-object v12

    .line 727
    move-object/from16 v48, v12

    .line 728
    .line 729
    invoke-virtual {v7, v10}, Lq4/b;->k(Lq4/j;)Lq4/h;

    .line 730
    .line 731
    .line 732
    move-result-object v12

    .line 733
    move-object/from16 v49, v10

    .line 734
    .line 735
    invoke-virtual {v7, v4}, Lq4/b;->k(Lq4/j;)Lq4/h;

    .line 736
    .line 737
    .line 738
    move-result-object v10

    .line 739
    invoke-virtual {v7, v14}, Lq4/b;->k(Lq4/j;)Lq4/h;

    .line 740
    .line 741
    .line 742
    move-result-object v14

    .line 743
    move-object/from16 v50, v14

    .line 744
    .line 745
    invoke-virtual {v7, v5}, Lq4/b;->k(Lq4/j;)Lq4/h;

    .line 746
    .line 747
    .line 748
    move-result-object v14

    .line 749
    move-object/from16 v51, v14

    .line 750
    .line 751
    invoke-virtual {v7, v3}, Lq4/b;->k(Lq4/j;)Lq4/h;

    .line 752
    .line 753
    .line 754
    move-result-object v14

    .line 755
    move-object/from16 v52, v3

    .line 756
    .line 757
    invoke-virtual {v7, v6}, Lq4/b;->k(Lq4/j;)Lq4/h;

    .line 758
    .line 759
    .line 760
    move-result-object v3

    .line 761
    invoke-virtual {v7, v4}, Lq4/b;->k(Lq4/j;)Lq4/h;

    .line 762
    .line 763
    .line 764
    move-result-object v4

    .line 765
    move-object/from16 v53, v6

    .line 766
    .line 767
    sget-object v6, La5/d;->i:Ljava/util/HashMap;

    .line 768
    .line 769
    invoke-virtual {v6, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 770
    .line 771
    .line 772
    move-result-object v6

    .line 773
    check-cast v6, Ljava/lang/Class;

    .line 774
    .line 775
    if-eqz v6, :cond_12

    .line 776
    .line 777
    invoke-static {v6}, Lq4/j;->a(Ljava/lang/Class;)Lq4/j;

    .line 778
    .line 779
    .line 780
    move-result-object v6

    .line 781
    invoke-virtual {v7, v6}, Lq4/b;->k(Lq4/j;)Lq4/h;

    .line 782
    .line 783
    .line 784
    move-result-object v6

    .line 785
    move-object/from16 v54, v6

    .line 786
    .line 787
    goto :goto_10

    .line 788
    :cond_12
    const/16 v54, 0x0

    .line 789
    .line 790
    :goto_10
    invoke-virtual {v7, v0}, Lq4/b;->k(Lq4/j;)Lq4/h;

    .line 791
    .line 792
    .line 793
    move-result-object v6

    .line 794
    move-object/from16 v55, v0

    .line 795
    .line 796
    invoke-virtual {v15}, Ljava/lang/reflect/Method;->getModifiers()I

    .line 797
    .line 798
    .line 799
    move-result v0

    .line 800
    and-int/lit16 v0, v0, 0x400

    .line 801
    .line 802
    if-nez v0, :cond_13

    .line 803
    .line 804
    array-length v0, v1

    .line 805
    new-array v0, v0, [Lq4/h;

    .line 806
    .line 807
    invoke-virtual {v7, v5}, Lq4/b;->k(Lq4/j;)Lq4/h;

    .line 808
    .line 809
    .line 810
    move-result-object v28

    .line 811
    move-object/from16 v29, v0

    .line 812
    .line 813
    move-object/from16 v0, v34

    .line 814
    .line 815
    invoke-virtual {v0, v5, v13, v9}, Lq4/j;->b(Lq4/j;Ljava/lang/String;[Lq4/j;)Lq4/i;

    .line 816
    .line 817
    .line 818
    move-result-object v13

    .line 819
    move-object/from16 v57, v1

    .line 820
    .line 821
    move-object/from16 v56, v2

    .line 822
    .line 823
    move-object/from16 v58, v5

    .line 824
    .line 825
    move-object v1, v13

    .line 826
    move-object/from16 v5, v28

    .line 827
    .line 828
    move-object/from16 v2, v29

    .line 829
    .line 830
    const/4 v13, 0x0

    .line 831
    const/16 v59, 0x0

    .line 832
    .line 833
    goto :goto_11

    .line 834
    :cond_13
    move-object/from16 v0, v34

    .line 835
    .line 836
    sget-object v13, Lq4/j;->n:Lq4/j;

    .line 837
    .line 838
    invoke-virtual {v7, v13}, Lq4/b;->k(Lq4/j;)Lq4/h;

    .line 839
    .line 840
    .line 841
    move-result-object v13

    .line 842
    invoke-virtual {v7, v2}, Lq4/b;->k(Lq4/j;)Lq4/h;

    .line 843
    .line 844
    .line 845
    move-result-object v28

    .line 846
    move-object/from16 v57, v1

    .line 847
    .line 848
    move-object/from16 v56, v2

    .line 849
    .line 850
    move-object/from16 v58, v5

    .line 851
    .line 852
    move-object/from16 v59, v28

    .line 853
    .line 854
    const/4 v1, 0x0

    .line 855
    const/4 v2, 0x0

    .line 856
    const/4 v5, 0x0

    .line 857
    :goto_11
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 858
    .line 859
    .line 860
    move-result-object v0

    .line 861
    invoke-virtual {v7, v4, v0}, Lq4/b;->i(Lq4/h;Ljava/lang/Object;)V

    .line 862
    .line 863
    .line 864
    new-instance v0, Lw4/q;

    .line 865
    .line 866
    move/from16 v60, v11

    .line 867
    .line 868
    iget-object v11, v14, Lq4/h;->b:Lq4/j;

    .line 869
    .line 870
    iget-object v11, v11, Lq4/j;->b:Ly4/c;

    .line 871
    .line 872
    sget-object v28, Lw4/o;->a:Lw4/n;

    .line 873
    .line 874
    move-object/from16 v61, v13

    .line 875
    .line 876
    iget v13, v11, Ly4/c;->b:I

    .line 877
    .line 878
    packed-switch v13, :pswitch_data_0

    .line 879
    .line 880
    .line 881
    invoke-static {v11}, Lw4/o;->a(Ly4/d;)V

    .line 882
    .line 883
    .line 884
    const/4 v0, 0x0

    .line 885
    throw v0

    .line 886
    :pswitch_0
    sget-object v11, Lw4/o;->a2:Lw4/n;

    .line 887
    .line 888
    :goto_12
    move-object/from16 v29, v11

    .line 889
    .line 890
    goto :goto_13

    .line 891
    :pswitch_1
    sget-object v11, Lw4/o;->e2:Lw4/n;

    .line 892
    .line 893
    goto :goto_12

    .line 894
    :pswitch_2
    sget-object v11, Lw4/o;->X1:Lw4/n;

    .line 895
    .line 896
    goto :goto_12

    .line 897
    :pswitch_3
    sget-object v11, Lw4/o;->W1:Lw4/n;

    .line 898
    .line 899
    goto :goto_12

    .line 900
    :pswitch_4
    sget-object v11, Lw4/o;->Y1:Lw4/n;

    .line 901
    .line 902
    goto :goto_12

    .line 903
    :pswitch_5
    sget-object v11, Lw4/o;->Z1:Lw4/n;

    .line 904
    .line 905
    goto :goto_12

    .line 906
    :pswitch_6
    sget-object v11, Lw4/o;->d2:Lw4/n;

    .line 907
    .line 908
    goto :goto_12

    .line 909
    :pswitch_7
    sget-object v11, Lw4/o;->c2:Lw4/n;

    .line 910
    .line 911
    goto :goto_12

    .line 912
    :pswitch_8
    sget-object v11, Lw4/o;->b2:Lw4/n;

    .line 913
    .line 914
    goto :goto_12

    .line 915
    :goto_13
    sget-object v31, Lw4/l;->c:Lw4/l;

    .line 916
    .line 917
    iget-object v11, v7, Lq4/b;->j:Ly4/b;

    .line 918
    .line 919
    iget-object v13, v7, Lq4/b;->h:Lw4/p;

    .line 920
    .line 921
    move-object/from16 v28, v0

    .line 922
    .line 923
    move-object/from16 v30, v13

    .line 924
    .line 925
    move-object/from16 v32, v11

    .line 926
    .line 927
    move-object/from16 v33, v47

    .line 928
    .line 929
    invoke-direct/range {v28 .. v33}, Lw4/q;-><init>(Lw4/n;Lw4/p;Lw4/l;Ly4/e;Lx4/a;)V

    .line 930
    .line 931
    .line 932
    const/4 v11, 0x0

    .line 933
    invoke-virtual {v7, v0, v11}, Lq4/b;->a(Lw4/f;Lq4/g;)V

    .line 934
    .line 935
    .line 936
    const/4 v0, 0x1

    .line 937
    invoke-virtual {v7, v14, v0}, Lq4/b;->j(Lq4/h;Z)V

    .line 938
    .line 939
    .line 940
    new-instance v0, Lw4/r;

    .line 941
    .line 942
    iget-object v11, v3, Lq4/h;->b:Lq4/j;

    .line 943
    .line 944
    iget-object v11, v11, Lq4/j;->b:Ly4/c;

    .line 945
    .line 946
    iget v13, v11, Ly4/c;->b:I

    .line 947
    .line 948
    packed-switch v13, :pswitch_data_1

    .line 949
    .line 950
    .line 951
    invoke-static {v11}, Lw4/o;->a(Ly4/d;)V

    .line 952
    .line 953
    .line 954
    const/4 v0, 0x0

    .line 955
    throw v0

    .line 956
    :pswitch_9
    sget-object v11, Lw4/o;->o1:Lw4/n;

    .line 957
    .line 958
    goto :goto_14

    .line 959
    :pswitch_a
    sget-object v11, Lw4/o;->s1:Lw4/n;

    .line 960
    .line 961
    goto :goto_14

    .line 962
    :pswitch_b
    sget-object v11, Lw4/o;->l1:Lw4/n;

    .line 963
    .line 964
    goto :goto_14

    .line 965
    :pswitch_c
    sget-object v11, Lw4/o;->k1:Lw4/n;

    .line 966
    .line 967
    goto :goto_14

    .line 968
    :pswitch_d
    sget-object v11, Lw4/o;->m1:Lw4/n;

    .line 969
    .line 970
    goto :goto_14

    .line 971
    :pswitch_e
    sget-object v11, Lw4/o;->n1:Lw4/n;

    .line 972
    .line 973
    goto :goto_14

    .line 974
    :pswitch_f
    sget-object v11, Lw4/o;->r1:Lw4/n;

    .line 975
    .line 976
    goto :goto_14

    .line 977
    :pswitch_10
    sget-object v11, Lw4/o;->q1:Lw4/n;

    .line 978
    .line 979
    goto :goto_14

    .line 980
    :pswitch_11
    sget-object v11, Lw4/o;->p1:Lw4/n;

    .line 981
    .line 982
    :goto_14
    invoke-virtual {v14}, Lq4/h;->a()Lw4/k;

    .line 983
    .line 984
    .line 985
    move-result-object v13

    .line 986
    invoke-virtual {v4}, Lq4/h;->a()Lw4/k;

    .line 987
    .line 988
    .line 989
    move-result-object v4

    .line 990
    invoke-static {v13, v4}, Lw4/l;->h(Lw4/k;Lw4/k;)Lw4/l;

    .line 991
    .line 992
    .line 993
    move-result-object v4

    .line 994
    iget-object v13, v7, Lq4/b;->h:Lw4/p;

    .line 995
    .line 996
    iget-object v14, v7, Lq4/b;->j:Ly4/b;

    .line 997
    .line 998
    invoke-direct {v0, v11, v13, v4, v14}, Lw4/r;-><init>(Lw4/n;Lw4/p;Lw4/l;Ly4/e;)V

    .line 999
    .line 1000
    .line 1001
    const/4 v4, 0x0

    .line 1002
    invoke-virtual {v7, v0, v4}, Lq4/b;->a(Lw4/f;Lq4/g;)V

    .line 1003
    .line 1004
    .line 1005
    const/4 v0, 0x1

    .line 1006
    invoke-virtual {v7, v3, v0}, Lq4/b;->j(Lq4/h;Z)V

    .line 1007
    .line 1008
    .line 1009
    invoke-static/range {v41 .. v41}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1010
    .line 1011
    .line 1012
    move-result-object v0

    .line 1013
    invoke-virtual {v7, v10, v0}, Lq4/b;->i(Lq4/h;Ljava/lang/Object;)V

    .line 1014
    .line 1015
    .line 1016
    new-instance v0, Lw4/q;

    .line 1017
    .line 1018
    iget-object v4, v12, Lq4/h;->b:Lq4/j;

    .line 1019
    .line 1020
    iget-object v11, v4, Lq4/j;->b:Ly4/c;

    .line 1021
    .line 1022
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1023
    .line 1024
    .line 1025
    move-object/from16 v70, v5

    .line 1026
    .line 1027
    invoke-virtual {v11}, Ly4/c;->d()Ly4/c;

    .line 1028
    .line 1029
    .line 1030
    move-result-object v5

    .line 1031
    iget v5, v5, Ly4/c;->b:I

    .line 1032
    .line 1033
    packed-switch v5, :pswitch_data_2

    .line 1034
    .line 1035
    .line 1036
    invoke-static {v11}, Lw4/o;->a(Ly4/d;)V

    .line 1037
    .line 1038
    .line 1039
    const/4 v0, 0x0

    .line 1040
    throw v0

    .line 1041
    :pswitch_12
    new-instance v5, Lw4/n;

    .line 1042
    .line 1043
    sget-object v65, Ly4/b;->d:Ly4/b;

    .line 1044
    .line 1045
    sget-object v66, Lw4/d;->d:Ly4/b;

    .line 1046
    .line 1047
    const/16 v63, 0x29

    .line 1048
    .line 1049
    const-string v69, "new-array-object"

    .line 1050
    .line 1051
    const/16 v67, 0x6

    .line 1052
    .line 1053
    const/16 v68, 0x0

    .line 1054
    .line 1055
    move-object/from16 v62, v5

    .line 1056
    .line 1057
    move-object/from16 v64, v11

    .line 1058
    .line 1059
    invoke-direct/range {v62 .. v69}, Lw4/n;-><init>(ILy4/c;Ly4/e;Ly4/b;IZLjava/lang/String;)V

    .line 1060
    .line 1061
    .line 1062
    :goto_15
    move-object/from16 v29, v5

    .line 1063
    .line 1064
    goto :goto_16

    .line 1065
    :pswitch_13
    sget-object v5, Lw4/o;->K1:Lw4/n;

    .line 1066
    .line 1067
    goto :goto_15

    .line 1068
    :pswitch_14
    sget-object v5, Lw4/o;->E1:Lw4/n;

    .line 1069
    .line 1070
    goto :goto_15

    .line 1071
    :pswitch_15
    sget-object v5, Lw4/o;->D1:Lw4/n;

    .line 1072
    .line 1073
    goto :goto_15

    .line 1074
    :pswitch_16
    sget-object v5, Lw4/o;->F1:Lw4/n;

    .line 1075
    .line 1076
    goto :goto_15

    .line 1077
    :pswitch_17
    sget-object v5, Lw4/o;->G1:Lw4/n;

    .line 1078
    .line 1079
    goto :goto_15

    .line 1080
    :pswitch_18
    sget-object v5, Lw4/o;->J1:Lw4/n;

    .line 1081
    .line 1082
    goto :goto_15

    .line 1083
    :pswitch_19
    sget-object v5, Lw4/o;->I1:Lw4/n;

    .line 1084
    .line 1085
    goto :goto_15

    .line 1086
    :pswitch_1a
    sget-object v5, Lw4/o;->H1:Lw4/n;

    .line 1087
    .line 1088
    goto :goto_15

    .line 1089
    :goto_16
    invoke-virtual {v10}, Lq4/h;->a()Lw4/k;

    .line 1090
    .line 1091
    .line 1092
    move-result-object v5

    .line 1093
    invoke-static {v5}, Lw4/l;->g(Lw4/k;)Lw4/l;

    .line 1094
    .line 1095
    .line 1096
    move-result-object v31

    .line 1097
    iget-object v5, v7, Lq4/b;->j:Ly4/b;

    .line 1098
    .line 1099
    iget-object v4, v4, Lq4/j;->c:Lx4/u;

    .line 1100
    .line 1101
    iget-object v10, v7, Lq4/b;->h:Lw4/p;

    .line 1102
    .line 1103
    move-object/from16 v28, v0

    .line 1104
    .line 1105
    move-object/from16 v30, v10

    .line 1106
    .line 1107
    move-object/from16 v32, v5

    .line 1108
    .line 1109
    move-object/from16 v33, v4

    .line 1110
    .line 1111
    invoke-direct/range {v28 .. v33}, Lw4/q;-><init>(Lw4/n;Lw4/p;Lw4/l;Ly4/e;Lx4/a;)V

    .line 1112
    .line 1113
    .line 1114
    const/4 v4, 0x0

    .line 1115
    invoke-virtual {v7, v0, v4}, Lq4/b;->a(Lw4/f;Lq4/g;)V

    .line 1116
    .line 1117
    .line 1118
    const/4 v0, 0x1

    .line 1119
    invoke-virtual {v7, v12, v0}, Lq4/b;->j(Lq4/h;Z)V

    .line 1120
    .line 1121
    .line 1122
    new-instance v0, Lw4/q;

    .line 1123
    .line 1124
    move-object/from16 v4, v45

    .line 1125
    .line 1126
    iget-object v5, v4, Lq4/h;->b:Lq4/j;

    .line 1127
    .line 1128
    iget-object v10, v5, Lq4/j;->b:Ly4/c;

    .line 1129
    .line 1130
    iget v11, v10, Ly4/c;->b:I

    .line 1131
    .line 1132
    packed-switch v11, :pswitch_data_3

    .line 1133
    .line 1134
    .line 1135
    invoke-static {v10}, Lw4/o;->a(Ly4/d;)V

    .line 1136
    .line 1137
    .line 1138
    const/4 v0, 0x0

    .line 1139
    throw v0

    .line 1140
    :pswitch_1b
    sget-object v10, Lw4/o;->R1:Lw4/n;

    .line 1141
    .line 1142
    :goto_17
    move-object/from16 v29, v10

    .line 1143
    .line 1144
    goto :goto_18

    .line 1145
    :pswitch_1c
    sget-object v10, Lw4/o;->V1:Lw4/n;

    .line 1146
    .line 1147
    goto :goto_17

    .line 1148
    :pswitch_1d
    sget-object v10, Lw4/o;->O1:Lw4/n;

    .line 1149
    .line 1150
    goto :goto_17

    .line 1151
    :pswitch_1e
    sget-object v10, Lw4/o;->N1:Lw4/n;

    .line 1152
    .line 1153
    goto :goto_17

    .line 1154
    :pswitch_1f
    sget-object v10, Lw4/o;->P1:Lw4/n;

    .line 1155
    .line 1156
    goto :goto_17

    .line 1157
    :pswitch_20
    sget-object v10, Lw4/o;->Q1:Lw4/n;

    .line 1158
    .line 1159
    goto :goto_17

    .line 1160
    :pswitch_21
    sget-object v10, Lw4/o;->U1:Lw4/n;

    .line 1161
    .line 1162
    goto :goto_17

    .line 1163
    :pswitch_22
    sget-object v10, Lw4/o;->T1:Lw4/n;

    .line 1164
    .line 1165
    goto :goto_17

    .line 1166
    :pswitch_23
    sget-object v10, Lw4/o;->S1:Lw4/n;

    .line 1167
    .line 1168
    goto :goto_17

    .line 1169
    :goto_18
    invoke-virtual/range {v44 .. v44}, Lq4/h;->a()Lw4/k;

    .line 1170
    .line 1171
    .line 1172
    move-result-object v10

    .line 1173
    invoke-static {v10}, Lw4/l;->g(Lw4/k;)Lw4/l;

    .line 1174
    .line 1175
    .line 1176
    move-result-object v31

    .line 1177
    iget-object v10, v7, Lq4/b;->j:Ly4/b;

    .line 1178
    .line 1179
    iget-object v11, v7, Lq4/b;->h:Lw4/p;

    .line 1180
    .line 1181
    move-object/from16 v28, v0

    .line 1182
    .line 1183
    move-object/from16 v30, v11

    .line 1184
    .line 1185
    move-object/from16 v32, v10

    .line 1186
    .line 1187
    move-object/from16 v33, v40

    .line 1188
    .line 1189
    invoke-direct/range {v28 .. v33}, Lw4/q;-><init>(Lw4/n;Lw4/p;Lw4/l;Ly4/e;Lx4/a;)V

    .line 1190
    .line 1191
    .line 1192
    const/4 v10, 0x0

    .line 1193
    invoke-virtual {v7, v0, v10}, Lq4/b;->a(Lw4/f;Lq4/g;)V

    .line 1194
    .line 1195
    .line 1196
    const/4 v0, 0x1

    .line 1197
    invoke-virtual {v7, v4, v0}, Lq4/b;->j(Lq4/h;Z)V

    .line 1198
    .line 1199
    .line 1200
    invoke-virtual {v7, v6, v10}, Lq4/b;->i(Lq4/h;Ljava/lang/Object;)V

    .line 1201
    .line 1202
    .line 1203
    new-instance v0, Lq4/g;

    .line 1204
    .line 1205
    invoke-direct {v0}, Lq4/g;-><init>()V

    .line 1206
    .line 1207
    .line 1208
    invoke-virtual {v7, v0}, Lq4/b;->b(Lq4/g;)V

    .line 1209
    .line 1210
    .line 1211
    iget-object v10, v6, Lq4/h;->b:Lq4/j;

    .line 1212
    .line 1213
    iget-object v10, v10, Lq4/j;->b:Ly4/c;

    .line 1214
    .line 1215
    iget-object v5, v5, Lq4/j;->b:Ly4/c;

    .line 1216
    .line 1217
    invoke-static {v10, v5}, Ly4/b;->h(Ly4/c;Ly4/c;)Ly4/b;

    .line 1218
    .line 1219
    .line 1220
    move-result-object v5

    .line 1221
    sget-object v10, Lw4/o;->A:Lw4/n;

    .line 1222
    .line 1223
    sget-object v11, Lw4/o;->G:Lw4/n;

    .line 1224
    .line 1225
    sget-object v28, Lw4/o;->s:Lw4/n;

    .line 1226
    .line 1227
    sget-object v29, Lw4/o;->y:Lw4/n;

    .line 1228
    .line 1229
    move-object/from16 v30, v10

    .line 1230
    .line 1231
    move-object v10, v5

    .line 1232
    check-cast v10, Lb5/c;

    .line 1233
    .line 1234
    iget-object v10, v10, Lb5/c;->b:[Ljava/lang/Object;

    .line 1235
    .line 1236
    array-length v10, v10

    .line 1237
    move-object/from16 v45, v1

    .line 1238
    .line 1239
    const/4 v1, 0x1

    .line 1240
    if-eq v10, v1, :cond_15

    .line 1241
    .line 1242
    const/4 v1, 0x2

    .line 1243
    if-ne v10, v1, :cond_16

    .line 1244
    .line 1245
    const/4 v1, 0x0

    .line 1246
    invoke-interface {v5, v1}, Ly4/e;->b(I)Ly4/c;

    .line 1247
    .line 1248
    .line 1249
    move-result-object v10

    .line 1250
    invoke-virtual {v10}, Ly4/c;->b()I

    .line 1251
    .line 1252
    .line 1253
    move-result v1

    .line 1254
    const/4 v10, 0x1

    .line 1255
    invoke-interface {v5, v10}, Ly4/e;->b(I)Ly4/c;

    .line 1256
    .line 1257
    .line 1258
    move-result-object v28

    .line 1259
    invoke-virtual/range {v28 .. v28}, Ly4/c;->b()I

    .line 1260
    .line 1261
    .line 1262
    move-result v10

    .line 1263
    if-ne v1, v10, :cond_16

    .line 1264
    .line 1265
    const/4 v10, 0x6

    .line 1266
    if-eq v1, v10, :cond_14

    .line 1267
    .line 1268
    const/16 v10, 0x9

    .line 1269
    .line 1270
    if-ne v1, v10, :cond_16

    .line 1271
    .line 1272
    if-eqz v11, :cond_16

    .line 1273
    .line 1274
    move-object v10, v11

    .line 1275
    goto :goto_19

    .line 1276
    :cond_14
    move-object/from16 v10, v30

    .line 1277
    .line 1278
    goto :goto_19

    .line 1279
    :cond_15
    const/4 v1, 0x0

    .line 1280
    invoke-interface {v5, v1}, Ly4/e;->b(I)Ly4/c;

    .line 1281
    .line 1282
    .line 1283
    move-result-object v10

    .line 1284
    invoke-virtual {v10}, Ly4/c;->b()I

    .line 1285
    .line 1286
    .line 1287
    move-result v1

    .line 1288
    const/4 v10, 0x6

    .line 1289
    if-eq v1, v10, :cond_17

    .line 1290
    .line 1291
    const/16 v10, 0x9

    .line 1292
    .line 1293
    if-ne v1, v10, :cond_16

    .line 1294
    .line 1295
    if-eqz v29, :cond_16

    .line 1296
    .line 1297
    move-object/from16 v10, v29

    .line 1298
    .line 1299
    goto :goto_19

    .line 1300
    :cond_16
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 1301
    .line 1302
    new-instance v1, Ljava/lang/StringBuilder;

    .line 1303
    .line 1304
    const-string v2, "bad types: "

    .line 1305
    .line 1306
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1307
    .line 1308
    .line 1309
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1310
    .line 1311
    .line 1312
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1313
    .line 1314
    .line 1315
    move-result-object v1

    .line 1316
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 1317
    .line 1318
    .line 1319
    throw v0

    .line 1320
    :cond_17
    move-object/from16 v10, v28

    .line 1321
    .line 1322
    :goto_19
    new-instance v1, Lw4/i;

    .line 1323
    .line 1324
    invoke-virtual {v6}, Lq4/h;->a()Lw4/k;

    .line 1325
    .line 1326
    .line 1327
    move-result-object v5

    .line 1328
    invoke-virtual {v4}, Lq4/h;->a()Lw4/k;

    .line 1329
    .line 1330
    .line 1331
    move-result-object v6

    .line 1332
    invoke-static {v5, v6}, Lw4/l;->h(Lw4/k;Lw4/k;)Lw4/l;

    .line 1333
    .line 1334
    .line 1335
    move-result-object v5

    .line 1336
    const/4 v6, 0x0

    .line 1337
    invoke-direct {v1, v10, v13, v6, v5}, Lw4/i;-><init>(Lw4/n;Lw4/p;Lw4/k;Lw4/l;)V

    .line 1338
    .line 1339
    .line 1340
    invoke-virtual {v7, v1, v0}, Lq4/b;->a(Lw4/f;Lq4/g;)V

    .line 1341
    .line 1342
    .line 1343
    move/from16 v5, v41

    .line 1344
    .line 1345
    const/4 v1, 0x0

    .line 1346
    :goto_1a
    if-ge v1, v5, :cond_1c

    .line 1347
    .line 1348
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1349
    .line 1350
    .line 1351
    move-result-object v6

    .line 1352
    move-object/from16 v10, v48

    .line 1353
    .line 1354
    invoke-virtual {v7, v10, v6}, Lq4/b;->i(Lq4/h;Ljava/lang/Object;)V

    .line 1355
    .line 1356
    .line 1357
    aget-object v6, v9, v1

    .line 1358
    .line 1359
    invoke-virtual {v7, v1, v6}, Lq4/b;->e(ILq4/j;)Lq4/h;

    .line 1360
    .line 1361
    .line 1362
    move-result-object v6

    .line 1363
    sget-object v11, La5/d;->j:Ljava/util/HashMap;

    .line 1364
    .line 1365
    move/from16 v41, v5

    .line 1366
    .line 1367
    iget-object v5, v6, Lq4/h;->b:Lq4/j;

    .line 1368
    .line 1369
    invoke-virtual {v11, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1370
    .line 1371
    .line 1372
    move-result-object v5

    .line 1373
    check-cast v5, Lq4/i;

    .line 1374
    .line 1375
    if-nez v5, :cond_18

    .line 1376
    .line 1377
    move-object/from16 v62, v2

    .line 1378
    .line 1379
    move-object/from16 v48, v9

    .line 1380
    .line 1381
    move-object/from16 v63, v15

    .line 1382
    .line 1383
    goto :goto_1c

    .line 1384
    :cond_18
    move-object/from16 v48, v9

    .line 1385
    .line 1386
    const/4 v11, 0x1

    .line 1387
    new-array v9, v11, [Lq4/h;

    .line 1388
    .line 1389
    const/16 v16, 0x0

    .line 1390
    .line 1391
    aput-object v6, v9, v16

    .line 1392
    .line 1393
    invoke-virtual {v5, v11}, Lq4/i;->a(Z)Ljava/lang/String;

    .line 1394
    .line 1395
    .line 1396
    move-result-object v6

    .line 1397
    if-eqz v6, :cond_1b

    .line 1398
    .line 1399
    sget-object v11, Ly4/a;->e:Lj$/util/concurrent/ConcurrentHashMap;

    .line 1400
    .line 1401
    invoke-virtual {v11, v6}, Lj$/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1402
    .line 1403
    .line 1404
    move-result-object v28

    .line 1405
    check-cast v28, Ly4/a;

    .line 1406
    .line 1407
    if-eqz v28, :cond_19

    .line 1408
    .line 1409
    move-object/from16 v62, v2

    .line 1410
    .line 1411
    goto :goto_1b

    .line 1412
    :cond_19
    invoke-static {v6}, Ly4/a;->b(Ljava/lang/String;)Ly4/a;

    .line 1413
    .line 1414
    .line 1415
    move-result-object v6

    .line 1416
    move-object/from16 v62, v2

    .line 1417
    .line 1418
    iget-object v2, v6, Ly4/a;->a:Ljava/lang/String;

    .line 1419
    .line 1420
    invoke-virtual {v11, v2, v6}, Lj$/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1421
    .line 1422
    .line 1423
    move-result-object v2

    .line 1424
    check-cast v2, Ly4/a;

    .line 1425
    .line 1426
    if-eqz v2, :cond_1a

    .line 1427
    .line 1428
    move-object/from16 v28, v2

    .line 1429
    .line 1430
    goto :goto_1b

    .line 1431
    :cond_1a
    move-object/from16 v28, v6

    .line 1432
    .line 1433
    :goto_1b
    sget-object v2, Lw4/o;->a:Lw4/n;

    .line 1434
    .line 1435
    new-instance v2, Lw4/n;

    .line 1436
    .line 1437
    invoke-virtual/range {v28 .. v28}, Ly4/a;->c()Ly4/b;

    .line 1438
    .line 1439
    .line 1440
    move-result-object v6

    .line 1441
    sget-object v11, Ly4/b;->j:Ly4/b;

    .line 1442
    .line 1443
    move-object/from16 v63, v15

    .line 1444
    .line 1445
    const/16 v15, 0x31

    .line 1446
    .line 1447
    invoke-direct {v2, v15, v6, v11}, Lw4/n;-><init>(ILy4/b;Ly4/b;)V

    .line 1448
    .line 1449
    .line 1450
    const/16 v32, 0x0

    .line 1451
    .line 1452
    move-object/from16 v28, v7

    .line 1453
    .line 1454
    move-object/from16 v29, v2

    .line 1455
    .line 1456
    move-object/from16 v30, v5

    .line 1457
    .line 1458
    move-object/from16 v31, v50

    .line 1459
    .line 1460
    move-object/from16 v33, v9

    .line 1461
    .line 1462
    invoke-virtual/range {v28 .. v33}, Lq4/b;->g(Lw4/n;Lq4/i;Lq4/h;Lq4/h;[Lq4/h;)V

    .line 1463
    .line 1464
    .line 1465
    move-object/from16 v6, v50

    .line 1466
    .line 1467
    :goto_1c
    new-instance v2, Lw4/r;

    .line 1468
    .line 1469
    iget-object v5, v6, Lq4/h;->b:Lq4/j;

    .line 1470
    .line 1471
    iget-object v5, v5, Lq4/j;->b:Ly4/c;

    .line 1472
    .line 1473
    sget-object v9, Lw4/o;->a:Lw4/n;

    .line 1474
    .line 1475
    iget v9, v5, Ly4/c;->b:I

    .line 1476
    .line 1477
    packed-switch v9, :pswitch_data_4

    .line 1478
    .line 1479
    .line 1480
    invoke-static {v5}, Lw4/o;->a(Ly4/d;)V

    .line 1481
    .line 1482
    .line 1483
    const/4 v0, 0x0

    .line 1484
    throw v0

    .line 1485
    :pswitch_24
    sget-object v5, Lw4/o;->x1:Lw4/n;

    .line 1486
    .line 1487
    goto :goto_1d

    .line 1488
    :pswitch_25
    sget-object v5, Lw4/o;->B1:Lw4/n;

    .line 1489
    .line 1490
    goto :goto_1d

    .line 1491
    :pswitch_26
    sget-object v5, Lw4/o;->u1:Lw4/n;

    .line 1492
    .line 1493
    goto :goto_1d

    .line 1494
    :pswitch_27
    sget-object v5, Lw4/o;->t1:Lw4/n;

    .line 1495
    .line 1496
    goto :goto_1d

    .line 1497
    :pswitch_28
    sget-object v5, Lw4/o;->v1:Lw4/n;

    .line 1498
    .line 1499
    goto :goto_1d

    .line 1500
    :pswitch_29
    sget-object v5, Lw4/o;->w1:Lw4/n;

    .line 1501
    .line 1502
    goto :goto_1d

    .line 1503
    :pswitch_2a
    sget-object v5, Lw4/o;->A1:Lw4/n;

    .line 1504
    .line 1505
    goto :goto_1d

    .line 1506
    :pswitch_2b
    sget-object v5, Lw4/o;->z1:Lw4/n;

    .line 1507
    .line 1508
    goto :goto_1d

    .line 1509
    :pswitch_2c
    sget-object v5, Lw4/o;->y1:Lw4/n;

    .line 1510
    .line 1511
    :goto_1d
    invoke-virtual {v6}, Lq4/h;->a()Lw4/k;

    .line 1512
    .line 1513
    .line 1514
    move-result-object v6

    .line 1515
    invoke-virtual {v12}, Lq4/h;->a()Lw4/k;

    .line 1516
    .line 1517
    .line 1518
    move-result-object v9

    .line 1519
    invoke-virtual {v10}, Lq4/h;->a()Lw4/k;

    .line 1520
    .line 1521
    .line 1522
    move-result-object v11

    .line 1523
    new-instance v15, Lw4/l;

    .line 1524
    .line 1525
    move-object/from16 v28, v10

    .line 1526
    .line 1527
    const/4 v10, 0x3

    .line 1528
    invoke-direct {v15, v10}, Lw4/l;-><init>(I)V

    .line 1529
    .line 1530
    .line 1531
    const/4 v10, 0x0

    .line 1532
    invoke-virtual {v15, v10, v6}, Lb5/c;->e(ILjava/lang/Object;)V

    .line 1533
    .line 1534
    .line 1535
    const/4 v6, 0x1

    .line 1536
    invoke-virtual {v15, v6, v9}, Lb5/c;->e(ILjava/lang/Object;)V

    .line 1537
    .line 1538
    .line 1539
    const/4 v9, 0x2

    .line 1540
    invoke-virtual {v15, v9, v11}, Lb5/c;->e(ILjava/lang/Object;)V

    .line 1541
    .line 1542
    .line 1543
    invoke-direct {v2, v5, v13, v15, v14}, Lw4/r;-><init>(Lw4/n;Lw4/p;Lw4/l;Ly4/e;)V

    .line 1544
    .line 1545
    .line 1546
    const/4 v5, 0x0

    .line 1547
    invoke-virtual {v7, v2, v5}, Lq4/b;->a(Lw4/f;Lq4/g;)V

    .line 1548
    .line 1549
    .line 1550
    add-int/2addr v1, v6

    .line 1551
    move/from16 v5, v41

    .line 1552
    .line 1553
    move-object/from16 v9, v48

    .line 1554
    .line 1555
    move-object/from16 v2, v62

    .line 1556
    .line 1557
    move-object/from16 v15, v63

    .line 1558
    .line 1559
    move-object/from16 v48, v28

    .line 1560
    .line 1561
    goto/16 :goto_1a

    .line 1562
    .line 1563
    :cond_1b
    sget-object v0, Ly4/a;->e:Lj$/util/concurrent/ConcurrentHashMap;

    .line 1564
    .line 1565
    new-instance v0, Ljava/lang/NullPointerException;

    .line 1566
    .line 1567
    move-object/from16 v1, v39

    .line 1568
    .line 1569
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 1570
    .line 1571
    .line 1572
    throw v0

    .line 1573
    :cond_1c
    move-object/from16 v62, v2

    .line 1574
    .line 1575
    move-object/from16 v48, v9

    .line 1576
    .line 1577
    move-object/from16 v63, v15

    .line 1578
    .line 1579
    move-object/from16 v1, v39

    .line 1580
    .line 1581
    const/4 v2, 0x3

    .line 1582
    const/4 v6, 0x1

    .line 1583
    new-array v5, v2, [Lq4/h;

    .line 1584
    .line 1585
    const/4 v9, 0x0

    .line 1586
    aput-object v44, v5, v9

    .line 1587
    .line 1588
    aput-object v3, v5, v6

    .line 1589
    .line 1590
    const/4 v3, 0x2

    .line 1591
    aput-object v12, v5, v3

    .line 1592
    .line 1593
    move-object/from16 v9, v38

    .line 1594
    .line 1595
    invoke-virtual {v9, v6}, Lq4/i;->a(Z)Ljava/lang/String;

    .line 1596
    .line 1597
    .line 1598
    move-result-object v10

    .line 1599
    if-eqz v10, :cond_2d

    .line 1600
    .line 1601
    sget-object v6, Ly4/a;->e:Lj$/util/concurrent/ConcurrentHashMap;

    .line 1602
    .line 1603
    invoke-virtual {v6, v10}, Lj$/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1604
    .line 1605
    .line 1606
    move-result-object v11

    .line 1607
    check-cast v11, Ly4/a;

    .line 1608
    .line 1609
    if-eqz v11, :cond_1d

    .line 1610
    .line 1611
    goto :goto_1e

    .line 1612
    :cond_1d
    invoke-static {v10}, Ly4/a;->b(Ljava/lang/String;)Ly4/a;

    .line 1613
    .line 1614
    .line 1615
    move-result-object v10

    .line 1616
    iget-object v11, v10, Ly4/a;->a:Ljava/lang/String;

    .line 1617
    .line 1618
    invoke-virtual {v6, v11, v10}, Lj$/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1619
    .line 1620
    .line 1621
    move-result-object v11

    .line 1622
    check-cast v11, Ly4/a;

    .line 1623
    .line 1624
    if-eqz v11, :cond_1e

    .line 1625
    .line 1626
    goto :goto_1e

    .line 1627
    :cond_1e
    move-object v11, v10

    .line 1628
    :goto_1e
    sget-object v10, Lw4/o;->a:Lw4/n;

    .line 1629
    .line 1630
    new-instance v10, Lw4/n;

    .line 1631
    .line 1632
    invoke-virtual {v11}, Ly4/a;->c()Ly4/b;

    .line 1633
    .line 1634
    .line 1635
    move-result-object v11

    .line 1636
    sget-object v12, Ly4/b;->j:Ly4/b;

    .line 1637
    .line 1638
    const/16 v14, 0x35

    .line 1639
    .line 1640
    invoke-direct {v10, v14, v11, v12}, Lw4/n;-><init>(ILy4/b;Ly4/b;)V

    .line 1641
    .line 1642
    .line 1643
    move-object/from16 v28, v7

    .line 1644
    .line 1645
    move-object/from16 v29, v10

    .line 1646
    .line 1647
    move-object/from16 v30, v9

    .line 1648
    .line 1649
    move-object/from16 v31, v46

    .line 1650
    .line 1651
    move-object/from16 v32, v4

    .line 1652
    .line 1653
    move-object/from16 v33, v5

    .line 1654
    .line 1655
    invoke-virtual/range {v28 .. v33}, Lq4/b;->g(Lw4/n;Lq4/i;Lq4/h;Lq4/h;[Lq4/h;)V

    .line 1656
    .line 1657
    .line 1658
    sget-object v4, La5/d;->k:Ljava/util/HashMap;

    .line 1659
    .line 1660
    invoke-virtual {v4, v8}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 1661
    .line 1662
    .line 1663
    move-result v5

    .line 1664
    if-eqz v5, :cond_22

    .line 1665
    .line 1666
    move-object/from16 v5, v46

    .line 1667
    .line 1668
    move-object/from16 v10, v54

    .line 1669
    .line 1670
    invoke-virtual {v7, v10, v5}, Lq4/b;->c(Lq4/h;Lq4/h;)V

    .line 1671
    .line 1672
    .line 1673
    invoke-virtual {v4, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1674
    .line 1675
    .line 1676
    move-result-object v4

    .line 1677
    check-cast v4, Lq4/i;

    .line 1678
    .line 1679
    const/4 v11, 0x0

    .line 1680
    new-array v5, v11, [Lq4/h;

    .line 1681
    .line 1682
    const/4 v14, 0x1

    .line 1683
    invoke-virtual {v4, v14}, Lq4/i;->a(Z)Ljava/lang/String;

    .line 1684
    .line 1685
    .line 1686
    move-result-object v15

    .line 1687
    if-eqz v15, :cond_21

    .line 1688
    .line 1689
    invoke-virtual {v6, v15}, Lj$/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1690
    .line 1691
    .line 1692
    move-result-object v14

    .line 1693
    check-cast v14, Ly4/a;

    .line 1694
    .line 1695
    if-eqz v14, :cond_1f

    .line 1696
    .line 1697
    goto :goto_1f

    .line 1698
    :cond_1f
    invoke-static {v15}, Ly4/a;->b(Ljava/lang/String;)Ly4/a;

    .line 1699
    .line 1700
    .line 1701
    move-result-object v14

    .line 1702
    iget-object v15, v14, Ly4/a;->a:Ljava/lang/String;

    .line 1703
    .line 1704
    invoke-virtual {v6, v15, v14}, Lj$/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1705
    .line 1706
    .line 1707
    move-result-object v6

    .line 1708
    check-cast v6, Ly4/a;

    .line 1709
    .line 1710
    if-eqz v6, :cond_20

    .line 1711
    .line 1712
    move-object v14, v6

    .line 1713
    :cond_20
    :goto_1f
    new-instance v6, Lw4/n;

    .line 1714
    .line 1715
    invoke-virtual {v14}, Ly4/a;->c()Ly4/b;

    .line 1716
    .line 1717
    .line 1718
    move-result-object v14

    .line 1719
    const/16 v15, 0x32

    .line 1720
    .line 1721
    invoke-direct {v6, v15, v14, v12}, Lw4/n;-><init>(ILy4/b;Ly4/b;)V

    .line 1722
    .line 1723
    .line 1724
    move-object/from16 v28, v7

    .line 1725
    .line 1726
    move-object/from16 v29, v6

    .line 1727
    .line 1728
    move-object/from16 v30, v4

    .line 1729
    .line 1730
    move-object/from16 v31, v51

    .line 1731
    .line 1732
    move-object/from16 v32, v10

    .line 1733
    .line 1734
    move-object/from16 v33, v5

    .line 1735
    .line 1736
    invoke-virtual/range {v28 .. v33}, Lq4/b;->g(Lw4/n;Lq4/i;Lq4/h;Lq4/h;[Lq4/h;)V

    .line 1737
    .line 1738
    .line 1739
    move-object/from16 v4, v51

    .line 1740
    .line 1741
    invoke-virtual {v7, v4}, Lq4/b;->l(Lq4/h;)V

    .line 1742
    .line 1743
    .line 1744
    goto :goto_20

    .line 1745
    :cond_21
    new-instance v0, Ljava/lang/NullPointerException;

    .line 1746
    .line 1747
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 1748
    .line 1749
    .line 1750
    throw v0

    .line 1751
    :cond_22
    move-object/from16 v5, v46

    .line 1752
    .line 1753
    move-object/from16 v4, v51

    .line 1754
    .line 1755
    const/4 v11, 0x0

    .line 1756
    sget-object v6, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    .line 1757
    .line 1758
    invoke-virtual {v6, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 1759
    .line 1760
    .line 1761
    move-result v6

    .line 1762
    if-eqz v6, :cond_23

    .line 1763
    .line 1764
    invoke-virtual {v7}, Lq4/b;->m()V

    .line 1765
    .line 1766
    .line 1767
    goto :goto_20

    .line 1768
    :cond_23
    invoke-virtual {v7, v4, v5}, Lq4/b;->c(Lq4/h;Lq4/h;)V

    .line 1769
    .line 1770
    .line 1771
    invoke-virtual {v7, v4}, Lq4/b;->l(Lq4/h;)V

    .line 1772
    .line 1773
    .line 1774
    :goto_20
    invoke-virtual {v7, v0}, Lq4/b;->b(Lq4/g;)V

    .line 1775
    .line 1776
    .line 1777
    iget-boolean v4, v0, Lq4/g;->c:Z

    .line 1778
    .line 1779
    if-nez v4, :cond_2c

    .line 1780
    .line 1781
    const/4 v4, 0x1

    .line 1782
    iput-boolean v4, v0, Lq4/g;->c:Z

    .line 1783
    .line 1784
    iget-object v4, v7, Lq4/b;->c:Lq4/g;

    .line 1785
    .line 1786
    if-eqz v4, :cond_24

    .line 1787
    .line 1788
    invoke-virtual {v7, v0}, Lq4/b;->b(Lq4/g;)V

    .line 1789
    .line 1790
    .line 1791
    new-instance v4, Lw4/i;

    .line 1792
    .line 1793
    sget-object v5, Lw4/o;->r:Lw4/n;

    .line 1794
    .line 1795
    sget-object v6, Lw4/l;->c:Lw4/l;

    .line 1796
    .line 1797
    const/4 v10, 0x0

    .line 1798
    invoke-direct {v4, v5, v13, v10, v6}, Lw4/i;-><init>(Lw4/n;Lw4/p;Lw4/k;Lw4/l;)V

    .line 1799
    .line 1800
    .line 1801
    invoke-virtual {v7, v4, v0}, Lq4/b;->a(Lw4/f;Lq4/g;)V

    .line 1802
    .line 1803
    .line 1804
    :cond_24
    iput-object v0, v7, Lq4/b;->c:Lq4/g;

    .line 1805
    .line 1806
    invoke-virtual/range {v63 .. v63}, Ljava/lang/reflect/Method;->getModifiers()I

    .line 1807
    .line 1808
    .line 1809
    move-result v0

    .line 1810
    and-int/lit16 v0, v0, 0x400

    .line 1811
    .line 1812
    if-nez v0, :cond_27

    .line 1813
    .line 1814
    move-object/from16 v4, v62

    .line 1815
    .line 1816
    const/4 v0, 0x0

    .line 1817
    :goto_21
    array-length v5, v4

    .line 1818
    if-ge v0, v5, :cond_25

    .line 1819
    .line 1820
    aget-object v5, v48, v0

    .line 1821
    .line 1822
    invoke-virtual {v7, v0, v5}, Lq4/b;->e(ILq4/j;)Lq4/h;

    .line 1823
    .line 1824
    .line 1825
    move-result-object v5

    .line 1826
    aput-object v5, v4, v0

    .line 1827
    .line 1828
    const/4 v5, 0x1

    .line 1829
    add-int/2addr v0, v5

    .line 1830
    goto :goto_21

    .line 1831
    :cond_25
    sget-object v0, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    .line 1832
    .line 1833
    invoke-virtual {v0, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 1834
    .line 1835
    .line 1836
    move-result v0

    .line 1837
    if-eqz v0, :cond_26

    .line 1838
    .line 1839
    move-object/from16 v5, v44

    .line 1840
    .line 1841
    move-object/from16 v13, v45

    .line 1842
    .line 1843
    const/4 v0, 0x0

    .line 1844
    invoke-virtual {v7, v13, v0, v5, v4}, Lq4/b;->h(Lq4/i;Lq4/h;Lq4/h;[Lq4/h;)V

    .line 1845
    .line 1846
    .line 1847
    invoke-virtual {v7}, Lq4/b;->m()V

    .line 1848
    .line 1849
    .line 1850
    :goto_22
    move-object/from16 v0, v63

    .line 1851
    .line 1852
    goto :goto_23

    .line 1853
    :cond_26
    move-object/from16 v5, v44

    .line 1854
    .line 1855
    move-object/from16 v13, v45

    .line 1856
    .line 1857
    move-object/from16 v0, v70

    .line 1858
    .line 1859
    invoke-virtual {v7, v13, v0, v5, v4}, Lq4/b;->h(Lq4/i;Lq4/h;Lq4/h;[Lq4/h;)V

    .line 1860
    .line 1861
    .line 1862
    invoke-virtual {v7, v0}, Lq4/b;->l(Lq4/h;)V

    .line 1863
    .line 1864
    .line 1865
    goto :goto_22

    .line 1866
    :cond_27
    move-object/from16 v13, v45

    .line 1867
    .line 1868
    move-object/from16 v5, v59

    .line 1869
    .line 1870
    move-object/from16 v4, v61

    .line 1871
    .line 1872
    move-object/from16 v0, v63

    .line 1873
    .line 1874
    invoke-static {v7, v0, v4, v5}, La5/d;->d(Lq4/b;Ljava/lang/reflect/Method;Lq4/h;Lq4/h;)V

    .line 1875
    .line 1876
    .line 1877
    :goto_23
    invoke-static {v0}, La5/d;->c(Ljava/lang/reflect/Method;)Ljava/lang/String;

    .line 1878
    .line 1879
    .line 1880
    move-result-object v4

    .line 1881
    move-object/from16 v5, v43

    .line 1882
    .line 1883
    move-object/from16 v6, v48

    .line 1884
    .line 1885
    move-object/from16 v7, v58

    .line 1886
    .line 1887
    invoke-virtual {v5, v7, v4, v6}, Lq4/j;->b(Lq4/j;Ljava/lang/String;[Lq4/j;)Lq4/i;

    .line 1888
    .line 1889
    .line 1890
    move-result-object v4

    .line 1891
    move-object/from16 v10, v42

    .line 1892
    .line 1893
    invoke-virtual {v10, v4}, Lkf/d;->r(Lq4/i;)Lq4/b;

    .line 1894
    .line 1895
    .line 1896
    move-result-object v4

    .line 1897
    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getModifiers()I

    .line 1898
    .line 1899
    .line 1900
    move-result v12

    .line 1901
    and-int/lit16 v12, v12, 0x400

    .line 1902
    .line 1903
    if-nez v12, :cond_2b

    .line 1904
    .line 1905
    iget-object v0, v4, Lq4/b;->e:Lq4/h;

    .line 1906
    .line 1907
    if-eqz v0, :cond_2a

    .line 1908
    .line 1909
    invoke-static {v0, v5}, Lq4/b;->d(Lq4/h;Lq4/j;)V

    .line 1910
    .line 1911
    .line 1912
    move-object/from16 v12, v57

    .line 1913
    .line 1914
    array-length v12, v12

    .line 1915
    new-array v14, v12, [Lq4/h;

    .line 1916
    .line 1917
    const/4 v15, 0x0

    .line 1918
    :goto_24
    if-ge v15, v12, :cond_28

    .line 1919
    .line 1920
    aget-object v2, v6, v15

    .line 1921
    .line 1922
    invoke-virtual {v4, v15, v2}, Lq4/b;->e(ILq4/j;)Lq4/h;

    .line 1923
    .line 1924
    .line 1925
    move-result-object v2

    .line 1926
    aput-object v2, v14, v15

    .line 1927
    .line 1928
    const/4 v2, 0x1

    .line 1929
    add-int/2addr v15, v2

    .line 1930
    const/4 v2, 0x3

    .line 1931
    goto :goto_24

    .line 1932
    :cond_28
    sget-object v2, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    .line 1933
    .line 1934
    invoke-virtual {v2, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 1935
    .line 1936
    .line 1937
    move-result v2

    .line 1938
    if-eqz v2, :cond_29

    .line 1939
    .line 1940
    const/4 v2, 0x0

    .line 1941
    invoke-virtual {v4, v13, v2, v0, v14}, Lq4/b;->h(Lq4/i;Lq4/h;Lq4/h;[Lq4/h;)V

    .line 1942
    .line 1943
    .line 1944
    invoke-virtual {v4}, Lq4/b;->m()V

    .line 1945
    .line 1946
    .line 1947
    goto :goto_25

    .line 1948
    :cond_29
    invoke-virtual {v4, v7}, Lq4/b;->k(Lq4/j;)Lq4/h;

    .line 1949
    .line 1950
    .line 1951
    move-result-object v2

    .line 1952
    invoke-virtual {v4, v13, v2, v0, v14}, Lq4/b;->h(Lq4/i;Lq4/h;Lq4/h;[Lq4/h;)V

    .line 1953
    .line 1954
    .line 1955
    invoke-virtual {v4, v2}, Lq4/b;->l(Lq4/h;)V

    .line 1956
    .line 1957
    .line 1958
    :goto_25
    move-object/from16 v2, v37

    .line 1959
    .line 1960
    :goto_26
    const/4 v0, 0x1

    .line 1961
    goto :goto_27

    .line 1962
    :cond_2a
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 1963
    .line 1964
    move-object/from16 v2, v37

    .line 1965
    .line 1966
    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 1967
    .line 1968
    .line 1969
    throw v0

    .line 1970
    :cond_2b
    move-object/from16 v2, v37

    .line 1971
    .line 1972
    sget-object v6, Lq4/j;->n:Lq4/j;

    .line 1973
    .line 1974
    invoke-virtual {v4, v6}, Lq4/b;->k(Lq4/j;)Lq4/h;

    .line 1975
    .line 1976
    .line 1977
    move-result-object v6

    .line 1978
    move-object/from16 v7, v56

    .line 1979
    .line 1980
    invoke-virtual {v4, v7}, Lq4/b;->k(Lq4/j;)Lq4/h;

    .line 1981
    .line 1982
    .line 1983
    move-result-object v7

    .line 1984
    invoke-static {v4, v0, v6, v7}, La5/d;->d(Lq4/b;Ljava/lang/reflect/Method;Lq4/h;Lq4/h;)V

    .line 1985
    .line 1986
    .line 1987
    goto :goto_26

    .line 1988
    :goto_27
    add-int/lit8 v4, v60, 0x1

    .line 1989
    .line 1990
    move v11, v4

    .line 1991
    move-object v4, v5

    .line 1992
    move-object v8, v9

    .line 1993
    move-object v14, v10

    .line 1994
    move-object/from16 v7, v40

    .line 1995
    .line 1996
    move-object/from16 v12, v47

    .line 1997
    .line 1998
    move-object/from16 v10, v49

    .line 1999
    .line 2000
    move-object/from16 v3, v52

    .line 2001
    .line 2002
    move-object/from16 v6, v53

    .line 2003
    .line 2004
    move-object/from16 v0, v55

    .line 2005
    .line 2006
    move-object v5, v1

    .line 2007
    move-object v9, v2

    .line 2008
    move/from16 v1, v35

    .line 2009
    .line 2010
    move-object/from16 v2, v36

    .line 2011
    .line 2012
    goto/16 :goto_e

    .line 2013
    .line 2014
    :cond_2c
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 2015
    .line 2016
    const-string v1, "already marked"

    .line 2017
    .line 2018
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 2019
    .line 2020
    .line 2021
    throw v0

    .line 2022
    :cond_2d
    sget-object v0, Ly4/a;->e:Lj$/util/concurrent/ConcurrentHashMap;

    .line 2023
    .line 2024
    new-instance v0, Ljava/lang/NullPointerException;

    .line 2025
    .line 2026
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 2027
    .line 2028
    .line 2029
    throw v0

    .line 2030
    :cond_2e
    move-object/from16 v2, v37

    .line 2031
    .line 2032
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 2033
    .line 2034
    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 2035
    .line 2036
    .line 2037
    throw v0

    .line 2038
    :cond_2f
    move-object/from16 v36, v2

    .line 2039
    .line 2040
    move-object v5, v4

    .line 2041
    move-object v10, v14

    .line 2042
    const/4 v11, 0x0

    .line 2043
    const-string v0, ".generated"

    .line 2044
    .line 2045
    move-object/from16 v1, v27

    .line 2046
    .line 2047
    invoke-static {v1, v0}, Lg/b;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 2048
    .line 2049
    .line 2050
    move-result-object v0

    .line 2051
    invoke-virtual/range {v25 .. v25}, Ljava/util/ArrayList;->size()I

    .line 2052
    .line 2053
    .line 2054
    move-result v2

    .line 2055
    new-array v2, v2, [Lq4/j;

    .line 2056
    .line 2057
    invoke-virtual/range {v25 .. v25}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 2058
    .line 2059
    .line 2060
    move-result-object v3

    .line 2061
    const/4 v7, 0x0

    .line 2062
    :goto_28
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 2063
    .line 2064
    .line 2065
    move-result v4

    .line 2066
    if-eqz v4, :cond_30

    .line 2067
    .line 2068
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 2069
    .line 2070
    .line 2071
    move-result-object v4

    .line 2072
    check-cast v4, Ljava/lang/Class;

    .line 2073
    .line 2074
    const/4 v6, 0x1

    .line 2075
    add-int/lit8 v8, v7, 0x1

    .line 2076
    .line 2077
    invoke-static {v4}, Lq4/j;->a(Ljava/lang/Class;)Lq4/j;

    .line 2078
    .line 2079
    .line 2080
    move-result-object v4

    .line 2081
    aput-object v4, v2, v7

    .line 2082
    .line 2083
    move v7, v8

    .line 2084
    goto :goto_28

    .line 2085
    :cond_30
    const/4 v6, 0x1

    .line 2086
    invoke-virtual {v10, v5}, Lkf/d;->B(Lq4/j;)Lq4/e;

    .line 2087
    .line 2088
    .line 2089
    move-result-object v3

    .line 2090
    iget-boolean v4, v3, Lq4/e;->b:Z

    .line 2091
    .line 2092
    if-nez v4, :cond_33

    .line 2093
    .line 2094
    iput-boolean v6, v3, Lq4/e;->b:Z

    .line 2095
    .line 2096
    iput v6, v3, Lq4/e;->c:I

    .line 2097
    .line 2098
    move-object/from16 v4, v34

    .line 2099
    .line 2100
    iput-object v4, v3, Lq4/e;->d:Lq4/j;

    .line 2101
    .line 2102
    iput-object v0, v3, Lq4/e;->e:Ljava/lang/String;

    .line 2103
    .line 2104
    new-instance v0, Lq4/k;

    .line 2105
    .line 2106
    invoke-direct {v0, v2}, Lq4/k;-><init>([Lq4/j;)V

    .line 2107
    .line 2108
    .line 2109
    iput-object v0, v3, Lq4/e;->f:Lq4/k;

    .line 2110
    .line 2111
    move-object/from16 v2, p0

    .line 2112
    .line 2113
    iget-object v0, v2, La5/d;->d:Ljava/io/File;

    .line 2114
    .line 2115
    move-object/from16 v3, v26

    .line 2116
    .line 2117
    invoke-virtual {v10, v3, v0}, Lkf/d;->w(Ljava/lang/ClassLoader;Ljava/io/File;)Ljava/lang/ClassLoader;

    .line 2118
    .line 2119
    .line 2120
    move-result-object v0

    .line 2121
    :try_start_1
    invoke-virtual {v0, v1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    .line 2122
    .line 2123
    .line 2124
    move-result-object v14
    :try_end_1
    .catch Ljava/lang/IllegalAccessError; {:try_start_1 .. :try_end_1} :catch_a
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_9

    .line 2125
    move-object/from16 v0, v24

    .line 2126
    .line 2127
    :try_start_2
    invoke-virtual {v14, v0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 2128
    .line 2129
    .line 2130
    move-result-object v0

    .line 2131
    const/4 v1, 0x1

    .line 2132
    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 2133
    .line 2134
    .line 2135
    move-object/from16 v1, v36

    .line 2136
    .line 2137
    const/4 v3, 0x0

    .line 2138
    invoke-virtual {v0, v3, v1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/NoSuchFieldException; {:try_start_2 .. :try_end_2} :catch_8
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_7

    .line 2139
    .line 2140
    .line 2141
    move-object/from16 v0, v22

    .line 2142
    .line 2143
    move-object/from16 v1, v23

    .line 2144
    .line 2145
    invoke-interface {v1, v0, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2146
    .line 2147
    .line 2148
    move-object/from16 v0, v21

    .line 2149
    .line 2150
    :goto_29
    :try_start_3
    invoke-virtual {v14, v0}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 2151
    .line 2152
    .line 2153
    move-result-object v0
    :try_end_3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_3 .. :try_end_3} :catch_6

    .line 2154
    move-object/from16 v1, v20

    .line 2155
    .line 2156
    :try_start_4
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 2157
    .line 2158
    .line 2159
    move-result-object v0
    :try_end_4
    .catch Ljava/lang/InstantiationException; {:try_start_4 .. :try_end_4} :catch_5
    .catch Ljava/lang/IllegalAccessException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_4 .. :try_end_4} :catch_3

    .line 2160
    iget-object v1, v2, La5/d;->c:Laa/a;

    .line 2161
    .line 2162
    :try_start_5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2163
    .line 2164
    .line 2165
    move-result-object v3

    .line 2166
    move-object/from16 v4, v19

    .line 2167
    .line 2168
    invoke-virtual {v3, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 2169
    .line 2170
    .line 2171
    move-result-object v3

    .line 2172
    const/4 v4, 0x1

    .line 2173
    invoke-virtual {v3, v4}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 2174
    .line 2175
    .line 2176
    invoke-virtual {v3, v0, v1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_5
    .catch Ljava/lang/NoSuchFieldException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_5 .. :try_end_5} :catch_1

    .line 2177
    .line 2178
    .line 2179
    return-object v0

    .line 2180
    :catch_1
    move-exception v0

    .line 2181
    goto :goto_2a

    .line 2182
    :catch_2
    move-exception v0

    .line 2183
    goto :goto_2b

    .line 2184
    :goto_2a
    new-instance v1, Ljava/lang/AssertionError;

    .line 2185
    .line 2186
    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    .line 2187
    .line 2188
    .line 2189
    throw v1

    .line 2190
    :goto_2b
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 2191
    .line 2192
    const-string v3, "Not a valid proxy instance"

    .line 2193
    .line 2194
    invoke-direct {v1, v3, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2195
    .line 2196
    .line 2197
    throw v1

    .line 2198
    :catch_3
    move-exception v0

    .line 2199
    move-object v1, v0

    .line 2200
    invoke-virtual {v1}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    .line 2201
    .line 2202
    .line 2203
    move-result-object v0

    .line 2204
    instance-of v1, v0, Ljava/lang/Error;

    .line 2205
    .line 2206
    if-nez v1, :cond_32

    .line 2207
    .line 2208
    instance-of v1, v0, Ljava/lang/RuntimeException;

    .line 2209
    .line 2210
    if-eqz v1, :cond_31

    .line 2211
    .line 2212
    check-cast v0, Ljava/lang/RuntimeException;

    .line 2213
    .line 2214
    throw v0

    .line 2215
    :cond_31
    new-instance v1, Ljava/lang/reflect/UndeclaredThrowableException;

    .line 2216
    .line 2217
    invoke-direct {v1, v0}, Ljava/lang/reflect/UndeclaredThrowableException;-><init>(Ljava/lang/Throwable;)V

    .line 2218
    .line 2219
    .line 2220
    throw v1

    .line 2221
    :cond_32
    check-cast v0, Ljava/lang/Error;

    .line 2222
    .line 2223
    throw v0

    .line 2224
    :catch_4
    move-exception v0

    .line 2225
    move-object v1, v0

    .line 2226
    new-instance v0, Ljava/lang/AssertionError;

    .line 2227
    .line 2228
    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    .line 2229
    .line 2230
    .line 2231
    throw v0

    .line 2232
    :catch_5
    move-exception v0

    .line 2233
    move-object v1, v0

    .line 2234
    new-instance v0, Ljava/lang/AssertionError;

    .line 2235
    .line 2236
    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    .line 2237
    .line 2238
    .line 2239
    throw v0

    .line 2240
    :catch_6
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 2241
    .line 2242
    new-instance v3, Ljava/lang/StringBuilder;

    .line 2243
    .line 2244
    const-string v4, "No constructor for "

    .line 2245
    .line 2246
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2247
    .line 2248
    .line 2249
    invoke-virtual/range {v18 .. v18}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 2250
    .line 2251
    .line 2252
    move-result-object v4

    .line 2253
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2254
    .line 2255
    .line 2256
    const-string v4, " with parameter types "

    .line 2257
    .line 2258
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2259
    .line 2260
    .line 2261
    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    .line 2262
    .line 2263
    .line 2264
    move-result-object v0

    .line 2265
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2266
    .line 2267
    .line 2268
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2269
    .line 2270
    .line 2271
    move-result-object v0

    .line 2272
    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 2273
    .line 2274
    .line 2275
    throw v1

    .line 2276
    :catch_7
    move-exception v0

    .line 2277
    goto :goto_2c

    .line 2278
    :catch_8
    move-exception v0

    .line 2279
    goto :goto_2d

    .line 2280
    :goto_2c
    new-instance v1, Ljava/lang/AssertionError;

    .line 2281
    .line 2282
    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    .line 2283
    .line 2284
    .line 2285
    throw v1

    .line 2286
    :goto_2d
    new-instance v1, Ljava/lang/AssertionError;

    .line 2287
    .line 2288
    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    .line 2289
    .line 2290
    .line 2291
    throw v1

    .line 2292
    :catch_9
    move-exception v0

    .line 2293
    move-object v1, v0

    .line 2294
    new-instance v0, Ljava/lang/AssertionError;

    .line 2295
    .line 2296
    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    .line 2297
    .line 2298
    .line 2299
    throw v0

    .line 2300
    :catch_a
    move-exception v0

    .line 2301
    move-object v1, v0

    .line 2302
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    .line 2303
    .line 2304
    new-instance v3, Ljava/lang/StringBuilder;

    .line 2305
    .line 2306
    const-string v4, "cannot proxy inaccessible class "

    .line 2307
    .line 2308
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2309
    .line 2310
    .line 2311
    move-object/from16 v4, v18

    .line 2312
    .line 2313
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 2314
    .line 2315
    .line 2316
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2317
    .line 2318
    .line 2319
    move-result-object v3

    .line 2320
    invoke-direct {v0, v3, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2321
    .line 2322
    .line 2323
    throw v0

    .line 2324
    :cond_33
    move-object/from16 v2, p0

    .line 2325
    .line 2326
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 2327
    .line 2328
    new-instance v1, Ljava/lang/StringBuilder;

    .line 2329
    .line 2330
    const-string v3, "already declared: "

    .line 2331
    .line 2332
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2333
    .line 2334
    .line 2335
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 2336
    .line 2337
    .line 2338
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2339
    .line 2340
    .line 2341
    move-result-object v1

    .line 2342
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 2343
    .line 2344
    .line 2345
    throw v0

    .line 2346
    :goto_2e
    new-instance v0, Ljava/lang/NullPointerException;

    .line 2347
    .line 2348
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 2349
    .line 2350
    .line 2351
    throw v0

    .line 2352
    :cond_34
    move-object v2, v1

    .line 2353
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 2354
    .line 2355
    const-string v1, "constructorArgValues.length != constructorArgTypes.length"

    .line 2356
    .line 2357
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 2358
    .line 2359
    .line 2360
    throw v0

    .line 2361
    :cond_35
    move-object v2, v1

    .line 2362
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 2363
    .line 2364
    const-string v1, "handler == null"

    .line 2365
    .line 2366
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 2367
    .line 2368
    .line 2369
    goto :goto_30

    .line 2370
    :goto_2f
    throw v0

    .line 2371
    :goto_30
    goto :goto_2f

    .line 2372
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x1
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x1
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
    .end packed-switch
.end method
