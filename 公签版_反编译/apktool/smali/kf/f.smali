.class public final Lkf/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkf/e;
.implements Lha/wd;


# instance fields
.field public final synthetic a:I

.field public b:I

.field public c:Z

.field public final d:Ljava/lang/Object;

.field public final e:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    iput v0, p0, Lkf/f;->a:I

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lkf/f;->b:I

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lkf/f;->d:Ljava/lang/Object;

    .line 4
    const-string v1, "<?xml version=\"1.0\" encoding=\"utf-8\"?>\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5
    new-instance v0, Lkf/d;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lkf/d;-><init>(I)V

    iput-object v0, p0, Lkf/f;->e:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/material/bottomsheet/BottomSheetBehavior;)V
    .locals 1

    const/4 v0, 0x4

    iput v0, p0, Lkf/f;->a:I

    .line 14
    iput-object p1, p0, Lkf/f;->e:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    new-instance p1, Landroidx/activity/h;

    const/16 v0, 0x13

    invoke-direct {p1, v0, p0}, Landroidx/activity/h;-><init>(ILjava/lang/Object;)V

    iput-object p1, p0, Lkf/f;->d:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/material/sidesheet/SideSheetBehavior;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lkf/f;->a:I

    .line 12
    iput-object p1, p0, Lkf/f;->e:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    new-instance p1, Lha/db;

    const/16 v0, 0x9

    invoke-direct {p1, v0, p0}, Lha/db;-><init>(ILjava/lang/Object;)V

    iput-object p1, p0, Lkf/f;->d:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/yunpan/appmanage/ui/ActivityStart;Landroid/content/pm/ResolveInfo;ZI)V
    .locals 1

    const/4 v0, 0x3

    iput v0, p0, Lkf/f;->a:I

    .line 11
    iput-object p1, p0, Lkf/f;->e:Ljava/lang/Object;

    iput-object p2, p0, Lkf/f;->d:Ljava/lang/Object;

    iput-boolean p3, p0, Lkf/f;->c:Z

    iput p4, p0, Lkf/f;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/nio/charset/Charset;ZI)V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, Lkf/f;->a:I

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput-object p1, p0, Lkf/f;->d:Ljava/lang/Object;

    .line 8
    iput-boolean p3, p0, Lkf/f;->c:Z

    .line 9
    new-instance p3, Lj8/d;

    invoke-direct {p3, p1, p2}, Lj8/d;-><init>(Ljava/lang/String;Ljava/nio/charset/Charset;)V

    iput-object p3, p0, Lkf/f;->e:Ljava/lang/Object;

    .line 10
    iput p4, p0, Lkf/f;->b:I

    return-void
.end method

.method public static a([[[Ln8/d;ILn8/d;)V
    .locals 3

    .line 1
    iget v0, p2, Ln8/d;->d:I

    .line 2
    .line 3
    add-int/2addr p1, v0

    .line 4
    aget-object p0, p0, p1

    .line 5
    .line 6
    iget p1, p2, Ln8/d;->c:I

    .line 7
    .line 8
    aget-object p0, p0, p1

    .line 9
    .line 10
    iget-object p1, p2, Ln8/d;->a:Lm8/a;

    .line 11
    .line 12
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    const/4 v1, 0x2

    .line 17
    const/4 v2, 0x1

    .line 18
    if-eq v0, v2, :cond_3

    .line 19
    .line 20
    if-eq v0, v1, :cond_2

    .line 21
    .line 22
    const/4 v1, 0x4

    .line 23
    if-eq v0, v1, :cond_1

    .line 24
    .line 25
    const/4 v1, 0x6

    .line 26
    if-ne v0, v1, :cond_0

    .line 27
    .line 28
    const/4 v1, 0x0

    .line 29
    goto :goto_0

    .line 30
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 31
    .line 32
    new-instance p2, Ljava/lang/StringBuilder;

    .line 33
    .line 34
    const-string v0, "Illegal mode "

    .line 35
    .line 36
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    throw p0

    .line 50
    :cond_1
    const/4 v1, 0x3

    .line 51
    goto :goto_0

    .line 52
    :cond_2
    const/4 v1, 0x1

    .line 53
    :cond_3
    :goto_0
    aget-object p1, p0, v1

    .line 54
    .line 55
    if-eqz p1, :cond_4

    .line 56
    .line 57
    iget v0, p2, Ln8/d;->f:I

    .line 58
    .line 59
    iget p1, p1, Ln8/d;->f:I

    .line 60
    .line 61
    if-le p1, v0, :cond_5

    .line 62
    .line 63
    :cond_4
    aput-object p2, p0, v1

    .line 64
    .line 65
    :cond_5
    return-void
.end method

.method public static c(Lm8/a;C)Z
    .locals 3

    .line 1
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    const/4 v0, 0x0

    .line 6
    const/4 v1, 0x1

    .line 7
    if-eq p0, v1, :cond_5

    .line 8
    .line 9
    const/4 v2, 0x2

    .line 10
    if-eq p0, v2, :cond_2

    .line 11
    .line 12
    const/4 v2, 0x4

    .line 13
    if-eq p0, v2, :cond_1

    .line 14
    .line 15
    const/4 v1, 0x6

    .line 16
    if-eq p0, v1, :cond_0

    .line 17
    .line 18
    return v0

    .line 19
    :cond_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    invoke-static {p0}, Ln8/b;->b(Ljava/lang/String;)Z

    .line 24
    .line 25
    .line 26
    move-result p0

    .line 27
    return p0

    .line 28
    :cond_1
    return v1

    .line 29
    :cond_2
    const/16 p0, 0x60

    .line 30
    .line 31
    const/4 v2, -0x1

    .line 32
    if-ge p1, p0, :cond_3

    .line 33
    .line 34
    sget-object p0, Ln8/b;->a:[I

    .line 35
    .line 36
    aget p0, p0, p1

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_3
    sget-object p0, Ln8/b;->a:[I

    .line 40
    .line 41
    const/4 p0, -0x1

    .line 42
    :goto_0
    if-eq p0, v2, :cond_4

    .line 43
    .line 44
    const/4 v0, 0x1

    .line 45
    :cond_4
    return v0

    .line 46
    :cond_5
    const/16 p0, 0x30

    .line 47
    .line 48
    if-lt p1, p0, :cond_6

    .line 49
    .line 50
    const/16 p0, 0x39

    .line 51
    .line 52
    if-gt p1, p0, :cond_6

    .line 53
    .line 54
    const/4 v0, 0x1

    .line 55
    :cond_6
    return v0
.end method

.method public static h(I)Lm8/b;
    .locals 1

    .line 1
    invoke-static {p0}, Ld0/f;->c(I)I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    if-eqz p0, :cond_1

    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    if-eq p0, v0, :cond_0

    .line 9
    .line 10
    const/16 p0, 0x28

    .line 11
    .line 12
    invoke-static {p0}, Lm8/b;->a(I)Lm8/b;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    return-object p0

    .line 17
    :cond_0
    const/16 p0, 0x1a

    .line 18
    .line 19
    invoke-static {p0}, Lm8/b;->a(I)Lm8/b;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    return-object p0

    .line 24
    :cond_1
    const/16 p0, 0x9

    .line 25
    .line 26
    invoke-static {p0}, Lm8/b;->a(I)Lm8/b;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    return-object p0
.end method


# virtual methods
.method public D()V
    .locals 0

    .line 1
    return-void
.end method

.method public b(Lm8/b;[[[Ln8/d;ILn8/d;)V
    .locals 16

    .line 1
    move-object/from16 v8, p0

    .line 2
    .line 3
    move-object/from16 v9, p2

    .line 4
    .line 5
    move/from16 v10, p3

    .line 6
    .line 7
    iget-object v0, v8, Lkf/f;->e:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast v0, Lj8/d;

    .line 10
    .line 11
    iget-object v1, v0, Lj8/d;->a:[Ljava/nio/charset/CharsetEncoder;

    .line 12
    .line 13
    array-length v1, v1

    .line 14
    const-string v11, ""

    .line 15
    .line 16
    iget-object v12, v0, Lj8/d;->a:[Ljava/nio/charset/CharsetEncoder;

    .line 17
    .line 18
    iget v0, v0, Lj8/d;->b:I

    .line 19
    .line 20
    iget-object v2, v8, Lkf/f;->d:Ljava/lang/Object;

    .line 21
    .line 22
    move-object v13, v2

    .line 23
    check-cast v13, Ljava/lang/String;

    .line 24
    .line 25
    if-ltz v0, :cond_0

    .line 26
    .line 27
    invoke-virtual {v13, v10}, Ljava/lang/String;->charAt(I)C

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    aget-object v3, v12, v0

    .line 32
    .line 33
    new-instance v4, Ljava/lang/StringBuilder;

    .line 34
    .line 35
    invoke-direct {v4, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v2

    .line 45
    invoke-virtual {v3, v2}, Ljava/nio/charset/CharsetEncoder;->canEncode(Ljava/lang/CharSequence;)Z

    .line 46
    .line 47
    .line 48
    move-result v2

    .line 49
    if-eqz v2, :cond_0

    .line 50
    .line 51
    add-int/lit8 v1, v0, 0x1

    .line 52
    .line 53
    :goto_0
    move v14, v1

    .line 54
    goto :goto_1

    .line 55
    :cond_0
    const/4 v0, 0x0

    .line 56
    goto :goto_0

    .line 57
    :goto_1
    move v15, v0

    .line 58
    :goto_2
    if-ge v15, v14, :cond_2

    .line 59
    .line 60
    invoke-virtual {v13, v10}, Ljava/lang/String;->charAt(I)C

    .line 61
    .line 62
    .line 63
    move-result v0

    .line 64
    aget-object v1, v12, v15

    .line 65
    .line 66
    new-instance v2, Ljava/lang/StringBuilder;

    .line 67
    .line 68
    invoke-direct {v2, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    invoke-virtual {v1, v0}, Ljava/nio/charset/CharsetEncoder;->canEncode(Ljava/lang/CharSequence;)Z

    .line 79
    .line 80
    .line 81
    move-result v0

    .line 82
    if-eqz v0, :cond_1

    .line 83
    .line 84
    new-instance v7, Ln8/d;

    .line 85
    .line 86
    sget-object v2, Lm8/a;->e:Lm8/a;

    .line 87
    .line 88
    const/4 v5, 0x1

    .line 89
    move-object v0, v7

    .line 90
    move-object/from16 v1, p0

    .line 91
    .line 92
    move/from16 v3, p3

    .line 93
    .line 94
    move v4, v15

    .line 95
    move-object/from16 v6, p4

    .line 96
    .line 97
    move-object v8, v7

    .line 98
    move-object/from16 v7, p1

    .line 99
    .line 100
    invoke-direct/range {v0 .. v7}, Ln8/d;-><init>(Lkf/f;Lm8/a;IIILn8/d;Lm8/b;)V

    .line 101
    .line 102
    .line 103
    invoke-static {v9, v10, v8}, Lkf/f;->a([[[Ln8/d;ILn8/d;)V

    .line 104
    .line 105
    .line 106
    :cond_1
    add-int/lit8 v15, v15, 0x1

    .line 107
    .line 108
    move-object/from16 v8, p0

    .line 109
    .line 110
    goto :goto_2

    .line 111
    :cond_2
    sget-object v2, Lm8/a;->g:Lm8/a;

    .line 112
    .line 113
    invoke-virtual {v13, v10}, Ljava/lang/String;->charAt(I)C

    .line 114
    .line 115
    .line 116
    move-result v0

    .line 117
    invoke-static {v2, v0}, Lkf/f;->c(Lm8/a;C)Z

    .line 118
    .line 119
    .line 120
    move-result v0

    .line 121
    if-eqz v0, :cond_3

    .line 122
    .line 123
    new-instance v8, Ln8/d;

    .line 124
    .line 125
    const/4 v5, 0x1

    .line 126
    const/4 v4, 0x0

    .line 127
    move-object v0, v8

    .line 128
    move-object/from16 v1, p0

    .line 129
    .line 130
    move/from16 v3, p3

    .line 131
    .line 132
    move-object/from16 v6, p4

    .line 133
    .line 134
    move-object/from16 v7, p1

    .line 135
    .line 136
    invoke-direct/range {v0 .. v7}, Ln8/d;-><init>(Lkf/f;Lm8/a;IIILn8/d;Lm8/b;)V

    .line 137
    .line 138
    .line 139
    invoke-static {v9, v10, v8}, Lkf/f;->a([[[Ln8/d;ILn8/d;)V

    .line 140
    .line 141
    .line 142
    :cond_3
    invoke-virtual {v13}, Ljava/lang/String;->length()I

    .line 143
    .line 144
    .line 145
    move-result v8

    .line 146
    sget-object v2, Lm8/a;->d:Lm8/a;

    .line 147
    .line 148
    invoke-virtual {v13, v10}, Ljava/lang/String;->charAt(I)C

    .line 149
    .line 150
    .line 151
    move-result v0

    .line 152
    invoke-static {v2, v0}, Lkf/f;->c(Lm8/a;C)Z

    .line 153
    .line 154
    .line 155
    move-result v0

    .line 156
    const/4 v11, 0x2

    .line 157
    const/4 v12, 0x1

    .line 158
    if-eqz v0, :cond_6

    .line 159
    .line 160
    new-instance v14, Ln8/d;

    .line 161
    .line 162
    add-int/lit8 v0, v10, 0x1

    .line 163
    .line 164
    if-ge v0, v8, :cond_5

    .line 165
    .line 166
    invoke-virtual {v13, v0}, Ljava/lang/String;->charAt(I)C

    .line 167
    .line 168
    .line 169
    move-result v0

    .line 170
    invoke-static {v2, v0}, Lkf/f;->c(Lm8/a;C)Z

    .line 171
    .line 172
    .line 173
    move-result v0

    .line 174
    if-nez v0, :cond_4

    .line 175
    .line 176
    goto :goto_3

    .line 177
    :cond_4
    const/4 v5, 0x2

    .line 178
    goto :goto_4

    .line 179
    :cond_5
    :goto_3
    const/4 v5, 0x1

    .line 180
    :goto_4
    const/4 v4, 0x0

    .line 181
    move-object v0, v14

    .line 182
    move-object/from16 v1, p0

    .line 183
    .line 184
    move/from16 v3, p3

    .line 185
    .line 186
    move-object/from16 v6, p4

    .line 187
    .line 188
    move-object/from16 v7, p1

    .line 189
    .line 190
    invoke-direct/range {v0 .. v7}, Ln8/d;-><init>(Lkf/f;Lm8/a;IIILn8/d;Lm8/b;)V

    .line 191
    .line 192
    .line 193
    invoke-static {v9, v10, v14}, Lkf/f;->a([[[Ln8/d;ILn8/d;)V

    .line 194
    .line 195
    .line 196
    :cond_6
    sget-object v2, Lm8/a;->c:Lm8/a;

    .line 197
    .line 198
    invoke-virtual {v13, v10}, Ljava/lang/String;->charAt(I)C

    .line 199
    .line 200
    .line 201
    move-result v0

    .line 202
    invoke-static {v2, v0}, Lkf/f;->c(Lm8/a;C)Z

    .line 203
    .line 204
    .line 205
    move-result v0

    .line 206
    if-eqz v0, :cond_b

    .line 207
    .line 208
    new-instance v14, Ln8/d;

    .line 209
    .line 210
    add-int/lit8 v0, v10, 0x1

    .line 211
    .line 212
    if-ge v0, v8, :cond_a

    .line 213
    .line 214
    invoke-virtual {v13, v0}, Ljava/lang/String;->charAt(I)C

    .line 215
    .line 216
    .line 217
    move-result v0

    .line 218
    invoke-static {v2, v0}, Lkf/f;->c(Lm8/a;C)Z

    .line 219
    .line 220
    .line 221
    move-result v0

    .line 222
    if-nez v0, :cond_7

    .line 223
    .line 224
    goto :goto_6

    .line 225
    :cond_7
    add-int/lit8 v0, v10, 0x2

    .line 226
    .line 227
    if-ge v0, v8, :cond_9

    .line 228
    .line 229
    invoke-virtual {v13, v0}, Ljava/lang/String;->charAt(I)C

    .line 230
    .line 231
    .line 232
    move-result v0

    .line 233
    invoke-static {v2, v0}, Lkf/f;->c(Lm8/a;C)Z

    .line 234
    .line 235
    .line 236
    move-result v0

    .line 237
    if-nez v0, :cond_8

    .line 238
    .line 239
    goto :goto_5

    .line 240
    :cond_8
    const/4 v0, 0x3

    .line 241
    const/4 v5, 0x3

    .line 242
    goto :goto_7

    .line 243
    :cond_9
    :goto_5
    const/4 v5, 0x2

    .line 244
    goto :goto_7

    .line 245
    :cond_a
    :goto_6
    const/4 v5, 0x1

    .line 246
    :goto_7
    const/4 v4, 0x0

    .line 247
    move-object v0, v14

    .line 248
    move-object/from16 v1, p0

    .line 249
    .line 250
    move/from16 v3, p3

    .line 251
    .line 252
    move-object/from16 v6, p4

    .line 253
    .line 254
    move-object/from16 v7, p1

    .line 255
    .line 256
    invoke-direct/range {v0 .. v7}, Ln8/d;-><init>(Lkf/f;Lm8/a;IIILn8/d;Lm8/b;)V

    .line 257
    .line 258
    .line 259
    invoke-static {v9, v10, v14}, Lkf/f;->a([[[Ln8/d;ILn8/d;)V

    .line 260
    .line 261
    .line 262
    :cond_b
    return-void
.end method

.method public d(I)V
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    iget-object v1, p0, Lkf/f;->d:Ljava/lang/Object;

    .line 3
    .line 4
    iget-object v2, p0, Lkf/f;->e:Ljava/lang/Object;

    .line 5
    .line 6
    iget v3, p0, Lkf/f;->a:I

    .line 7
    .line 8
    packed-switch v3, :pswitch_data_0

    .line 9
    .line 10
    .line 11
    check-cast v2, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    .line 12
    .line 13
    iget-object v3, v2, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->U:Ljava/lang/ref/WeakReference;

    .line 14
    .line 15
    if-eqz v3, :cond_1

    .line 16
    .line 17
    invoke-virtual {v3}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v3

    .line 21
    if-nez v3, :cond_0

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    iput p1, p0, Lkf/f;->b:I

    .line 25
    .line 26
    iget-boolean p1, p0, Lkf/f;->c:Z

    .line 27
    .line 28
    if-nez p1, :cond_1

    .line 29
    .line 30
    iget-object p1, v2, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->U:Ljava/lang/ref/WeakReference;

    .line 31
    .line 32
    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    check-cast p1, Landroid/view/View;

    .line 37
    .line 38
    check-cast v1, Landroidx/activity/h;

    .line 39
    .line 40
    sget-object v2, Lx0/b1;->a:Ljava/util/WeakHashMap;

    .line 41
    .line 42
    invoke-static {p1, v1}, Lx0/j0;->m(Landroid/view/View;Ljava/lang/Runnable;)V

    .line 43
    .line 44
    .line 45
    iput-boolean v0, p0, Lkf/f;->c:Z

    .line 46
    .line 47
    :cond_1
    :goto_0
    return-void

    .line 48
    :pswitch_0
    check-cast v2, Lcom/google/android/material/sidesheet/SideSheetBehavior;

    .line 49
    .line 50
    iget-object v3, v2, Lcom/google/android/material/sidesheet/SideSheetBehavior;->p:Ljava/lang/ref/WeakReference;

    .line 51
    .line 52
    if-eqz v3, :cond_3

    .line 53
    .line 54
    invoke-virtual {v3}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object v3

    .line 58
    if-nez v3, :cond_2

    .line 59
    .line 60
    goto :goto_1

    .line 61
    :cond_2
    iput p1, p0, Lkf/f;->b:I

    .line 62
    .line 63
    iget-boolean p1, p0, Lkf/f;->c:Z

    .line 64
    .line 65
    if-nez p1, :cond_3

    .line 66
    .line 67
    iget-object p1, v2, Lcom/google/android/material/sidesheet/SideSheetBehavior;->p:Ljava/lang/ref/WeakReference;

    .line 68
    .line 69
    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    check-cast p1, Landroid/view/View;

    .line 74
    .line 75
    check-cast v1, Lha/db;

    .line 76
    .line 77
    sget-object v2, Lx0/b1;->a:Ljava/util/WeakHashMap;

    .line 78
    .line 79
    invoke-static {p1, v1}, Lx0/j0;->m(Landroid/view/View;Ljava/lang/Runnable;)V

    .line 80
    .line 81
    .line 82
    iput-boolean v0, p0, Lkf/f;->c:Z

    .line 83
    .line 84
    :cond_3
    :goto_1
    return-void

    .line 85
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public e(Lm8/b;)Lv3/f;
    .locals 12

    .line 1
    iget-object v0, p0, Lkf/f;->d:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Ljava/lang/String;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    add-int/lit8 v2, v1, 0x1

    .line 10
    .line 11
    iget-object v3, p0, Lkf/f;->e:Ljava/lang/Object;

    .line 12
    .line 13
    check-cast v3, Lj8/d;

    .line 14
    .line 15
    iget-object v4, v3, Lj8/d;->a:[Ljava/nio/charset/CharsetEncoder;

    .line 16
    .line 17
    array-length v4, v4

    .line 18
    const/4 v5, 0x3

    .line 19
    new-array v5, v5, [I

    .line 20
    .line 21
    const/4 v6, 0x2

    .line 22
    const/4 v7, 0x4

    .line 23
    aput v7, v5, v6

    .line 24
    .line 25
    const/4 v6, 0x1

    .line 26
    aput v4, v5, v6

    .line 27
    .line 28
    const/4 v4, 0x0

    .line 29
    aput v2, v5, v4

    .line 30
    .line 31
    const-class v2, Ln8/d;

    .line 32
    .line 33
    invoke-static {v2, v5}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    check-cast v2, [[[Ln8/d;

    .line 38
    .line 39
    const/4 v5, 0x0

    .line 40
    invoke-virtual {p0, p1, v2, v4, v5}, Lkf/f;->b(Lm8/b;[[[Ln8/d;ILn8/d;)V

    .line 41
    .line 42
    .line 43
    :goto_0
    if-gt v6, v1, :cond_3

    .line 44
    .line 45
    const/4 v5, 0x0

    .line 46
    :goto_1
    iget-object v8, v3, Lj8/d;->a:[Ljava/nio/charset/CharsetEncoder;

    .line 47
    .line 48
    array-length v8, v8

    .line 49
    if-ge v5, v8, :cond_2

    .line 50
    .line 51
    const/4 v8, 0x0

    .line 52
    :goto_2
    if-ge v8, v7, :cond_1

    .line 53
    .line 54
    aget-object v9, v2, v6

    .line 55
    .line 56
    aget-object v9, v9, v5

    .line 57
    .line 58
    aget-object v9, v9, v8

    .line 59
    .line 60
    if-eqz v9, :cond_0

    .line 61
    .line 62
    if-ge v6, v1, :cond_0

    .line 63
    .line 64
    invoke-virtual {p0, p1, v2, v6, v9}, Lkf/f;->b(Lm8/b;[[[Ln8/d;ILn8/d;)V

    .line 65
    .line 66
    .line 67
    :cond_0
    add-int/lit8 v8, v8, 0x1

    .line 68
    .line 69
    goto :goto_2

    .line 70
    :cond_1
    add-int/lit8 v5, v5, 0x1

    .line 71
    .line 72
    goto :goto_1

    .line 73
    :cond_2
    add-int/lit8 v6, v6, 0x1

    .line 74
    .line 75
    goto :goto_0

    .line 76
    :cond_3
    const/4 v5, -0x1

    .line 77
    const v6, 0x7fffffff

    .line 78
    .line 79
    .line 80
    const/4 v6, -0x1

    .line 81
    const v8, 0x7fffffff

    .line 82
    .line 83
    .line 84
    const/4 v9, 0x0

    .line 85
    :goto_3
    iget-object v10, v3, Lj8/d;->a:[Ljava/nio/charset/CharsetEncoder;

    .line 86
    .line 87
    array-length v10, v10

    .line 88
    if-ge v9, v10, :cond_6

    .line 89
    .line 90
    const/4 v10, 0x0

    .line 91
    :goto_4
    if-ge v10, v7, :cond_5

    .line 92
    .line 93
    aget-object v11, v2, v1

    .line 94
    .line 95
    aget-object v11, v11, v9

    .line 96
    .line 97
    aget-object v11, v11, v10

    .line 98
    .line 99
    if-eqz v11, :cond_4

    .line 100
    .line 101
    iget v11, v11, Ln8/d;->f:I

    .line 102
    .line 103
    if-ge v11, v8, :cond_4

    .line 104
    .line 105
    move v5, v9

    .line 106
    move v6, v10

    .line 107
    move v8, v11

    .line 108
    :cond_4
    add-int/lit8 v10, v10, 0x1

    .line 109
    .line 110
    goto :goto_4

    .line 111
    :cond_5
    add-int/lit8 v9, v9, 0x1

    .line 112
    .line 113
    goto :goto_3

    .line 114
    :cond_6
    if-ltz v5, :cond_7

    .line 115
    .line 116
    new-instance v0, Lv3/f;

    .line 117
    .line 118
    aget-object v1, v2, v1

    .line 119
    .line 120
    aget-object v1, v1, v5

    .line 121
    .line 122
    aget-object v1, v1, v6

    .line 123
    .line 124
    invoke-direct {v0, p0, p1, v1}, Lv3/f;-><init>(Lkf/f;Lm8/b;Ln8/d;)V

    .line 125
    .line 126
    .line 127
    return-object v0

    .line 128
    :cond_7
    new-instance p1, Li8/b;

    .line 129
    .line 130
    const-string v1, "Internal error: failed to encode \""

    .line 131
    .line 132
    const-string v2, "\""

    .line 133
    .line 134
    invoke-static {v1, v0, v2}, Lg/b;->A(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object v0

    .line 138
    invoke-direct {p1, v0}, Li8/b;-><init>(Ljava/lang/String;)V

    .line 139
    .line 140
    .line 141
    goto :goto_6

    .line 142
    :goto_5
    throw p1

    .line 143
    :goto_6
    goto :goto_5
.end method

.method public f(Lba/h;)V
    .locals 6

    .line 1
    iget v0, p0, Lkf/f;->b:I

    .line 2
    .line 3
    add-int/lit8 v0, v0, -0x1

    .line 4
    .line 5
    iput v0, p0, Lkf/f;->b:I

    .line 6
    .line 7
    iget-boolean v1, p0, Lkf/f;->c:Z

    .line 8
    .line 9
    iget-object v2, p0, Lkf/f;->d:Ljava/lang/Object;

    .line 10
    .line 11
    check-cast v2, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    const/4 v3, 0x0

    .line 14
    if-eqz v1, :cond_0

    .line 15
    .line 16
    const-string p1, " />\n"

    .line 17
    .line 18
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    goto :goto_1

    .line 22
    :cond_0
    const/4 v1, 0x0

    .line 23
    :goto_0
    if-ge v1, v0, :cond_1

    .line 24
    .line 25
    iget-object v4, p0, Lkf/f;->d:Ljava/lang/Object;

    .line 26
    .line 27
    check-cast v4, Ljava/lang/StringBuilder;

    .line 28
    .line 29
    const-string v5, "\t"

    .line 30
    .line 31
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    add-int/lit8 v1, v1, 0x1

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_1
    const-string v0, "</"

    .line 38
    .line 39
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    iget-object v0, p1, Lba/h;->b:Ljava/lang/String;

    .line 43
    .line 44
    if-eqz v0, :cond_3

    .line 45
    .line 46
    iget-object v1, p0, Lkf/f;->e:Ljava/lang/Object;

    .line 47
    .line 48
    check-cast v1, Lkf/d;

    .line 49
    .line 50
    invoke-virtual {v1, v0}, Lkf/d;->z(Ljava/lang/String;)Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    if-nez v0, :cond_2

    .line 55
    .line 56
    iget-object v0, p1, Lba/h;->b:Ljava/lang/String;

    .line 57
    .line 58
    :cond_2
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    const-string v0, ":"

    .line 62
    .line 63
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    :cond_3
    iget-object p1, p1, Lba/h;->c:Ljava/lang/String;

    .line 67
    .line 68
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    const-string p1, ">\n"

    .line 72
    .line 73
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    :goto_1
    iput-boolean v3, p0, Lkf/f;->c:Z

    .line 77
    .line 78
    return-void
.end method

.method public g(Lba/h;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lkf/f;->e:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lkf/d;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    new-instance v1, Lkf/c;

    .line 9
    .line 10
    iget-object v2, p1, Lba/h;->b:Ljava/lang/String;

    .line 11
    .line 12
    iget-object p1, p1, Lba/h;->c:Ljava/lang/String;

    .line 13
    .line 14
    invoke-direct {v1, v2, p1}, Lkf/c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    iget-object p1, v0, Lkf/d;->b:Ljava/lang/Object;

    .line 18
    .line 19
    check-cast p1, Ljava/util/ArrayList;

    .line 20
    .line 21
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    iget-object p1, v0, Lkf/d;->c:Ljava/lang/Object;

    .line 25
    .line 26
    check-cast p1, Ljava/util/ArrayList;

    .line 27
    .line 28
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    return-void
.end method

.method public i(Lba/h;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lkf/f;->e:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lkf/d;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    new-instance v1, Lkf/c;

    .line 9
    .line 10
    iget-object v2, p1, Lba/h;->b:Ljava/lang/String;

    .line 11
    .line 12
    iget-object p1, p1, Lba/h;->c:Ljava/lang/String;

    .line 13
    .line 14
    invoke-direct {v1, v2, p1}, Lkf/c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    iget-object p1, v0, Lkf/d;->b:Ljava/lang/Object;

    .line 18
    .line 19
    check-cast p1, Ljava/util/ArrayList;

    .line 20
    .line 21
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    iget-object p1, v0, Lkf/d;->c:Ljava/lang/Object;

    .line 25
    .line 26
    check-cast p1, Ljava/util/ArrayList;

    .line 27
    .line 28
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    return-void
.end method

.method public m(Lv3/f;)V
    .locals 14

    .line 1
    iget-boolean v0, p0, Lkf/f;->c:Z

    .line 2
    .line 3
    iget-object v1, p0, Lkf/f;->d:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast v1, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    const-string v0, ">\n"

    .line 10
    .line 11
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    :cond_0
    iget v0, p0, Lkf/f;->b:I

    .line 15
    .line 16
    add-int/lit8 v2, v0, 0x1

    .line 17
    .line 18
    iput v2, p0, Lkf/f;->b:I

    .line 19
    .line 20
    const/4 v2, 0x0

    .line 21
    const/4 v3, 0x0

    .line 22
    :goto_0
    if-ge v3, v0, :cond_1

    .line 23
    .line 24
    iget-object v4, p0, Lkf/f;->d:Ljava/lang/Object;

    .line 25
    .line 26
    check-cast v4, Ljava/lang/StringBuilder;

    .line 27
    .line 28
    const-string v5, "\t"

    .line 29
    .line 30
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    add-int/lit8 v3, v3, 0x1

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_1
    const/16 v0, 0x3c

    .line 37
    .line 38
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    iget-object v0, p1, Lv3/f;->b:Ljava/lang/Object;

    .line 42
    .line 43
    check-cast v0, Ljava/lang/String;

    .line 44
    .line 45
    iget-object v3, p0, Lkf/f;->e:Ljava/lang/Object;

    .line 46
    .line 47
    check-cast v3, Lkf/d;

    .line 48
    .line 49
    if-eqz v0, :cond_3

    .line 50
    .line 51
    invoke-virtual {v3, v0}, Lkf/d;->z(Ljava/lang/String;)Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    const-string v4, ":"

    .line 56
    .line 57
    if-eqz v0, :cond_2

    .line 58
    .line 59
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    goto :goto_1

    .line 66
    :cond_2
    iget-object v0, p1, Lv3/f;->b:Ljava/lang/Object;

    .line 67
    .line 68
    check-cast v0, Ljava/lang/String;

    .line 69
    .line 70
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    :cond_3
    :goto_1
    iget-object v0, p1, Lv3/f;->c:Ljava/lang/Object;

    .line 77
    .line 78
    check-cast v0, Ljava/lang/String;

    .line 79
    .line 80
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    iget-object v0, v3, Lkf/d;->c:Ljava/lang/Object;

    .line 84
    .line 85
    check-cast v0, Ljava/util/ArrayList;

    .line 86
    .line 87
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 88
    .line 89
    .line 90
    move-result v4

    .line 91
    if-nez v4, :cond_4

    .line 92
    .line 93
    new-instance v4, Ljava/util/ArrayList;

    .line 94
    .line 95
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 96
    .line 97
    .line 98
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 99
    .line 100
    .line 101
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 102
    .line 103
    .line 104
    goto :goto_2

    .line 105
    :cond_4
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 106
    .line 107
    .line 108
    move-result-object v4

    .line 109
    :goto_2
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    .line 110
    .line 111
    .line 112
    move-result v0

    .line 113
    if-nez v0, :cond_5

    .line 114
    .line 115
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 116
    .line 117
    .line 118
    move-result-object v0

    .line 119
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 120
    .line 121
    .line 122
    move-result v4

    .line 123
    if-eqz v4, :cond_5

    .line 124
    .line 125
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 126
    .line 127
    .line 128
    move-result-object v4

    .line 129
    check-cast v4, Lkf/c;

    .line 130
    .line 131
    const-string v5, " xmlns:"

    .line 132
    .line 133
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    .line 135
    .line 136
    iget-object v5, v4, Lkf/c;->a:Ljava/lang/String;

    .line 137
    .line 138
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    .line 140
    .line 141
    const-string v5, "=\""

    .line 142
    .line 143
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    .line 145
    .line 146
    iget-object v4, v4, Lkf/c;->b:Ljava/lang/String;

    .line 147
    .line 148
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    .line 150
    .line 151
    const-string v4, "\""

    .line 152
    .line 153
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    .line 155
    .line 156
    goto :goto_3

    .line 157
    :cond_5
    const/4 v0, 0x1

    .line 158
    iput-boolean v0, p0, Lkf/f;->c:Z

    .line 159
    .line 160
    iget-object p1, p1, Lv3/f;->d:Ljava/lang/Object;

    .line 161
    .line 162
    check-cast p1, Ll5/y;

    .line 163
    .line 164
    iget-object p1, p1, Ll5/y;->b:Ljava/lang/Object;

    .line 165
    .line 166
    check-cast p1, [Lkf/b;

    .line 167
    .line 168
    array-length v0, p1

    .line 169
    const/4 v4, 0x0

    .line 170
    :goto_4
    if-ge v4, v0, :cond_c

    .line 171
    .line 172
    aget-object v5, p1, v4

    .line 173
    .line 174
    const-string v6, " "

    .line 175
    .line 176
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 177
    .line 178
    .line 179
    iget-object v6, v5, Lkf/b;->b:Ljava/lang/Object;

    .line 180
    .line 181
    check-cast v6, Ljava/lang/String;

    .line 182
    .line 183
    invoke-virtual {v3, v6}, Lkf/d;->z(Ljava/lang/String;)Ljava/lang/String;

    .line 184
    .line 185
    .line 186
    move-result-object v6

    .line 187
    if-nez v6, :cond_6

    .line 188
    .line 189
    iget-object v6, v5, Lkf/b;->b:Ljava/lang/Object;

    .line 190
    .line 191
    check-cast v6, Ljava/lang/String;

    .line 192
    .line 193
    :cond_6
    if-eqz v6, :cond_7

    .line 194
    .line 195
    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    .line 196
    .line 197
    .line 198
    move-result v7

    .line 199
    if-nez v7, :cond_7

    .line 200
    .line 201
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 202
    .line 203
    .line 204
    const/16 v6, 0x3a

    .line 205
    .line 206
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 207
    .line 208
    .line 209
    :cond_7
    iget-object v6, v5, Lkf/b;->f:Ljava/lang/Object;

    .line 210
    .line 211
    check-cast v6, Ljava/lang/String;

    .line 212
    .line 213
    sget-object v7, Lrf/g;->a:Lrf/a;

    .line 214
    .line 215
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 216
    .line 217
    .line 218
    if-nez v6, :cond_8

    .line 219
    .line 220
    const/4 v6, 0x0

    .line 221
    goto :goto_7

    .line 222
    :cond_8
    :try_start_0
    new-instance v8, Ljava/io/StringWriter;

    .line 223
    .line 224
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    .line 225
    .line 226
    .line 227
    move-result v9

    .line 228
    mul-int/lit8 v9, v9, 0x2

    .line 229
    .line 230
    invoke-direct {v8, v9}, Ljava/io/StringWriter;-><init>(I)V

    .line 231
    .line 232
    .line 233
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    .line 234
    .line 235
    .line 236
    move-result v9

    .line 237
    const/4 v10, 0x0

    .line 238
    :cond_9
    :goto_5
    if-ge v10, v9, :cond_b

    .line 239
    .line 240
    invoke-virtual {v7, v10, v8, v6}, Lrf/a;->a(ILjava/io/StringWriter;Ljava/lang/String;)I

    .line 241
    .line 242
    .line 243
    move-result v11

    .line 244
    if-nez v11, :cond_a

    .line 245
    .line 246
    invoke-static {v6, v10}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    .line 247
    .line 248
    .line 249
    move-result v11

    .line 250
    invoke-static {v11}, Ljava/lang/Character;->toChars(I)[C

    .line 251
    .line 252
    .line 253
    move-result-object v11

    .line 254
    invoke-virtual {v8, v11}, Ljava/io/Writer;->write([C)V

    .line 255
    .line 256
    .line 257
    array-length v11, v11

    .line 258
    add-int/2addr v10, v11

    .line 259
    goto :goto_5

    .line 260
    :cond_a
    const/4 v12, 0x0

    .line 261
    :goto_6
    if-ge v12, v11, :cond_9

    .line 262
    .line 263
    invoke-static {v6, v10}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    .line 264
    .line 265
    .line 266
    move-result v13

    .line 267
    invoke-static {v13}, Ljava/lang/Character;->charCount(I)I

    .line 268
    .line 269
    .line 270
    move-result v13

    .line 271
    add-int/2addr v10, v13

    .line 272
    add-int/lit8 v12, v12, 0x1

    .line 273
    .line 274
    goto :goto_6

    .line 275
    :cond_b
    invoke-virtual {v8}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    .line 276
    .line 277
    .line 278
    move-result-object v6
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 279
    :goto_7
    iget-object v5, v5, Lkf/b;->c:Ljava/lang/Object;

    .line 280
    .line 281
    check-cast v5, Ljava/lang/String;

    .line 282
    .line 283
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 284
    .line 285
    .line 286
    const/16 v5, 0x3d

    .line 287
    .line 288
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 289
    .line 290
    .line 291
    const/16 v5, 0x22

    .line 292
    .line 293
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 294
    .line 295
    .line 296
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 297
    .line 298
    .line 299
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 300
    .line 301
    .line 302
    add-int/lit8 v4, v4, 0x1

    .line 303
    .line 304
    goto/16 :goto_4

    .line 305
    .line 306
    :catch_0
    move-exception p1

    .line 307
    new-instance v0, Ljava/lang/RuntimeException;

    .line 308
    .line 309
    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 310
    .line 311
    .line 312
    throw v0

    .line 313
    :cond_c
    return-void
.end method

.method public t()V
    .locals 4

    .line 1
    sget v0, Lcom/yunpan/appmanage/ui/ActivityStart;->G:I

    .line 2
    .line 3
    iget-object v0, p0, Lkf/f;->e:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast v0, Lcom/yunpan/appmanage/ui/ActivityStart;

    .line 6
    .line 7
    iget-object v1, p0, Lkf/f;->d:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast v1, Landroid/content/pm/ResolveInfo;

    .line 10
    .line 11
    iget-boolean v2, p0, Lkf/f;->c:Z

    .line 12
    .line 13
    iget v3, p0, Lkf/f;->b:I

    .line 14
    .line 15
    invoke-virtual {v0, v1, v2, v3}, Lcom/yunpan/appmanage/ui/ActivityStart;->x(Landroid/content/pm/ResolveInfo;ZI)V

    .line 16
    .line 17
    .line 18
    return-void
.end method
