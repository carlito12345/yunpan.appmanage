.class public final Landroidx/lifecycle/j0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final f:[Ljava/lang/Class;


# instance fields
.field public final a:Ljava/util/LinkedHashMap;

.field public final b:Ljava/util/LinkedHashMap;

.field public final c:Ljava/util/LinkedHashMap;

.field public final d:Ljava/util/LinkedHashMap;

.field public final e:Lb4/d;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 1
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 2
    .line 3
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 4
    .line 5
    const/16 v2, 0x15

    .line 6
    .line 7
    if-lt v1, v2, :cond_0

    .line 8
    .line 9
    invoke-static {}, Landroidx/fragment/app/o1;->k()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    move-result-object v3

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    move-object v3, v0

    .line 15
    :goto_0
    if-lt v1, v2, :cond_1

    .line 16
    .line 17
    invoke-static {}, Landroidx/fragment/app/o1;->C()Ljava/lang/Class;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    goto :goto_1

    .line 22
    :cond_1
    move-object v1, v0

    .line 23
    :goto_1
    const/16 v4, 0x1d

    .line 24
    .line 25
    new-array v4, v4, [Ljava/lang/Class;

    .line 26
    .line 27
    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    .line 28
    .line 29
    const/4 v6, 0x0

    .line 30
    aput-object v5, v4, v6

    .line 31
    .line 32
    const-class v5, [Z

    .line 33
    .line 34
    const/4 v6, 0x1

    .line 35
    aput-object v5, v4, v6

    .line 36
    .line 37
    sget-object v5, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    .line 38
    .line 39
    const/4 v6, 0x2

    .line 40
    aput-object v5, v4, v6

    .line 41
    .line 42
    const-class v5, [D

    .line 43
    .line 44
    const/4 v6, 0x3

    .line 45
    aput-object v5, v4, v6

    .line 46
    .line 47
    const/4 v5, 0x4

    .line 48
    aput-object v0, v4, v5

    .line 49
    .line 50
    const-class v0, [I

    .line 51
    .line 52
    const/4 v5, 0x5

    .line 53
    aput-object v0, v4, v5

    .line 54
    .line 55
    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    .line 56
    .line 57
    const/4 v5, 0x6

    .line 58
    aput-object v0, v4, v5

    .line 59
    .line 60
    const-class v0, [J

    .line 61
    .line 62
    const/4 v5, 0x7

    .line 63
    aput-object v0, v4, v5

    .line 64
    .line 65
    const-class v0, Ljava/lang/String;

    .line 66
    .line 67
    const/16 v5, 0x8

    .line 68
    .line 69
    aput-object v0, v4, v5

    .line 70
    .line 71
    const-class v0, [Ljava/lang/String;

    .line 72
    .line 73
    const/16 v5, 0x9

    .line 74
    .line 75
    aput-object v0, v4, v5

    .line 76
    .line 77
    const-class v0, Landroid/os/Binder;

    .line 78
    .line 79
    const/16 v5, 0xa

    .line 80
    .line 81
    aput-object v0, v4, v5

    .line 82
    .line 83
    const-class v0, Landroid/os/Bundle;

    .line 84
    .line 85
    const/16 v5, 0xb

    .line 86
    .line 87
    aput-object v0, v4, v5

    .line 88
    .line 89
    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    .line 90
    .line 91
    const/16 v5, 0xc

    .line 92
    .line 93
    aput-object v0, v4, v5

    .line 94
    .line 95
    const-class v0, [B

    .line 96
    .line 97
    const/16 v5, 0xd

    .line 98
    .line 99
    aput-object v0, v4, v5

    .line 100
    .line 101
    sget-object v0, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    .line 102
    .line 103
    const/16 v5, 0xe

    .line 104
    .line 105
    aput-object v0, v4, v5

    .line 106
    .line 107
    const-class v0, [C

    .line 108
    .line 109
    const/16 v5, 0xf

    .line 110
    .line 111
    aput-object v0, v4, v5

    .line 112
    .line 113
    const-class v0, Ljava/lang/CharSequence;

    .line 114
    .line 115
    const/16 v5, 0x10

    .line 116
    .line 117
    aput-object v0, v4, v5

    .line 118
    .line 119
    const-class v0, [Ljava/lang/CharSequence;

    .line 120
    .line 121
    const/16 v5, 0x11

    .line 122
    .line 123
    aput-object v0, v4, v5

    .line 124
    .line 125
    const-class v0, Ljava/util/ArrayList;

    .line 126
    .line 127
    const/16 v5, 0x12

    .line 128
    .line 129
    aput-object v0, v4, v5

    .line 130
    .line 131
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    .line 132
    .line 133
    const/16 v5, 0x13

    .line 134
    .line 135
    aput-object v0, v4, v5

    .line 136
    .line 137
    const-class v0, [F

    .line 138
    .line 139
    const/16 v5, 0x14

    .line 140
    .line 141
    aput-object v0, v4, v5

    .line 142
    .line 143
    const-class v0, Landroid/os/Parcelable;

    .line 144
    .line 145
    aput-object v0, v4, v2

    .line 146
    .line 147
    const-class v0, [Landroid/os/Parcelable;

    .line 148
    .line 149
    const/16 v2, 0x16

    .line 150
    .line 151
    aput-object v0, v4, v2

    .line 152
    .line 153
    const-class v0, Ljava/io/Serializable;

    .line 154
    .line 155
    const/16 v2, 0x17

    .line 156
    .line 157
    aput-object v0, v4, v2

    .line 158
    .line 159
    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    .line 160
    .line 161
    const/16 v2, 0x18

    .line 162
    .line 163
    aput-object v0, v4, v2

    .line 164
    .line 165
    const-class v0, [S

    .line 166
    .line 167
    const/16 v2, 0x19

    .line 168
    .line 169
    aput-object v0, v4, v2

    .line 170
    .line 171
    const-class v0, Landroid/util/SparseArray;

    .line 172
    .line 173
    const/16 v2, 0x1a

    .line 174
    .line 175
    aput-object v0, v4, v2

    .line 176
    .line 177
    const/16 v0, 0x1b

    .line 178
    .line 179
    aput-object v3, v4, v0

    .line 180
    .line 181
    const/16 v0, 0x1c

    .line 182
    .line 183
    aput-object v1, v4, v0

    .line 184
    .line 185
    sput-object v4, Landroidx/lifecycle/j0;->f:[Ljava/lang/Class;

    .line 186
    .line 187
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Landroidx/lifecycle/j0;->a:Ljava/util/LinkedHashMap;

    .line 10
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Landroidx/lifecycle/j0;->b:Ljava/util/LinkedHashMap;

    .line 11
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Landroidx/lifecycle/j0;->c:Ljava/util/LinkedHashMap;

    .line 12
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Landroidx/lifecycle/j0;->d:Ljava/util/LinkedHashMap;

    .line 13
    new-instance v0, Landroidx/activity/d;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p0}, Landroidx/activity/d;-><init>(ILjava/lang/Object;)V

    iput-object v0, p0, Landroidx/lifecycle/j0;->e:Lb4/d;

    return-void
.end method

.method public constructor <init>(Ljava/util/HashMap;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Landroidx/lifecycle/j0;->a:Ljava/util/LinkedHashMap;

    .line 3
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v1, p0, Landroidx/lifecycle/j0;->b:Ljava/util/LinkedHashMap;

    .line 4
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v1, p0, Landroidx/lifecycle/j0;->c:Ljava/util/LinkedHashMap;

    .line 5
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v1, p0, Landroidx/lifecycle/j0;->d:Ljava/util/LinkedHashMap;

    .line 6
    new-instance v1, Landroidx/activity/d;

    const/4 v2, 0x1

    invoke-direct {v1, v2, p0}, Landroidx/activity/d;-><init>(ILjava/lang/Object;)V

    iput-object v1, p0, Landroidx/lifecycle/j0;->e:Lb4/d;

    .line 7
    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    return-void
.end method

.method public static a(Landroidx/lifecycle/j0;)Landroid/os/Bundle;
    .locals 12

    .line 1
    const/4 v0, 0x2

    .line 2
    const/4 v1, 0x0

    .line 3
    const-string v2, "<this>"

    .line 4
    .line 5
    const/4 v3, 0x1

    .line 6
    const-string v4, "this$0"

    .line 7
    .line 8
    invoke-static {p0, v4}, Lue/d;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-object v4, p0, Landroidx/lifecycle/j0;->b:Ljava/util/LinkedHashMap;

    .line 12
    .line 13
    invoke-static {v4, v2}, Lue/d;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-interface {v4}, Ljava/util/Map;->size()I

    .line 17
    .line 18
    .line 19
    move-result v5

    .line 20
    if-eqz v5, :cond_1

    .line 21
    .line 22
    if-eq v5, v3, :cond_0

    .line 23
    .line 24
    new-instance v2, Ljava/util/LinkedHashMap;

    .line 25
    .line 26
    invoke-direct {v2, v4}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    .line 27
    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    invoke-static {v4, v2}, Lue/d;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v4}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v2

    .line 45
    check-cast v2, Ljava/util/Map$Entry;

    .line 46
    .line 47
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v4

    .line 51
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object v2

    .line 55
    invoke-static {v4, v2}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    .line 56
    .line 57
    .line 58
    move-result-object v2

    .line 59
    const-string v4, "with(...)"

    .line 60
    .line 61
    invoke-static {v2, v4}, Lue/d;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_1
    sget-object v2, Lje/s;->a:Lje/s;

    .line 66
    .line 67
    :goto_0
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 68
    .line 69
    .line 70
    move-result-object v2

    .line 71
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 72
    .line 73
    .line 74
    move-result-object v2

    .line 75
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 76
    .line 77
    .line 78
    move-result v4

    .line 79
    iget-object v5, p0, Landroidx/lifecycle/j0;->a:Ljava/util/LinkedHashMap;

    .line 80
    .line 81
    const/4 v6, 0x0

    .line 82
    if-eqz v4, :cond_8

    .line 83
    .line 84
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    move-result-object v4

    .line 88
    check-cast v4, Ljava/util/Map$Entry;

    .line 89
    .line 90
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 91
    .line 92
    .line 93
    move-result-object v7

    .line 94
    check-cast v7, Ljava/lang/String;

    .line 95
    .line 96
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 97
    .line 98
    .line 99
    move-result-object v4

    .line 100
    check-cast v4, Lb4/d;

    .line 101
    .line 102
    invoke-interface {v4}, Lb4/d;->a()Landroid/os/Bundle;

    .line 103
    .line 104
    .line 105
    move-result-object v4

    .line 106
    const-string v8, "key"

    .line 107
    .line 108
    invoke-static {v7, v8}, Lue/d;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 109
    .line 110
    .line 111
    if-nez v4, :cond_2

    .line 112
    .line 113
    goto :goto_3

    .line 114
    :cond_2
    sget-object v8, Landroidx/lifecycle/j0;->f:[Ljava/lang/Class;

    .line 115
    .line 116
    array-length v9, v8

    .line 117
    const/4 v10, 0x0

    .line 118
    :goto_2
    if-ge v10, v9, :cond_7

    .line 119
    .line 120
    aget-object v11, v8, v10

    .line 121
    .line 122
    invoke-static {v11}, Lue/d;->b(Ljava/lang/Object;)V

    .line 123
    .line 124
    .line 125
    invoke-virtual {v11, v4}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    .line 126
    .line 127
    .line 128
    move-result v11

    .line 129
    if-eqz v11, :cond_6

    .line 130
    .line 131
    :goto_3
    iget-object v8, p0, Landroidx/lifecycle/j0;->c:Ljava/util/LinkedHashMap;

    .line 132
    .line 133
    invoke-virtual {v8, v7}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    .line 135
    .line 136
    move-result-object v8

    .line 137
    instance-of v9, v8, Landroidx/lifecycle/a0;

    .line 138
    .line 139
    if-eqz v9, :cond_3

    .line 140
    .line 141
    move-object v6, v8

    .line 142
    check-cast v6, Landroidx/lifecycle/a0;

    .line 143
    .line 144
    :cond_3
    if-eqz v6, :cond_4

    .line 145
    .line 146
    invoke-virtual {v6, v4}, Landroidx/lifecycle/a0;->e(Ljava/lang/Object;)V

    .line 147
    .line 148
    .line 149
    goto :goto_4

    .line 150
    :cond_4
    invoke-interface {v5, v7, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    .line 152
    .line 153
    :goto_4
    iget-object v4, p0, Landroidx/lifecycle/j0;->d:Ljava/util/LinkedHashMap;

    .line 154
    .line 155
    invoke-virtual {v4, v7}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    .line 157
    .line 158
    move-result-object v4

    .line 159
    if-nez v4, :cond_5

    .line 160
    .line 161
    goto :goto_1

    .line 162
    :cond_5
    new-instance p0, Ljava/lang/ClassCastException;

    .line 163
    .line 164
    invoke-direct {p0}, Ljava/lang/ClassCastException;-><init>()V

    .line 165
    .line 166
    .line 167
    throw p0

    .line 168
    :cond_6
    add-int/2addr v10, v3

    .line 169
    goto :goto_2

    .line 170
    :cond_7
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 171
    .line 172
    new-instance v0, Ljava/lang/StringBuilder;

    .line 173
    .line 174
    const-string v1, "Can\'t put value with type "

    .line 175
    .line 176
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 177
    .line 178
    .line 179
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 180
    .line 181
    .line 182
    move-result-object v1

    .line 183
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 184
    .line 185
    .line 186
    const-string v1, " into saved state"

    .line 187
    .line 188
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 189
    .line 190
    .line 191
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 192
    .line 193
    .line 194
    move-result-object v0

    .line 195
    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 196
    .line 197
    .line 198
    throw p0

    .line 199
    :cond_8
    invoke-virtual {v5}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    .line 200
    .line 201
    .line 202
    move-result-object p0

    .line 203
    new-instance v2, Ljava/util/ArrayList;

    .line 204
    .line 205
    invoke-interface {p0}, Ljava/util/Set;->size()I

    .line 206
    .line 207
    .line 208
    move-result v4

    .line 209
    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 210
    .line 211
    .line 212
    new-instance v4, Ljava/util/ArrayList;

    .line 213
    .line 214
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 215
    .line 216
    .line 217
    move-result v7

    .line 218
    invoke-direct {v4, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 219
    .line 220
    .line 221
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 222
    .line 223
    .line 224
    move-result-object p0

    .line 225
    :goto_5
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 226
    .line 227
    .line 228
    move-result v7

    .line 229
    if-eqz v7, :cond_9

    .line 230
    .line 231
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 232
    .line 233
    .line 234
    move-result-object v7

    .line 235
    check-cast v7, Ljava/lang/String;

    .line 236
    .line 237
    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 238
    .line 239
    .line 240
    invoke-virtual {v5, v7}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 241
    .line 242
    .line 243
    move-result-object v7

    .line 244
    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 245
    .line 246
    .line 247
    goto :goto_5

    .line 248
    :cond_9
    new-instance p0, Lie/b;

    .line 249
    .line 250
    const-string v5, "keys"

    .line 251
    .line 252
    invoke-direct {p0, v5, v2}, Lie/b;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 253
    .line 254
    .line 255
    new-instance v2, Lie/b;

    .line 256
    .line 257
    const-string v5, "values"

    .line 258
    .line 259
    invoke-direct {v2, v5, v4}, Lie/b;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 260
    .line 261
    .line 262
    new-array v4, v0, [Lie/b;

    .line 263
    .line 264
    aput-object p0, v4, v1

    .line 265
    .line 266
    aput-object v2, v4, v3

    .line 267
    .line 268
    new-instance p0, Landroid/os/Bundle;

    .line 269
    .line 270
    invoke-direct {p0, v0}, Landroid/os/Bundle;-><init>(I)V

    .line 271
    .line 272
    .line 273
    :goto_6
    if-ge v1, v0, :cond_27

    .line 274
    .line 275
    aget-object v2, v4, v1

    .line 276
    .line 277
    iget-object v5, v2, Lie/b;->a:Ljava/lang/Object;

    .line 278
    .line 279
    check-cast v5, Ljava/lang/String;

    .line 280
    .line 281
    iget-object v2, v2, Lie/b;->b:Ljava/lang/Object;

    .line 282
    .line 283
    if-nez v2, :cond_a

    .line 284
    .line 285
    invoke-virtual {p0, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 286
    .line 287
    .line 288
    goto/16 :goto_7

    .line 289
    .line 290
    :cond_a
    instance-of v7, v2, Ljava/lang/Boolean;

    .line 291
    .line 292
    if-eqz v7, :cond_b

    .line 293
    .line 294
    check-cast v2, Ljava/lang/Boolean;

    .line 295
    .line 296
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 297
    .line 298
    .line 299
    move-result v2

    .line 300
    invoke-virtual {p0, v5, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 301
    .line 302
    .line 303
    goto/16 :goto_7

    .line 304
    .line 305
    :cond_b
    instance-of v7, v2, Ljava/lang/Byte;

    .line 306
    .line 307
    if-eqz v7, :cond_c

    .line 308
    .line 309
    check-cast v2, Ljava/lang/Number;

    .line 310
    .line 311
    invoke-virtual {v2}, Ljava/lang/Number;->byteValue()B

    .line 312
    .line 313
    .line 314
    move-result v2

    .line 315
    invoke-virtual {p0, v5, v2}, Landroid/os/Bundle;->putByte(Ljava/lang/String;B)V

    .line 316
    .line 317
    .line 318
    goto/16 :goto_7

    .line 319
    .line 320
    :cond_c
    instance-of v7, v2, Ljava/lang/Character;

    .line 321
    .line 322
    if-eqz v7, :cond_d

    .line 323
    .line 324
    check-cast v2, Ljava/lang/Character;

    .line 325
    .line 326
    invoke-virtual {v2}, Ljava/lang/Character;->charValue()C

    .line 327
    .line 328
    .line 329
    move-result v2

    .line 330
    invoke-virtual {p0, v5, v2}, Landroid/os/Bundle;->putChar(Ljava/lang/String;C)V

    .line 331
    .line 332
    .line 333
    goto/16 :goto_7

    .line 334
    .line 335
    :cond_d
    instance-of v7, v2, Ljava/lang/Double;

    .line 336
    .line 337
    if-eqz v7, :cond_e

    .line 338
    .line 339
    check-cast v2, Ljava/lang/Number;

    .line 340
    .line 341
    invoke-virtual {v2}, Ljava/lang/Number;->doubleValue()D

    .line 342
    .line 343
    .line 344
    move-result-wide v7

    .line 345
    invoke-virtual {p0, v5, v7, v8}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    .line 346
    .line 347
    .line 348
    goto/16 :goto_7

    .line 349
    .line 350
    :cond_e
    instance-of v7, v2, Ljava/lang/Float;

    .line 351
    .line 352
    if-eqz v7, :cond_f

    .line 353
    .line 354
    check-cast v2, Ljava/lang/Number;

    .line 355
    .line 356
    invoke-virtual {v2}, Ljava/lang/Number;->floatValue()F

    .line 357
    .line 358
    .line 359
    move-result v2

    .line 360
    invoke-virtual {p0, v5, v2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 361
    .line 362
    .line 363
    goto/16 :goto_7

    .line 364
    .line 365
    :cond_f
    instance-of v7, v2, Ljava/lang/Integer;

    .line 366
    .line 367
    if-eqz v7, :cond_10

    .line 368
    .line 369
    check-cast v2, Ljava/lang/Number;

    .line 370
    .line 371
    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    .line 372
    .line 373
    .line 374
    move-result v2

    .line 375
    invoke-virtual {p0, v5, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 376
    .line 377
    .line 378
    goto/16 :goto_7

    .line 379
    .line 380
    :cond_10
    instance-of v7, v2, Ljava/lang/Long;

    .line 381
    .line 382
    if-eqz v7, :cond_11

    .line 383
    .line 384
    check-cast v2, Ljava/lang/Number;

    .line 385
    .line 386
    invoke-virtual {v2}, Ljava/lang/Number;->longValue()J

    .line 387
    .line 388
    .line 389
    move-result-wide v7

    .line 390
    invoke-virtual {p0, v5, v7, v8}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 391
    .line 392
    .line 393
    goto/16 :goto_7

    .line 394
    .line 395
    :cond_11
    instance-of v7, v2, Ljava/lang/Short;

    .line 396
    .line 397
    if-eqz v7, :cond_12

    .line 398
    .line 399
    check-cast v2, Ljava/lang/Number;

    .line 400
    .line 401
    invoke-virtual {v2}, Ljava/lang/Number;->shortValue()S

    .line 402
    .line 403
    .line 404
    move-result v2

    .line 405
    invoke-virtual {p0, v5, v2}, Landroid/os/Bundle;->putShort(Ljava/lang/String;S)V

    .line 406
    .line 407
    .line 408
    goto/16 :goto_7

    .line 409
    .line 410
    :cond_12
    instance-of v7, v2, Landroid/os/Bundle;

    .line 411
    .line 412
    if-eqz v7, :cond_13

    .line 413
    .line 414
    check-cast v2, Landroid/os/Bundle;

    .line 415
    .line 416
    invoke-virtual {p0, v5, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 417
    .line 418
    .line 419
    goto/16 :goto_7

    .line 420
    .line 421
    :cond_13
    instance-of v7, v2, Ljava/lang/CharSequence;

    .line 422
    .line 423
    if-eqz v7, :cond_14

    .line 424
    .line 425
    check-cast v2, Ljava/lang/CharSequence;

    .line 426
    .line 427
    invoke-virtual {p0, v5, v2}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 428
    .line 429
    .line 430
    goto/16 :goto_7

    .line 431
    .line 432
    :cond_14
    instance-of v7, v2, Landroid/os/Parcelable;

    .line 433
    .line 434
    if-eqz v7, :cond_15

    .line 435
    .line 436
    check-cast v2, Landroid/os/Parcelable;

    .line 437
    .line 438
    invoke-virtual {p0, v5, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 439
    .line 440
    .line 441
    goto/16 :goto_7

    .line 442
    .line 443
    :cond_15
    instance-of v7, v2, [Z

    .line 444
    .line 445
    if-eqz v7, :cond_16

    .line 446
    .line 447
    check-cast v2, [Z

    .line 448
    .line 449
    invoke-virtual {p0, v5, v2}, Landroid/os/Bundle;->putBooleanArray(Ljava/lang/String;[Z)V

    .line 450
    .line 451
    .line 452
    goto/16 :goto_7

    .line 453
    .line 454
    :cond_16
    instance-of v7, v2, [B

    .line 455
    .line 456
    if-eqz v7, :cond_17

    .line 457
    .line 458
    check-cast v2, [B

    .line 459
    .line 460
    invoke-virtual {p0, v5, v2}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 461
    .line 462
    .line 463
    goto/16 :goto_7

    .line 464
    .line 465
    :cond_17
    instance-of v7, v2, [C

    .line 466
    .line 467
    if-eqz v7, :cond_18

    .line 468
    .line 469
    check-cast v2, [C

    .line 470
    .line 471
    invoke-virtual {p0, v5, v2}, Landroid/os/Bundle;->putCharArray(Ljava/lang/String;[C)V

    .line 472
    .line 473
    .line 474
    goto/16 :goto_7

    .line 475
    .line 476
    :cond_18
    instance-of v7, v2, [D

    .line 477
    .line 478
    if-eqz v7, :cond_19

    .line 479
    .line 480
    check-cast v2, [D

    .line 481
    .line 482
    invoke-virtual {p0, v5, v2}, Landroid/os/Bundle;->putDoubleArray(Ljava/lang/String;[D)V

    .line 483
    .line 484
    .line 485
    goto/16 :goto_7

    .line 486
    .line 487
    :cond_19
    instance-of v7, v2, [F

    .line 488
    .line 489
    if-eqz v7, :cond_1a

    .line 490
    .line 491
    check-cast v2, [F

    .line 492
    .line 493
    invoke-virtual {p0, v5, v2}, Landroid/os/Bundle;->putFloatArray(Ljava/lang/String;[F)V

    .line 494
    .line 495
    .line 496
    goto/16 :goto_7

    .line 497
    .line 498
    :cond_1a
    instance-of v7, v2, [I

    .line 499
    .line 500
    if-eqz v7, :cond_1b

    .line 501
    .line 502
    check-cast v2, [I

    .line 503
    .line 504
    invoke-virtual {p0, v5, v2}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    .line 505
    .line 506
    .line 507
    goto/16 :goto_7

    .line 508
    .line 509
    :cond_1b
    instance-of v7, v2, [J

    .line 510
    .line 511
    if-eqz v7, :cond_1c

    .line 512
    .line 513
    check-cast v2, [J

    .line 514
    .line 515
    invoke-virtual {p0, v5, v2}, Landroid/os/Bundle;->putLongArray(Ljava/lang/String;[J)V

    .line 516
    .line 517
    .line 518
    goto/16 :goto_7

    .line 519
    .line 520
    :cond_1c
    instance-of v7, v2, [S

    .line 521
    .line 522
    if-eqz v7, :cond_1d

    .line 523
    .line 524
    check-cast v2, [S

    .line 525
    .line 526
    invoke-virtual {p0, v5, v2}, Landroid/os/Bundle;->putShortArray(Ljava/lang/String;[S)V

    .line 527
    .line 528
    .line 529
    goto/16 :goto_7

    .line 530
    .line 531
    :cond_1d
    instance-of v7, v2, [Ljava/lang/Object;

    .line 532
    .line 533
    const/16 v8, 0x22

    .line 534
    .line 535
    const-string v9, " for key \""

    .line 536
    .line 537
    if-eqz v7, :cond_22

    .line 538
    .line 539
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 540
    .line 541
    .line 542
    move-result-object v7

    .line 543
    invoke-virtual {v7}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    .line 544
    .line 545
    .line 546
    move-result-object v7

    .line 547
    invoke-static {v7}, Lue/d;->b(Ljava/lang/Object;)V

    .line 548
    .line 549
    .line 550
    const-class v10, Landroid/os/Parcelable;

    .line 551
    .line 552
    invoke-virtual {v10, v7}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 553
    .line 554
    .line 555
    move-result v10

    .line 556
    if-eqz v10, :cond_1e

    .line 557
    .line 558
    check-cast v2, [Landroid/os/Parcelable;

    .line 559
    .line 560
    invoke-virtual {p0, v5, v2}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    .line 561
    .line 562
    .line 563
    goto/16 :goto_7

    .line 564
    .line 565
    :cond_1e
    const-class v10, Ljava/lang/String;

    .line 566
    .line 567
    invoke-virtual {v10, v7}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 568
    .line 569
    .line 570
    move-result v10

    .line 571
    if-eqz v10, :cond_1f

    .line 572
    .line 573
    check-cast v2, [Ljava/lang/String;

    .line 574
    .line 575
    invoke-virtual {p0, v5, v2}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 576
    .line 577
    .line 578
    goto/16 :goto_7

    .line 579
    .line 580
    :cond_1f
    const-class v10, Ljava/lang/CharSequence;

    .line 581
    .line 582
    invoke-virtual {v10, v7}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 583
    .line 584
    .line 585
    move-result v10

    .line 586
    if-eqz v10, :cond_20

    .line 587
    .line 588
    check-cast v2, [Ljava/lang/CharSequence;

    .line 589
    .line 590
    invoke-virtual {p0, v5, v2}, Landroid/os/Bundle;->putCharSequenceArray(Ljava/lang/String;[Ljava/lang/CharSequence;)V

    .line 591
    .line 592
    .line 593
    goto :goto_7

    .line 594
    :cond_20
    const-class v10, Ljava/io/Serializable;

    .line 595
    .line 596
    invoke-virtual {v10, v7}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 597
    .line 598
    .line 599
    move-result v10

    .line 600
    if-eqz v10, :cond_21

    .line 601
    .line 602
    check-cast v2, Ljava/io/Serializable;

    .line 603
    .line 604
    invoke-virtual {p0, v5, v2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 605
    .line 606
    .line 607
    goto :goto_7

    .line 608
    :cond_21
    invoke-virtual {v7}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    .line 609
    .line 610
    .line 611
    move-result-object p0

    .line 612
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 613
    .line 614
    new-instance v1, Ljava/lang/StringBuilder;

    .line 615
    .line 616
    const-string v2, "Illegal value array type "

    .line 617
    .line 618
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 619
    .line 620
    .line 621
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 622
    .line 623
    .line 624
    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 625
    .line 626
    .line 627
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 628
    .line 629
    .line 630
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 631
    .line 632
    .line 633
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 634
    .line 635
    .line 636
    move-result-object p0

    .line 637
    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 638
    .line 639
    .line 640
    throw v0

    .line 641
    :cond_22
    instance-of v7, v2, Ljava/io/Serializable;

    .line 642
    .line 643
    if-eqz v7, :cond_23

    .line 644
    .line 645
    check-cast v2, Ljava/io/Serializable;

    .line 646
    .line 647
    invoke-virtual {p0, v5, v2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 648
    .line 649
    .line 650
    goto :goto_7

    .line 651
    :cond_23
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 652
    .line 653
    const/16 v10, 0x12

    .line 654
    .line 655
    if-lt v7, v10, :cond_24

    .line 656
    .line 657
    instance-of v10, v2, Landroid/os/IBinder;

    .line 658
    .line 659
    if-eqz v10, :cond_24

    .line 660
    .line 661
    check-cast v2, Landroid/os/IBinder;

    .line 662
    .line 663
    invoke-static {p0, v5, v2}, Lt0/c;->a(Landroid/os/Bundle;Ljava/lang/String;Landroid/os/IBinder;)V

    .line 664
    .line 665
    .line 666
    goto :goto_7

    .line 667
    :cond_24
    const/16 v10, 0x15

    .line 668
    .line 669
    if-lt v7, v10, :cond_25

    .line 670
    .line 671
    invoke-static {v2}, Lt0/e;->w(Ljava/lang/Object;)Z

    .line 672
    .line 673
    .line 674
    move-result v11

    .line 675
    if-eqz v11, :cond_25

    .line 676
    .line 677
    invoke-static {v2}, Lt0/e;->i(Ljava/lang/Object;)Landroid/util/Size;

    .line 678
    .line 679
    .line 680
    move-result-object v2

    .line 681
    invoke-static {p0, v5, v2}, Lt0/d;->a(Landroid/os/Bundle;Ljava/lang/String;Landroid/util/Size;)V

    .line 682
    .line 683
    .line 684
    goto :goto_7

    .line 685
    :cond_25
    if-lt v7, v10, :cond_26

    .line 686
    .line 687
    invoke-static {v2}, Lt0/e;->y(Ljava/lang/Object;)Z

    .line 688
    .line 689
    .line 690
    move-result v7

    .line 691
    if-eqz v7, :cond_26

    .line 692
    .line 693
    invoke-static {v2}, Lt0/e;->j(Ljava/lang/Object;)Landroid/util/SizeF;

    .line 694
    .line 695
    .line 696
    move-result-object v2

    .line 697
    invoke-static {p0, v5, v2}, Lt0/d;->b(Landroid/os/Bundle;Ljava/lang/String;Landroid/util/SizeF;)V

    .line 698
    .line 699
    .line 700
    :goto_7
    add-int/2addr v1, v3

    .line 701
    goto/16 :goto_6

    .line 702
    .line 703
    :cond_26
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 704
    .line 705
    .line 706
    move-result-object p0

    .line 707
    invoke-virtual {p0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    .line 708
    .line 709
    .line 710
    move-result-object p0

    .line 711
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 712
    .line 713
    new-instance v1, Ljava/lang/StringBuilder;

    .line 714
    .line 715
    const-string v2, "Illegal value type "

    .line 716
    .line 717
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 718
    .line 719
    .line 720
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 721
    .line 722
    .line 723
    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 724
    .line 725
    .line 726
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 727
    .line 728
    .line 729
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 730
    .line 731
    .line 732
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 733
    .line 734
    .line 735
    move-result-object p0

    .line 736
    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 737
    .line 738
    .line 739
    throw v0

    .line 740
    :cond_27
    return-object p0
.end method
