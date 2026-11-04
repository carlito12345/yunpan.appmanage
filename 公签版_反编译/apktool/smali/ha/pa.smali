.class public final synthetic Lha/pa;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lc6/e;
.implements Lec/d;


# instance fields
.field public final synthetic a:Lha/sa;


# direct methods
.method public synthetic constructor <init>(Lha/sa;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lha/pa;->a:Lha/sa;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public g(Lmc/b;)V
    .locals 10

    .line 1
    sget-object v0, Lfa/a;->b:Lfa/e0;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    const-string v2, "pm path "

    .line 6
    .line 7
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    iget-object v2, p0, Lha/pa;->a:Lha/sa;

    .line 11
    .line 12
    iget-object v2, v2, Lha/a4;->b:Landroid/content/Context;

    .line 13
    .line 14
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v3

    .line 18
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    const-wide/16 v3, 0xbb8

    .line 26
    .line 27
    invoke-virtual {v0, v3, v4, v1}, Lfa/e0;->a(JLjava/lang/String;)Lcom/yunpan/appmanage/bean/UsbAdbData;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    iget v5, v1, Lcom/yunpan/appmanage/bean/UsbAdbData;->code:I

    .line 32
    .line 33
    if-eqz v5, :cond_0

    .line 34
    .line 35
    new-instance v0, Ljava/lang/Exception;

    .line 36
    .line 37
    new-instance v1, Ljava/lang/StringBuilder;

    .line 38
    .line 39
    const-string v3, "\u5931\u8d25\uff1a\u627e\u4e0d\u5230"

    .line 40
    .line 41
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    const v3, 0x7f13002f

    .line 45
    .line 46
    .line 47
    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v3

    .line 51
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    const-string v3, "("

    .line 55
    .line 56
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v2

    .line 63
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    const-string v2, ")"

    .line 67
    .line 68
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v1

    .line 75
    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {p1, v0}, Lmc/b;->d(Ljava/lang/Throwable;)V

    .line 79
    .line 80
    .line 81
    goto/16 :goto_2

    .line 82
    .line 83
    :cond_0
    invoke-virtual {v1}, Lcom/yunpan/appmanage/bean/UsbAdbData;->getListStr()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v1

    .line 87
    const-string v5, ":"

    .line 88
    .line 89
    invoke-virtual {v1, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 90
    .line 91
    .line 92
    move-result v5

    .line 93
    const/4 v6, -0x1

    .line 94
    const-string v7, "\u51fa\u9519\uff1a\u627e\u4e0d\u5230\u5b89\u88c5\u4f4d\u7f6e"

    .line 95
    .line 96
    if-ne v5, v6, :cond_1

    .line 97
    .line 98
    :goto_0
    invoke-static {v7, p1}, Landroid/support/v4/media/session/a;->B(Ljava/lang/String;Lmc/b;)V

    .line 99
    .line 100
    .line 101
    goto/16 :goto_2

    .line 102
    .line 103
    :cond_1
    add-int/lit8 v5, v5, 0x1

    .line 104
    .line 105
    invoke-virtual {v1, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object v1

    .line 109
    const-string v5, ".apk"

    .line 110
    .line 111
    invoke-virtual {v1, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    .line 112
    .line 113
    .line 114
    move-result v5

    .line 115
    if-ne v5, v6, :cond_2

    .line 116
    .line 117
    goto :goto_0

    .line 118
    :cond_2
    const/4 v8, 0x0

    .line 119
    invoke-virtual {v1, v8, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object v1

    .line 123
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object v1

    .line 127
    const-string v5, "/"

    .line 128
    .line 129
    invoke-virtual {v1, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    .line 130
    .line 131
    .line 132
    move-result v9

    .line 133
    if-ne v9, v6, :cond_3

    .line 134
    .line 135
    goto :goto_0

    .line 136
    :cond_3
    invoke-virtual {v1, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object v1

    .line 140
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object v1

    .line 144
    invoke-virtual {v1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 145
    .line 146
    .line 147
    move-result v6

    .line 148
    if-nez v6, :cond_4

    .line 149
    .line 150
    goto :goto_0

    .line 151
    :cond_4
    const-string v6, "/lib/"

    .line 152
    .line 153
    invoke-virtual {v1, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 154
    .line 155
    .line 156
    move-result-object v1

    .line 157
    const-string v6, "ls \""

    .line 158
    .line 159
    const-string v7, "\""

    .line 160
    .line 161
    invoke-static {v6, v1, v7}, Lg/b;->A(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 162
    .line 163
    .line 164
    move-result-object v6

    .line 165
    invoke-virtual {v0, v3, v4, v6}, Lfa/e0;->a(JLjava/lang/String;)Lcom/yunpan/appmanage/bean/UsbAdbData;

    .line 166
    .line 167
    .line 168
    move-result-object v6

    .line 169
    iget-object v6, v6, Lcom/yunpan/appmanage/bean/UsbAdbData;->lines:Ljava/util/List;

    .line 170
    .line 171
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 172
    .line 173
    .line 174
    move-result-object v6

    .line 175
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 176
    .line 177
    .line 178
    move-result v7

    .line 179
    if-eqz v7, :cond_8

    .line 180
    .line 181
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 182
    .line 183
    .line 184
    move-result-object v7

    .line 185
    check-cast v7, Ljava/lang/String;

    .line 186
    .line 187
    invoke-virtual {v7, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 188
    .line 189
    .line 190
    move-result v8

    .line 191
    if-eqz v8, :cond_5

    .line 192
    .line 193
    goto :goto_1

    .line 194
    :cond_5
    const-string v8, "."

    .line 195
    .line 196
    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 197
    .line 198
    .line 199
    move-result v8

    .line 200
    if-eqz v8, :cond_6

    .line 201
    .line 202
    goto :goto_1

    .line 203
    :cond_6
    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 204
    .line 205
    .line 206
    move-result-object v8

    .line 207
    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    .line 208
    .line 209
    .line 210
    move-result v8

    .line 211
    if-eqz v8, :cond_7

    .line 212
    .line 213
    goto :goto_1

    .line 214
    :cond_7
    invoke-static {v1}, Lg/b;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 215
    .line 216
    .line 217
    move-result-object v1

    .line 218
    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 219
    .line 220
    .line 221
    move-result-object v5

    .line 222
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 223
    .line 224
    .line 225
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 226
    .line 227
    .line 228
    move-result-object v1

    .line 229
    :cond_8
    const-string v5, "/libgj.so  --package="

    .line 230
    .line 231
    invoke-static {v1, v5}, Ld0/f;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 232
    .line 233
    .line 234
    move-result-object v1

    .line 235
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 236
    .line 237
    .line 238
    move-result-object v2

    .line 239
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 240
    .line 241
    .line 242
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 243
    .line 244
    .line 245
    move-result-object v1

    .line 246
    invoke-virtual {v0, v3, v4, v1}, Lfa/e0;->a(JLjava/lang/String;)Lcom/yunpan/appmanage/bean/UsbAdbData;

    .line 247
    .line 248
    .line 249
    move-result-object v0

    .line 250
    iget v1, v0, Lcom/yunpan/appmanage/bean/UsbAdbData;->code:I

    .line 251
    .line 252
    if-nez v1, :cond_9

    .line 253
    .line 254
    invoke-virtual {p1}, Lmc/b;->b()V

    .line 255
    .line 256
    .line 257
    goto :goto_2

    .line 258
    :cond_9
    new-instance v1, Ljava/lang/Exception;

    .line 259
    .line 260
    invoke-virtual {v0}, Lcom/yunpan/appmanage/bean/UsbAdbData;->getListStr()Ljava/lang/String;

    .line 261
    .line 262
    .line 263
    move-result-object v0

    .line 264
    invoke-direct {v1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 265
    .line 266
    .line 267
    invoke-virtual {p1, v1}, Lmc/b;->d(Ljava/lang/Throwable;)V

    .line 268
    .line 269
    .line 270
    :goto_2
    return-void
.end method

.method public x(Lc6/g;Landroid/view/View;I)V
    .locals 3

    .line 1
    iget-object p1, p0, Lha/pa;->a:Lha/sa;

    .line 2
    .line 3
    if-nez p3, :cond_0

    .line 4
    .line 5
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    new-instance p2, Ljava/util/ArrayList;

    .line 9
    .line 10
    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 11
    .line 12
    .line 13
    new-instance p3, Lha/a3;

    .line 14
    .line 15
    const/4 v0, 0x2

    .line 16
    invoke-direct {p3, v0, p2}, Lha/a3;-><init>(ILjava/util/ArrayList;)V

    .line 17
    .line 18
    .line 19
    new-instance v0, Lmc/c;

    .line 20
    .line 21
    const/4 v1, 0x0

    .line 22
    invoke-direct {v0, v1, p3}, Lmc/c;-><init>(ILjava/lang/Object;)V

    .line 23
    .line 24
    .line 25
    sget-object p3, Lrc/f;->b:Lec/j;

    .line 26
    .line 27
    invoke-virtual {v0, p3}, Lec/b;->d(Lec/j;)Lmc/p;

    .line 28
    .line 29
    .line 30
    move-result-object p3

    .line 31
    invoke-static {}, Lfc/b;->a()Lfc/e;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    invoke-virtual {p3, v0}, Lec/b;->a(Lfc/e;)Lmc/g;

    .line 36
    .line 37
    .line 38
    move-result-object p3

    .line 39
    new-instance v0, Lha/h3;

    .line 40
    .line 41
    const/4 v1, 0x6

    .line 42
    invoke-direct {v0, p1, v1, p2}, Lha/h3;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {p3, v0}, Lec/b;->b(Lec/e;)V

    .line 46
    .line 47
    .line 48
    goto/16 :goto_0

    .line 49
    .line 50
    :cond_0
    iget-object p2, p1, Lha/a4;->b:Landroid/content/Context;

    .line 51
    .line 52
    iget-object v0, p1, Lha/a4;->a:Landroid/app/Activity;

    .line 53
    .line 54
    const/4 v1, 0x1

    .line 55
    if-ne p3, v1, :cond_1

    .line 56
    .line 57
    new-instance p1, Lha/d2;

    .line 58
    .line 59
    invoke-direct {p1, v0, p2}, Lha/d2;-><init>(Landroid/app/Activity;Landroid/content/Context;)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {p1}, Lha/a4;->show()V

    .line 63
    .line 64
    .line 65
    goto/16 :goto_0

    .line 66
    .line 67
    :cond_1
    const/4 v2, 0x2

    .line 68
    if-ne p3, v2, :cond_2

    .line 69
    .line 70
    new-instance p2, Lha/qa;

    .line 71
    .line 72
    const/4 p3, 0x0

    .line 73
    invoke-direct {p2, p3, v1}, Lha/qa;-><init>(IZ)V

    .line 74
    .line 75
    .line 76
    new-instance p3, Lmc/c;

    .line 77
    .line 78
    const/4 v0, 0x0

    .line 79
    invoke-direct {p3, v0, p2}, Lmc/c;-><init>(ILjava/lang/Object;)V

    .line 80
    .line 81
    .line 82
    sget-object p2, Lrc/f;->b:Lec/j;

    .line 83
    .line 84
    invoke-virtual {p3, p2}, Lec/b;->d(Lec/j;)Lmc/p;

    .line 85
    .line 86
    .line 87
    move-result-object p2

    .line 88
    invoke-static {}, Lfc/b;->a()Lfc/e;

    .line 89
    .line 90
    .line 91
    move-result-object p3

    .line 92
    invoke-virtual {p2, p3}, Lec/b;->a(Lfc/e;)Lmc/g;

    .line 93
    .line 94
    .line 95
    move-result-object p2

    .line 96
    new-instance p3, Lha/ra;

    .line 97
    .line 98
    const/4 v0, 0x2

    .line 99
    invoke-direct {p3, p1, v0}, Lha/ra;-><init>(Lha/sa;I)V

    .line 100
    .line 101
    .line 102
    invoke-virtual {p2, p3}, Lec/b;->b(Lec/e;)V

    .line 103
    .line 104
    .line 105
    goto/16 :goto_0

    .line 106
    .line 107
    :cond_2
    const/4 v1, 0x3

    .line 108
    const/4 v2, 0x0

    .line 109
    if-ne p3, v1, :cond_3

    .line 110
    .line 111
    new-instance p2, Lha/qa;

    .line 112
    .line 113
    const/4 p3, 0x0

    .line 114
    invoke-direct {p2, p3, v2}, Lha/qa;-><init>(IZ)V

    .line 115
    .line 116
    .line 117
    new-instance p3, Lmc/c;

    .line 118
    .line 119
    const/4 v0, 0x0

    .line 120
    invoke-direct {p3, v0, p2}, Lmc/c;-><init>(ILjava/lang/Object;)V

    .line 121
    .line 122
    .line 123
    sget-object p2, Lrc/f;->b:Lec/j;

    .line 124
    .line 125
    invoke-virtual {p3, p2}, Lec/b;->d(Lec/j;)Lmc/p;

    .line 126
    .line 127
    .line 128
    move-result-object p2

    .line 129
    invoke-static {}, Lfc/b;->a()Lfc/e;

    .line 130
    .line 131
    .line 132
    move-result-object p3

    .line 133
    invoke-virtual {p2, p3}, Lec/b;->a(Lfc/e;)Lmc/g;

    .line 134
    .line 135
    .line 136
    move-result-object p2

    .line 137
    new-instance p3, Lha/ra;

    .line 138
    .line 139
    const/4 v0, 0x2

    .line 140
    invoke-direct {p3, p1, v0}, Lha/ra;-><init>(Lha/sa;I)V

    .line 141
    .line 142
    .line 143
    invoke-virtual {p2, p3}, Lec/b;->b(Lec/e;)V

    .line 144
    .line 145
    .line 146
    goto/16 :goto_0

    .line 147
    .line 148
    :cond_3
    const/4 v1, 0x4

    .line 149
    if-ne p3, v1, :cond_4

    .line 150
    .line 151
    const/16 p2, 0x15b3

    .line 152
    .line 153
    invoke-virtual {p1, p2}, Lha/sa;->a(I)V

    .line 154
    .line 155
    .line 156
    goto/16 :goto_0

    .line 157
    .line 158
    :cond_4
    const/4 v1, 0x5

    .line 159
    if-ne p3, v1, :cond_5

    .line 160
    .line 161
    new-instance p3, Lha/o1;

    .line 162
    .line 163
    new-instance v1, Lha/pa;

    .line 164
    .line 165
    invoke-direct {v1, p1}, Lha/pa;-><init>(Lha/sa;)V

    .line 166
    .line 167
    .line 168
    invoke-direct {p3, v0, p2, v1}, Lha/o1;-><init>(Landroid/app/Activity;Landroid/content/Context;Lha/pa;)V

    .line 169
    .line 170
    .line 171
    invoke-virtual {p3}, Lha/a4;->show()V

    .line 172
    .line 173
    .line 174
    goto/16 :goto_0

    .line 175
    .line 176
    :cond_5
    sget-object p2, Lfa/a;->b:Lfa/e0;

    .line 177
    .line 178
    const/4 v0, 0x6

    .line 179
    const-string v1, "OTG\u5df2\u65ad\u5f00\uff0c\u8bf7\u91cd\u65b0\u8fde\u63a5"

    .line 180
    .line 181
    if-ne p3, v0, :cond_7

    .line 182
    .line 183
    invoke-virtual {p2}, Lfa/e0;->c()Z

    .line 184
    .line 185
    .line 186
    move-result p2

    .line 187
    if-nez p2, :cond_6

    .line 188
    .line 189
    invoke-static {v1, v2}, Lcom/yunpan/appmanage/util/a0;->s(Ljava/lang/CharSequence;Z)V

    .line 190
    .line 191
    .line 192
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 193
    .line 194
    .line 195
    goto/16 :goto_0

    .line 196
    .line 197
    :cond_6
    new-instance p1, Lg2/c;

    .line 198
    .line 199
    const/16 p2, 0x15

    .line 200
    .line 201
    invoke-direct {p1, p2}, Lg2/c;-><init>(I)V

    .line 202
    .line 203
    .line 204
    new-instance p2, Lmc/c;

    .line 205
    .line 206
    const/4 p3, 0x0

    .line 207
    invoke-direct {p2, p3, p1}, Lmc/c;-><init>(ILjava/lang/Object;)V

    .line 208
    .line 209
    .line 210
    sget-object p1, Lrc/f;->b:Lec/j;

    .line 211
    .line 212
    invoke-virtual {p2, p1}, Lec/b;->d(Lec/j;)Lmc/p;

    .line 213
    .line 214
    .line 215
    move-result-object p1

    .line 216
    invoke-static {}, Lfc/b;->a()Lfc/e;

    .line 217
    .line 218
    .line 219
    move-result-object p2

    .line 220
    invoke-virtual {p1, p2}, Lec/b;->a(Lfc/e;)Lmc/g;

    .line 221
    .line 222
    .line 223
    move-result-object p1

    .line 224
    new-instance p2, Lha/m6;

    .line 225
    .line 226
    const/4 p3, 0x2

    .line 227
    invoke-direct {p2, p3}, Lha/m6;-><init>(I)V

    .line 228
    .line 229
    .line 230
    invoke-virtual {p1, p2}, Lec/b;->b(Lec/e;)V

    .line 231
    .line 232
    .line 233
    goto :goto_0

    .line 234
    :cond_7
    const/4 v0, 0x7

    .line 235
    if-ne p3, v0, :cond_8

    .line 236
    .line 237
    new-instance p2, Lha/pa;

    .line 238
    .line 239
    invoke-direct {p2, p1}, Lha/pa;-><init>(Lha/sa;)V

    .line 240
    .line 241
    .line 242
    new-instance p1, Lmc/c;

    .line 243
    .line 244
    const/4 p3, 0x0

    .line 245
    invoke-direct {p1, p3, p2}, Lmc/c;-><init>(ILjava/lang/Object;)V

    .line 246
    .line 247
    .line 248
    sget-object p2, Lrc/f;->b:Lec/j;

    .line 249
    .line 250
    invoke-virtual {p1, p2}, Lec/b;->d(Lec/j;)Lmc/p;

    .line 251
    .line 252
    .line 253
    move-result-object p1

    .line 254
    invoke-static {}, Lfc/b;->a()Lfc/e;

    .line 255
    .line 256
    .line 257
    move-result-object p2

    .line 258
    invoke-virtual {p1, p2}, Lec/b;->a(Lfc/e;)Lmc/g;

    .line 259
    .line 260
    .line 261
    move-result-object p1

    .line 262
    new-instance p2, Lha/m6;

    .line 263
    .line 264
    const/4 p3, 0x3

    .line 265
    invoke-direct {p2, p3}, Lha/m6;-><init>(I)V

    .line 266
    .line 267
    .line 268
    invoke-virtual {p1, p2}, Lec/b;->b(Lec/e;)V

    .line 269
    .line 270
    .line 271
    goto :goto_0

    .line 272
    :cond_8
    const/16 v0, 0x8

    .line 273
    .line 274
    if-ne p3, v0, :cond_a

    .line 275
    .line 276
    invoke-virtual {p2}, Lfa/e0;->c()Z

    .line 277
    .line 278
    .line 279
    move-result p2

    .line 280
    if-nez p2, :cond_9

    .line 281
    .line 282
    invoke-static {v1, v2}, Lcom/yunpan/appmanage/util/a0;->s(Ljava/lang/CharSequence;Z)V

    .line 283
    .line 284
    .line 285
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 286
    .line 287
    .line 288
    goto :goto_0

    .line 289
    :cond_9
    new-instance p2, La2/u0;

    .line 290
    .line 291
    const/16 p3, 0x1d

    .line 292
    .line 293
    invoke-direct {p2, p3}, La2/u0;-><init>(I)V

    .line 294
    .line 295
    .line 296
    new-instance p3, Lmc/c;

    .line 297
    .line 298
    const/4 v0, 0x0

    .line 299
    invoke-direct {p3, v0, p2}, Lmc/c;-><init>(ILjava/lang/Object;)V

    .line 300
    .line 301
    .line 302
    sget-object p2, Lrc/f;->b:Lec/j;

    .line 303
    .line 304
    invoke-virtual {p3, p2}, Lec/b;->d(Lec/j;)Lmc/p;

    .line 305
    .line 306
    .line 307
    move-result-object p2

    .line 308
    invoke-static {}, Lfc/b;->a()Lfc/e;

    .line 309
    .line 310
    .line 311
    move-result-object p3

    .line 312
    invoke-virtual {p2, p3}, Lec/b;->a(Lfc/e;)Lmc/g;

    .line 313
    .line 314
    .line 315
    move-result-object p2

    .line 316
    new-instance p3, Lha/ra;

    .line 317
    .line 318
    const/4 v0, 0x1

    .line 319
    invoke-direct {p3, p1, v0}, Lha/ra;-><init>(Lha/sa;I)V

    .line 320
    .line 321
    .line 322
    invoke-virtual {p2, p3}, Lec/b;->b(Lec/e;)V

    .line 323
    .line 324
    .line 325
    goto :goto_0

    .line 326
    :cond_a
    const-string p1, "\u6b64\u529f\u80fd\u6682\u4e0d\u5f00\u53d1"

    .line 327
    .line 328
    invoke-static {p1}, Lcom/hjq/toast/Toaster;->show(Ljava/lang/CharSequence;)V

    .line 329
    .line 330
    .line 331
    :goto_0
    return-void
.end method
