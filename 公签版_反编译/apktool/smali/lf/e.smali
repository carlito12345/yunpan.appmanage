.class public final Llf/e;
.super Lab/a;
.source "SourceFile"


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .line 1
    const/4 v0, 0x3

    .line 2
    invoke-direct {p0, p1, v0}, Lab/a;-><init>(II)V

    .line 3
    .line 4
    .line 5
    return-void
.end method


# virtual methods
.method public final f(Lmf/h;Ljava/util/Locale;)Ljava/lang/String;
    .locals 12

    .line 1
    iget v0, p0, Lab/a;->b:I

    .line 2
    .line 3
    int-to-long v0, v0

    .line 4
    const-wide v2, 0xffffffffL

    .line 5
    .line 6
    .line 7
    .line 8
    .line 9
    and-long/2addr v0, v2

    .line 10
    const-wide/32 v2, 0x1030000

    .line 11
    .line 12
    .line 13
    cmp-long v4, v0, v2

    .line 14
    .line 15
    if-lez v4, :cond_0

    .line 16
    .line 17
    const-wide/32 v2, 0x1031000

    .line 18
    .line 19
    .line 20
    cmp-long v4, v0, v2

    .line 21
    .line 22
    if-gez v4, :cond_0

    .line 23
    .line 24
    new-instance p1, Ljava/lang/StringBuilder;

    .line 25
    .line 26
    const-string p2, "@android:style/"

    .line 27
    .line 28
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    sget-object p2, Lmf/h;->b:Ljava/util/HashMap;

    .line 32
    .line 33
    long-to-int v1, v0

    .line 34
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object p2

    .line 42
    check-cast p2, Ljava/lang/String;

    .line 43
    .line 44
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    return-object p1

    .line 52
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    .line 53
    .line 54
    const-string v3, "resourceId:0x"

    .line 55
    .line 56
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    invoke-static {v0, v1}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v3

    .line 63
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v2

    .line 70
    if-nez p1, :cond_1

    .line 71
    .line 72
    return-object v2

    .line 73
    :cond_1
    invoke-virtual {p1, v0, v1}, Lmf/h;->a(J)Ljava/util/List;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    const/4 v1, 0x0

    .line 82
    const/4 v3, -0x1

    .line 83
    move-object v4, v1

    .line 84
    const/4 v5, -0x1

    .line 85
    const/4 v6, -0x1

    .line 86
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 87
    .line 88
    .line 89
    move-result v7

    .line 90
    if-eqz v7, :cond_c

    .line 91
    .line 92
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 93
    .line 94
    .line 95
    move-result-object v4

    .line 96
    check-cast v4, Lmf/g;

    .line 97
    .line 98
    iget-object v7, v4, Lmf/g;->b:Lmf/j;

    .line 99
    .line 100
    iget-object v8, v7, Lmf/j;->c:Ljava/util/Locale;

    .line 101
    .line 102
    sget-object v9, Lqf/a;->a:Ljava/util/Locale;

    .line 103
    .line 104
    const/4 v9, 0x0

    .line 105
    if-nez p2, :cond_2

    .line 106
    .line 107
    const/4 v8, -0x1

    .line 108
    goto :goto_1

    .line 109
    :cond_2
    invoke-virtual {p2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object v10

    .line 113
    invoke-virtual {v8}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object v11

    .line 117
    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 118
    .line 119
    .line 120
    move-result v10

    .line 121
    if-eqz v10, :cond_5

    .line 122
    .line 123
    invoke-virtual {p2}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object v10

    .line 127
    invoke-virtual {v8}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object v11

    .line 131
    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 132
    .line 133
    .line 134
    move-result v10

    .line 135
    if-eqz v10, :cond_3

    .line 136
    .line 137
    const/4 v8, 0x3

    .line 138
    goto :goto_1

    .line 139
    :cond_3
    invoke-virtual {v8}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object v8

    .line 143
    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    .line 144
    .line 145
    .line 146
    move-result v8

    .line 147
    if-eqz v8, :cond_4

    .line 148
    .line 149
    const/4 v8, 0x2

    .line 150
    goto :goto_1

    .line 151
    :cond_4
    const/4 v8, 0x0

    .line 152
    goto :goto_1

    .line 153
    :cond_5
    invoke-virtual {v8}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    .line 154
    .line 155
    .line 156
    move-result-object v10

    .line 157
    invoke-virtual {v10}, Ljava/lang/String;->isEmpty()Z

    .line 158
    .line 159
    .line 160
    move-result v10

    .line 161
    if-nez v10, :cond_6

    .line 162
    .line 163
    invoke-virtual {v8}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    .line 164
    .line 165
    .line 166
    move-result-object v8

    .line 167
    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    .line 168
    .line 169
    .line 170
    move-result v8

    .line 171
    if-eqz v8, :cond_4

    .line 172
    .line 173
    :cond_6
    const/4 v8, 0x1

    .line 174
    :goto_1
    iget v7, v7, Lmf/j;->h:I

    .line 175
    .line 176
    const v10, 0xfffe

    .line 177
    .line 178
    .line 179
    if-eq v7, v10, :cond_9

    .line 180
    .line 181
    const v10, 0xffff

    .line 182
    .line 183
    .line 184
    if-ne v7, v10, :cond_7

    .line 185
    .line 186
    goto :goto_2

    .line 187
    :cond_7
    if-nez v7, :cond_8

    .line 188
    .line 189
    goto :goto_3

    .line 190
    :cond_8
    move v9, v7

    .line 191
    goto :goto_3

    .line 192
    :cond_9
    :goto_2
    const/4 v9, -0x1

    .line 193
    :goto_3
    iget-object v7, v4, Lmf/g;->c:La9/a;

    .line 194
    .line 195
    if-le v8, v5, :cond_a

    .line 196
    .line 197
    move-object v1, v7

    .line 198
    move v5, v8

    .line 199
    :goto_4
    move v6, v9

    .line 200
    goto :goto_5

    .line 201
    :cond_a
    if-le v9, v6, :cond_b

    .line 202
    .line 203
    move-object v1, v7

    .line 204
    goto :goto_4

    .line 205
    :cond_b
    :goto_5
    iget-object v4, v4, Lmf/g;->a:Lmf/l;

    .line 206
    .line 207
    goto :goto_0

    .line 208
    :cond_c
    if-nez v1, :cond_d

    .line 209
    .line 210
    goto :goto_6

    .line 211
    :cond_d
    if-nez p2, :cond_e

    .line 212
    .line 213
    new-instance p1, Ljava/lang/StringBuilder;

    .line 214
    .line 215
    const-string p2, "@"

    .line 216
    .line 217
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 218
    .line 219
    .line 220
    iget-object p2, v4, Lmf/l;->b:Ljava/lang/String;

    .line 221
    .line 222
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 223
    .line 224
    .line 225
    const-string p2, "/"

    .line 226
    .line 227
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 228
    .line 229
    .line 230
    iget-object p2, v1, La9/a;->d:Ljava/lang/Object;

    .line 231
    .line 232
    check-cast p2, Ljava/lang/String;

    .line 233
    .line 234
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 235
    .line 236
    .line 237
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 238
    .line 239
    .line 240
    move-result-object v2

    .line 241
    goto :goto_6

    .line 242
    :cond_e
    invoke-virtual {v1, p1, p2}, La9/a;->s(Lmf/h;Ljava/util/Locale;)Ljava/lang/String;

    .line 243
    .line 244
    .line 245
    move-result-object v2

    .line 246
    :goto_6
    return-object v2
.end method
