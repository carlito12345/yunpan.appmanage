.class public final Leh/i;
.super Leh/b;
.source "SourceFile"


# static fields
.field public static final f:Ljava/util/regex/Pattern;


# instance fields
.field public final e:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-string v0, "^total \\d+$"

    .line 2
    .line 3
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Leh/i;->f:Ljava/util/regex/Pattern;

    .line 8
    .line 9
    new-instance v0, Ldh/f;

    .line 10
    .line 11
    return-void
.end method

.method public constructor <init>(Ldh/f;Z)V
    .locals 1

    .line 1
    const-string v0, "([bcdelfmpSs-])(((r|-)(w|-)([xsStTL-]))((r|-)(w|-)([xsStTL-]))((r|-)(w|-)([xsStTL-])))\\+?\\s*(\\d+)\\s+(?:(\\S+(?:\\s\\S+)*?)\\s+)?(?:(\\S+(?:\\s\\S+)*)\\s+)?(\\d+(?:,\\s*\\d+)?)\\s+((?:\\d+[-/]\\d+[-/]\\d+)|(?:\\S{3}\\s+\\d{1,2})|(?:\\d{1,2}\\s+\\S{3})|(?:\\d{1,2}\u6708\\s+\\d{1,2}\u65e5))\\s+((?:\\d+(?::\\d+)?)|(?:\\d{4}\u5e74))\\s(.*)"

    .line 2
    .line 3
    invoke-direct {p0, v0}, Leh/b;-><init>(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, p1}, Leh/b;->a(Ldh/f;)V

    .line 7
    .line 8
    .line 9
    iput-boolean p2, p0, Leh/i;->e:Z

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final b(Ljava/lang/String;)Ldh/g;
    .locals 14

    .line 1
    new-instance v0, Ldh/g;

    .line 2
    .line 3
    invoke-direct {v0}, Ldh/g;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object p1, v0, Ldh/g;->c:Ljava/lang/String;

    .line 7
    .line 8
    invoke-virtual {p0, p1}, Leh/b;->h(Ljava/lang/String;)Z

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    if-eqz p1, :cond_9

    .line 13
    .line 14
    const/4 p1, 0x1

    .line 15
    invoke-virtual {p0, p1}, Leh/b;->g(I)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    const/16 v2, 0xf

    .line 20
    .line 21
    invoke-virtual {p0, v2}, Leh/b;->g(I)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    const/16 v3, 0x10

    .line 26
    .line 27
    invoke-virtual {p0, v3}, Leh/b;->g(I)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    const/16 v3, 0x11

    .line 31
    .line 32
    invoke-virtual {p0, v3}, Leh/b;->g(I)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    const/16 v3, 0x12

    .line 36
    .line 37
    invoke-virtual {p0, v3}, Leh/b;->g(I)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v3

    .line 41
    new-instance v4, Ljava/lang/StringBuilder;

    .line 42
    .line 43
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 44
    .line 45
    .line 46
    const/16 v5, 0x13

    .line 47
    .line 48
    invoke-virtual {p0, v5}, Leh/b;->g(I)Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v6

    .line 52
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    const-string v6, " "

    .line 56
    .line 57
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    const/16 v6, 0x14

    .line 61
    .line 62
    invoke-virtual {p0, v6}, Leh/b;->g(I)Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v6

    .line 66
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v4

    .line 73
    const/16 v6, 0x15

    .line 74
    .line 75
    invoke-virtual {p0, v6}, Leh/b;->g(I)Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v6

    .line 79
    iget-boolean v7, p0, Leh/i;->e:Z

    .line 80
    .line 81
    if-eqz v7, :cond_0

    .line 82
    .line 83
    const-string v7, "^\\s+"

    .line 84
    .line 85
    const-string v8, ""

    .line 86
    .line 87
    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v6

    .line 91
    :cond_0
    :try_start_0
    invoke-virtual {p0, v5}, Leh/b;->g(I)Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v5

    .line 95
    const-string v7, "\u6708"

    .line 96
    .line 97
    invoke-virtual {v5, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 98
    .line 99
    .line 100
    move-result v5

    .line 101
    if-eqz v5, :cond_1

    .line 102
    .line 103
    new-instance v5, Leh/d;

    .line 104
    .line 105
    invoke-direct {v5}, Leh/d;-><init>()V

    .line 106
    .line 107
    .line 108
    new-instance v7, Ldh/f;

    .line 109
    .line 110
    const-string v8, "UNIX"

    .line 111
    .line 112
    const-string v9, "M\'\u6708\' d\'\u65e5\' yyyy\'\u5e74\'"

    .line 113
    .line 114
    const-string v10, "M\'\u6708\' d\'\u65e5\' HH:mm"

    .line 115
    .line 116
    invoke-direct {v7, v8, v9, v10}, Ldh/f;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    .line 118
    .line 119
    invoke-virtual {v5, v7}, Leh/d;->a(Ldh/f;)V

    .line 120
    .line 121
    .line 122
    invoke-virtual {v5, v4}, Leh/d;->d(Ljava/lang/String;)Ljava/util/Calendar;

    .line 123
    .line 124
    .line 125
    move-result-object v4

    .line 126
    iput-object v4, v0, Ldh/g;->e:Ljava/util/Calendar;

    .line 127
    .line 128
    goto :goto_0

    .line 129
    :cond_1
    iget-object v5, p0, Leh/b;->d:Leh/d;

    .line 130
    .line 131
    invoke-virtual {v5, v4}, Leh/d;->d(Ljava/lang/String;)Ljava/util/Calendar;

    .line 132
    .line 133
    .line 134
    move-result-object v4

    .line 135
    iput-object v4, v0, Ldh/g;->e:Ljava/util/Calendar;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 136
    .line 137
    :catch_0
    :goto_0
    const/4 v4, 0x0

    .line 138
    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    .line 139
    .line 140
    .line 141
    move-result v1

    .line 142
    const/4 v5, 0x2

    .line 143
    const/16 v7, 0x2d

    .line 144
    .line 145
    const/4 v8, 0x3

    .line 146
    if-eq v1, v7, :cond_3

    .line 147
    .line 148
    const/16 v7, 0x6c

    .line 149
    .line 150
    if-eq v1, v7, :cond_2

    .line 151
    .line 152
    packed-switch v1, :pswitch_data_0

    .line 153
    .line 154
    .line 155
    const/4 v1, 0x3

    .line 156
    :goto_1
    const/4 v7, 0x0

    .line 157
    goto :goto_2

    .line 158
    :cond_2
    :pswitch_0
    const/4 v1, 0x2

    .line 159
    goto :goto_1

    .line 160
    :pswitch_1
    const/4 v1, 0x1

    .line 161
    goto :goto_1

    .line 162
    :pswitch_2
    const/4 v1, 0x0

    .line 163
    const/4 v7, 0x1

    .line 164
    goto :goto_2

    .line 165
    :cond_3
    :pswitch_3
    const/4 v1, 0x0

    .line 166
    goto :goto_1

    .line 167
    :goto_2
    iput v1, v0, Ldh/g;->a:I

    .line 168
    .line 169
    const/4 v9, 0x4

    .line 170
    const/4 v10, 0x0

    .line 171
    const/4 v11, 0x4

    .line 172
    :goto_3
    if-ge v10, v8, :cond_5

    .line 173
    .line 174
    invoke-virtual {p0, v11}, Leh/b;->g(I)Ljava/lang/String;

    .line 175
    .line 176
    .line 177
    move-result-object v12

    .line 178
    const-string v13, "-"

    .line 179
    .line 180
    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 181
    .line 182
    .line 183
    move-result v12

    .line 184
    xor-int/2addr v12, p1

    .line 185
    invoke-virtual {v0, v10, v4, v12}, Ldh/g;->b(IIZ)V

    .line 186
    .line 187
    .line 188
    add-int/lit8 v12, v11, 0x1

    .line 189
    .line 190
    invoke-virtual {p0, v12}, Leh/b;->g(I)Ljava/lang/String;

    .line 191
    .line 192
    .line 193
    move-result-object v12

    .line 194
    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 195
    .line 196
    .line 197
    move-result v12

    .line 198
    xor-int/2addr v12, p1

    .line 199
    invoke-virtual {v0, v10, p1, v12}, Ldh/g;->b(IIZ)V

    .line 200
    .line 201
    .line 202
    add-int/lit8 v12, v11, 0x2

    .line 203
    .line 204
    invoke-virtual {p0, v12}, Leh/b;->g(I)Ljava/lang/String;

    .line 205
    .line 206
    .line 207
    move-result-object v12

    .line 208
    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 209
    .line 210
    .line 211
    move-result v13

    .line 212
    if-nez v13, :cond_4

    .line 213
    .line 214
    invoke-virtual {v12, v4}, Ljava/lang/String;->charAt(I)C

    .line 215
    .line 216
    .line 217
    move-result v12

    .line 218
    invoke-static {v12}, Ljava/lang/Character;->isUpperCase(C)Z

    .line 219
    .line 220
    .line 221
    move-result v12

    .line 222
    if-nez v12, :cond_4

    .line 223
    .line 224
    const/4 v12, 0x1

    .line 225
    goto :goto_4

    .line 226
    :cond_4
    const/4 v12, 0x0

    .line 227
    :goto_4
    invoke-virtual {v0, v10, v5, v12}, Ldh/g;->b(IIZ)V

    .line 228
    .line 229
    .line 230
    add-int/lit8 v10, v10, 0x1

    .line 231
    .line 232
    add-int/lit8 v11, v11, 0x4

    .line 233
    .line 234
    goto :goto_3

    .line 235
    :cond_5
    if-nez v7, :cond_6

    .line 236
    .line 237
    :try_start_1
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    .line 238
    .line 239
    .line 240
    :catch_1
    :cond_6
    :try_start_2
    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 241
    .line 242
    .line 243
    move-result-wide v2

    .line 244
    iput-wide v2, v0, Ldh/g;->b:J
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2

    .line 245
    .line 246
    goto :goto_5

    .line 247
    :catch_2
    nop

    .line 248
    :goto_5
    if-ne v1, v5, :cond_8

    .line 249
    .line 250
    const-string p1, " -> "

    .line 251
    .line 252
    invoke-virtual {v6, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 253
    .line 254
    .line 255
    move-result p1

    .line 256
    const/4 v1, -0x1

    .line 257
    if-ne p1, v1, :cond_7

    .line 258
    .line 259
    iput-object v6, v0, Ldh/g;->d:Ljava/lang/String;

    .line 260
    .line 261
    goto :goto_6

    .line 262
    :cond_7
    invoke-virtual {v6, v4, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 263
    .line 264
    .line 265
    move-result-object v1

    .line 266
    iput-object v1, v0, Ldh/g;->d:Ljava/lang/String;

    .line 267
    .line 268
    add-int/2addr p1, v9

    .line 269
    invoke-virtual {v6, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 270
    .line 271
    .line 272
    goto :goto_6

    .line 273
    :cond_8
    iput-object v6, v0, Ldh/g;->d:Ljava/lang/String;

    .line 274
    .line 275
    :goto_6
    return-object v0

    .line 276
    :cond_9
    const/4 p1, 0x0

    .line 277
    return-object p1

    .line 278
    nop

    .line 279
    :pswitch_data_0
    .packed-switch 0x62
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public final c(Ljava/util/LinkedList;)V
    .locals 3

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    const/16 v1, 0x18

    .line 4
    .line 5
    if-lt v0, v1, :cond_0

    .line 6
    .line 7
    new-instance v0, Leh/h;

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    invoke-direct {v0, v1}, Leh/h;-><init>(I)V

    .line 11
    .line 12
    .line 13
    invoke-static {p1, v0}, Lj$/util/Collection$-EL;->removeIf(Ljava/util/Collection;Ljava/util/function/Predicate;)Z

    .line 14
    .line 15
    .line 16
    goto :goto_1

    .line 17
    :cond_0
    invoke-virtual {p1}, Ljava/util/LinkedList;->size()I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    add-int/lit8 v0, v0, -0x1

    .line 22
    .line 23
    :goto_0
    if-ltz v0, :cond_2

    .line 24
    .line 25
    invoke-virtual {p1, v0}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    check-cast v1, Ljava/lang/CharSequence;

    .line 30
    .line 31
    sget-object v2, Leh/i;->f:Ljava/util/regex/Pattern;

    .line 32
    .line 33
    invoke-virtual {v2, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    if-eqz v1, :cond_1

    .line 42
    .line 43
    invoke-virtual {p1, v0}, Ljava/util/LinkedList;->remove(I)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    :cond_1
    add-int/lit8 v0, v0, -0x1

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_2
    :goto_1
    return-void
.end method

.method public final f()Ldh/f;
    .locals 4

    .line 1
    new-instance v0, Ldh/f;

    .line 2
    .line 3
    const-string v1, "MMM d yyyy"

    .line 4
    .line 5
    const-string v2, "MMM d HH:mm"

    .line 6
    .line 7
    const-string v3, "UNIX"

    .line 8
    .line 9
    invoke-direct {v0, v3, v1, v2}, Ldh/f;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    return-object v0
.end method
