.class public final Lc8/z;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lz7/b0;


# instance fields
.field public final a:Lcom/bumptech/glide/manager/s;

.field public final b:Lz7/h;

.field public final c:Lb8/d;

.field public final d:Lc8/l;

.field public final e:Ljava/util/List;


# direct methods
.method public constructor <init>(Lcom/bumptech/glide/manager/s;Lz7/h;Lb8/d;Lc8/l;Ljava/util/List;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lc8/z;->a:Lcom/bumptech/glide/manager/s;

    .line 5
    .line 6
    iput-object p2, p0, Lc8/z;->b:Lz7/h;

    .line 7
    .line 8
    iput-object p3, p0, Lc8/z;->c:Lb8/d;

    .line 9
    .line 10
    iput-object p4, p0, Lc8/z;->d:Lc8/l;

    .line 11
    .line 12
    iput-object p5, p0, Lc8/z;->e:Ljava/util/List;

    .line 13
    .line 14
    return-void
.end method

.method public static b(Ljava/lang/Object;Ljava/lang/reflect/AccessibleObject;)V
    .locals 1

    .line 1
    move-object v0, p1

    .line 2
    check-cast v0, Ljava/lang/reflect/Member;

    .line 3
    .line 4
    invoke-interface {v0}, Ljava/lang/reflect/Member;->getModifiers()I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    const/4 p0, 0x0

    .line 15
    :cond_0
    sget-object v0, Lb8/r;->a:Lb8/r;

    .line 16
    .line 17
    invoke-virtual {v0, p0, p1}, Lb8/r;->a(Ljava/lang/Object;Ljava/lang/reflect/AccessibleObject;)Z

    .line 18
    .line 19
    .line 20
    move-result p0

    .line 21
    if-eqz p0, :cond_1

    .line 22
    .line 23
    return-void

    .line 24
    :cond_1
    const/4 p0, 0x1

    .line 25
    invoke-static {p1, p0}, Le8/c;->d(Ljava/lang/reflect/AccessibleObject;Z)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    new-instance p1, Lz7/q;

    .line 30
    .line 31
    const-string v0, " is not accessible and ReflectionAccessFilter does not permit making it accessible. Register a TypeAdapter for the declaring type, adjust the access filter or increase the visibility of the element and its declaring type."

    .line 32
    .line 33
    invoke-static {p0, v0}, Lg/b;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    invoke-direct {p1, p0}, Lz7/q;-><init>(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    throw p1
.end method

.method public static c(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/reflect/Field;Ljava/lang/reflect/Field;)V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    const-string v2, "Class "

    .line 6
    .line 7
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    const-string p0, " declares multiple JSON fields named \'"

    .line 18
    .line 19
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    const-string p0, "\'; conflict is caused by fields "

    .line 26
    .line 27
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-static {p2}, Le8/c;->c(Ljava/lang/reflect/Field;)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    const-string p0, " and "

    .line 38
    .line 39
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-static {p3}, Le8/c;->c(Ljava/lang/reflect/Field;)Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object p0

    .line 46
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    const-string p0, "\nSee "

    .line 50
    .line 51
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    const-string p0, "https://github.com/google/gson/blob/main/Troubleshooting.md#"

    .line 55
    .line 56
    const-string p1, "duplicate-fields"

    .line 57
    .line 58
    invoke-virtual {p0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object p0

    .line 62
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object p0

    .line 69
    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    throw v0
.end method


# virtual methods
.method public final a(Lz7/m;Lg8/a;)Lz7/a0;
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    const-class v1, Ljava/lang/Object;

    .line 3
    .line 4
    iget-object v2, p2, Lg8/a;->a:Ljava/lang/Class;

    .line 5
    .line 6
    invoke-virtual {v1, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    const/4 p1, 0x0

    .line 13
    return-object p1

    .line 14
    :cond_0
    sget-object v1, Le8/c;->a:Lif/a;

    .line 15
    .line 16
    invoke-virtual {v2}, Ljava/lang/Class;->getModifiers()I

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    invoke-static {v1}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    if-nez v1, :cond_2

    .line 25
    .line 26
    invoke-virtual {v2}, Ljava/lang/Class;->isAnonymousClass()Z

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    if-nez v1, :cond_1

    .line 31
    .line 32
    invoke-virtual {v2}, Ljava/lang/Class;->isLocalClass()Z

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    if-eqz v1, :cond_2

    .line 37
    .line 38
    :cond_1
    new-instance p1, Lc8/t;

    .line 39
    .line 40
    invoke-direct {p1, v0}, Lc8/t;-><init>(I)V

    .line 41
    .line 42
    .line 43
    return-object p1

    .line 44
    :cond_2
    iget-object v1, p0, Lc8/z;->e:Ljava/util/List;

    .line 45
    .line 46
    invoke-static {v1}, Lb8/h;->f(Ljava/util/List;)V

    .line 47
    .line 48
    .line 49
    sget-object v1, Le8/c;->a:Lif/a;

    .line 50
    .line 51
    invoke-virtual {v1, v2}, Lif/a;->g0(Ljava/lang/Class;)Z

    .line 52
    .line 53
    .line 54
    move-result v1

    .line 55
    const/4 v3, 0x1

    .line 56
    if-eqz v1, :cond_3

    .line 57
    .line 58
    new-instance v0, Lc8/y;

    .line 59
    .line 60
    invoke-virtual {p0, p1, p2, v2, v3}, Lc8/z;->d(Lz7/m;Lg8/a;Ljava/lang/Class;Z)Lc8/x;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    invoke-direct {v0, v2, p1}, Lc8/y;-><init>(Ljava/lang/Class;Lc8/x;)V

    .line 65
    .line 66
    .line 67
    return-object v0

    .line 68
    :cond_3
    iget-object v1, p0, Lc8/z;->a:Lcom/bumptech/glide/manager/s;

    .line 69
    .line 70
    invoke-virtual {v1, p2, v3}, Lcom/bumptech/glide/manager/s;->d(Lg8/a;Z)Lb8/o;

    .line 71
    .line 72
    .line 73
    move-result-object v1

    .line 74
    new-instance v3, Lc8/w;

    .line 75
    .line 76
    invoke-virtual {p0, p1, p2, v2, v0}, Lc8/z;->d(Lz7/m;Lg8/a;Ljava/lang/Class;Z)Lc8/x;

    .line 77
    .line 78
    .line 79
    move-result-object p1

    .line 80
    invoke-direct {v3, v1, p1}, Lc8/w;-><init>(Lb8/o;Lc8/x;)V

    .line 81
    .line 82
    .line 83
    return-object v3
.end method

.method public final d(Lz7/m;Lg8/a;Ljava/lang/Class;Z)Lc8/x;
    .locals 32

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v7, p1

    .line 4
    .line 5
    move-object/from16 v8, p3

    .line 6
    .line 7
    invoke-virtual/range {p3 .. p3}, Ljava/lang/Class;->isInterface()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    sget-object v1, Lc8/x;->c:Lc8/x;

    .line 14
    .line 15
    return-object v1

    .line 16
    :cond_0
    new-instance v9, Ljava/util/LinkedHashMap;

    .line 17
    .line 18
    invoke-direct {v9}, Ljava/util/LinkedHashMap;-><init>()V

    .line 19
    .line 20
    .line 21
    new-instance v10, Ljava/util/LinkedHashMap;

    .line 22
    .line 23
    invoke-direct {v10}, Ljava/util/LinkedHashMap;-><init>()V

    .line 24
    .line 25
    .line 26
    move-object/from16 v11, p2

    .line 27
    .line 28
    move-object v12, v8

    .line 29
    :goto_0
    const-class v1, Ljava/lang/Object;

    .line 30
    .line 31
    if-eq v12, v1, :cond_16

    .line 32
    .line 33
    invoke-virtual {v12}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    .line 34
    .line 35
    .line 36
    move-result-object v13

    .line 37
    if-eq v12, v8, :cond_1

    .line 38
    .line 39
    array-length v1, v13

    .line 40
    if-lez v1, :cond_1

    .line 41
    .line 42
    iget-object v1, v0, Lc8/z;->e:Ljava/util/List;

    .line 43
    .line 44
    invoke-static {v1}, Lb8/h;->f(Ljava/util/List;)V

    .line 45
    .line 46
    .line 47
    :cond_1
    array-length v14, v13

    .line 48
    const/4 v15, 0x0

    .line 49
    const/4 v6, 0x0

    .line 50
    :goto_1
    iget-object v1, v11, Lg8/a;->b:Ljava/lang/reflect/Type;

    .line 51
    .line 52
    if-ge v6, v14, :cond_15

    .line 53
    .line 54
    aget-object v5, v13, v6

    .line 55
    .line 56
    const/4 v4, 0x1

    .line 57
    invoke-virtual {v0, v5, v4}, Lc8/z;->e(Ljava/lang/reflect/Field;Z)Z

    .line 58
    .line 59
    .line 60
    move-result v25

    .line 61
    invoke-virtual {v0, v5, v15}, Lc8/z;->e(Ljava/lang/reflect/Field;Z)Z

    .line 62
    .line 63
    .line 64
    move-result v2

    .line 65
    if-nez v25, :cond_2

    .line 66
    .line 67
    if-nez v2, :cond_2

    .line 68
    .line 69
    move/from16 v30, v6

    .line 70
    .line 71
    const/16 v28, 0x0

    .line 72
    .line 73
    goto/16 :goto_d

    .line 74
    .line 75
    :cond_2
    const/16 v26, 0x0

    .line 76
    .line 77
    const-class v3, La8/b;

    .line 78
    .line 79
    if-eqz p4, :cond_6

    .line 80
    .line 81
    invoke-virtual {v5}, Ljava/lang/reflect/Field;->getModifiers()I

    .line 82
    .line 83
    .line 84
    move-result v16

    .line 85
    invoke-static/range {v16 .. v16}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    .line 86
    .line 87
    .line 88
    move-result v16

    .line 89
    if-eqz v16, :cond_3

    .line 90
    .line 91
    move-object/from16 v20, v26

    .line 92
    .line 93
    const/16 v27, 0x0

    .line 94
    .line 95
    goto :goto_3

    .line 96
    :cond_3
    sget-object v4, Le8/c;->a:Lif/a;

    .line 97
    .line 98
    invoke-virtual {v4, v12, v5}, Lif/a;->E(Ljava/lang/Class;Ljava/lang/reflect/Field;)Ljava/lang/reflect/Method;

    .line 99
    .line 100
    .line 101
    move-result-object v4

    .line 102
    invoke-static {v4}, Le8/c;->f(Ljava/lang/reflect/AccessibleObject;)V

    .line 103
    .line 104
    .line 105
    invoke-virtual {v4, v3}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    .line 106
    .line 107
    .line 108
    move-result-object v16

    .line 109
    if-eqz v16, :cond_5

    .line 110
    .line 111
    invoke-virtual {v5, v3}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    .line 112
    .line 113
    .line 114
    move-result-object v16

    .line 115
    if-eqz v16, :cond_4

    .line 116
    .line 117
    goto :goto_2

    .line 118
    :cond_4
    invoke-static {v4, v15}, Le8/c;->d(Ljava/lang/reflect/AccessibleObject;Z)Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object v1

    .line 122
    new-instance v2, Lz7/q;

    .line 123
    .line 124
    const-string v3, "@SerializedName on "

    .line 125
    .line 126
    const-string v4, " is not supported"

    .line 127
    .line 128
    invoke-static {v3, v1, v4}, Lg/b;->A(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object v1

    .line 132
    invoke-direct {v2, v1}, Lz7/q;-><init>(Ljava/lang/String;)V

    .line 133
    .line 134
    .line 135
    throw v2

    .line 136
    :cond_5
    :goto_2
    move/from16 v27, v2

    .line 137
    .line 138
    move-object/from16 v20, v4

    .line 139
    .line 140
    goto :goto_3

    .line 141
    :cond_6
    move/from16 v27, v2

    .line 142
    .line 143
    move-object/from16 v20, v26

    .line 144
    .line 145
    :goto_3
    if-nez v20, :cond_7

    .line 146
    .line 147
    invoke-static {v5}, Le8/c;->f(Ljava/lang/reflect/AccessibleObject;)V

    .line 148
    .line 149
    .line 150
    :cond_7
    invoke-virtual {v5}, Ljava/lang/reflect/Field;->getGenericType()Ljava/lang/reflect/Type;

    .line 151
    .line 152
    .line 153
    move-result-object v2

    .line 154
    new-instance v4, Ljava/util/HashMap;

    .line 155
    .line 156
    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 157
    .line 158
    .line 159
    invoke-static {v1, v12, v2, v4}, Lb8/h;->k(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Type;Ljava/util/HashMap;)Ljava/lang/reflect/Type;

    .line 160
    .line 161
    .line 162
    move-result-object v1

    .line 163
    invoke-virtual {v5, v3}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    .line 164
    .line 165
    .line 166
    move-result-object v2

    .line 167
    check-cast v2, La8/b;

    .line 168
    .line 169
    if-nez v2, :cond_8

    .line 170
    .line 171
    iget-object v2, v0, Lc8/z;->b:Lz7/h;

    .line 172
    .line 173
    invoke-virtual {v2, v5}, Lz7/h;->b(Ljava/lang/reflect/Field;)Ljava/lang/String;

    .line 174
    .line 175
    .line 176
    move-result-object v2

    .line 177
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 178
    .line 179
    .line 180
    move-result-object v3

    .line 181
    goto :goto_4

    .line 182
    :cond_8
    invoke-interface {v2}, La8/b;->value()Ljava/lang/String;

    .line 183
    .line 184
    .line 185
    move-result-object v3

    .line 186
    invoke-interface {v2}, La8/b;->alternate()[Ljava/lang/String;

    .line 187
    .line 188
    .line 189
    move-result-object v2

    .line 190
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 191
    .line 192
    .line 193
    move-result-object v2

    .line 194
    move-object/from16 v31, v3

    .line 195
    .line 196
    move-object v3, v2

    .line 197
    move-object/from16 v2, v31

    .line 198
    .line 199
    :goto_4
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    .line 200
    .line 201
    .line 202
    move-result v4

    .line 203
    if-eqz v4, :cond_9

    .line 204
    .line 205
    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 206
    .line 207
    .line 208
    move-result-object v2

    .line 209
    move-object v15, v2

    .line 210
    const/4 v4, 0x0

    .line 211
    const/16 v17, 0x1

    .line 212
    .line 213
    goto :goto_5

    .line 214
    :cond_9
    new-instance v4, Ljava/util/ArrayList;

    .line 215
    .line 216
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 217
    .line 218
    .line 219
    move-result v16

    .line 220
    const/16 v17, 0x1

    .line 221
    .line 222
    add-int/lit8 v15, v16, 0x1

    .line 223
    .line 224
    invoke-direct {v4, v15}, Ljava/util/ArrayList;-><init>(I)V

    .line 225
    .line 226
    .line 227
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 228
    .line 229
    .line 230
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 231
    .line 232
    .line 233
    move-object v15, v4

    .line 234
    const/4 v4, 0x0

    .line 235
    :goto_5
    invoke-interface {v15, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 236
    .line 237
    .line 238
    move-result-object v2

    .line 239
    move-object v3, v2

    .line 240
    check-cast v3, Ljava/lang/String;

    .line 241
    .line 242
    new-instance v2, Lg8/a;

    .line 243
    .line 244
    invoke-direct {v2, v1}, Lg8/a;-><init>(Ljava/lang/reflect/Type;)V

    .line 245
    .line 246
    .line 247
    iget-object v1, v2, Lg8/a;->a:Ljava/lang/Class;

    .line 248
    .line 249
    instance-of v4, v1, Ljava/lang/Class;

    .line 250
    .line 251
    if-eqz v4, :cond_a

    .line 252
    .line 253
    invoke-virtual {v1}, Ljava/lang/Class;->isPrimitive()Z

    .line 254
    .line 255
    .line 256
    move-result v1

    .line 257
    if-eqz v1, :cond_a

    .line 258
    .line 259
    const/16 v23, 0x1

    .line 260
    .line 261
    goto :goto_6

    .line 262
    :cond_a
    const/16 v23, 0x0

    .line 263
    .line 264
    :goto_6
    invoke-virtual {v5}, Ljava/lang/reflect/Field;->getModifiers()I

    .line 265
    .line 266
    .line 267
    move-result v1

    .line 268
    invoke-static {v1}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    .line 269
    .line 270
    .line 271
    move-result v4

    .line 272
    if-eqz v4, :cond_b

    .line 273
    .line 274
    invoke-static {v1}, Ljava/lang/reflect/Modifier;->isFinal(I)Z

    .line 275
    .line 276
    .line 277
    move-result v1

    .line 278
    if-eqz v1, :cond_b

    .line 279
    .line 280
    const/16 v24, 0x1

    .line 281
    .line 282
    goto :goto_7

    .line 283
    :cond_b
    const/16 v24, 0x0

    .line 284
    .line 285
    :goto_7
    const-class v1, La8/a;

    .line 286
    .line 287
    invoke-virtual {v5, v1}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    .line 288
    .line 289
    .line 290
    move-result-object v1

    .line 291
    move-object/from16 v16, v1

    .line 292
    .line 293
    check-cast v16, La8/a;

    .line 294
    .line 295
    if-eqz v16, :cond_c

    .line 296
    .line 297
    iget-object v1, v0, Lc8/z;->d:Lc8/l;

    .line 298
    .line 299
    iget-object v4, v0, Lc8/z;->a:Lcom/bumptech/glide/manager/s;

    .line 300
    .line 301
    const/16 v18, 0x0

    .line 302
    .line 303
    move-object/from16 v19, v2

    .line 304
    .line 305
    move-object v2, v4

    .line 306
    move-object v4, v3

    .line 307
    move-object/from16 v3, p1

    .line 308
    .line 309
    move-object/from16 p2, v4

    .line 310
    .line 311
    const/16 v28, 0x0

    .line 312
    .line 313
    move-object/from16 v4, v19

    .line 314
    .line 315
    move-object/from16 v29, v5

    .line 316
    .line 317
    move-object/from16 v5, v16

    .line 318
    .line 319
    move/from16 v30, v6

    .line 320
    .line 321
    move/from16 v6, v18

    .line 322
    .line 323
    invoke-virtual/range {v1 .. v6}, Lc8/l;->b(Lcom/bumptech/glide/manager/s;Lz7/m;Lg8/a;La8/a;Z)Lz7/a0;

    .line 324
    .line 325
    .line 326
    move-result-object v1

    .line 327
    goto :goto_8

    .line 328
    :cond_c
    move-object/from16 v19, v2

    .line 329
    .line 330
    move-object/from16 p2, v3

    .line 331
    .line 332
    move-object/from16 v29, v5

    .line 333
    .line 334
    move/from16 v30, v6

    .line 335
    .line 336
    const/16 v28, 0x0

    .line 337
    .line 338
    move-object/from16 v1, v26

    .line 339
    .line 340
    :goto_8
    if-eqz v1, :cond_d

    .line 341
    .line 342
    const/4 v4, 0x1

    .line 343
    goto :goto_9

    .line 344
    :cond_d
    const/4 v4, 0x0

    .line 345
    :goto_9
    move-object/from16 v2, v19

    .line 346
    .line 347
    if-nez v1, :cond_e

    .line 348
    .line 349
    invoke-virtual {v7, v2}, Lz7/m;->c(Lg8/a;)Lz7/a0;

    .line 350
    .line 351
    .line 352
    move-result-object v1

    .line 353
    :cond_e
    if-eqz v25, :cond_10

    .line 354
    .line 355
    if-eqz v4, :cond_f

    .line 356
    .line 357
    move-object v3, v1

    .line 358
    goto :goto_a

    .line 359
    :cond_f
    new-instance v3, Lc8/b0;

    .line 360
    .line 361
    iget-object v2, v2, Lg8/a;->b:Ljava/lang/reflect/Type;

    .line 362
    .line 363
    invoke-direct {v3, v7, v1, v2}, Lc8/b0;-><init>(Lz7/m;Lz7/a0;Ljava/lang/reflect/Type;)V

    .line 364
    .line 365
    .line 366
    :goto_a
    move-object/from16 v21, v3

    .line 367
    .line 368
    goto :goto_b

    .line 369
    :cond_10
    move-object/from16 v21, v1

    .line 370
    .line 371
    :goto_b
    new-instance v2, Lc8/u;

    .line 372
    .line 373
    const/16 v19, 0x0

    .line 374
    .line 375
    move-object/from16 v16, v2

    .line 376
    .line 377
    move-object/from16 v17, p2

    .line 378
    .line 379
    move-object/from16 v18, v29

    .line 380
    .line 381
    move-object/from16 v22, v1

    .line 382
    .line 383
    invoke-direct/range {v16 .. v24}, Lc8/u;-><init>(Ljava/lang/String;Ljava/lang/reflect/Field;ZLjava/lang/reflect/Method;Lz7/a0;Lz7/a0;ZZ)V

    .line 384
    .line 385
    .line 386
    if-eqz v27, :cond_12

    .line 387
    .line 388
    invoke-interface {v15}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 389
    .line 390
    .line 391
    move-result-object v1

    .line 392
    :goto_c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 393
    .line 394
    .line 395
    move-result v3

    .line 396
    if-eqz v3, :cond_12

    .line 397
    .line 398
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 399
    .line 400
    .line 401
    move-result-object v3

    .line 402
    check-cast v3, Ljava/lang/String;

    .line 403
    .line 404
    invoke-interface {v9, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 405
    .line 406
    .line 407
    move-result-object v4

    .line 408
    check-cast v4, Lc8/u;

    .line 409
    .line 410
    if-nez v4, :cond_11

    .line 411
    .line 412
    goto :goto_c

    .line 413
    :cond_11
    iget-object v1, v4, Lc8/u;->b:Ljava/lang/reflect/Field;

    .line 414
    .line 415
    move-object/from16 v4, v29

    .line 416
    .line 417
    invoke-static {v8, v3, v1, v4}, Lc8/z;->c(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/reflect/Field;Ljava/lang/reflect/Field;)V

    .line 418
    .line 419
    .line 420
    throw v26

    .line 421
    :cond_12
    move-object/from16 v4, v29

    .line 422
    .line 423
    if-eqz v25, :cond_14

    .line 424
    .line 425
    move-object/from16 v1, p2

    .line 426
    .line 427
    invoke-interface {v10, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 428
    .line 429
    .line 430
    move-result-object v2

    .line 431
    check-cast v2, Lc8/u;

    .line 432
    .line 433
    if-nez v2, :cond_13

    .line 434
    .line 435
    goto :goto_d

    .line 436
    :cond_13
    iget-object v2, v2, Lc8/u;->b:Ljava/lang/reflect/Field;

    .line 437
    .line 438
    invoke-static {v8, v1, v2, v4}, Lc8/z;->c(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/reflect/Field;Ljava/lang/reflect/Field;)V

    .line 439
    .line 440
    .line 441
    throw v26

    .line 442
    :cond_14
    :goto_d
    add-int/lit8 v6, v30, 0x1

    .line 443
    .line 444
    const/4 v15, 0x0

    .line 445
    goto/16 :goto_1

    .line 446
    .line 447
    :cond_15
    invoke-virtual {v12}, Ljava/lang/Class;->getGenericSuperclass()Ljava/lang/reflect/Type;

    .line 448
    .line 449
    .line 450
    move-result-object v2

    .line 451
    new-instance v3, Ljava/util/HashMap;

    .line 452
    .line 453
    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 454
    .line 455
    .line 456
    invoke-static {v1, v12, v2, v3}, Lb8/h;->k(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Type;Ljava/util/HashMap;)Ljava/lang/reflect/Type;

    .line 457
    .line 458
    .line 459
    move-result-object v1

    .line 460
    new-instance v11, Lg8/a;

    .line 461
    .line 462
    invoke-direct {v11, v1}, Lg8/a;-><init>(Ljava/lang/reflect/Type;)V

    .line 463
    .line 464
    .line 465
    iget-object v12, v11, Lg8/a;->a:Ljava/lang/Class;

    .line 466
    .line 467
    goto/16 :goto_0

    .line 468
    .line 469
    :cond_16
    new-instance v1, Lc8/x;

    .line 470
    .line 471
    new-instance v2, Ljava/util/ArrayList;

    .line 472
    .line 473
    invoke-virtual {v10}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    .line 474
    .line 475
    .line 476
    move-result-object v3

    .line 477
    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 478
    .line 479
    .line 480
    invoke-direct {v1, v2, v9}, Lc8/x;-><init>(Ljava/util/List;Ljava/util/Map;)V

    .line 481
    .line 482
    .line 483
    return-object v1
.end method

.method public final e(Ljava/lang/reflect/Field;Z)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lc8/z;->c:Lb8/d;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getModifiers()I

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    const/16 v2, 0x88

    .line 11
    .line 12
    and-int/2addr v1, v2

    .line 13
    const/4 v2, 0x1

    .line 14
    if-eqz v1, :cond_0

    .line 15
    .line 16
    :goto_0
    const/4 p1, 0x1

    .line 17
    goto :goto_3

    .line 18
    :cond_0
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->isSynthetic()Z

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    if-eqz v1, :cond_1

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_1
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    invoke-virtual {v0, p1, p2}, Lb8/d;->b(Ljava/lang/Class;Z)Z

    .line 30
    .line 31
    .line 32
    move-result p1

    .line 33
    if-eqz p1, :cond_2

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_2
    if-eqz p2, :cond_3

    .line 37
    .line 38
    iget-object p1, v0, Lb8/d;->a:Ljava/util/List;

    .line 39
    .line 40
    goto :goto_1

    .line 41
    :cond_3
    iget-object p1, v0, Lb8/d;->b:Ljava/util/List;

    .line 42
    .line 43
    :goto_1
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 44
    .line 45
    .line 46
    move-result p2

    .line 47
    if-nez p2, :cond_5

    .line 48
    .line 49
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 54
    .line 55
    .line 56
    move-result p2

    .line 57
    if-nez p2, :cond_4

    .line 58
    .line 59
    goto :goto_2

    .line 60
    :cond_4
    invoke-static {p1}, Ll2/z;->d(Ljava/util/Iterator;)Ljava/lang/ClassCastException;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    throw p1

    .line 65
    :cond_5
    :goto_2
    const/4 p1, 0x0

    .line 66
    :goto_3
    xor-int/2addr p1, v2

    .line 67
    return p1
.end method
