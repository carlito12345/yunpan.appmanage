.class public final Lj8/d;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final c:Ljava/util/ArrayList;


# instance fields
.field public final a:[Ljava/nio/charset/CharsetEncoder;

.field public final b:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    const/16 v2, 0x14

    .line 4
    .line 5
    new-instance v3, Ljava/util/ArrayList;

    .line 6
    .line 7
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 8
    .line 9
    .line 10
    sput-object v3, Lj8/d;->c:Ljava/util/ArrayList;

    .line 11
    .line 12
    new-array v3, v2, [Ljava/lang/String;

    .line 13
    .line 14
    const-string v4, "IBM437"

    .line 15
    .line 16
    aput-object v4, v3, v1

    .line 17
    .line 18
    const-string v4, "ISO-8859-2"

    .line 19
    .line 20
    aput-object v4, v3, v0

    .line 21
    .line 22
    const-string v4, "ISO-8859-3"

    .line 23
    .line 24
    const/4 v5, 0x2

    .line 25
    aput-object v4, v3, v5

    .line 26
    .line 27
    const-string v4, "ISO-8859-4"

    .line 28
    .line 29
    const/4 v5, 0x3

    .line 30
    aput-object v4, v3, v5

    .line 31
    .line 32
    const-string v4, "ISO-8859-5"

    .line 33
    .line 34
    const/4 v5, 0x4

    .line 35
    aput-object v4, v3, v5

    .line 36
    .line 37
    const-string v4, "ISO-8859-6"

    .line 38
    .line 39
    const/4 v5, 0x5

    .line 40
    aput-object v4, v3, v5

    .line 41
    .line 42
    const-string v4, "ISO-8859-7"

    .line 43
    .line 44
    const/4 v5, 0x6

    .line 45
    aput-object v4, v3, v5

    .line 46
    .line 47
    const-string v4, "ISO-8859-8"

    .line 48
    .line 49
    const/4 v5, 0x7

    .line 50
    aput-object v4, v3, v5

    .line 51
    .line 52
    const-string v4, "ISO-8859-9"

    .line 53
    .line 54
    const/16 v5, 0x8

    .line 55
    .line 56
    aput-object v4, v3, v5

    .line 57
    .line 58
    const-string v4, "ISO-8859-10"

    .line 59
    .line 60
    const/16 v5, 0x9

    .line 61
    .line 62
    aput-object v4, v3, v5

    .line 63
    .line 64
    const-string v4, "ISO-8859-11"

    .line 65
    .line 66
    const/16 v5, 0xa

    .line 67
    .line 68
    aput-object v4, v3, v5

    .line 69
    .line 70
    const-string v4, "ISO-8859-13"

    .line 71
    .line 72
    const/16 v5, 0xb

    .line 73
    .line 74
    aput-object v4, v3, v5

    .line 75
    .line 76
    const-string v4, "ISO-8859-14"

    .line 77
    .line 78
    const/16 v5, 0xc

    .line 79
    .line 80
    aput-object v4, v3, v5

    .line 81
    .line 82
    const-string v4, "ISO-8859-15"

    .line 83
    .line 84
    const/16 v5, 0xd

    .line 85
    .line 86
    aput-object v4, v3, v5

    .line 87
    .line 88
    const-string v4, "ISO-8859-16"

    .line 89
    .line 90
    const/16 v5, 0xe

    .line 91
    .line 92
    aput-object v4, v3, v5

    .line 93
    .line 94
    const-string v4, "windows-1250"

    .line 95
    .line 96
    const/16 v5, 0xf

    .line 97
    .line 98
    aput-object v4, v3, v5

    .line 99
    .line 100
    const-string v4, "windows-1251"

    .line 101
    .line 102
    const/16 v5, 0x10

    .line 103
    .line 104
    aput-object v4, v3, v5

    .line 105
    .line 106
    const-string v4, "windows-1252"

    .line 107
    .line 108
    const/16 v5, 0x11

    .line 109
    .line 110
    aput-object v4, v3, v5

    .line 111
    .line 112
    const-string v4, "windows-1256"

    .line 113
    .line 114
    const/16 v5, 0x12

    .line 115
    .line 116
    aput-object v4, v3, v5

    .line 117
    .line 118
    const-string v4, "Shift_JIS"

    .line 119
    .line 120
    const/16 v5, 0x13

    .line 121
    .line 122
    aput-object v4, v3, v5

    .line 123
    .line 124
    :goto_0
    if-ge v1, v2, :cond_1

    .line 125
    .line 126
    aget-object v4, v3, v1

    .line 127
    .line 128
    sget-object v5, Lj8/c;->d:Ljava/util/HashMap;

    .line 129
    .line 130
    invoke-virtual {v5, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    .line 132
    .line 133
    move-result-object v5

    .line 134
    check-cast v5, Lj8/c;

    .line 135
    .line 136
    if-eqz v5, :cond_0

    .line 137
    .line 138
    :try_start_0
    sget-object v5, Lj8/d;->c:Ljava/util/ArrayList;

    .line 139
    .line 140
    invoke-static {v4}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    .line 141
    .line 142
    .line 143
    move-result-object v4

    .line 144
    invoke-virtual {v4}, Ljava/nio/charset/Charset;->newEncoder()Ljava/nio/charset/CharsetEncoder;

    .line 145
    .line 146
    .line 147
    move-result-object v4

    .line 148
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/nio/charset/UnsupportedCharsetException; {:try_start_0 .. :try_end_0} :catch_0

    .line 149
    .line 150
    .line 151
    :catch_0
    :cond_0
    add-int/2addr v1, v0

    .line 152
    goto :goto_0

    .line 153
    :cond_1
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/nio/charset/Charset;)V
    .locals 9

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
    sget-object v1, Lj$/nio/charset/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    .line 10
    .line 11
    invoke-virtual {v1}, Ljava/nio/charset/Charset;->newEncoder()Ljava/nio/charset/CharsetEncoder;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    const/4 v1, 0x0

    .line 19
    const/4 v2, 0x1

    .line 20
    if-eqz p2, :cond_0

    .line 21
    .line 22
    invoke-virtual {p2}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v3

    .line 26
    const-string v4, "UTF"

    .line 27
    .line 28
    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 29
    .line 30
    .line 31
    move-result v3

    .line 32
    if-eqz v3, :cond_0

    .line 33
    .line 34
    const/4 v3, 0x1

    .line 35
    goto :goto_0

    .line 36
    :cond_0
    const/4 v3, 0x0

    .line 37
    :goto_0
    const/4 v4, 0x0

    .line 38
    :goto_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 39
    .line 40
    .line 41
    move-result v5

    .line 42
    const/4 v6, -0x1

    .line 43
    if-ge v4, v5, :cond_7

    .line 44
    .line 45
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 46
    .line 47
    .line 48
    move-result-object v5

    .line 49
    :cond_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 50
    .line 51
    .line 52
    move-result v7

    .line 53
    if-eqz v7, :cond_3

    .line 54
    .line 55
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object v7

    .line 59
    check-cast v7, Ljava/nio/charset/CharsetEncoder;

    .line 60
    .line 61
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    .line 62
    .line 63
    .line 64
    move-result v8

    .line 65
    if-eq v8, v6, :cond_2

    .line 66
    .line 67
    invoke-virtual {v7, v8}, Ljava/nio/charset/CharsetEncoder;->canEncode(C)Z

    .line 68
    .line 69
    .line 70
    move-result v7

    .line 71
    if-eqz v7, :cond_1

    .line 72
    .line 73
    :cond_2
    const/4 v5, 0x1

    .line 74
    goto :goto_2

    .line 75
    :cond_3
    const/4 v5, 0x0

    .line 76
    :goto_2
    if-nez v5, :cond_5

    .line 77
    .line 78
    sget-object v6, Lj8/d;->c:Ljava/util/ArrayList;

    .line 79
    .line 80
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 81
    .line 82
    .line 83
    move-result-object v6

    .line 84
    :cond_4
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 85
    .line 86
    .line 87
    move-result v7

    .line 88
    if-eqz v7, :cond_5

    .line 89
    .line 90
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 91
    .line 92
    .line 93
    move-result-object v7

    .line 94
    check-cast v7, Ljava/nio/charset/CharsetEncoder;

    .line 95
    .line 96
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    .line 97
    .line 98
    .line 99
    move-result v8

    .line 100
    invoke-virtual {v7, v8}, Ljava/nio/charset/CharsetEncoder;->canEncode(C)Z

    .line 101
    .line 102
    .line 103
    move-result v8

    .line 104
    if-eqz v8, :cond_4

    .line 105
    .line 106
    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 107
    .line 108
    .line 109
    const/4 v5, 0x1

    .line 110
    :cond_5
    if-nez v5, :cond_6

    .line 111
    .line 112
    const/4 v3, 0x1

    .line 113
    :cond_6
    add-int/2addr v4, v2

    .line 114
    goto :goto_1

    .line 115
    :cond_7
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 116
    .line 117
    .line 118
    move-result p1

    .line 119
    if-ne p1, v2, :cond_8

    .line 120
    .line 121
    if-nez v3, :cond_8

    .line 122
    .line 123
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 124
    .line 125
    .line 126
    move-result-object p1

    .line 127
    check-cast p1, Ljava/nio/charset/CharsetEncoder;

    .line 128
    .line 129
    new-array v0, v2, [Ljava/nio/charset/CharsetEncoder;

    .line 130
    .line 131
    aput-object p1, v0, v1

    .line 132
    .line 133
    iput-object v0, p0, Lj8/d;->a:[Ljava/nio/charset/CharsetEncoder;

    .line 134
    .line 135
    goto :goto_4

    .line 136
    :cond_8
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 137
    .line 138
    .line 139
    move-result p1

    .line 140
    add-int/lit8 p1, p1, 0x2

    .line 141
    .line 142
    new-array p1, p1, [Ljava/nio/charset/CharsetEncoder;

    .line 143
    .line 144
    iput-object p1, p0, Lj8/d;->a:[Ljava/nio/charset/CharsetEncoder;

    .line 145
    .line 146
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 147
    .line 148
    .line 149
    move-result-object p1

    .line 150
    const/4 v0, 0x0

    .line 151
    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 152
    .line 153
    .line 154
    move-result v3

    .line 155
    if-eqz v3, :cond_9

    .line 156
    .line 157
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 158
    .line 159
    .line 160
    move-result-object v3

    .line 161
    check-cast v3, Ljava/nio/charset/CharsetEncoder;

    .line 162
    .line 163
    iget-object v4, p0, Lj8/d;->a:[Ljava/nio/charset/CharsetEncoder;

    .line 164
    .line 165
    add-int/lit8 v5, v0, 0x1

    .line 166
    .line 167
    aput-object v3, v4, v0

    .line 168
    .line 169
    move v0, v5

    .line 170
    goto :goto_3

    .line 171
    :cond_9
    iget-object p1, p0, Lj8/d;->a:[Ljava/nio/charset/CharsetEncoder;

    .line 172
    .line 173
    sget-object v3, Lj$/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 174
    .line 175
    invoke-virtual {v3}, Ljava/nio/charset/Charset;->newEncoder()Ljava/nio/charset/CharsetEncoder;

    .line 176
    .line 177
    .line 178
    move-result-object v3

    .line 179
    aput-object v3, p1, v0

    .line 180
    .line 181
    iget-object p1, p0, Lj8/d;->a:[Ljava/nio/charset/CharsetEncoder;

    .line 182
    .line 183
    add-int/2addr v0, v2

    .line 184
    sget-object v3, Lj$/nio/charset/StandardCharsets;->UTF_16BE:Ljava/nio/charset/Charset;

    .line 185
    .line 186
    invoke-virtual {v3}, Ljava/nio/charset/Charset;->newEncoder()Ljava/nio/charset/CharsetEncoder;

    .line 187
    .line 188
    .line 189
    move-result-object v3

    .line 190
    aput-object v3, p1, v0

    .line 191
    .line 192
    :goto_4
    if-eqz p2, :cond_b

    .line 193
    .line 194
    :goto_5
    iget-object p1, p0, Lj8/d;->a:[Ljava/nio/charset/CharsetEncoder;

    .line 195
    .line 196
    array-length v0, p1

    .line 197
    if-ge v1, v0, :cond_b

    .line 198
    .line 199
    aget-object p1, p1, v1

    .line 200
    .line 201
    if-eqz p1, :cond_a

    .line 202
    .line 203
    invoke-virtual {p2}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    .line 204
    .line 205
    .line 206
    move-result-object p1

    .line 207
    iget-object v0, p0, Lj8/d;->a:[Ljava/nio/charset/CharsetEncoder;

    .line 208
    .line 209
    aget-object v0, v0, v1

    .line 210
    .line 211
    invoke-virtual {v0}, Ljava/nio/charset/CharsetEncoder;->charset()Ljava/nio/charset/Charset;

    .line 212
    .line 213
    .line 214
    move-result-object v0

    .line 215
    invoke-virtual {v0}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    .line 216
    .line 217
    .line 218
    move-result-object v0

    .line 219
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 220
    .line 221
    .line 222
    move-result p1

    .line 223
    if-eqz p1, :cond_a

    .line 224
    .line 225
    move v6, v1

    .line 226
    goto :goto_6

    .line 227
    :cond_a
    add-int/2addr v1, v2

    .line 228
    goto :goto_5

    .line 229
    :cond_b
    :goto_6
    iput v6, p0, Lj8/d;->b:I

    .line 230
    .line 231
    return-void
.end method
