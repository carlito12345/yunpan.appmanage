.class public final synthetic Lba/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lec/d;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/yunpan/appmanage/bean/WpPathBean;

.field public final synthetic c:Lx9/n5;


# direct methods
.method public synthetic constructor <init>(Lcom/yunpan/appmanage/bean/WpPathBean;Lcom/yunpan/appmanage/bean/WpPathBean;Lx9/n5;)V
    .locals 0

    .line 1
    const/16 p1, 0xd

    iput p1, p0, Lba/b;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Lba/b;->c:Lx9/n5;

    iput-object p2, p0, Lba/b;->b:Lcom/yunpan/appmanage/bean/WpPathBean;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/yunpan/appmanage/bean/WpPathBean;Lx9/n5;I)V
    .locals 0

    .line 2
    iput p3, p0, Lba/b;->a:I

    iput-object p1, p0, Lba/b;->b:Lcom/yunpan/appmanage/bean/WpPathBean;

    iput-object p2, p0, Lba/b;->c:Lx9/n5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lx9/n5;Lcom/yunpan/appmanage/bean/WpPathBean;I)V
    .locals 0

    .line 3
    iput p3, p0, Lba/b;->a:I

    iput-object p1, p0, Lba/b;->c:Lx9/n5;

    iput-object p2, p0, Lba/b;->b:Lcom/yunpan/appmanage/bean/WpPathBean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final a(Lmc/b;)V
    .locals 9

    .line 1
    iget-object v0, p0, Lba/b;->b:Lcom/yunpan/appmanage/bean/WpPathBean;

    .line 2
    .line 3
    const-string v1, "data"

    .line 4
    .line 5
    const-string v2, ""

    .line 6
    .line 7
    new-instance v3, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 10
    .line 11
    .line 12
    sget-object v4, Lcom/yunpan/appmanage/util/k;->u0:Ljava/text/DecimalFormat;

    .line 13
    .line 14
    sget-object v4, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 15
    .line 16
    iget-object v4, v4, Lcom/yunpan/appmanage/util/k;->X:Ljava/lang/String;

    .line 17
    .line 18
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    const-string v4, "/b/api/share/create?"

    .line 22
    .line 23
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    const-string v4, "/b/api/share/create"

    .line 27
    .line 28
    invoke-static {v4}, Lqf/c;->n(Ljava/lang/String;)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v4

    .line 32
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v3

    .line 39
    const/4 v4, 0x0

    .line 40
    :try_start_0
    new-instance v5, Lorg/json/JSONObject;

    .line 41
    .line 42
    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 43
    .line 44
    .line 45
    const-string v6, "driveId"

    .line 46
    .line 47
    invoke-virtual {v5, v6, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 48
    .line 49
    .line 50
    const-string v6, "expiration"

    .line 51
    .line 52
    const-string v7, "2099-12-12T08:00:00+08:00"

    .line 53
    .line 54
    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 55
    .line 56
    .line 57
    const-string v6, "fileIdList"

    .line 58
    .line 59
    iget-object v7, v0, Lcom/yunpan/appmanage/bean/WpPathBean;->path:Ljava/lang/String;

    .line 60
    .line 61
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    .line 62
    .line 63
    .line 64
    move-result-object v7

    .line 65
    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 66
    .line 67
    .line 68
    const-string v6, "shareName"

    .line 69
    .line 70
    iget-object v7, v0, Lcom/yunpan/appmanage/bean/WpPathBean;->name:Ljava/lang/String;

    .line 71
    .line 72
    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 73
    .line 74
    .line 75
    const-string v6, "sharePwd"

    .line 76
    .line 77
    invoke-virtual {v5, v6, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 78
    .line 79
    .line 80
    const-string v6, "event"

    .line 81
    .line 82
    const-string v7, "shareCreate"

    .line 83
    .line 84
    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 85
    .line 86
    .line 87
    const-string v6, "fileNum"

    .line 88
    .line 89
    const/4 v7, 0x1

    .line 90
    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 91
    .line 92
    .line 93
    const-string v6, "renameVisible"

    .line 94
    .line 95
    invoke-virtual {v5, v6, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 96
    .line 97
    .line 98
    const-string v6, "shareModality"

    .line 99
    .line 100
    const/4 v8, 0x4

    .line 101
    invoke-virtual {v5, v6, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 102
    .line 103
    .line 104
    const-string v6, "operatePlace"

    .line 105
    .line 106
    const/4 v8, 0x2

    .line 107
    invoke-virtual {v5, v6, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 108
    .line 109
    .line 110
    const-string v6, "trafficLimitSwitch"

    .line 111
    .line 112
    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 113
    .line 114
    .line 115
    const-string v6, "trafficLimit"

    .line 116
    .line 117
    invoke-virtual {v5, v6, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 118
    .line 119
    .line 120
    const-string v6, "trafficSwitch"

    .line 121
    .line 122
    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 123
    .line 124
    .line 125
    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 129
    goto :goto_0

    .line 130
    :catch_0
    nop

    .line 131
    :goto_0
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    .line 132
    .line 133
    .line 134
    move-result v5

    .line 135
    const-string v6, "\u83b7\u53d6\u51fa\u9519"

    .line 136
    .line 137
    if-eqz v5, :cond_1

    .line 138
    .line 139
    :catch_1
    :cond_0
    :goto_1
    invoke-static {v6, p1}, Landroid/support/v4/media/session/a;->B(Ljava/lang/String;Lmc/b;)V

    .line 140
    .line 141
    .line 142
    goto/16 :goto_3

    .line 143
    .line 144
    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    .line 145
    .line 146
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 147
    .line 148
    .line 149
    sget-object v7, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 150
    .line 151
    iget-object v7, v7, Lcom/yunpan/appmanage/util/k;->W:Ljava/lang/String;

    .line 152
    .line 153
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    .line 155
    .line 156
    const-string v7, "/?homeFilePath="

    .line 157
    .line 158
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    .line 160
    .line 161
    iget-object v0, v0, Lcom/yunpan/appmanage/bean/WpPathBean;->path:Ljava/lang/String;

    .line 162
    .line 163
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    .line 165
    .line 166
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 167
    .line 168
    .line 169
    move-result-object v0

    .line 170
    iget-object v5, p0, Lba/b;->c:Lx9/n5;

    .line 171
    .line 172
    invoke-static {v5, v3, v2, v0}, Lqf/c;->R(Lx9/n5;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 173
    .line 174
    .line 175
    move-result-object v0

    .line 176
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 177
    .line 178
    .line 179
    move-result v2

    .line 180
    if-eqz v2, :cond_2

    .line 181
    .line 182
    goto :goto_1

    .line 183
    :cond_2
    :try_start_1
    invoke-static {v0}, Ld/b;->b0(Ljava/lang/String;)Lz7/p;

    .line 184
    .line 185
    .line 186
    move-result-object v0

    .line 187
    invoke-virtual {v0}, Lz7/p;->g()Lz7/s;

    .line 188
    .line 189
    .line 190
    move-result-object v0

    .line 191
    const-string v2, "code"

    .line 192
    .line 193
    invoke-virtual {v0, v2}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 194
    .line 195
    .line 196
    move-result-object v2

    .line 197
    invoke-virtual {v2}, Lz7/p;->e()I

    .line 198
    .line 199
    .line 200
    move-result v2

    .line 201
    if-nez v2, :cond_0

    .line 202
    .line 203
    invoke-virtual {v0, v1}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 204
    .line 205
    .line 206
    move-result-object v2

    .line 207
    invoke-virtual {v2}, Lz7/p;->g()Lz7/s;

    .line 208
    .line 209
    .line 210
    move-result-object v2

    .line 211
    const-string v3, "ShareKey"

    .line 212
    .line 213
    invoke-virtual {v2, v3}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 214
    .line 215
    .line 216
    move-result-object v2

    .line 217
    invoke-virtual {v2}, Lz7/p;->i()Ljava/lang/String;

    .line 218
    .line 219
    .line 220
    move-result-object v2

    .line 221
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    .line 222
    .line 223
    .line 224
    move-result v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 225
    if-nez v3, :cond_0

    .line 226
    .line 227
    :try_start_2
    invoke-virtual {v0, v1}, Lz7/s;->q(Ljava/lang/String;)Lz7/s;

    .line 228
    .line 229
    .line 230
    move-result-object v0

    .line 231
    const-string v1, "shareLinkList"

    .line 232
    .line 233
    invoke-virtual {v0, v1}, Lz7/s;->q(Ljava/lang/String;)Lz7/s;

    .line 234
    .line 235
    .line 236
    move-result-object v0

    .line 237
    const-string v1, "list"

    .line 238
    .line 239
    invoke-virtual {v0, v1}, Lz7/s;->p(Ljava/lang/String;)Lz7/o;

    .line 240
    .line 241
    .line 242
    move-result-object v0

    .line 243
    invoke-virtual {v0, v4}, Lz7/o;->l(I)Lz7/p;

    .line 244
    .line 245
    .line 246
    move-result-object v0

    .line 247
    invoke-virtual {v0}, Lz7/p;->i()Ljava/lang/String;

    .line 248
    .line 249
    .line 250
    move-result-object v0

    .line 251
    invoke-virtual {p1, v0}, Lmc/b;->f(Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 252
    .line 253
    .line 254
    goto :goto_2

    .line 255
    :catch_2
    :try_start_3
    new-instance v0, Ljava/lang/StringBuilder;

    .line 256
    .line 257
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 258
    .line 259
    .line 260
    sget-object v1, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 261
    .line 262
    iget-object v1, v1, Lcom/yunpan/appmanage/util/k;->W:Ljava/lang/String;

    .line 263
    .line 264
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 265
    .line 266
    .line 267
    const-string v1, "/s/"

    .line 268
    .line 269
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 270
    .line 271
    .line 272
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 273
    .line 274
    .line 275
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 276
    .line 277
    .line 278
    move-result-object v0

    .line 279
    invoke-virtual {p1, v0}, Lmc/b;->f(Ljava/lang/Object;)V

    .line 280
    .line 281
    .line 282
    :goto_2
    invoke-virtual {p1}, Lmc/b;->b()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 283
    .line 284
    .line 285
    :goto_3
    return-void
.end method

.method private final b(Lmc/b;)V
    .locals 8

    .line 1
    iget-object v0, p0, Lba/b;->c:Lx9/n5;

    .line 2
    .line 3
    iget-object v1, p0, Lba/b;->b:Lcom/yunpan/appmanage/bean/WpPathBean;

    .line 4
    .line 5
    const-string v2, "code"

    .line 6
    .line 7
    const-string v3, ""

    .line 8
    .line 9
    const-string v4, "https://api.feejii.com/app/share/url?"

    .line 10
    .line 11
    const-string v5, "uuid="

    .line 12
    .line 13
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 14
    .line 15
    .line 16
    move-result-wide v6

    .line 17
    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v6

    .line 21
    invoke-static {v6}, Ls1/g;->q(Ljava/lang/String;)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v6

    .line 25
    new-instance v7, Ljava/lang/StringBuilder;

    .line 26
    .line 27
    invoke-direct {v7, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    iget-object v5, v0, Lx9/n5;->l:Ljava/lang/String;

    .line 31
    .line 32
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    const-string v5, "&devType=6&devCode="

    .line 36
    .line 37
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    iget-object v5, v0, Lx9/n5;->l:Ljava/lang/String;

    .line 41
    .line 42
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    const-string v5, "&devModel=chrome&devVersion=140&appVersion=&timestamp="

    .line 46
    .line 47
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    const-string v5, "&appToken="

    .line 54
    .line 55
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    iget-object v0, v0, Lx9/n5;->k:Ljava/lang/String;

    .line 59
    .line 60
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    const-string v0, "&extra=2"

    .line 64
    .line 65
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    new-instance v5, Ljava/lang/StringBuilder;

    .line 73
    .line 74
    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    new-instance v4, Lz7/s;

    .line 85
    .line 86
    invoke-direct {v4}, Lz7/s;-><init>()V

    .line 87
    .line 88
    .line 89
    const-string v5, "shareId"

    .line 90
    .line 91
    invoke-virtual {v4, v5, v3}, Lz7/s;->m(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    const-string v5, "fileIds"

    .line 95
    .line 96
    iget-boolean v6, v1, Lcom/yunpan/appmanage/bean/WpPathBean;->is_dir:Z

    .line 97
    .line 98
    if-eqz v6, :cond_0

    .line 99
    .line 100
    move-object v6, v3

    .line 101
    goto :goto_0

    .line 102
    :cond_0
    iget-object v6, v1, Lcom/yunpan/appmanage/bean/WpPathBean;->path:Ljava/lang/String;

    .line 103
    .line 104
    :goto_0
    invoke-virtual {v4, v5, v6}, Lz7/s;->m(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    .line 106
    .line 107
    const-string v5, "folderIds"

    .line 108
    .line 109
    iget-boolean v6, v1, Lcom/yunpan/appmanage/bean/WpPathBean;->is_dir:Z

    .line 110
    .line 111
    if-eqz v6, :cond_1

    .line 112
    .line 113
    iget-object v1, v1, Lcom/yunpan/appmanage/bean/WpPathBean;->path:Ljava/lang/String;

    .line 114
    .line 115
    goto :goto_1

    .line 116
    :catch_0
    move-exception v0

    .line 117
    goto/16 :goto_2

    .line 118
    .line 119
    :cond_1
    move-object v1, v3

    .line 120
    :goto_1
    invoke-virtual {v4, v5, v1}, Lz7/s;->m(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    .line 122
    .line 123
    invoke-virtual {v4, v2, v3}, Lz7/s;->m(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    .line 125
    .line 126
    const-string v1, "amt"

    .line 127
    .line 128
    invoke-virtual {v4, v1, v3}, Lz7/s;->m(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    .line 130
    .line 131
    const-string v1, "term"

    .line 132
    .line 133
    const/4 v3, 0x0

    .line 134
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 135
    .line 136
    .line 137
    move-result-object v5

    .line 138
    invoke-virtual {v4, v1, v5}, Lz7/s;->l(Ljava/lang/String;Ljava/lang/Number;)V

    .line 139
    .line 140
    .line 141
    const-string v1, "showRecommend"

    .line 142
    .line 143
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 144
    .line 145
    .line 146
    move-result-object v3

    .line 147
    invoke-virtual {v4, v1, v3}, Lz7/s;->l(Ljava/lang/String;Ljava/lang/Number;)V

    .line 148
    .line 149
    .line 150
    const-string v1, "showUpTime"

    .line 151
    .line 152
    const/4 v3, 0x1

    .line 153
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 154
    .line 155
    .line 156
    move-result-object v5

    .line 157
    invoke-virtual {v4, v1, v5}, Lz7/s;->l(Ljava/lang/String;Ljava/lang/Number;)V

    .line 158
    .line 159
    .line 160
    const-string v1, "showDownloads"

    .line 161
    .line 162
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 163
    .line 164
    .line 165
    move-result-object v5

    .line 166
    invoke-virtual {v4, v1, v5}, Lz7/s;->l(Ljava/lang/String;Ljava/lang/Number;)V

    .line 167
    .line 168
    .line 169
    const-string v1, "showComments"

    .line 170
    .line 171
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 172
    .line 173
    .line 174
    move-result-object v5

    .line 175
    invoke-virtual {v4, v1, v5}, Lz7/s;->l(Ljava/lang/String;Ljava/lang/Number;)V

    .line 176
    .line 177
    .line 178
    const-string v1, "showStars"

    .line 179
    .line 180
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 181
    .line 182
    .line 183
    move-result-object v5

    .line 184
    invoke-virtual {v4, v1, v5}, Lz7/s;->l(Ljava/lang/String;Ljava/lang/Number;)V

    .line 185
    .line 186
    .line 187
    const-string v1, "showLikes"

    .line 188
    .line 189
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 190
    .line 191
    .line 192
    move-result-object v3

    .line 193
    invoke-virtual {v4, v1, v3}, Lz7/s;->l(Ljava/lang/String;Ljava/lang/Number;)V

    .line 194
    .line 195
    .line 196
    invoke-virtual {v4}, Lz7/p;->toString()Ljava/lang/String;

    .line 197
    .line 198
    .line 199
    move-result-object v1

    .line 200
    invoke-static {v0, v1}, Ls1/g;->I(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 201
    .line 202
    .line 203
    move-result-object v0

    .line 204
    invoke-static {v0}, Ld/b;->b0(Ljava/lang/String;)Lz7/p;

    .line 205
    .line 206
    .line 207
    move-result-object v0

    .line 208
    invoke-virtual {v0}, Lz7/p;->g()Lz7/s;

    .line 209
    .line 210
    .line 211
    move-result-object v0

    .line 212
    invoke-virtual {v0, v2}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 213
    .line 214
    .line 215
    move-result-object v1

    .line 216
    invoke-virtual {v1}, Lz7/p;->e()I

    .line 217
    .line 218
    .line 219
    move-result v1

    .line 220
    const/16 v2, 0xc8

    .line 221
    .line 222
    if-ne v1, v2, :cond_2

    .line 223
    .line 224
    const-string v1, "shareUrl"

    .line 225
    .line 226
    invoke-virtual {v0, v1}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 227
    .line 228
    .line 229
    move-result-object v0

    .line 230
    invoke-virtual {v0}, Lz7/p;->i()Ljava/lang/String;

    .line 231
    .line 232
    .line 233
    move-result-object v0

    .line 234
    invoke-virtual {p1, v0}, Lmc/b;->f(Ljava/lang/Object;)V

    .line 235
    .line 236
    .line 237
    invoke-virtual {p1}, Lmc/b;->b()V

    .line 238
    .line 239
    .line 240
    goto :goto_3

    .line 241
    :cond_2
    new-instance v1, Ljava/lang/Exception;

    .line 242
    .line 243
    const-string v2, "msg"

    .line 244
    .line 245
    invoke-virtual {v0, v2}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 246
    .line 247
    .line 248
    move-result-object v0

    .line 249
    invoke-virtual {v0}, Lz7/p;->i()Ljava/lang/String;

    .line 250
    .line 251
    .line 252
    move-result-object v0

    .line 253
    invoke-direct {v1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 254
    .line 255
    .line 256
    throw v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 257
    :goto_2
    invoke-virtual {p1, v0}, Lmc/b;->d(Ljava/lang/Throwable;)V

    .line 258
    .line 259
    .line 260
    :goto_3
    return-void
.end method

.method private final c(Lmc/b;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lba/b;->b:Lcom/yunpan/appmanage/bean/WpPathBean;

    .line 2
    .line 3
    const-string v1, "\u8bfb\u53d6\u76ee\u5f55\u5931\u8d25"

    .line 4
    .line 5
    iget-object v2, p0, Lba/b;->c:Lx9/n5;

    .line 6
    .line 7
    iget-object v3, v2, Lx9/n5;->A:Ldh/j;

    .line 8
    .line 9
    const-string v4, "\u8fde\u63a5\u4e2d\u65ad,\u8bf7\u91cd\u65b0\u9009\u4e2d\u7f51\u76d8"

    .line 10
    .line 11
    if-eqz v3, :cond_5

    .line 12
    .line 13
    invoke-virtual {v3}, Lch/d;->f()Z

    .line 14
    .line 15
    .line 16
    move-result v3

    .line 17
    if-nez v3, :cond_0

    .line 18
    .line 19
    goto :goto_2

    .line 20
    :cond_0
    :try_start_0
    invoke-static {v2, v0}, Lcom/bumptech/glide/d;->V(Lx9/n5;Lcom/yunpan/appmanage/bean/WpPathBean;)Ljava/util/ArrayList;

    .line 21
    .line 22
    .line 23
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 24
    if-nez v0, :cond_1

    .line 25
    .line 26
    invoke-static {v1, p1}, Landroid/support/v4/media/session/a;->B(Ljava/lang/String;Lmc/b;)V

    .line 27
    .line 28
    .line 29
    goto :goto_3

    .line 30
    :cond_1
    invoke-virtual {p1, v0}, Lmc/b;->f(Ljava/lang/Object;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {p1}, Lmc/b;->b()V

    .line 34
    .line 35
    .line 36
    goto :goto_3

    .line 37
    :catch_0
    move-exception v0

    .line 38
    new-instance v3, Ljava/lang/StringBuilder;

    .line 39
    .line 40
    const-string v5, ""

    .line 41
    .line 42
    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    invoke-static {v0, v3}, Lg/b;->z(Ljava/lang/Exception;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 50
    .line 51
    .line 52
    move-result v3

    .line 53
    if-eqz v3, :cond_2

    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_2
    move-object v1, v0

    .line 57
    :goto_0
    const-string v0, "Connection reset"

    .line 58
    .line 59
    invoke-virtual {v1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 60
    .line 61
    .line 62
    move-result v0

    .line 63
    if-nez v0, :cond_4

    .line 64
    .line 65
    const-string v0, "Broken pipe"

    .line 66
    .line 67
    invoke-virtual {v1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 68
    .line 69
    .line 70
    move-result v0

    .line 71
    if-nez v0, :cond_4

    .line 72
    .line 73
    const-string v0, "Connection closed"

    .line 74
    .line 75
    invoke-virtual {v1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 76
    .line 77
    .line 78
    move-result v0

    .line 79
    if-eqz v0, :cond_3

    .line 80
    .line 81
    goto :goto_1

    .line 82
    :cond_3
    move-object v4, v1

    .line 83
    goto :goto_2

    .line 84
    :cond_4
    :goto_1
    iget-object v0, v2, Lx9/n5;->A:Ldh/j;

    .line 85
    .line 86
    invoke-static {v0}, Lcom/bumptech/glide/d;->h(Ldh/j;)V

    .line 87
    .line 88
    .line 89
    :cond_5
    :goto_2
    invoke-static {v4, p1}, Landroid/support/v4/media/session/a;->B(Ljava/lang/String;Lmc/b;)V

    .line 90
    .line 91
    .line 92
    :goto_3
    return-void
.end method

.method private final d(Lmc/b;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lba/b;->b:Lcom/yunpan/appmanage/bean/WpPathBean;

    .line 2
    .line 3
    iget-object v1, p0, Lba/b;->c:Lx9/n5;

    .line 4
    .line 5
    invoke-static {v1}, Lif/a;->i(Lx9/n5;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    if-eqz v2, :cond_0

    .line 14
    .line 15
    iget-object v0, v0, Lcom/yunpan/appmanage/bean/WpPathBean;->path:Ljava/lang/String;

    .line 16
    .line 17
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-nez v0, :cond_0

    .line 22
    .line 23
    invoke-virtual {p1}, Lmc/b;->b()V

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    invoke-static {v1, p1}, Landroid/support/v4/media/session/a;->B(Ljava/lang/String;Lmc/b;)V

    .line 28
    .line 29
    .line 30
    :goto_0
    return-void
.end method

.method private final e(Lmc/b;)V
    .locals 20

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v2, p1

    .line 4
    .line 5
    iget-object v5, v1, Lba/b;->c:Lx9/n5;

    .line 6
    .line 7
    iget-boolean v0, v5, Lx9/n5;->u:Z

    .line 8
    .line 9
    iget-object v6, v1, Lba/b;->b:Lcom/yunpan/appmanage/bean/WpPathBean;

    .line 10
    .line 11
    const-string v7, "\u627e\u4e0d\u5230\u5171\u4eab\u540d"

    .line 12
    .line 13
    const-string v8, "$"

    .line 14
    .line 15
    const-string v9, ";"

    .line 16
    .line 17
    const-string v10, "."

    .line 18
    .line 19
    const-string v11, ""

    .line 20
    .line 21
    const-string v12, "(\u5171\u4eab\u540d)"

    .line 22
    .line 23
    const-string v13, "/"

    .line 24
    .line 25
    if-eqz v0, :cond_15

    .line 26
    .line 27
    iget-object v0, v6, Lcom/yunpan/appmanage/bean/WpPathBean;->path:Ljava/lang/String;

    .line 28
    .line 29
    const-string v14, "\u8fde\u63a5\u5931\u8d25"

    .line 30
    .line 31
    const-string v15, "\u65e0\u6743\u9650\u67e5\u770b\u6b64\u76ee\u5f55"

    .line 32
    .line 33
    const-string v3, "system cannot find the file"

    .line 34
    .line 35
    if-eqz v0, :cond_1

    .line 36
    .line 37
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    if-nez v0, :cond_1

    .line 42
    .line 43
    iget-object v0, v6, Lcom/yunpan/appmanage/bean/WpPathBean;->path:Ljava/lang/String;

    .line 44
    .line 45
    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 46
    .line 47
    .line 48
    move-result v0

    .line 49
    if-eqz v0, :cond_0

    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_0
    move-object/from16 v16, v14

    .line 53
    .line 54
    move-object/from16 v19, v15

    .line 55
    .line 56
    goto/16 :goto_10

    .line 57
    .line 58
    :cond_1
    :goto_0
    new-instance v4, Ljava/util/ArrayList;

    .line 59
    .line 60
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 61
    .line 62
    .line 63
    iget-object v0, v5, Lx9/n5;->w:Ljava/lang/String;

    .line 64
    .line 65
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 66
    .line 67
    .line 68
    move-result v0

    .line 69
    if-nez v0, :cond_3

    .line 70
    .line 71
    iget-object v0, v5, Lx9/n5;->w:Ljava/lang/String;

    .line 72
    .line 73
    invoke-virtual {v0, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v9

    .line 77
    array-length v1, v9

    .line 78
    move-object/from16 v16, v14

    .line 79
    .line 80
    const/4 v14, 0x0

    .line 81
    :goto_1
    if-ge v14, v1, :cond_2

    .line 82
    .line 83
    aget-object v0, v9, v14

    .line 84
    .line 85
    move/from16 v17, v1

    .line 86
    .line 87
    :try_start_0
    new-instance v1, Lcom/yunpan/appmanage/bean/WpPathBean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 88
    .line 89
    move-object/from16 v18, v9

    .line 90
    .line 91
    :try_start_1
    new-instance v9, Ljava/lang/StringBuilder;

    .line 92
    .line 93
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 94
    .line 95
    .line 96
    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object v9

    .line 109
    invoke-direct {v1, v0, v9}, Lcom/yunpan/appmanage/bean/WpPathBean;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    .line 111
    .line 112
    new-instance v0, Lce/t0;

    .line 113
    .line 114
    new-instance v9, Ljava/lang/StringBuilder;

    .line 115
    .line 116
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 117
    .line 118
    .line 119
    move-object/from16 v19, v15

    .line 120
    .line 121
    :try_start_2
    invoke-virtual {v5}, Lx9/n5;->b()Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object v15

    .line 125
    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    .line 127
    .line 128
    iget-object v15, v1, Lcom/yunpan/appmanage/bean/WpPathBean;->path:Ljava/lang/String;

    .line 129
    .line 130
    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    .line 132
    .line 133
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 134
    .line 135
    .line 136
    move-result-object v9

    .line 137
    invoke-direct {v0, v9}, Lce/t0;-><init>(Ljava/lang/String;)V

    .line 138
    .line 139
    .line 140
    invoke-virtual {v0}, Lce/t0;->x()[Lce/t0;

    .line 141
    .line 142
    .line 143
    iput-object v12, v1, Lcom/yunpan/appmanage/bean/WpPathBean;->time_txt:Ljava/lang/String;

    .line 144
    .line 145
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 146
    .line 147
    .line 148
    :goto_2
    const/4 v1, 0x1

    .line 149
    goto :goto_5

    .line 150
    :catch_0
    move-exception v0

    .line 151
    goto :goto_4

    .line 152
    :catch_1
    move-exception v0

    .line 153
    :goto_3
    move-object/from16 v19, v15

    .line 154
    .line 155
    goto :goto_4

    .line 156
    :catch_2
    move-exception v0

    .line 157
    move-object/from16 v18, v9

    .line 158
    .line 159
    goto :goto_3

    .line 160
    :goto_4
    new-instance v1, Ljava/lang/StringBuilder;

    .line 161
    .line 162
    invoke-direct {v1, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 163
    .line 164
    .line 165
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 166
    .line 167
    .line 168
    move-result-object v0

    .line 169
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 170
    .line 171
    .line 172
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 173
    .line 174
    .line 175
    move-result-object v0

    .line 176
    const-string v1, "network name cannot be found"

    .line 177
    .line 178
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 179
    .line 180
    .line 181
    goto :goto_2

    .line 182
    :goto_5
    add-int/2addr v14, v1

    .line 183
    move/from16 v1, v17

    .line 184
    .line 185
    move-object/from16 v9, v18

    .line 186
    .line 187
    move-object/from16 v15, v19

    .line 188
    .line 189
    goto :goto_1

    .line 190
    :cond_2
    :goto_6
    move-object/from16 v19, v15

    .line 191
    .line 192
    goto :goto_7

    .line 193
    :cond_3
    move-object/from16 v16, v14

    .line 194
    .line 195
    goto :goto_6

    .line 196
    :goto_7
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    .line 197
    .line 198
    .line 199
    move-result v0

    .line 200
    if-eqz v0, :cond_b

    .line 201
    .line 202
    :try_start_3
    new-instance v0, Lce/t0;

    .line 203
    .line 204
    new-instance v1, Ljava/lang/StringBuilder;

    .line 205
    .line 206
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 207
    .line 208
    .line 209
    invoke-virtual {v5}, Lx9/n5;->b()Ljava/lang/String;

    .line 210
    .line 211
    .line 212
    move-result-object v9

    .line 213
    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 214
    .line 215
    .line 216
    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 217
    .line 218
    .line 219
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 220
    .line 221
    .line 222
    move-result-object v1

    .line 223
    invoke-direct {v0, v1}, Lce/t0;-><init>(Ljava/lang/String;)V

    .line 224
    .line 225
    .line 226
    invoke-virtual {v0}, Lce/t0;->x()[Lce/t0;

    .line 227
    .line 228
    .line 229
    move-result-object v0

    .line 230
    array-length v1, v0

    .line 231
    const/4 v9, 0x0

    .line 232
    :goto_8
    if-ge v9, v1, :cond_b

    .line 233
    .line 234
    aget-object v14, v0, v9

    .line 235
    .line 236
    new-instance v15, Lcom/yunpan/appmanage/bean/WpPathBean;

    .line 237
    .line 238
    invoke-direct {v15}, Lcom/yunpan/appmanage/bean/WpPathBean;-><init>()V

    .line 239
    .line 240
    .line 241
    move-object/from16 v17, v0

    .line 242
    .line 243
    invoke-virtual {v14}, Lce/t0;->p()Ljava/lang/String;

    .line 244
    .line 245
    .line 246
    move-result-object v0

    .line 247
    iput-object v0, v15, Lcom/yunpan/appmanage/bean/WpPathBean;->name:Ljava/lang/String;

    .line 248
    .line 249
    if-eqz v0, :cond_4

    .line 250
    .line 251
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 252
    .line 253
    .line 254
    move-result v0

    .line 255
    if-eqz v0, :cond_5

    .line 256
    .line 257
    :cond_4
    :goto_9
    move/from16 v18, v1

    .line 258
    .line 259
    :goto_a
    const/4 v1, 0x1

    .line 260
    goto :goto_c

    .line 261
    :cond_5
    iget-object v0, v15, Lcom/yunpan/appmanage/bean/WpPathBean;->name:Ljava/lang/String;

    .line 262
    .line 263
    invoke-virtual {v0, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 264
    .line 265
    .line 266
    move-result v0

    .line 267
    if-eqz v0, :cond_6

    .line 268
    .line 269
    goto :goto_9

    .line 270
    :cond_6
    iget-object v0, v15, Lcom/yunpan/appmanage/bean/WpPathBean;->name:Ljava/lang/String;

    .line 271
    .line 272
    iput-object v0, v15, Lcom/yunpan/appmanage/bean/WpPathBean;->path:Ljava/lang/String;

    .line 273
    .line 274
    invoke-virtual {v0, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 275
    .line 276
    .line 277
    move-result v0

    .line 278
    if-nez v0, :cond_7

    .line 279
    .line 280
    new-instance v0, Ljava/lang/StringBuilder;

    .line 281
    .line 282
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 283
    .line 284
    .line 285
    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 286
    .line 287
    .line 288
    move/from16 v18, v1

    .line 289
    .line 290
    iget-object v1, v15, Lcom/yunpan/appmanage/bean/WpPathBean;->path:Ljava/lang/String;

    .line 291
    .line 292
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 293
    .line 294
    .line 295
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 296
    .line 297
    .line 298
    move-result-object v0

    .line 299
    iput-object v0, v15, Lcom/yunpan/appmanage/bean/WpPathBean;->path:Ljava/lang/String;

    .line 300
    .line 301
    goto :goto_b

    .line 302
    :catch_3
    move-exception v0

    .line 303
    goto :goto_d

    .line 304
    :cond_7
    move/from16 v18, v1

    .line 305
    .line 306
    :goto_b
    iget-object v0, v15, Lcom/yunpan/appmanage/bean/WpPathBean;->path:Ljava/lang/String;

    .line 307
    .line 308
    invoke-virtual {v0, v13}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 309
    .line 310
    .line 311
    move-result v0

    .line 312
    if-nez v0, :cond_8

    .line 313
    .line 314
    new-instance v0, Ljava/lang/StringBuilder;

    .line 315
    .line 316
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 317
    .line 318
    .line 319
    iget-object v1, v15, Lcom/yunpan/appmanage/bean/WpPathBean;->path:Ljava/lang/String;

    .line 320
    .line 321
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 322
    .line 323
    .line 324
    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 325
    .line 326
    .line 327
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 328
    .line 329
    .line 330
    move-result-object v0

    .line 331
    iput-object v0, v15, Lcom/yunpan/appmanage/bean/WpPathBean;->path:Ljava/lang/String;

    .line 332
    .line 333
    :cond_8
    iput-object v12, v15, Lcom/yunpan/appmanage/bean/WpPathBean;->time_txt:Ljava/lang/String;

    .line 334
    .line 335
    invoke-virtual {v14}, Lce/t0;->u()Z

    .line 336
    .line 337
    .line 338
    move-result v0

    .line 339
    iput-boolean v0, v15, Lcom/yunpan/appmanage/bean/WpPathBean;->is_dir:Z

    .line 340
    .line 341
    invoke-virtual {v4, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 342
    .line 343
    .line 344
    goto :goto_a

    .line 345
    :goto_c
    add-int/2addr v9, v1

    .line 346
    move-object/from16 v0, v17

    .line 347
    .line 348
    move/from16 v1, v18

    .line 349
    .line 350
    goto :goto_8

    .line 351
    :goto_d
    new-instance v1, Ljava/lang/StringBuilder;

    .line 352
    .line 353
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 354
    .line 355
    .line 356
    invoke-static {v0, v1, v11}, Lda/b;->b(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    .line 357
    .line 358
    .line 359
    move-result-object v0

    .line 360
    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 361
    .line 362
    .line 363
    move-result v1

    .line 364
    if-eqz v1, :cond_9

    .line 365
    .line 366
    move-object/from16 v15, v19

    .line 367
    .line 368
    goto :goto_e

    .line 369
    :cond_9
    move-object v15, v0

    .line 370
    :goto_e
    invoke-virtual {v15}, Ljava/lang/String;->isEmpty()Z

    .line 371
    .line 372
    .line 373
    move-result v0

    .line 374
    if-eqz v0, :cond_a

    .line 375
    .line 376
    move-object/from16 v14, v16

    .line 377
    .line 378
    goto :goto_f

    .line 379
    :cond_a
    move-object v14, v15

    .line 380
    :goto_f
    new-instance v0, Ljava/lang/Throwable;

    .line 381
    .line 382
    invoke-direct {v0, v14}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    .line 383
    .line 384
    .line 385
    invoke-virtual {v2, v0}, Lmc/b;->d(Ljava/lang/Throwable;)V

    .line 386
    .line 387
    .line 388
    goto/16 :goto_2d

    .line 389
    .line 390
    :cond_b
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 391
    .line 392
    .line 393
    move-result v0

    .line 394
    if-nez v0, :cond_c

    .line 395
    .line 396
    new-instance v0, Ljava/lang/Throwable;

    .line 397
    .line 398
    invoke-direct {v0, v7}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    .line 399
    .line 400
    .line 401
    invoke-virtual {v2, v0}, Lmc/b;->d(Ljava/lang/Throwable;)V

    .line 402
    .line 403
    .line 404
    goto/16 :goto_2d

    .line 405
    .line 406
    :cond_c
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 407
    .line 408
    .line 409
    move-result v0

    .line 410
    const/4 v1, 0x1

    .line 411
    if-ne v0, v1, :cond_14

    .line 412
    .line 413
    const/4 v1, 0x0

    .line 414
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 415
    .line 416
    .line 417
    move-result-object v0

    .line 418
    check-cast v0, Lcom/yunpan/appmanage/bean/WpPathBean;

    .line 419
    .line 420
    iget-object v0, v0, Lcom/yunpan/appmanage/bean/WpPathBean;->path:Ljava/lang/String;

    .line 421
    .line 422
    iput-object v0, v6, Lcom/yunpan/appmanage/bean/WpPathBean;->path:Ljava/lang/String;

    .line 423
    .line 424
    :goto_10
    new-instance v0, Ljava/util/ArrayList;

    .line 425
    .line 426
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 427
    .line 428
    .line 429
    new-instance v1, Ljava/util/ArrayList;

    .line 430
    .line 431
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 432
    .line 433
    .line 434
    :try_start_4
    invoke-virtual {v5}, Lx9/n5;->b()Ljava/lang/String;

    .line 435
    .line 436
    .line 437
    new-instance v4, Lce/t0;

    .line 438
    .line 439
    new-instance v7, Ljava/lang/StringBuilder;

    .line 440
    .line 441
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 442
    .line 443
    .line 444
    invoke-virtual {v5}, Lx9/n5;->b()Ljava/lang/String;

    .line 445
    .line 446
    .line 447
    move-result-object v5

    .line 448
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 449
    .line 450
    .line 451
    iget-object v5, v6, Lcom/yunpan/appmanage/bean/WpPathBean;->path:Ljava/lang/String;

    .line 452
    .line 453
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 454
    .line 455
    .line 456
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 457
    .line 458
    .line 459
    move-result-object v5

    .line 460
    invoke-direct {v4, v5}, Lce/t0;-><init>(Ljava/lang/String;)V

    .line 461
    .line 462
    .line 463
    invoke-virtual {v4}, Lce/t0;->x()[Lce/t0;

    .line 464
    .line 465
    .line 466
    move-result-object v3
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    .line 467
    if-nez v3, :cond_d

    .line 468
    .line 469
    const-string v0, "\u8bfb\u53d6\u5931\u8d25"

    .line 470
    .line 471
    invoke-static {v0, v2}, Landroid/support/v4/media/session/a;->B(Ljava/lang/String;Lmc/b;)V

    .line 472
    .line 473
    .line 474
    goto/16 :goto_2d

    .line 475
    .line 476
    :cond_d
    array-length v4, v3

    .line 477
    const/4 v5, 0x0

    .line 478
    :goto_11
    if-ge v5, v4, :cond_11

    .line 479
    .line 480
    aget-object v7, v3, v5

    .line 481
    .line 482
    new-instance v8, Lcom/yunpan/appmanage/bean/WpPathBean;

    .line 483
    .line 484
    invoke-direct {v8}, Lcom/yunpan/appmanage/bean/WpPathBean;-><init>()V

    .line 485
    .line 486
    .line 487
    invoke-virtual {v7}, Lce/t0;->p()Ljava/lang/String;

    .line 488
    .line 489
    .line 490
    move-result-object v9

    .line 491
    iput-object v9, v8, Lcom/yunpan/appmanage/bean/WpPathBean;->name:Ljava/lang/String;

    .line 492
    .line 493
    sget-object v11, Lcom/yunpan/appmanage/util/v;->a:Lcom/yunpan/appmanage/util/w;

    .line 494
    .line 495
    iget-boolean v11, v11, Lcom/yunpan/appmanage/util/w;->l0:Z

    .line 496
    .line 497
    if-nez v11, :cond_e

    .line 498
    .line 499
    invoke-virtual {v9, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 500
    .line 501
    .line 502
    move-result v9

    .line 503
    if-eqz v9, :cond_e

    .line 504
    .line 505
    :goto_12
    const/4 v7, 0x1

    .line 506
    goto :goto_13

    .line 507
    :cond_e
    sget-object v9, Lcom/yunpan/appmanage/util/k;->u0:Ljava/text/DecimalFormat;

    .line 508
    .line 509
    sget-object v9, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 510
    .line 511
    iget-object v9, v9, Lcom/yunpan/appmanage/util/k;->b0:Ljava/text/SimpleDateFormat;

    .line 512
    .line 513
    invoke-virtual {v7}, Lce/t0;->getLastModified()J

    .line 514
    .line 515
    .line 516
    move-result-wide v11

    .line 517
    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 518
    .line 519
    .line 520
    move-result-object v11

    .line 521
    invoke-virtual {v9, v11}, Ljava/text/Format;->format(Ljava/lang/Object;)Ljava/lang/String;

    .line 522
    .line 523
    .line 524
    move-result-object v9

    .line 525
    iput-object v9, v8, Lcom/yunpan/appmanage/bean/WpPathBean;->time_txt:Ljava/lang/String;

    .line 526
    .line 527
    invoke-virtual {v7}, Lce/t0;->u()Z

    .line 528
    .line 529
    .line 530
    move-result v9

    .line 531
    iput-boolean v9, v8, Lcom/yunpan/appmanage/bean/WpPathBean;->is_dir:Z

    .line 532
    .line 533
    if-eqz v9, :cond_10

    .line 534
    .line 535
    iget-object v7, v8, Lcom/yunpan/appmanage/bean/WpPathBean;->name:Ljava/lang/String;

    .line 536
    .line 537
    invoke-virtual {v7, v13}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 538
    .line 539
    .line 540
    move-result v7

    .line 541
    if-eqz v7, :cond_f

    .line 542
    .line 543
    iget-object v7, v8, Lcom/yunpan/appmanage/bean/WpPathBean;->name:Ljava/lang/String;

    .line 544
    .line 545
    const/4 v9, 0x1

    .line 546
    const/4 v11, 0x0

    .line 547
    invoke-static {v9, v11, v7}, Landroid/support/v4/media/session/a;->l(IILjava/lang/String;)Ljava/lang/String;

    .line 548
    .line 549
    .line 550
    move-result-object v7

    .line 551
    iput-object v7, v8, Lcom/yunpan/appmanage/bean/WpPathBean;->name:Ljava/lang/String;

    .line 552
    .line 553
    :cond_f
    new-instance v7, Ljava/lang/StringBuilder;

    .line 554
    .line 555
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 556
    .line 557
    .line 558
    iget-object v9, v6, Lcom/yunpan/appmanage/bean/WpPathBean;->path:Ljava/lang/String;

    .line 559
    .line 560
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 561
    .line 562
    .line 563
    iget-object v9, v8, Lcom/yunpan/appmanage/bean/WpPathBean;->name:Ljava/lang/String;

    .line 564
    .line 565
    invoke-static {v9, v13, v7}, Lg/b;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 566
    .line 567
    .line 568
    move-result-object v7

    .line 569
    iput-object v7, v8, Lcom/yunpan/appmanage/bean/WpPathBean;->path:Ljava/lang/String;

    .line 570
    .line 571
    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 572
    .line 573
    .line 574
    goto :goto_12

    .line 575
    :cond_10
    new-instance v9, Ljava/lang/StringBuilder;

    .line 576
    .line 577
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 578
    .line 579
    .line 580
    iget-object v11, v6, Lcom/yunpan/appmanage/bean/WpPathBean;->path:Ljava/lang/String;

    .line 581
    .line 582
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 583
    .line 584
    .line 585
    iget-object v11, v8, Lcom/yunpan/appmanage/bean/WpPathBean;->name:Ljava/lang/String;

    .line 586
    .line 587
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 588
    .line 589
    .line 590
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 591
    .line 592
    .line 593
    move-result-object v9

    .line 594
    iput-object v9, v8, Lcom/yunpan/appmanage/bean/WpPathBean;->path:Ljava/lang/String;

    .line 595
    .line 596
    invoke-virtual {v7}, Lce/t0;->w()J

    .line 597
    .line 598
    .line 599
    move-result-wide v11

    .line 600
    iput-wide v11, v8, Lcom/yunpan/appmanage/bean/WpPathBean;->size_long:J

    .line 601
    .line 602
    long-to-double v11, v11

    .line 603
    invoke-static {v11, v12}, Lif/a;->D0(D)Ljava/lang/String;

    .line 604
    .line 605
    .line 606
    move-result-object v7

    .line 607
    iput-object v7, v8, Lcom/yunpan/appmanage/bean/WpPathBean;->size_txt:Ljava/lang/String;

    .line 608
    .line 609
    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 610
    .line 611
    .line 612
    goto :goto_12

    .line 613
    :goto_13
    add-int/2addr v5, v7

    .line 614
    goto/16 :goto_11

    .line 615
    .line 616
    :cond_11
    new-instance v3, La2/m;

    .line 617
    .line 618
    const/16 v4, 0x1b

    .line 619
    .line 620
    invoke-direct {v3, v4}, La2/m;-><init>(I)V

    .line 621
    .line 622
    .line 623
    invoke-static {v0, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 624
    .line 625
    .line 626
    new-instance v3, La2/m;

    .line 627
    .line 628
    const/16 v4, 0x1c

    .line 629
    .line 630
    invoke-direct {v3, v4}, La2/m;-><init>(I)V

    .line 631
    .line 632
    .line 633
    invoke-static {v1, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 634
    .line 635
    .line 636
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 637
    .line 638
    .line 639
    invoke-virtual {v2, v0}, Lmc/b;->f(Ljava/lang/Object;)V

    .line 640
    .line 641
    .line 642
    invoke-virtual/range {p1 .. p1}, Lmc/b;->b()V

    .line 643
    .line 644
    .line 645
    goto/16 :goto_2d

    .line 646
    .line 647
    :catch_4
    move-exception v0

    .line 648
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 649
    .line 650
    .line 651
    new-instance v1, Ljava/lang/StringBuilder;

    .line 652
    .line 653
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 654
    .line 655
    .line 656
    invoke-static {v0, v1, v11}, Lda/b;->b(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    .line 657
    .line 658
    .line 659
    move-result-object v0

    .line 660
    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 661
    .line 662
    .line 663
    move-result v1

    .line 664
    if-eqz v1, :cond_12

    .line 665
    .line 666
    move-object/from16 v15, v19

    .line 667
    .line 668
    goto :goto_14

    .line 669
    :cond_12
    move-object v15, v0

    .line 670
    :goto_14
    invoke-virtual {v15}, Ljava/lang/String;->isEmpty()Z

    .line 671
    .line 672
    .line 673
    move-result v0

    .line 674
    if-eqz v0, :cond_13

    .line 675
    .line 676
    move-object/from16 v14, v16

    .line 677
    .line 678
    goto :goto_15

    .line 679
    :cond_13
    move-object v14, v15

    .line 680
    :goto_15
    new-instance v0, Ljava/lang/Throwable;

    .line 681
    .line 682
    invoke-direct {v0, v14}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    .line 683
    .line 684
    .line 685
    invoke-virtual {v2, v0}, Lmc/b;->d(Ljava/lang/Throwable;)V

    .line 686
    .line 687
    .line 688
    goto/16 :goto_2d

    .line 689
    .line 690
    :cond_14
    invoke-virtual {v2, v4}, Lmc/b;->f(Ljava/lang/Object;)V

    .line 691
    .line 692
    .line 693
    invoke-virtual/range {p1 .. p1}, Lmc/b;->b()V

    .line 694
    .line 695
    .line 696
    goto/16 :goto_2d

    .line 697
    .line 698
    :cond_15
    invoke-static {}, Lcom/hierynomus/smbj/SmbConfig;->builder()Lcom/hierynomus/smbj/SmbConfig$Builder;

    .line 699
    .line 700
    .line 701
    move-result-object v0

    .line 702
    const/4 v1, 0x1

    .line 703
    invoke-virtual {v0, v1}, Lcom/hierynomus/smbj/SmbConfig$Builder;->withMultiProtocolNegotiate(Z)Lcom/hierynomus/smbj/SmbConfig$Builder;

    .line 704
    .line 705
    .line 706
    move-result-object v0

    .line 707
    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 708
    .line 709
    const-wide/16 v3, 0x1e

    .line 710
    .line 711
    invoke-virtual {v0, v3, v4, v1}, Lcom/hierynomus/smbj/SmbConfig$Builder;->withTimeout(JLjava/util/concurrent/TimeUnit;)Lcom/hierynomus/smbj/SmbConfig$Builder;

    .line 712
    .line 713
    .line 714
    move-result-object v0

    .line 715
    invoke-virtual {v0, v3, v4, v1}, Lcom/hierynomus/smbj/SmbConfig$Builder;->withSoTimeout(JLjava/util/concurrent/TimeUnit;)Lcom/hierynomus/smbj/SmbConfig$Builder;

    .line 716
    .line 717
    .line 718
    move-result-object v0

    .line 719
    invoke-virtual {v0}, Lcom/hierynomus/smbj/SmbConfig$Builder;->build()Lcom/hierynomus/smbj/SmbConfig;

    .line 720
    .line 721
    .line 722
    move-result-object v0

    .line 723
    new-instance v1, Lcom/hierynomus/smbj/SMBClient;

    .line 724
    .line 725
    invoke-direct {v1, v0}, Lcom/hierynomus/smbj/SMBClient;-><init>(Lcom/hierynomus/smbj/SmbConfig;)V

    .line 726
    .line 727
    .line 728
    :try_start_5
    iget-object v0, v5, Lx9/n5;->c:Ljava/lang/String;

    .line 729
    .line 730
    iget v4, v5, Lx9/n5;->d:I

    .line 731
    .line 732
    invoke-virtual {v1, v0, v4}, Lcom/hierynomus/smbj/SMBClient;->connect(Ljava/lang/String;I)Lcom/hierynomus/smbj/connection/Connection;

    .line 733
    .line 734
    .line 735
    move-result-object v4
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_14
    .catchall {:try_start_5 .. :try_end_5} :catchall_6

    .line 736
    :try_start_6
    iget-object v0, v5, Lx9/n5;->e:Ljava/lang/String;

    .line 737
    .line 738
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 739
    .line 740
    .line 741
    move-result v0

    .line 742
    if-eqz v0, :cond_16

    .line 743
    .line 744
    invoke-static {}, Lcom/hierynomus/smbj/auth/AuthenticationContext;->guest()Lcom/hierynomus/smbj/auth/AuthenticationContext;

    .line 745
    .line 746
    .line 747
    move-result-object v0

    .line 748
    goto :goto_18

    .line 749
    :catchall_0
    move-exception v0

    .line 750
    const/4 v3, 0x0

    .line 751
    :goto_16
    const/16 v16, 0x0

    .line 752
    .line 753
    goto/16 :goto_2e

    .line 754
    .line 755
    :catch_5
    move-exception v0

    .line 756
    const/4 v3, 0x0

    .line 757
    :goto_17
    const/16 v16, 0x0

    .line 758
    .line 759
    goto/16 :goto_2a

    .line 760
    .line 761
    :cond_16
    new-instance v0, Lcom/hierynomus/smbj/auth/AuthenticationContext;

    .line 762
    .line 763
    iget-object v14, v5, Lx9/n5;->e:Ljava/lang/String;

    .line 764
    .line 765
    iget-object v15, v5, Lx9/n5;->f:Ljava/lang/String;

    .line 766
    .line 767
    invoke-virtual {v15}, Ljava/lang/String;->toCharArray()[C

    .line 768
    .line 769
    .line 770
    move-result-object v15

    .line 771
    iget-object v3, v5, Lx9/n5;->v:Ljava/lang/String;

    .line 772
    .line 773
    invoke-direct {v0, v14, v15, v3}, Lcom/hierynomus/smbj/auth/AuthenticationContext;-><init>(Ljava/lang/String;[CLjava/lang/String;)V

    .line 774
    .line 775
    .line 776
    :goto_18
    invoke-virtual {v4, v0}, Lcom/hierynomus/smbj/connection/Connection;->authenticate(Lcom/hierynomus/smbj/auth/AuthenticationContext;)Lcom/hierynomus/smbj/session/Session;

    .line 777
    .line 778
    .line 779
    move-result-object v3
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 780
    :try_start_7
    iget-object v0, v6, Lcom/yunpan/appmanage/bean/WpPathBean;->path:Ljava/lang/String;

    .line 781
    .line 782
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 783
    .line 784
    .line 785
    move-result v0

    .line 786
    if-nez v0, :cond_18

    .line 787
    .line 788
    iget-object v0, v6, Lcom/yunpan/appmanage/bean/WpPathBean;->path:Ljava/lang/String;

    .line 789
    .line 790
    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 791
    .line 792
    .line 793
    move-result v0

    .line 794
    if-eqz v0, :cond_17

    .line 795
    .line 796
    goto :goto_19

    .line 797
    :cond_17
    const/4 v15, 0x0

    .line 798
    goto/16 :goto_24

    .line 799
    .line 800
    :catchall_1
    move-exception v0

    .line 801
    move-object/from16 v16, v3

    .line 802
    .line 803
    const/4 v3, 0x0

    .line 804
    goto/16 :goto_2e

    .line 805
    .line 806
    :catch_6
    move-exception v0

    .line 807
    move-object/from16 v16, v3

    .line 808
    .line 809
    const/4 v3, 0x0

    .line 810
    goto/16 :goto_2a

    .line 811
    .line 812
    :cond_18
    :goto_19
    new-instance v0, Ljava/util/ArrayList;

    .line 813
    .line 814
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 815
    .line 816
    .line 817
    iget-object v14, v5, Lx9/n5;->w:Ljava/lang/String;

    .line 818
    .line 819
    invoke-virtual {v14}, Ljava/lang/String;->isEmpty()Z

    .line 820
    .line 821
    .line 822
    move-result v14

    .line 823
    if-nez v14, :cond_1c

    .line 824
    .line 825
    iget-object v5, v5, Lx9/n5;->w:Ljava/lang/String;

    .line 826
    .line 827
    invoke-virtual {v5, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 828
    .line 829
    .line 830
    move-result-object v5

    .line 831
    array-length v9, v5
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_6
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 832
    const/4 v14, 0x0

    .line 833
    const/4 v15, 0x0

    .line 834
    :goto_1a
    if-ge v14, v9, :cond_1b

    .line 835
    .line 836
    move/from16 v17, v9

    .line 837
    .line 838
    :try_start_8
    aget-object v9, v5, v14
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_c
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    .line 839
    .line 840
    :try_start_9
    invoke-virtual {v3, v9}, Lcom/hierynomus/smbj/session/Session;->connectShare(Ljava/lang/String;)Lcom/hierynomus/smbj/share/Share;

    .line 841
    .line 842
    .line 843
    move-result-object v18
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_d
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    .line 844
    move-object/from16 v19, v5

    .line 845
    .line 846
    :try_start_a
    move-object/from16 v5, v18

    .line 847
    .line 848
    check-cast v5, Lcom/hierynomus/smbj/share/DiskShare;
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    .line 849
    .line 850
    :try_start_b
    invoke-virtual {v5, v13}, Lcom/hierynomus/smbj/share/DiskShare;->list(Ljava/lang/String;)Ljava/util/List;

    .line 851
    .line 852
    .line 853
    new-instance v15, Lcom/yunpan/appmanage/bean/WpPathBean;
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_9
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    .line 854
    .line 855
    move-object/from16 v18, v7

    .line 856
    .line 857
    :try_start_c
    new-instance v7, Ljava/lang/StringBuilder;

    .line 858
    .line 859
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 860
    .line 861
    .line 862
    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 863
    .line 864
    .line 865
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 866
    .line 867
    .line 868
    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 869
    .line 870
    .line 871
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 872
    .line 873
    .line 874
    move-result-object v7

    .line 875
    invoke-direct {v15, v9, v7}, Lcom/yunpan/appmanage/bean/WpPathBean;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 876
    .line 877
    .line 878
    iput-object v12, v15, Lcom/yunpan/appmanage/bean/WpPathBean;->time_txt:Ljava/lang/String;

    .line 879
    .line 880
    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_8
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    .line 881
    .line 882
    .line 883
    :try_start_d
    invoke-virtual {v5}, Lcom/hierynomus/smbj/share/Share;->close()V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_7
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    .line 884
    .line 885
    .line 886
    goto :goto_1b

    .line 887
    :catchall_2
    move-exception v0

    .line 888
    move-object/from16 v16, v3

    .line 889
    .line 890
    move-object v3, v5

    .line 891
    goto/16 :goto_2e

    .line 892
    .line 893
    :catch_7
    :goto_1b
    const/4 v5, 0x1

    .line 894
    const/4 v15, 0x0

    .line 895
    goto :goto_21

    .line 896
    :catchall_3
    move-exception v0

    .line 897
    move-object v15, v5

    .line 898
    goto :goto_1e

    .line 899
    :catch_8
    :goto_1c
    nop

    .line 900
    move-object v15, v5

    .line 901
    goto :goto_20

    .line 902
    :catch_9
    move-object/from16 v18, v7

    .line 903
    .line 904
    goto :goto_1c

    .line 905
    :catchall_4
    move-exception v0

    .line 906
    goto :goto_1e

    .line 907
    :catch_a
    :goto_1d
    move-object/from16 v18, v7

    .line 908
    .line 909
    nop

    .line 910
    goto :goto_20

    .line 911
    :goto_1e
    if-eqz v15, :cond_19

    .line 912
    .line 913
    :try_start_e
    invoke-virtual {v15}, Lcom/hierynomus/smbj/share/Share;->close()V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_b
    .catchall {:try_start_e .. :try_end_e} :catchall_5

    .line 914
    .line 915
    .line 916
    goto :goto_1f

    .line 917
    :catchall_5
    move-exception v0

    .line 918
    move-object/from16 v16, v3

    .line 919
    .line 920
    move-object v3, v15

    .line 921
    goto/16 :goto_2e

    .line 922
    .line 923
    :catch_b
    :goto_1f
    const/4 v15, 0x0

    .line 924
    :cond_19
    :try_start_f
    throw v0
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_c
    .catchall {:try_start_f .. :try_end_f} :catchall_5

    .line 925
    :catch_c
    move-exception v0

    .line 926
    move-object/from16 v16, v3

    .line 927
    .line 928
    move-object v3, v15

    .line 929
    goto/16 :goto_2a

    .line 930
    .line 931
    :catch_d
    move-object/from16 v19, v5

    .line 932
    .line 933
    goto :goto_1d

    .line 934
    :goto_20
    if-eqz v15, :cond_1a

    .line 935
    .line 936
    :try_start_10
    invoke-virtual {v15}, Lcom/hierynomus/smbj/share/Share;->close()V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_7
    .catchall {:try_start_10 .. :try_end_10} :catchall_5

    .line 937
    .line 938
    .line 939
    goto :goto_1b

    .line 940
    :cond_1a
    const/4 v5, 0x1

    .line 941
    :goto_21
    add-int/2addr v14, v5

    .line 942
    move/from16 v9, v17

    .line 943
    .line 944
    move-object/from16 v7, v18

    .line 945
    .line 946
    move-object/from16 v5, v19

    .line 947
    .line 948
    goto :goto_1a

    .line 949
    :cond_1b
    move-object/from16 v18, v7

    .line 950
    .line 951
    goto :goto_22

    .line 952
    :cond_1c
    move-object/from16 v18, v7

    .line 953
    .line 954
    const/4 v15, 0x0

    .line 955
    :goto_22
    :try_start_11
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 956
    .line 957
    .line 958
    move-result v5

    .line 959
    if-eqz v5, :cond_1e

    .line 960
    .line 961
    sget-object v5, Lcom/rapid7/client/dcerpc/transport/SMBTransportFactories;->SRVSVC:Lcom/rapid7/client/dcerpc/transport/SMBTransportFactories;

    .line 962
    .line 963
    invoke-virtual {v5, v3}, Lcom/rapid7/client/dcerpc/transport/SMBTransportFactories;->getTransport(Lcom/hierynomus/smbj/session/Session;)Lcom/rapid7/client/dcerpc/transport/RPCTransport;

    .line 964
    .line 965
    .line 966
    move-result-object v5

    .line 967
    new-instance v7, Lcom/rapid7/client/dcerpc/mssrvs/ServerService;

    .line 968
    .line 969
    invoke-direct {v7, v5}, Lcom/rapid7/client/dcerpc/mssrvs/ServerService;-><init>(Lcom/rapid7/client/dcerpc/transport/RPCTransport;)V

    .line 970
    .line 971
    .line 972
    invoke-virtual {v7}, Lcom/rapid7/client/dcerpc/mssrvs/ServerService;->getShares0()Ljava/util/List;

    .line 973
    .line 974
    .line 975
    move-result-object v5

    .line 976
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 977
    .line 978
    .line 979
    move-result-object v5

    .line 980
    :goto_23
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 981
    .line 982
    .line 983
    move-result v7

    .line 984
    if-eqz v7, :cond_1e

    .line 985
    .line 986
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 987
    .line 988
    .line 989
    move-result-object v7

    .line 990
    check-cast v7, Lcom/rapid7/client/dcerpc/mssrvs/dto/NetShareInfo0;

    .line 991
    .line 992
    invoke-virtual {v7}, Lcom/rapid7/client/dcerpc/mssrvs/dto/NetShareInfo;->getNetName()Ljava/lang/String;

    .line 993
    .line 994
    .line 995
    move-result-object v7

    .line 996
    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 997
    .line 998
    .line 999
    move-result v9

    .line 1000
    if-eqz v9, :cond_1d

    .line 1001
    .line 1002
    goto :goto_23

    .line 1003
    :cond_1d
    new-instance v9, Lcom/yunpan/appmanage/bean/WpPathBean;

    .line 1004
    .line 1005
    new-instance v14, Ljava/lang/StringBuilder;

    .line 1006
    .line 1007
    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    .line 1008
    .line 1009
    .line 1010
    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1011
    .line 1012
    .line 1013
    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1014
    .line 1015
    .line 1016
    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1017
    .line 1018
    .line 1019
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1020
    .line 1021
    .line 1022
    move-result-object v14

    .line 1023
    invoke-direct {v9, v7, v14}, Lcom/yunpan/appmanage/bean/WpPathBean;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1024
    .line 1025
    .line 1026
    iput-object v12, v9, Lcom/yunpan/appmanage/bean/WpPathBean;->time_txt:Ljava/lang/String;

    .line 1027
    .line 1028
    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1029
    .line 1030
    .line 1031
    goto :goto_23

    .line 1032
    :cond_1e
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 1033
    .line 1034
    .line 1035
    move-result v5

    .line 1036
    if-nez v5, :cond_29

    .line 1037
    .line 1038
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 1039
    .line 1040
    .line 1041
    move-result v5

    .line 1042
    const/4 v7, 0x1

    .line 1043
    if-ne v5, v7, :cond_27

    .line 1044
    .line 1045
    const/4 v5, 0x0

    .line 1046
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1047
    .line 1048
    .line 1049
    move-result-object v0

    .line 1050
    check-cast v0, Lcom/yunpan/appmanage/bean/WpPathBean;

    .line 1051
    .line 1052
    iget-object v0, v0, Lcom/yunpan/appmanage/bean/WpPathBean;->path:Ljava/lang/String;

    .line 1053
    .line 1054
    iput-object v0, v6, Lcom/yunpan/appmanage/bean/WpPathBean;->path:Ljava/lang/String;

    .line 1055
    .line 1056
    :goto_24
    iget-object v0, v6, Lcom/yunpan/appmanage/bean/WpPathBean;->path:Ljava/lang/String;

    .line 1057
    .line 1058
    const/4 v5, 0x1

    .line 1059
    invoke-virtual {v0, v13, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    .line 1060
    .line 1061
    .line 1062
    move-result v0

    .line 1063
    const/4 v5, -0x1

    .line 1064
    if-ne v0, v5, :cond_22

    .line 1065
    .line 1066
    new-instance v0, Ljava/lang/Throwable;

    .line 1067
    .line 1068
    const-string v5, "\u5171\u4eab\u540d\u9519\u8bef"

    .line 1069
    .line 1070
    invoke-direct {v0, v5}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    .line 1071
    .line 1072
    .line 1073
    invoke-virtual {v2, v0}, Lmc/b;->d(Ljava/lang/Throwable;)V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_c
    .catchall {:try_start_11 .. :try_end_11} :catchall_5

    .line 1074
    .line 1075
    .line 1076
    if-eqz v15, :cond_1f

    .line 1077
    .line 1078
    :try_start_12
    invoke-virtual {v15}, Lcom/hierynomus/smbj/share/Share;->close()V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_e

    .line 1079
    .line 1080
    .line 1081
    goto :goto_25

    .line 1082
    :catch_e
    nop

    .line 1083
    :cond_1f
    :goto_25
    if-eqz v3, :cond_20

    .line 1084
    .line 1085
    :try_start_13
    invoke-virtual {v3}, Lcom/hierynomus/smbj/session/Session;->close()V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_f

    .line 1086
    .line 1087
    .line 1088
    :catch_f
    :cond_20
    :goto_26
    :try_start_14
    invoke-virtual {v4}, Lcom/hierynomus/smbj/connection/Connection;->close()V
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_10

    .line 1089
    .line 1090
    .line 1091
    :catch_10
    :cond_21
    :try_start_15
    invoke-virtual {v1}, Lcom/hierynomus/smbj/SMBClient;->close()V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_17

    .line 1092
    .line 1093
    .line 1094
    goto/16 :goto_2d

    .line 1095
    .line 1096
    :cond_22
    :try_start_16
    iget-object v5, v6, Lcom/yunpan/appmanage/bean/WpPathBean;->path:Ljava/lang/String;

    .line 1097
    .line 1098
    const/4 v7, 0x1

    .line 1099
    invoke-virtual {v5, v7, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 1100
    .line 1101
    .line 1102
    move-result-object v5

    .line 1103
    iget-object v7, v6, Lcom/yunpan/appmanage/bean/WpPathBean;->path:Ljava/lang/String;

    .line 1104
    .line 1105
    invoke-virtual {v7, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 1106
    .line 1107
    .line 1108
    move-result-object v0

    .line 1109
    invoke-virtual {v3, v5}, Lcom/hierynomus/smbj/session/Session;->connectShare(Ljava/lang/String;)Lcom/hierynomus/smbj/share/Share;

    .line 1110
    .line 1111
    .line 1112
    move-result-object v5

    .line 1113
    check-cast v5, Lcom/hierynomus/smbj/share/DiskShare;
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_c
    .catchall {:try_start_16 .. :try_end_16} :catchall_5

    .line 1114
    .line 1115
    :try_start_17
    invoke-virtual {v5, v0}, Lcom/hierynomus/smbj/share/DiskShare;->list(Ljava/lang/String;)Ljava/util/List;

    .line 1116
    .line 1117
    .line 1118
    move-result-object v0

    .line 1119
    new-instance v7, Ljava/util/ArrayList;

    .line 1120
    .line 1121
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 1122
    .line 1123
    .line 1124
    new-instance v8, Ljava/util/ArrayList;

    .line 1125
    .line 1126
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 1127
    .line 1128
    .line 1129
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 1130
    .line 1131
    .line 1132
    move-result-object v0

    .line 1133
    :goto_27
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 1134
    .line 1135
    .line 1136
    move-result v9

    .line 1137
    if-eqz v9, :cond_26

    .line 1138
    .line 1139
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1140
    .line 1141
    .line 1142
    move-result-object v9

    .line 1143
    check-cast v9, Lcom/hierynomus/msfscc/fileinformation/FileIdBothDirectoryInformation;

    .line 1144
    .line 1145
    new-instance v12, Lcom/yunpan/appmanage/bean/WpPathBean;

    .line 1146
    .line 1147
    invoke-virtual {v9}, Lcom/hierynomus/msfscc/fileinformation/FileDirectoryQueryableInformation;->getFileName()Ljava/lang/String;

    .line 1148
    .line 1149
    .line 1150
    move-result-object v14

    .line 1151
    new-instance v15, Ljava/lang/StringBuilder;

    .line 1152
    .line 1153
    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    .line 1154
    .line 1155
    .line 1156
    move-object/from16 v16, v0

    .line 1157
    .line 1158
    iget-object v0, v6, Lcom/yunpan/appmanage/bean/WpPathBean;->path:Ljava/lang/String;

    .line 1159
    .line 1160
    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1161
    .line 1162
    .line 1163
    invoke-virtual {v9}, Lcom/hierynomus/msfscc/fileinformation/FileDirectoryQueryableInformation;->getFileName()Ljava/lang/String;

    .line 1164
    .line 1165
    .line 1166
    move-result-object v0

    .line 1167
    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1168
    .line 1169
    .line 1170
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1171
    .line 1172
    .line 1173
    move-result-object v0

    .line 1174
    invoke-direct {v12, v14, v0}, Lcom/yunpan/appmanage/bean/WpPathBean;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1175
    .line 1176
    .line 1177
    iget-object v0, v12, Lcom/yunpan/appmanage/bean/WpPathBean;->name:Ljava/lang/String;

    .line 1178
    .line 1179
    invoke-virtual {v0, v10, v11}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 1180
    .line 1181
    .line 1182
    move-result-object v0

    .line 1183
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 1184
    .line 1185
    .line 1186
    move-result v0

    .line 1187
    if-eqz v0, :cond_23

    .line 1188
    .line 1189
    :goto_28
    move-object/from16 v0, v16

    .line 1190
    .line 1191
    goto :goto_27

    .line 1192
    :cond_23
    sget-object v0, Lcom/yunpan/appmanage/util/v;->a:Lcom/yunpan/appmanage/util/w;

    .line 1193
    .line 1194
    iget-boolean v0, v0, Lcom/yunpan/appmanage/util/w;->l0:Z

    .line 1195
    .line 1196
    if-nez v0, :cond_24

    .line 1197
    .line 1198
    iget-object v0, v12, Lcom/yunpan/appmanage/bean/WpPathBean;->name:Ljava/lang/String;

    .line 1199
    .line 1200
    invoke-virtual {v0, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 1201
    .line 1202
    .line 1203
    move-result v0

    .line 1204
    if-eqz v0, :cond_24

    .line 1205
    .line 1206
    goto :goto_28

    .line 1207
    :catch_11
    move-exception v0

    .line 1208
    move-object/from16 v16, v3

    .line 1209
    .line 1210
    move-object v3, v5

    .line 1211
    goto/16 :goto_2a

    .line 1212
    .line 1213
    :cond_24
    invoke-virtual {v9}, Lcom/hierynomus/msfscc/fileinformation/FileIdBothDirectoryInformation;->getLastWriteTime()Lcom/hierynomus/msdtyp/FileTime;

    .line 1214
    .line 1215
    .line 1216
    move-result-object v0

    .line 1217
    invoke-virtual {v0}, Lcom/hierynomus/msdtyp/FileTime;->toDate()Ljava/util/Date;

    .line 1218
    .line 1219
    .line 1220
    move-result-object v0

    .line 1221
    sget-object v14, Lcom/yunpan/appmanage/util/k;->u0:Ljava/text/DecimalFormat;

    .line 1222
    .line 1223
    sget-object v14, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 1224
    .line 1225
    iget-object v14, v14, Lcom/yunpan/appmanage/util/k;->b0:Ljava/text/SimpleDateFormat;

    .line 1226
    .line 1227
    invoke-virtual {v14, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 1228
    .line 1229
    .line 1230
    move-result-object v0

    .line 1231
    iput-object v0, v12, Lcom/yunpan/appmanage/bean/WpPathBean;->time_txt:Ljava/lang/String;

    .line 1232
    .line 1233
    invoke-virtual {v9}, Lcom/hierynomus/msfscc/fileinformation/FileIdBothDirectoryInformation;->getFileAttributes()J

    .line 1234
    .line 1235
    .line 1236
    move-result-wide v14

    .line 1237
    sget-object v0, Lcom/hierynomus/msfscc/FileAttributes;->FILE_ATTRIBUTE_DIRECTORY:Lcom/hierynomus/msfscc/FileAttributes;

    .line 1238
    .line 1239
    invoke-virtual {v0}, Lcom/hierynomus/msfscc/FileAttributes;->getValue()J

    .line 1240
    .line 1241
    .line 1242
    move-result-wide v17

    .line 1243
    and-long v14, v14, v17

    .line 1244
    .line 1245
    const-wide/16 v17, 0x0

    .line 1246
    .line 1247
    cmp-long v0, v14, v17

    .line 1248
    .line 1249
    if-eqz v0, :cond_25

    .line 1250
    .line 1251
    const/4 v14, 0x1

    .line 1252
    iput-boolean v14, v12, Lcom/yunpan/appmanage/bean/WpPathBean;->is_dir:Z

    .line 1253
    .line 1254
    new-instance v0, Ljava/lang/StringBuilder;

    .line 1255
    .line 1256
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1257
    .line 1258
    .line 1259
    iget-object v9, v12, Lcom/yunpan/appmanage/bean/WpPathBean;->path:Ljava/lang/String;

    .line 1260
    .line 1261
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1262
    .line 1263
    .line 1264
    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1265
    .line 1266
    .line 1267
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1268
    .line 1269
    .line 1270
    move-result-object v0

    .line 1271
    iput-object v0, v12, Lcom/yunpan/appmanage/bean/WpPathBean;->path:Ljava/lang/String;

    .line 1272
    .line 1273
    invoke-virtual {v7, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1274
    .line 1275
    .line 1276
    goto :goto_28

    .line 1277
    :cond_25
    const/4 v14, 0x1

    .line 1278
    const/4 v15, 0x0

    .line 1279
    iput-boolean v15, v12, Lcom/yunpan/appmanage/bean/WpPathBean;->is_dir:Z

    .line 1280
    .line 1281
    invoke-virtual {v9}, Lcom/hierynomus/msfscc/fileinformation/FileIdBothDirectoryInformation;->getEndOfFile()J

    .line 1282
    .line 1283
    .line 1284
    move-result-wide v14

    .line 1285
    iput-wide v14, v12, Lcom/yunpan/appmanage/bean/WpPathBean;->size_long:J

    .line 1286
    .line 1287
    long-to-double v14, v14

    .line 1288
    invoke-static {v14, v15}, Lif/a;->D0(D)Ljava/lang/String;

    .line 1289
    .line 1290
    .line 1291
    move-result-object v0

    .line 1292
    iput-object v0, v12, Lcom/yunpan/appmanage/bean/WpPathBean;->size_txt:Ljava/lang/String;

    .line 1293
    .line 1294
    invoke-virtual {v8, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1295
    .line 1296
    .line 1297
    goto :goto_28

    .line 1298
    :cond_26
    new-instance v0, La2/m;

    .line 1299
    .line 1300
    const/16 v6, 0x1d

    .line 1301
    .line 1302
    invoke-direct {v0, v6}, La2/m;-><init>(I)V

    .line 1303
    .line 1304
    .line 1305
    invoke-static {v7, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1306
    .line 1307
    .line 1308
    new-instance v0, Lqa/e;

    .line 1309
    .line 1310
    const/4 v6, 0x0

    .line 1311
    invoke-direct {v0, v6}, Lqa/e;-><init>(I)V

    .line 1312
    .line 1313
    .line 1314
    invoke-static {v8, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1315
    .line 1316
    .line 1317
    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1318
    .line 1319
    .line 1320
    invoke-virtual {v2, v7}, Lmc/b;->f(Ljava/lang/Object;)V

    .line 1321
    .line 1322
    .line 1323
    invoke-virtual/range {p1 .. p1}, Lmc/b;->b()V
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_17} :catch_11
    .catchall {:try_start_17 .. :try_end_17} :catchall_2

    .line 1324
    .line 1325
    .line 1326
    :try_start_18
    invoke-virtual {v5}, Lcom/hierynomus/smbj/share/Share;->close()V
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_18} :catch_12

    .line 1327
    .line 1328
    .line 1329
    :catch_12
    :try_start_19
    invoke-virtual {v3}, Lcom/hierynomus/smbj/session/Session;->close()V
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_19} :catch_f

    .line 1330
    .line 1331
    .line 1332
    goto/16 :goto_26

    .line 1333
    .line 1334
    :cond_27
    :try_start_1a
    invoke-virtual {v2, v0}, Lmc/b;->f(Ljava/lang/Object;)V

    .line 1335
    .line 1336
    .line 1337
    invoke-virtual/range {p1 .. p1}, Lmc/b;->b()V
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_1a} :catch_c
    .catchall {:try_start_1a .. :try_end_1a} :catchall_5

    .line 1338
    .line 1339
    .line 1340
    if-eqz v15, :cond_28

    .line 1341
    .line 1342
    :try_start_1b
    invoke-virtual {v15}, Lcom/hierynomus/smbj/share/Share;->close()V
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_1b} :catch_13

    .line 1343
    .line 1344
    .line 1345
    goto :goto_29

    .line 1346
    :catch_13
    nop

    .line 1347
    :cond_28
    :goto_29
    if-eqz v3, :cond_20

    .line 1348
    .line 1349
    :try_start_1c
    invoke-virtual {v3}, Lcom/hierynomus/smbj/session/Session;->close()V
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_1c} :catch_f

    .line 1350
    .line 1351
    .line 1352
    goto/16 :goto_26

    .line 1353
    .line 1354
    :cond_29
    :try_start_1d
    new-instance v0, Ljava/lang/Exception;

    .line 1355
    .line 1356
    move-object/from16 v5, v18

    .line 1357
    .line 1358
    invoke-direct {v0, v5}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 1359
    .line 1360
    .line 1361
    throw v0
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_1d} :catch_c
    .catchall {:try_start_1d .. :try_end_1d} :catchall_5

    .line 1362
    :catchall_6
    move-exception v0

    .line 1363
    const/4 v3, 0x0

    .line 1364
    const/4 v4, 0x0

    .line 1365
    goto/16 :goto_16

    .line 1366
    .line 1367
    :catch_14
    move-exception v0

    .line 1368
    const/4 v3, 0x0

    .line 1369
    const/4 v4, 0x0

    .line 1370
    goto/16 :goto_17

    .line 1371
    .line 1372
    :goto_2a
    :try_start_1e
    new-instance v5, Ljava/lang/Throwable;

    .line 1373
    .line 1374
    invoke-static {v0}, Lqa/f;->i(Ljava/lang/Exception;)Ljava/lang/String;

    .line 1375
    .line 1376
    .line 1377
    move-result-object v0

    .line 1378
    invoke-direct {v5, v0}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    .line 1379
    .line 1380
    .line 1381
    invoke-virtual {v2, v5}, Lmc/b;->d(Ljava/lang/Throwable;)V
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_7

    .line 1382
    .line 1383
    .line 1384
    if-eqz v3, :cond_2a

    .line 1385
    .line 1386
    :try_start_1f
    invoke-virtual {v3}, Lcom/hierynomus/smbj/share/Share;->close()V
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_1f} :catch_15

    .line 1387
    .line 1388
    .line 1389
    goto :goto_2b

    .line 1390
    :catch_15
    nop

    .line 1391
    :cond_2a
    :goto_2b
    if-eqz v16, :cond_2b

    .line 1392
    .line 1393
    :try_start_20
    invoke-virtual/range {v16 .. v16}, Lcom/hierynomus/smbj/session/Session;->close()V
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_20} :catch_16

    .line 1394
    .line 1395
    .line 1396
    goto :goto_2c

    .line 1397
    :catch_16
    nop

    .line 1398
    :cond_2b
    :goto_2c
    if-eqz v4, :cond_21

    .line 1399
    .line 1400
    goto/16 :goto_26

    .line 1401
    .line 1402
    :catch_17
    :goto_2d
    return-void

    .line 1403
    :catchall_7
    move-exception v0

    .line 1404
    :goto_2e
    if-eqz v3, :cond_2c

    .line 1405
    .line 1406
    :try_start_21
    invoke-virtual {v3}, Lcom/hierynomus/smbj/share/Share;->close()V
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_21} :catch_18

    .line 1407
    .line 1408
    .line 1409
    goto :goto_2f

    .line 1410
    :catch_18
    nop

    .line 1411
    :cond_2c
    :goto_2f
    if-eqz v16, :cond_2d

    .line 1412
    .line 1413
    :try_start_22
    invoke-virtual/range {v16 .. v16}, Lcom/hierynomus/smbj/session/Session;->close()V
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_22} :catch_19

    .line 1414
    .line 1415
    .line 1416
    goto :goto_30

    .line 1417
    :catch_19
    nop

    .line 1418
    :cond_2d
    :goto_30
    if-eqz v4, :cond_2e

    .line 1419
    .line 1420
    :try_start_23
    invoke-virtual {v4}, Lcom/hierynomus/smbj/connection/Connection;->close()V
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_23} :catch_1a

    .line 1421
    .line 1422
    .line 1423
    :catch_1a
    :cond_2e
    :try_start_24
    invoke-virtual {v1}, Lcom/hierynomus/smbj/SMBClient;->close()V
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_24} :catch_1b

    .line 1424
    .line 1425
    .line 1426
    :catch_1b
    goto :goto_32

    .line 1427
    :goto_31
    throw v0

    .line 1428
    :goto_32
    goto :goto_31
.end method


# virtual methods
.method public final g(Lmc/b;)V
    .locals 28

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v2, p1

    .line 4
    .line 5
    const-string v3, "\u8bf7\u6c42\u5931\u8d25"

    .line 6
    .line 7
    const-string v4, "fileSize"

    .line 8
    .line 9
    const-string v5, "fileId"

    .line 10
    .line 11
    const-string v6, "fileName"

    .line 12
    .line 13
    const-string v7, "list"

    .line 14
    .line 15
    const-string v8, "\u8bfb\u53d6\u76ee\u5f55\u5931\u8d25"

    .line 16
    .line 17
    const-string v9, "/"

    .line 18
    .line 19
    const-string v10, "data"

    .line 20
    .line 21
    const-string v11, "\u767b\u5f55\u5931\u6548\uff0c\u8bf7\u91cd\u65b0\u9009\u4e2d\u7f51\u76d8"

    .line 22
    .line 23
    const-string v12, "token is expired"

    .line 24
    .line 25
    const-string v13, "msg"

    .line 26
    .line 27
    const-string v14, "code"

    .line 28
    .line 29
    const-string v15, "info"

    .line 30
    .line 31
    const-string v0, "zt"

    .line 32
    .line 33
    const-string v16, "\u51fa\u9519"

    .line 34
    .line 35
    move-object/from16 v17, v11

    .line 36
    .line 37
    const-string v11, ""

    .line 38
    .line 39
    move-object/from16 v18, v15

    .line 40
    .line 41
    iget-object v15, v1, Lba/b;->c:Lx9/n5;

    .line 42
    .line 43
    move-object/from16 v19, v0

    .line 44
    .line 45
    iget-object v0, v1, Lba/b;->b:Lcom/yunpan/appmanage/bean/WpPathBean;

    .line 46
    .line 47
    move-object/from16 v20, v10

    .line 48
    .line 49
    iget v10, v1, Lba/b;->a:I

    .line 50
    .line 51
    packed-switch v10, :pswitch_data_0

    .line 52
    .line 53
    .line 54
    iget-object v3, v1, Lba/b;->c:Lx9/n5;

    .line 55
    .line 56
    :try_start_0
    iget-object v4, v0, Lcom/yunpan/appmanage/bean/WpPathBean;->path:Ljava/lang/String;

    .line 57
    .line 58
    const/16 v5, 0xa

    .line 59
    .line 60
    invoke-virtual {v4, v9, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    .line 61
    .line 62
    .line 63
    move-result v5

    .line 64
    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v4

    .line 68
    invoke-virtual {v4, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v4

    .line 72
    array-length v4, v4

    .line 73
    const-wide/16 v24, 0x14

    .line 74
    .line 75
    const-wide/16 v26, 0xa

    .line 76
    .line 77
    const-wide/16 v22, 0x14

    .line 78
    .line 79
    move-object/from16 v21, v3

    .line 80
    .line 81
    invoke-static/range {v21 .. v27}, Lqa/g;->f(Lx9/n5;JJJ)Lr9/a;

    .line 82
    .line 83
    .line 84
    move-result-object v3

    .line 85
    iget-object v5, v0, Lcom/yunpan/appmanage/bean/WpPathBean;->path:Ljava/lang/String;

    .line 86
    .line 87
    invoke-virtual {v3, v5}, Lr9/a;->c(Ljava/lang/String;)Ljava/util/List;

    .line 88
    .line 89
    .line 90
    move-result-object v3

    .line 91
    new-instance v5, Ljava/util/ArrayList;

    .line 92
    .line 93
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 94
    .line 95
    .line 96
    new-instance v6, Ljava/util/ArrayList;

    .line 97
    .line 98
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 99
    .line 100
    .line 101
    const/4 v15, 0x0

    .line 102
    :goto_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 103
    .line 104
    .line 105
    move-result v7

    .line 106
    if-ge v15, v7, :cond_5

    .line 107
    .line 108
    invoke-interface {v3, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 109
    .line 110
    .line 111
    move-result-object v7

    .line 112
    check-cast v7, Lq9/a;

    .line 113
    .line 114
    iget-object v10, v7, Lq9/a;->a:Ljava/net/URI;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 115
    .line 116
    iget-object v12, v7, Lq9/a;->b:Lv3/f;

    .line 117
    .line 118
    :try_start_1
    invoke-virtual {v10}, Ljava/net/URI;->getPath()Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object v10

    .line 122
    invoke-virtual {v10, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object v10

    .line 126
    array-length v10, v10

    .line 127
    if-ne v10, v4, :cond_1

    .line 128
    .line 129
    :cond_0
    :goto_1
    const/4 v1, 0x1

    .line 130
    goto/16 :goto_2

    .line 131
    .line 132
    :cond_1
    new-instance v10, Lcom/yunpan/appmanage/bean/WpPathBean;

    .line 133
    .line 134
    invoke-virtual {v7}, Lq9/a;->a()Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object v13

    .line 138
    new-instance v14, Ljava/lang/StringBuilder;

    .line 139
    .line 140
    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    .line 141
    .line 142
    .line 143
    iget-object v1, v0, Lcom/yunpan/appmanage/bean/WpPathBean;->path:Ljava/lang/String;

    .line 144
    .line 145
    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    .line 147
    .line 148
    invoke-virtual {v7}, Lq9/a;->a()Ljava/lang/String;

    .line 149
    .line 150
    .line 151
    move-result-object v1

    .line 152
    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    .line 154
    .line 155
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 156
    .line 157
    .line 158
    move-result-object v1

    .line 159
    invoke-direct {v10, v13, v1}, Lcom/yunpan/appmanage/bean/WpPathBean;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    .line 161
    .line 162
    iget-object v1, v10, Lcom/yunpan/appmanage/bean/WpPathBean;->name:Ljava/lang/String;

    .line 163
    .line 164
    if-eqz v1, :cond_0

    .line 165
    .line 166
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    .line 167
    .line 168
    .line 169
    move-result v1

    .line 170
    if-eqz v1, :cond_2

    .line 171
    .line 172
    goto :goto_1

    .line 173
    :cond_2
    sget-object v1, Lcom/yunpan/appmanage/util/v;->a:Lcom/yunpan/appmanage/util/w;

    .line 174
    .line 175
    iget-boolean v1, v1, Lcom/yunpan/appmanage/util/w;->l0:Z

    .line 176
    .line 177
    if-nez v1, :cond_3

    .line 178
    .line 179
    iget-object v1, v10, Lcom/yunpan/appmanage/bean/WpPathBean;->name:Ljava/lang/String;

    .line 180
    .line 181
    const-string v7, "."

    .line 182
    .line 183
    invoke-virtual {v1, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 184
    .line 185
    .line 186
    move-result v1

    .line 187
    if-eqz v1, :cond_3

    .line 188
    .line 189
    goto :goto_1

    .line 190
    :catch_0
    move-exception v0

    .line 191
    goto/16 :goto_3

    .line 192
    .line 193
    :cond_3
    iget-object v1, v12, Lv3/f;->c:Ljava/lang/Object;

    .line 194
    .line 195
    check-cast v1, Ljava/lang/String;

    .line 196
    .line 197
    const-string v7, "httpd/unix-directory"

    .line 198
    .line 199
    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 200
    .line 201
    .line 202
    move-result v1

    .line 203
    iput-boolean v1, v10, Lcom/yunpan/appmanage/bean/WpPathBean;->is_dir:Z

    .line 204
    .line 205
    sget-object v1, Lcom/yunpan/appmanage/util/k;->u0:Ljava/text/DecimalFormat;

    .line 206
    .line 207
    sget-object v1, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 208
    .line 209
    iget-object v1, v1, Lcom/yunpan/appmanage/util/k;->b0:Ljava/text/SimpleDateFormat;

    .line 210
    .line 211
    iget-object v7, v12, Lv3/f;->b:Ljava/lang/Object;

    .line 212
    .line 213
    check-cast v7, Ljava/util/Date;

    .line 214
    .line 215
    invoke-virtual {v1, v7}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 216
    .line 217
    .line 218
    move-result-object v1

    .line 219
    iput-object v1, v10, Lcom/yunpan/appmanage/bean/WpPathBean;->time_txt:Ljava/lang/String;

    .line 220
    .line 221
    iget-boolean v1, v10, Lcom/yunpan/appmanage/bean/WpPathBean;->is_dir:Z

    .line 222
    .line 223
    if-eqz v1, :cond_4

    .line 224
    .line 225
    new-instance v1, Ljava/lang/StringBuilder;

    .line 226
    .line 227
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 228
    .line 229
    .line 230
    iget-object v7, v10, Lcom/yunpan/appmanage/bean/WpPathBean;->path:Ljava/lang/String;

    .line 231
    .line 232
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 233
    .line 234
    .line 235
    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 236
    .line 237
    .line 238
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 239
    .line 240
    .line 241
    move-result-object v1

    .line 242
    iput-object v1, v10, Lcom/yunpan/appmanage/bean/WpPathBean;->path:Ljava/lang/String;

    .line 243
    .line 244
    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 245
    .line 246
    .line 247
    goto :goto_1

    .line 248
    :cond_4
    iget-object v1, v12, Lv3/f;->d:Ljava/lang/Object;

    .line 249
    .line 250
    check-cast v1, Ljava/lang/Long;

    .line 251
    .line 252
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    .line 253
    .line 254
    .line 255
    move-result-wide v12

    .line 256
    iput-wide v12, v10, Lcom/yunpan/appmanage/bean/WpPathBean;->size_long:J

    .line 257
    .line 258
    long-to-double v12, v12

    .line 259
    invoke-static {v12, v13}, Lif/a;->D0(D)Ljava/lang/String;

    .line 260
    .line 261
    .line 262
    move-result-object v1

    .line 263
    iput-object v1, v10, Lcom/yunpan/appmanage/bean/WpPathBean;->size_txt:Ljava/lang/String;

    .line 264
    .line 265
    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 266
    .line 267
    .line 268
    goto/16 :goto_1

    .line 269
    .line 270
    :goto_2
    add-int/2addr v15, v1

    .line 271
    move-object/from16 v1, p0

    .line 272
    .line 273
    goto/16 :goto_0

    .line 274
    .line 275
    :cond_5
    new-instance v0, Lqa/e;

    .line 276
    .line 277
    const/4 v1, 0x1

    .line 278
    invoke-direct {v0, v1}, Lqa/e;-><init>(I)V

    .line 279
    .line 280
    .line 281
    invoke-static {v5, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 282
    .line 283
    .line 284
    new-instance v0, Lqa/e;

    .line 285
    .line 286
    const/4 v1, 0x2

    .line 287
    invoke-direct {v0, v1}, Lqa/e;-><init>(I)V

    .line 288
    .line 289
    .line 290
    invoke-static {v6, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 291
    .line 292
    .line 293
    new-instance v0, Ljava/util/ArrayList;

    .line 294
    .line 295
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 296
    .line 297
    .line 298
    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    .line 299
    .line 300
    .line 301
    move-result v1

    .line 302
    if-nez v1, :cond_6

    .line 303
    .line 304
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 305
    .line 306
    .line 307
    :cond_6
    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    .line 308
    .line 309
    .line 310
    move-result v1

    .line 311
    if-nez v1, :cond_7

    .line 312
    .line 313
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 314
    .line 315
    .line 316
    :cond_7
    invoke-virtual {v2, v0}, Lmc/b;->f(Ljava/lang/Object;)V

    .line 317
    .line 318
    .line 319
    invoke-virtual/range {p1 .. p1}, Lmc/b;->b()V

    .line 320
    .line 321
    .line 322
    goto :goto_5

    .line 323
    :goto_3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 324
    .line 325
    invoke-direct {v1, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 326
    .line 327
    .line 328
    invoke-static {v0, v1}, Lg/b;->z(Ljava/lang/Exception;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 329
    .line 330
    .line 331
    move-result-object v0

    .line 332
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 333
    .line 334
    .line 335
    move-result v1

    .line 336
    if-eqz v1, :cond_8

    .line 337
    .line 338
    goto :goto_4

    .line 339
    :cond_8
    move-object v8, v0

    .line 340
    :goto_4
    invoke-static {v8, v2}, Landroid/support/v4/media/session/a;->B(Ljava/lang/String;Lmc/b;)V

    .line 341
    .line 342
    .line 343
    :goto_5
    return-void

    .line 344
    :pswitch_0
    invoke-direct/range {p0 .. p1}, Lba/b;->e(Lmc/b;)V

    .line 345
    .line 346
    .line 347
    return-void

    .line 348
    :pswitch_1
    invoke-direct/range {p0 .. p1}, Lba/b;->d(Lmc/b;)V

    .line 349
    .line 350
    .line 351
    return-void

    .line 352
    :pswitch_2
    invoke-direct/range {p0 .. p1}, Lba/b;->c(Lmc/b;)V

    .line 353
    .line 354
    .line 355
    return-void

    .line 356
    :pswitch_3
    iget-object v1, v15, Lx9/n5;->x:Ldh/e;

    .line 357
    .line 358
    const-string v3, "\u8fde\u63a5\u4e2d\u65ad,\u8bf7\u91cd\u65b0\u9009\u4e2d\u7f51\u76d8"

    .line 359
    .line 360
    if-eqz v1, :cond_e

    .line 361
    .line 362
    invoke-virtual {v1}, Lch/d;->f()Z

    .line 363
    .line 364
    .line 365
    move-result v1

    .line 366
    if-nez v1, :cond_9

    .line 367
    .line 368
    goto :goto_8

    .line 369
    :cond_9
    :try_start_2
    invoke-static {v15, v0}, Lcom/bumptech/glide/c;->X(Lx9/n5;Lcom/yunpan/appmanage/bean/WpPathBean;)Ljava/util/ArrayList;

    .line 370
    .line 371
    .line 372
    move-result-object v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 373
    if-nez v0, :cond_a

    .line 374
    .line 375
    invoke-static {v8, v2}, Landroid/support/v4/media/session/a;->B(Ljava/lang/String;Lmc/b;)V

    .line 376
    .line 377
    .line 378
    goto :goto_9

    .line 379
    :cond_a
    invoke-virtual {v2, v0}, Lmc/b;->f(Ljava/lang/Object;)V

    .line 380
    .line 381
    .line 382
    invoke-virtual/range {p1 .. p1}, Lmc/b;->b()V

    .line 383
    .line 384
    .line 385
    goto :goto_9

    .line 386
    :catch_1
    move-exception v0

    .line 387
    move-object v1, v0

    .line 388
    new-instance v0, Ljava/lang/StringBuilder;

    .line 389
    .line 390
    invoke-direct {v0, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 391
    .line 392
    .line 393
    invoke-static {v1, v0}, Lg/b;->z(Ljava/lang/Exception;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 394
    .line 395
    .line 396
    move-result-object v0

    .line 397
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 398
    .line 399
    .line 400
    move-result v1

    .line 401
    if-eqz v1, :cond_b

    .line 402
    .line 403
    goto :goto_6

    .line 404
    :cond_b
    move-object v8, v0

    .line 405
    :goto_6
    const-string v0, "Connection reset"

    .line 406
    .line 407
    invoke-virtual {v8, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 408
    .line 409
    .line 410
    move-result v0

    .line 411
    if-nez v0, :cond_d

    .line 412
    .line 413
    const-string v0, "Broken pipe"

    .line 414
    .line 415
    invoke-virtual {v8, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 416
    .line 417
    .line 418
    move-result v0

    .line 419
    if-nez v0, :cond_d

    .line 420
    .line 421
    const-string v0, "Connection closed"

    .line 422
    .line 423
    invoke-virtual {v8, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 424
    .line 425
    .line 426
    move-result v0

    .line 427
    if-eqz v0, :cond_c

    .line 428
    .line 429
    goto :goto_7

    .line 430
    :cond_c
    move-object v3, v8

    .line 431
    goto :goto_8

    .line 432
    :cond_d
    :goto_7
    iget-object v0, v15, Lx9/n5;->x:Ldh/e;

    .line 433
    .line 434
    invoke-static {v0}, Lcom/bumptech/glide/c;->l(Ldh/e;)V

    .line 435
    .line 436
    .line 437
    :cond_e
    :goto_8
    invoke-static {v3, v2}, Landroid/support/v4/media/session/a;->B(Ljava/lang/String;Lmc/b;)V

    .line 438
    .line 439
    .line 440
    :goto_9
    return-void

    .line 441
    :pswitch_4
    invoke-direct/range {p0 .. p1}, Lba/b;->b(Lmc/b;)V

    .line 442
    .line 443
    .line 444
    return-void

    .line 445
    :pswitch_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 446
    .line 447
    .line 448
    move-result-wide v8

    .line 449
    invoke-static {v8, v9}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    .line 450
    .line 451
    .line 452
    move-result-object v1

    .line 453
    invoke-static {v1}, Ls1/g;->q(Ljava/lang/String;)Ljava/lang/String;

    .line 454
    .line 455
    .line 456
    move-result-object v1

    .line 457
    new-instance v3, Ljava/lang/StringBuilder;

    .line 458
    .line 459
    const-string v8, "https://api.feejii.com/app/record/file/list?uuid="

    .line 460
    .line 461
    invoke-direct {v3, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 462
    .line 463
    .line 464
    iget-object v8, v15, Lx9/n5;->l:Ljava/lang/String;

    .line 465
    .line 466
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 467
    .line 468
    .line 469
    const-string v8, "&devType=6&devCode="

    .line 470
    .line 471
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 472
    .line 473
    .line 474
    iget-object v8, v15, Lx9/n5;->l:Ljava/lang/String;

    .line 475
    .line 476
    const-string v9, "&devModel=chrome&devVersion=140&appVersion=&timestamp="

    .line 477
    .line 478
    const-string v10, "&appToken="

    .line 479
    .line 480
    invoke-static {v3, v8, v9, v1, v10}, Landroid/support/v4/media/session/a;->C(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 481
    .line 482
    .line 483
    iget-object v1, v15, Lx9/n5;->k:Ljava/lang/String;

    .line 484
    .line 485
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 486
    .line 487
    .line 488
    const-string v1, "&extra=2&offset="

    .line 489
    .line 490
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 491
    .line 492
    .line 493
    iget v1, v0, Lcom/yunpan/appmanage/bean/WpPathBean;->page:I

    .line 494
    .line 495
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 496
    .line 497
    .line 498
    const-string v1, "&limit=110&folderId="

    .line 499
    .line 500
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 501
    .line 502
    .line 503
    iget-object v1, v0, Lcom/yunpan/appmanage/bean/WpPathBean;->path:Ljava/lang/String;

    .line 504
    .line 505
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 506
    .line 507
    .line 508
    const-string v1, "&type=0"

    .line 509
    .line 510
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 511
    .line 512
    .line 513
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 514
    .line 515
    .line 516
    move-result-object v1

    .line 517
    const-string v3, "https://www.feejii.com/"

    .line 518
    .line 519
    invoke-static {v1, v3}, Ls1/g;->E(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 520
    .line 521
    .line 522
    move-result-object v1

    .line 523
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 524
    .line 525
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 526
    .line 527
    .line 528
    invoke-static {v1}, Ld/b;->b0(Ljava/lang/String;)Lz7/p;

    .line 529
    .line 530
    .line 531
    move-result-object v1

    .line 532
    invoke-virtual {v1}, Lz7/p;->g()Lz7/s;

    .line 533
    .line 534
    .line 535
    move-result-object v1

    .line 536
    invoke-virtual {v1, v14}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 537
    .line 538
    .line 539
    move-result-object v3

    .line 540
    invoke-virtual {v3}, Lz7/p;->e()I

    .line 541
    .line 542
    .line 543
    move-result v3

    .line 544
    const/16 v8, 0xc8

    .line 545
    .line 546
    if-eq v3, v8, :cond_12

    .line 547
    .line 548
    invoke-virtual {v1, v13}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 549
    .line 550
    .line 551
    move-result-object v0

    .line 552
    invoke-virtual {v0}, Lz7/p;->i()Ljava/lang/String;

    .line 553
    .line 554
    .line 555
    move-result-object v0

    .line 556
    if-eqz v0, :cond_f

    .line 557
    .line 558
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 559
    .line 560
    .line 561
    move-result v1

    .line 562
    if-eqz v1, :cond_10

    .line 563
    .line 564
    :cond_f
    move-object/from16 v0, v16

    .line 565
    .line 566
    :cond_10
    invoke-virtual {v0, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 567
    .line 568
    .line 569
    move-result v1

    .line 570
    if-eqz v1, :cond_11

    .line 571
    .line 572
    move-object/from16 v11, v17

    .line 573
    .line 574
    goto :goto_a

    .line 575
    :cond_11
    move-object v11, v0

    .line 576
    :goto_a
    invoke-static {v11, v2}, Landroid/support/v4/media/session/a;->B(Ljava/lang/String;Lmc/b;)V

    .line 577
    .line 578
    .line 579
    goto/16 :goto_f

    .line 580
    .line 581
    :cond_12
    new-instance v3, Ljava/util/ArrayList;

    .line 582
    .line 583
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 584
    .line 585
    .line 586
    invoke-virtual {v1, v7}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 587
    .line 588
    .line 589
    move-result-object v7

    .line 590
    invoke-virtual {v7}, Lz7/p;->f()Lz7/o;

    .line 591
    .line 592
    .line 593
    move-result-object v7

    .line 594
    const/4 v8, 0x0

    .line 595
    :goto_b
    iget-object v9, v7, Lz7/o;->a:Ljava/util/ArrayList;

    .line 596
    .line 597
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    .line 598
    .line 599
    .line 600
    move-result v9

    .line 601
    if-ge v8, v9, :cond_15

    .line 602
    .line 603
    new-instance v9, Lcom/yunpan/appmanage/bean/WpPathBean;

    .line 604
    .line 605
    invoke-direct {v9}, Lcom/yunpan/appmanage/bean/WpPathBean;-><init>()V

    .line 606
    .line 607
    .line 608
    invoke-virtual {v7, v8}, Lz7/o;->l(I)Lz7/p;

    .line 609
    .line 610
    .line 611
    move-result-object v10

    .line 612
    invoke-virtual {v10}, Lz7/p;->g()Lz7/s;

    .line 613
    .line 614
    .line 615
    move-result-object v10

    .line 616
    iput-object v10, v9, Lcom/yunpan/appmanage/bean/WpPathBean;->jsonObject:Lz7/s;

    .line 617
    .line 618
    const-string v11, "fileType"

    .line 619
    .line 620
    invoke-virtual {v10, v11}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 621
    .line 622
    .line 623
    move-result-object v10

    .line 624
    invoke-virtual {v10}, Lz7/p;->e()I

    .line 625
    .line 626
    .line 627
    move-result v10

    .line 628
    const/4 v11, 0x2

    .line 629
    if-ne v10, v11, :cond_13

    .line 630
    .line 631
    const/4 v10, 0x1

    .line 632
    goto :goto_c

    .line 633
    :cond_13
    const/4 v10, 0x0

    .line 634
    :goto_c
    iput-boolean v10, v9, Lcom/yunpan/appmanage/bean/WpPathBean;->is_dir:Z

    .line 635
    .line 636
    const-string v11, "updTime"

    .line 637
    .line 638
    if-eqz v10, :cond_14

    .line 639
    .line 640
    iget-object v10, v9, Lcom/yunpan/appmanage/bean/WpPathBean;->jsonObject:Lz7/s;

    .line 641
    .line 642
    const-string v12, "folderName"

    .line 643
    .line 644
    invoke-virtual {v10, v12}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 645
    .line 646
    .line 647
    move-result-object v10

    .line 648
    invoke-virtual {v10}, Lz7/p;->i()Ljava/lang/String;

    .line 649
    .line 650
    .line 651
    move-result-object v10

    .line 652
    iput-object v10, v9, Lcom/yunpan/appmanage/bean/WpPathBean;->name:Ljava/lang/String;

    .line 653
    .line 654
    iget-object v10, v9, Lcom/yunpan/appmanage/bean/WpPathBean;->jsonObject:Lz7/s;

    .line 655
    .line 656
    const-string v12, "folderId"

    .line 657
    .line 658
    invoke-virtual {v10, v12}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 659
    .line 660
    .line 661
    move-result-object v10

    .line 662
    invoke-virtual {v10}, Lz7/p;->i()Ljava/lang/String;

    .line 663
    .line 664
    .line 665
    move-result-object v10

    .line 666
    iput-object v10, v9, Lcom/yunpan/appmanage/bean/WpPathBean;->path:Ljava/lang/String;

    .line 667
    .line 668
    iget-object v10, v9, Lcom/yunpan/appmanage/bean/WpPathBean;->jsonObject:Lz7/s;

    .line 669
    .line 670
    invoke-virtual {v10, v11}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 671
    .line 672
    .line 673
    move-result-object v10

    .line 674
    invoke-virtual {v10}, Lz7/p;->i()Ljava/lang/String;

    .line 675
    .line 676
    .line 677
    move-result-object v10

    .line 678
    iput-object v10, v9, Lcom/yunpan/appmanage/bean/WpPathBean;->time_txt:Ljava/lang/String;

    .line 679
    .line 680
    goto :goto_d

    .line 681
    :cond_14
    iget-object v10, v9, Lcom/yunpan/appmanage/bean/WpPathBean;->jsonObject:Lz7/s;

    .line 682
    .line 683
    invoke-virtual {v10, v6}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 684
    .line 685
    .line 686
    move-result-object v10

    .line 687
    invoke-virtual {v10}, Lz7/p;->i()Ljava/lang/String;

    .line 688
    .line 689
    .line 690
    move-result-object v10

    .line 691
    iput-object v10, v9, Lcom/yunpan/appmanage/bean/WpPathBean;->name:Ljava/lang/String;

    .line 692
    .line 693
    iget-object v10, v9, Lcom/yunpan/appmanage/bean/WpPathBean;->jsonObject:Lz7/s;

    .line 694
    .line 695
    invoke-virtual {v10, v5}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 696
    .line 697
    .line 698
    move-result-object v10

    .line 699
    invoke-virtual {v10}, Lz7/p;->i()Ljava/lang/String;

    .line 700
    .line 701
    .line 702
    move-result-object v10

    .line 703
    iput-object v10, v9, Lcom/yunpan/appmanage/bean/WpPathBean;->path:Ljava/lang/String;

    .line 704
    .line 705
    iget-object v10, v9, Lcom/yunpan/appmanage/bean/WpPathBean;->jsonObject:Lz7/s;

    .line 706
    .line 707
    invoke-virtual {v10, v11}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 708
    .line 709
    .line 710
    move-result-object v10

    .line 711
    invoke-virtual {v10}, Lz7/p;->i()Ljava/lang/String;

    .line 712
    .line 713
    .line 714
    move-result-object v10

    .line 715
    iput-object v10, v9, Lcom/yunpan/appmanage/bean/WpPathBean;->time_txt:Ljava/lang/String;

    .line 716
    .line 717
    iget-object v10, v9, Lcom/yunpan/appmanage/bean/WpPathBean;->jsonObject:Lz7/s;

    .line 718
    .line 719
    invoke-virtual {v10, v4}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 720
    .line 721
    .line 722
    move-result-object v10

    .line 723
    invoke-virtual {v10}, Lz7/p;->h()J

    .line 724
    .line 725
    .line 726
    move-result-wide v10

    .line 727
    iput-wide v10, v9, Lcom/yunpan/appmanage/bean/WpPathBean;->size_long:J

    .line 728
    .line 729
    invoke-static {v10, v11}, Lif/a;->l0(J)Ljava/lang/String;

    .line 730
    .line 731
    .line 732
    move-result-object v10

    .line 733
    iput-object v10, v9, Lcom/yunpan/appmanage/bean/WpPathBean;->size_txt:Ljava/lang/String;

    .line 734
    .line 735
    :goto_d
    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 736
    .line 737
    .line 738
    const/4 v9, 0x1

    .line 739
    add-int/2addr v8, v9

    .line 740
    goto/16 :goto_b

    .line 741
    .line 742
    :cond_15
    const/4 v9, 0x1

    .line 743
    const-string v4, "totalPage"

    .line 744
    .line 745
    invoke-virtual {v1, v4}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 746
    .line 747
    .line 748
    move-result-object v4

    .line 749
    invoke-virtual {v4}, Lz7/p;->e()I

    .line 750
    .line 751
    .line 752
    move-result v4

    .line 753
    const-string v5, "offset"

    .line 754
    .line 755
    invoke-virtual {v1, v5}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 756
    .line 757
    .line 758
    move-result-object v1

    .line 759
    invoke-virtual {v1}, Lz7/p;->e()I

    .line 760
    .line 761
    .line 762
    move-result v1

    .line 763
    if-le v4, v1, :cond_16

    .line 764
    .line 765
    iput-boolean v9, v0, Lcom/yunpan/appmanage/bean/WpPathBean;->hasMoreData:Z

    .line 766
    .line 767
    iget v1, v0, Lcom/yunpan/appmanage/bean/WpPathBean;->page:I

    .line 768
    .line 769
    add-int/2addr v1, v9

    .line 770
    iput v1, v0, Lcom/yunpan/appmanage/bean/WpPathBean;->page:I

    .line 771
    .line 772
    goto :goto_e

    .line 773
    :cond_16
    const/4 v1, 0x0

    .line 774
    iput-boolean v1, v0, Lcom/yunpan/appmanage/bean/WpPathBean;->hasMoreData:Z

    .line 775
    .line 776
    :goto_e
    invoke-virtual {v2, v3}, Lmc/b;->f(Ljava/lang/Object;)V

    .line 777
    .line 778
    .line 779
    invoke-virtual/range {p1 .. p1}, Lmc/b;->b()V

    .line 780
    .line 781
    .line 782
    :goto_f
    return-void

    .line 783
    :pswitch_6
    invoke-direct/range {p0 .. p1}, Lba/b;->a(Lmc/b;)V

    .line 784
    .line 785
    .line 786
    return-void

    .line 787
    :pswitch_7
    invoke-static {v15, v0}, Lqf/c;->D(Lx9/n5;Lcom/yunpan/appmanage/bean/WpPathBean;)Lz7/s;

    .line 788
    .line 789
    .line 790
    move-result-object v1

    .line 791
    if-nez v1, :cond_17

    .line 792
    .line 793
    invoke-static {v3, v2}, Landroid/support/v4/media/session/a;->B(Ljava/lang/String;Lmc/b;)V

    .line 794
    .line 795
    .line 796
    goto/16 :goto_14

    .line 797
    .line 798
    :cond_17
    invoke-virtual {v1, v14}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 799
    .line 800
    .line 801
    move-result-object v3

    .line 802
    invoke-virtual {v3}, Lz7/p;->e()I

    .line 803
    .line 804
    .line 805
    move-result v3

    .line 806
    if-eqz v3, :cond_1b

    .line 807
    .line 808
    const-string v0, "message"

    .line 809
    .line 810
    invoke-virtual {v1, v0}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 811
    .line 812
    .line 813
    move-result-object v0

    .line 814
    invoke-virtual {v0}, Lz7/p;->i()Ljava/lang/String;

    .line 815
    .line 816
    .line 817
    move-result-object v0

    .line 818
    if-eqz v0, :cond_18

    .line 819
    .line 820
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 821
    .line 822
    .line 823
    move-result v1

    .line 824
    if-eqz v1, :cond_19

    .line 825
    .line 826
    :cond_18
    move-object/from16 v0, v16

    .line 827
    .line 828
    :cond_19
    invoke-virtual {v0, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 829
    .line 830
    .line 831
    move-result v1

    .line 832
    if-eqz v1, :cond_1a

    .line 833
    .line 834
    move-object/from16 v11, v17

    .line 835
    .line 836
    goto :goto_10

    .line 837
    :cond_1a
    move-object v11, v0

    .line 838
    :goto_10
    invoke-static {v11, v2}, Landroid/support/v4/media/session/a;->B(Ljava/lang/String;Lmc/b;)V

    .line 839
    .line 840
    .line 841
    goto/16 :goto_14

    .line 842
    .line 843
    :cond_1b
    new-instance v3, Ljava/util/ArrayList;

    .line 844
    .line 845
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 846
    .line 847
    .line 848
    move-object/from16 v8, v20

    .line 849
    .line 850
    invoke-virtual {v1, v8}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 851
    .line 852
    .line 853
    move-result-object v4

    .line 854
    invoke-virtual {v4}, Lz7/p;->g()Lz7/s;

    .line 855
    .line 856
    .line 857
    move-result-object v4

    .line 858
    const-string v5, "InfoList"

    .line 859
    .line 860
    invoke-virtual {v4, v5}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 861
    .line 862
    .line 863
    move-result-object v4

    .line 864
    invoke-virtual {v4}, Lz7/p;->f()Lz7/o;

    .line 865
    .line 866
    .line 867
    move-result-object v4

    .line 868
    const/4 v5, 0x0

    .line 869
    :goto_11
    iget-object v6, v4, Lz7/o;->a:Ljava/util/ArrayList;

    .line 870
    .line 871
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    .line 872
    .line 873
    .line 874
    move-result v6

    .line 875
    if-ge v5, v6, :cond_1f

    .line 876
    .line 877
    new-instance v6, Lcom/yunpan/appmanage/bean/WpPathBean;

    .line 878
    .line 879
    invoke-direct {v6}, Lcom/yunpan/appmanage/bean/WpPathBean;-><init>()V

    .line 880
    .line 881
    .line 882
    invoke-virtual {v4, v5}, Lz7/o;->l(I)Lz7/p;

    .line 883
    .line 884
    .line 885
    move-result-object v7

    .line 886
    invoke-virtual {v7}, Lz7/p;->g()Lz7/s;

    .line 887
    .line 888
    .line 889
    move-result-object v7

    .line 890
    iput-object v7, v6, Lcom/yunpan/appmanage/bean/WpPathBean;->jsonObject:Lz7/s;

    .line 891
    .line 892
    const-string v9, "FileName"

    .line 893
    .line 894
    invoke-virtual {v7, v9}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 895
    .line 896
    .line 897
    move-result-object v7

    .line 898
    invoke-virtual {v7}, Lz7/p;->i()Ljava/lang/String;

    .line 899
    .line 900
    .line 901
    move-result-object v7

    .line 902
    iput-object v7, v6, Lcom/yunpan/appmanage/bean/WpPathBean;->name:Ljava/lang/String;

    .line 903
    .line 904
    new-instance v7, Ljava/lang/StringBuilder;

    .line 905
    .line 906
    invoke-direct {v7, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 907
    .line 908
    .line 909
    iget-object v9, v6, Lcom/yunpan/appmanage/bean/WpPathBean;->jsonObject:Lz7/s;

    .line 910
    .line 911
    const-string v10, "FileId"

    .line 912
    .line 913
    invoke-virtual {v9, v10}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 914
    .line 915
    .line 916
    move-result-object v9

    .line 917
    invoke-virtual {v9}, Lz7/p;->h()J

    .line 918
    .line 919
    .line 920
    move-result-wide v9

    .line 921
    invoke-virtual {v7, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 922
    .line 923
    .line 924
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 925
    .line 926
    .line 927
    move-result-object v7

    .line 928
    iput-object v7, v6, Lcom/yunpan/appmanage/bean/WpPathBean;->path:Ljava/lang/String;

    .line 929
    .line 930
    iget-object v7, v6, Lcom/yunpan/appmanage/bean/WpPathBean;->jsonObject:Lz7/s;

    .line 931
    .line 932
    const-string v9, "Type"

    .line 933
    .line 934
    invoke-virtual {v7, v9}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 935
    .line 936
    .line 937
    move-result-object v7

    .line 938
    invoke-virtual {v7}, Lz7/p;->e()I

    .line 939
    .line 940
    .line 941
    move-result v7

    .line 942
    const/4 v9, 0x1

    .line 943
    if-ne v7, v9, :cond_1c

    .line 944
    .line 945
    const/4 v7, 0x1

    .line 946
    goto :goto_12

    .line 947
    :cond_1c
    const/4 v7, 0x0

    .line 948
    :goto_12
    iput-boolean v7, v6, Lcom/yunpan/appmanage/bean/WpPathBean;->is_dir:Z

    .line 949
    .line 950
    if-nez v7, :cond_1d

    .line 951
    .line 952
    iget-object v7, v6, Lcom/yunpan/appmanage/bean/WpPathBean;->jsonObject:Lz7/s;

    .line 953
    .line 954
    const-string v9, "Size"

    .line 955
    .line 956
    invoke-virtual {v7, v9}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 957
    .line 958
    .line 959
    move-result-object v7

    .line 960
    invoke-virtual {v7}, Lz7/p;->h()J

    .line 961
    .line 962
    .line 963
    move-result-wide v9

    .line 964
    iput-wide v9, v6, Lcom/yunpan/appmanage/bean/WpPathBean;->size_long:J

    .line 965
    .line 966
    long-to-double v9, v9

    .line 967
    invoke-static {v9, v10}, Lif/a;->D0(D)Ljava/lang/String;

    .line 968
    .line 969
    .line 970
    move-result-object v7

    .line 971
    iput-object v7, v6, Lcom/yunpan/appmanage/bean/WpPathBean;->size_txt:Ljava/lang/String;

    .line 972
    .line 973
    :cond_1d
    iget-object v7, v6, Lcom/yunpan/appmanage/bean/WpPathBean;->jsonObject:Lz7/s;

    .line 974
    .line 975
    const-string v9, "CreateAt"

    .line 976
    .line 977
    invoke-virtual {v7, v9}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 978
    .line 979
    .line 980
    move-result-object v7

    .line 981
    invoke-virtual {v7}, Lz7/p;->i()Ljava/lang/String;

    .line 982
    .line 983
    .line 984
    move-result-object v7

    .line 985
    iput-object v7, v6, Lcom/yunpan/appmanage/bean/WpPathBean;->time_txt:Ljava/lang/String;

    .line 986
    .line 987
    const-string v9, "T"

    .line 988
    .line 989
    const-string v10, " "

    .line 990
    .line 991
    invoke-virtual {v7, v9, v10}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 992
    .line 993
    .line 994
    move-result-object v7

    .line 995
    iput-object v7, v6, Lcom/yunpan/appmanage/bean/WpPathBean;->time_txt:Ljava/lang/String;

    .line 996
    .line 997
    const-string v9, "+"

    .line 998
    .line 999
    invoke-virtual {v7, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 1000
    .line 1001
    .line 1002
    move-result v7

    .line 1003
    const/4 v9, -0x1

    .line 1004
    if-eq v7, v9, :cond_1e

    .line 1005
    .line 1006
    iget-object v9, v6, Lcom/yunpan/appmanage/bean/WpPathBean;->time_txt:Ljava/lang/String;

    .line 1007
    .line 1008
    const/4 v10, 0x0

    .line 1009
    invoke-virtual {v9, v10, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 1010
    .line 1011
    .line 1012
    move-result-object v7

    .line 1013
    iput-object v7, v6, Lcom/yunpan/appmanage/bean/WpPathBean;->time_txt:Ljava/lang/String;

    .line 1014
    .line 1015
    :cond_1e
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1016
    .line 1017
    .line 1018
    const/4 v6, 0x1

    .line 1019
    add-int/2addr v5, v6

    .line 1020
    goto/16 :goto_11

    .line 1021
    .line 1022
    :cond_1f
    invoke-virtual {v1, v8}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 1023
    .line 1024
    .line 1025
    move-result-object v4

    .line 1026
    invoke-virtual {v4}, Lz7/p;->g()Lz7/s;

    .line 1027
    .line 1028
    .line 1029
    move-result-object v4

    .line 1030
    const-string v5, "Len"

    .line 1031
    .line 1032
    invoke-virtual {v4, v5}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 1033
    .line 1034
    .line 1035
    move-result-object v4

    .line 1036
    invoke-virtual {v4}, Lz7/p;->e()I

    .line 1037
    .line 1038
    .line 1039
    move-result v4

    .line 1040
    const/16 v5, 0x64

    .line 1041
    .line 1042
    if-ne v4, v5, :cond_21

    .line 1043
    .line 1044
    invoke-virtual {v1, v8}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 1045
    .line 1046
    .line 1047
    move-result-object v1

    .line 1048
    invoke-virtual {v1}, Lz7/p;->g()Lz7/s;

    .line 1049
    .line 1050
    .line 1051
    move-result-object v1

    .line 1052
    const-string v4, "Total"

    .line 1053
    .line 1054
    invoke-virtual {v1, v4}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 1055
    .line 1056
    .line 1057
    move-result-object v1

    .line 1058
    invoke-virtual {v1}, Lz7/p;->e()I

    .line 1059
    .line 1060
    .line 1061
    move-result v1

    .line 1062
    iget v4, v0, Lcom/yunpan/appmanage/bean/WpPathBean;->page:I

    .line 1063
    .line 1064
    mul-int/lit8 v5, v4, 0x64

    .line 1065
    .line 1066
    if-le v1, v5, :cond_20

    .line 1067
    .line 1068
    const/4 v1, 0x1

    .line 1069
    iput-boolean v1, v0, Lcom/yunpan/appmanage/bean/WpPathBean;->hasMoreData:Z

    .line 1070
    .line 1071
    goto :goto_13

    .line 1072
    :cond_20
    const/4 v1, 0x1

    .line 1073
    const/4 v5, 0x0

    .line 1074
    iput-boolean v5, v0, Lcom/yunpan/appmanage/bean/WpPathBean;->hasMoreData:Z

    .line 1075
    .line 1076
    :goto_13
    add-int/2addr v4, v1

    .line 1077
    iput v4, v0, Lcom/yunpan/appmanage/bean/WpPathBean;->page:I

    .line 1078
    .line 1079
    :cond_21
    invoke-virtual {v2, v3}, Lmc/b;->f(Ljava/lang/Object;)V

    .line 1080
    .line 1081
    .line 1082
    invoke-virtual/range {p1 .. p1}, Lmc/b;->b()V

    .line 1083
    .line 1084
    .line 1085
    :goto_14
    return-void

    .line 1086
    :pswitch_8
    const/4 v1, 0x1

    .line 1087
    const-string v3, "\u8bfb\u53d6\u76ee\u5f55\u51fa\u9519"

    .line 1088
    .line 1089
    new-instance v4, Ljava/util/ArrayList;

    .line 1090
    .line 1091
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1092
    .line 1093
    .line 1094
    invoke-static {v15, v0, v1}, Lnh/b;->N(Lx9/n5;Lcom/yunpan/appmanage/bean/WpPathBean;Z)Lz7/s;

    .line 1095
    .line 1096
    .line 1097
    move-result-object v0

    .line 1098
    move-object/from16 v5, v19

    .line 1099
    .line 1100
    :try_start_3
    invoke-virtual {v0, v5}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 1101
    .line 1102
    .line 1103
    move-result-object v5

    .line 1104
    invoke-virtual {v5}, Lz7/p;->e()I

    .line 1105
    .line 1106
    .line 1107
    move-result v5
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4

    .line 1108
    const-string v6, "text"

    .line 1109
    .line 1110
    if-eq v5, v1, :cond_24

    .line 1111
    .line 1112
    const/4 v1, 0x2

    .line 1113
    if-ne v5, v1, :cond_22

    .line 1114
    .line 1115
    goto :goto_16

    .line 1116
    :cond_22
    move-object/from16 v1, v18

    .line 1117
    .line 1118
    :try_start_4
    invoke-virtual {v0, v1}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 1119
    .line 1120
    .line 1121
    move-result-object v1

    .line 1122
    invoke-virtual {v1}, Lz7/p;->i()Ljava/lang/String;

    .line 1123
    .line 1124
    .line 1125
    move-result-object v11
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 1126
    goto :goto_15

    .line 1127
    :catch_2
    :try_start_5
    invoke-virtual {v0, v6}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 1128
    .line 1129
    .line 1130
    move-result-object v0

    .line 1131
    invoke-virtual {v0}, Lz7/p;->i()Ljava/lang/String;

    .line 1132
    .line 1133
    .line 1134
    move-result-object v11
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    .line 1135
    goto :goto_15

    .line 1136
    :catch_3
    nop

    .line 1137
    :goto_15
    if-eqz v11, :cond_26

    .line 1138
    .line 1139
    :try_start_6
    invoke-virtual {v11}, Ljava/lang/String;->isEmpty()Z

    .line 1140
    .line 1141
    .line 1142
    move-result v0

    .line 1143
    if-nez v0, :cond_26

    .line 1144
    .line 1145
    const-string v0, "null"

    .line 1146
    .line 1147
    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1148
    .line 1149
    .line 1150
    move-result v0

    .line 1151
    if-eqz v0, :cond_23

    .line 1152
    .line 1153
    goto :goto_18

    .line 1154
    :cond_23
    move-object v3, v11

    .line 1155
    goto :goto_18

    .line 1156
    :cond_24
    :goto_16
    invoke-virtual {v0, v6}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 1157
    .line 1158
    .line 1159
    move-result-object v0

    .line 1160
    invoke-virtual {v0}, Lz7/p;->f()Lz7/o;

    .line 1161
    .line 1162
    .line 1163
    move-result-object v0

    .line 1164
    const/4 v15, 0x0

    .line 1165
    :goto_17
    iget-object v1, v0, Lz7/o;->a:Ljava/util/ArrayList;

    .line 1166
    .line 1167
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 1168
    .line 1169
    .line 1170
    move-result v1

    .line 1171
    if-ge v15, v1, :cond_25

    .line 1172
    .line 1173
    new-instance v1, Lcom/yunpan/appmanage/bean/WpPathBean;

    .line 1174
    .line 1175
    invoke-direct {v1}, Lcom/yunpan/appmanage/bean/WpPathBean;-><init>()V

    .line 1176
    .line 1177
    .line 1178
    invoke-virtual {v0, v15}, Lz7/o;->l(I)Lz7/p;

    .line 1179
    .line 1180
    .line 1181
    move-result-object v5

    .line 1182
    invoke-virtual {v5}, Lz7/p;->g()Lz7/s;

    .line 1183
    .line 1184
    .line 1185
    move-result-object v5

    .line 1186
    iput-object v5, v1, Lcom/yunpan/appmanage/bean/WpPathBean;->jsonObject:Lz7/s;

    .line 1187
    .line 1188
    const-string v6, "name"

    .line 1189
    .line 1190
    invoke-virtual {v5, v6}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 1191
    .line 1192
    .line 1193
    move-result-object v5

    .line 1194
    invoke-virtual {v5}, Lz7/p;->i()Ljava/lang/String;

    .line 1195
    .line 1196
    .line 1197
    move-result-object v5

    .line 1198
    iput-object v5, v1, Lcom/yunpan/appmanage/bean/WpPathBean;->name:Ljava/lang/String;

    .line 1199
    .line 1200
    iget-object v5, v1, Lcom/yunpan/appmanage/bean/WpPathBean;->jsonObject:Lz7/s;

    .line 1201
    .line 1202
    const-string v6, "fol_id"

    .line 1203
    .line 1204
    invoke-virtual {v5, v6}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 1205
    .line 1206
    .line 1207
    move-result-object v5

    .line 1208
    invoke-virtual {v5}, Lz7/p;->i()Ljava/lang/String;

    .line 1209
    .line 1210
    .line 1211
    move-result-object v5

    .line 1212
    iput-object v5, v1, Lcom/yunpan/appmanage/bean/WpPathBean;->path:Ljava/lang/String;

    .line 1213
    .line 1214
    iget-object v5, v1, Lcom/yunpan/appmanage/bean/WpPathBean;->jsonObject:Lz7/s;

    .line 1215
    .line 1216
    const-string v6, "folder_des"

    .line 1217
    .line 1218
    invoke-virtual {v5, v6}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 1219
    .line 1220
    .line 1221
    move-result-object v5

    .line 1222
    invoke-virtual {v5}, Lz7/p;->i()Ljava/lang/String;

    .line 1223
    .line 1224
    .line 1225
    move-result-object v5

    .line 1226
    iput-object v5, v1, Lcom/yunpan/appmanage/bean/WpPathBean;->time_txt:Ljava/lang/String;

    .line 1227
    .line 1228
    const/4 v5, 0x1

    .line 1229
    iput-boolean v5, v1, Lcom/yunpan/appmanage/bean/WpPathBean;->is_dir:Z

    .line 1230
    .line 1231
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1232
    .line 1233
    .line 1234
    add-int/2addr v15, v5

    .line 1235
    goto :goto_17

    .line 1236
    :cond_25
    invoke-virtual {v2, v4}, Lmc/b;->f(Ljava/lang/Object;)V

    .line 1237
    .line 1238
    .line 1239
    invoke-virtual/range {p1 .. p1}, Lmc/b;->b()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    .line 1240
    .line 1241
    .line 1242
    goto :goto_19

    .line 1243
    :catch_4
    :cond_26
    :goto_18
    invoke-static {v3, v2}, Landroid/support/v4/media/session/a;->B(Ljava/lang/String;Lmc/b;)V

    .line 1244
    .line 1245
    .line 1246
    :goto_19
    return-void

    .line 1247
    :pswitch_9
    :try_start_7
    invoke-static {v15, v0}, Lnh/b;->M(Lx9/n5;Lcom/yunpan/appmanage/bean/WpPathBean;)Ljava/lang/String;

    .line 1248
    .line 1249
    .line 1250
    move-result-object v0

    .line 1251
    invoke-virtual {v2, v0}, Lmc/b;->f(Ljava/lang/Object;)V

    .line 1252
    .line 1253
    .line 1254
    invoke-virtual/range {p1 .. p1}, Lmc/b;->b()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_5

    .line 1255
    .line 1256
    .line 1257
    goto :goto_1a

    .line 1258
    :catch_5
    move-exception v0

    .line 1259
    invoke-virtual {v2, v0}, Lmc/b;->d(Ljava/lang/Throwable;)V

    .line 1260
    .line 1261
    .line 1262
    :goto_1a
    return-void

    .line 1263
    :pswitch_a
    move-object/from16 v1, v18

    .line 1264
    .line 1265
    move-object/from16 v5, v19

    .line 1266
    .line 1267
    iget-object v3, v15, Lx9/n5;->c:Ljava/lang/String;

    .line 1268
    .line 1269
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    .line 1270
    .line 1271
    .line 1272
    move-result v3

    .line 1273
    if-eqz v3, :cond_27

    .line 1274
    .line 1275
    const-string v3, "https://pc.woozooo.com"

    .line 1276
    .line 1277
    iput-object v3, v15, Lx9/n5;->c:Ljava/lang/String;

    .line 1278
    .line 1279
    :cond_27
    new-instance v3, Ljava/lang/StringBuilder;

    .line 1280
    .line 1281
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 1282
    .line 1283
    .line 1284
    iget-object v4, v15, Lx9/n5;->c:Ljava/lang/String;

    .line 1285
    .line 1286
    const-string v6, "/doupload.php"

    .line 1287
    .line 1288
    invoke-static {v4, v6, v3}, Lg/b;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 1289
    .line 1290
    .line 1291
    move-result-object v3

    .line 1292
    new-instance v4, Ljava/lang/StringBuilder;

    .line 1293
    .line 1294
    const-string v6, "task=22&file_id="

    .line 1295
    .line 1296
    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1297
    .line 1298
    .line 1299
    iget-object v6, v0, Lcom/yunpan/appmanage/bean/WpPathBean;->path:Ljava/lang/String;

    .line 1300
    .line 1301
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1302
    .line 1303
    .line 1304
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1305
    .line 1306
    .line 1307
    move-result-object v4

    .line 1308
    iget-boolean v6, v0, Lcom/yunpan/appmanage/bean/WpPathBean;->is_dir:Z

    .line 1309
    .line 1310
    if-eqz v6, :cond_28

    .line 1311
    .line 1312
    new-instance v4, Ljava/lang/StringBuilder;

    .line 1313
    .line 1314
    const-string v6, "task=18&folder_id="

    .line 1315
    .line 1316
    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1317
    .line 1318
    .line 1319
    iget-object v6, v0, Lcom/yunpan/appmanage/bean/WpPathBean;->path:Ljava/lang/String;

    .line 1320
    .line 1321
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1322
    .line 1323
    .line 1324
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1325
    .line 1326
    .line 1327
    move-result-object v4

    .line 1328
    :cond_28
    new-instance v6, Ljava/lang/StringBuilder;

    .line 1329
    .line 1330
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 1331
    .line 1332
    .line 1333
    iget-object v7, v15, Lx9/n5;->c:Ljava/lang/String;

    .line 1334
    .line 1335
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1336
    .line 1337
    .line 1338
    const-string v7, "/mydisk.php?item=files&action=index&u="

    .line 1339
    .line 1340
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1341
    .line 1342
    .line 1343
    iget-object v7, v15, Lx9/n5;->h:Ljava/lang/String;

    .line 1344
    .line 1345
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1346
    .line 1347
    .line 1348
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1349
    .line 1350
    .line 1351
    move-result-object v6

    .line 1352
    iget-object v7, v15, Lx9/n5;->i:Ljava/lang/String;

    .line 1353
    .line 1354
    invoke-static {v7, v3, v4, v6}, Lnh/b;->P(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1355
    .line 1356
    .line 1357
    move-result-object v3

    .line 1358
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    .line 1359
    .line 1360
    .line 1361
    move-result v4

    .line 1362
    const-string v6, "\u8bf7\u6c42\u51fa\u9519"

    .line 1363
    .line 1364
    if-eqz v4, :cond_2a

    .line 1365
    .line 1366
    :cond_29
    invoke-static {v6, v2}, Landroid/support/v4/media/session/a;->B(Ljava/lang/String;Lmc/b;)V

    .line 1367
    .line 1368
    .line 1369
    goto/16 :goto_1d

    .line 1370
    .line 1371
    :cond_2a
    invoke-static {v3}, Ld/b;->b0(Ljava/lang/String;)Lz7/p;

    .line 1372
    .line 1373
    .line 1374
    move-result-object v3

    .line 1375
    invoke-virtual {v3}, Lz7/p;->g()Lz7/s;

    .line 1376
    .line 1377
    .line 1378
    move-result-object v3

    .line 1379
    invoke-virtual {v3, v5}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 1380
    .line 1381
    .line 1382
    move-result-object v4

    .line 1383
    invoke-virtual {v4}, Lz7/p;->e()I

    .line 1384
    .line 1385
    .line 1386
    move-result v4

    .line 1387
    const/4 v5, 0x1

    .line 1388
    if-ne v4, v5, :cond_29

    .line 1389
    .line 1390
    invoke-virtual {v3, v1}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 1391
    .line 1392
    .line 1393
    move-result-object v4

    .line 1394
    invoke-virtual {v4}, Lz7/p;->g()Lz7/s;

    .line 1395
    .line 1396
    .line 1397
    move-result-object v4

    .line 1398
    const-string v5, "pwd"

    .line 1399
    .line 1400
    invoke-virtual {v4, v5}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 1401
    .line 1402
    .line 1403
    move-result-object v4

    .line 1404
    invoke-virtual {v4}, Lz7/p;->i()Ljava/lang/String;

    .line 1405
    .line 1406
    .line 1407
    move-result-object v4

    .line 1408
    iget-boolean v0, v0, Lcom/yunpan/appmanage/bean/WpPathBean;->is_dir:Z

    .line 1409
    .line 1410
    if-eqz v0, :cond_2b

    .line 1411
    .line 1412
    invoke-virtual {v3, v1}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 1413
    .line 1414
    .line 1415
    move-result-object v0

    .line 1416
    invoke-virtual {v0}, Lz7/p;->g()Lz7/s;

    .line 1417
    .line 1418
    .line 1419
    move-result-object v0

    .line 1420
    const-string v1, "new_url"

    .line 1421
    .line 1422
    invoke-virtual {v0, v1}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 1423
    .line 1424
    .line 1425
    move-result-object v0

    .line 1426
    invoke-virtual {v0}, Lz7/p;->i()Ljava/lang/String;

    .line 1427
    .line 1428
    .line 1429
    move-result-object v0

    .line 1430
    goto :goto_1b

    .line 1431
    :cond_2b
    new-instance v0, Ljava/lang/StringBuilder;

    .line 1432
    .line 1433
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1434
    .line 1435
    .line 1436
    invoke-virtual {v3, v1}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 1437
    .line 1438
    .line 1439
    move-result-object v5

    .line 1440
    invoke-virtual {v5}, Lz7/p;->g()Lz7/s;

    .line 1441
    .line 1442
    .line 1443
    move-result-object v5

    .line 1444
    const-string v6, "is_newd"

    .line 1445
    .line 1446
    invoke-virtual {v5, v6}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 1447
    .line 1448
    .line 1449
    move-result-object v5

    .line 1450
    invoke-virtual {v5}, Lz7/p;->i()Ljava/lang/String;

    .line 1451
    .line 1452
    .line 1453
    move-result-object v5

    .line 1454
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1455
    .line 1456
    .line 1457
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1458
    .line 1459
    .line 1460
    invoke-virtual {v3, v1}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 1461
    .line 1462
    .line 1463
    move-result-object v1

    .line 1464
    invoke-virtual {v1}, Lz7/p;->g()Lz7/s;

    .line 1465
    .line 1466
    .line 1467
    move-result-object v1

    .line 1468
    const-string v3, "f_id"

    .line 1469
    .line 1470
    invoke-virtual {v1, v3}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 1471
    .line 1472
    .line 1473
    move-result-object v1

    .line 1474
    invoke-virtual {v1}, Lz7/p;->i()Ljava/lang/String;

    .line 1475
    .line 1476
    .line 1477
    move-result-object v1

    .line 1478
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1479
    .line 1480
    .line 1481
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1482
    .line 1483
    .line 1484
    move-result-object v0

    .line 1485
    :goto_1b
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    .line 1486
    .line 1487
    .line 1488
    move-result v1

    .line 1489
    if-eqz v1, :cond_2c

    .line 1490
    .line 1491
    invoke-virtual {v2, v0}, Lmc/b;->f(Ljava/lang/Object;)V

    .line 1492
    .line 1493
    .line 1494
    goto :goto_1c

    .line 1495
    :cond_2c
    new-instance v1, Ljava/lang/StringBuilder;

    .line 1496
    .line 1497
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1498
    .line 1499
    .line 1500
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1501
    .line 1502
    .line 1503
    const-string v0, "\n\u5206\u4eab\u5bc6\u7801\uff1a"

    .line 1504
    .line 1505
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1506
    .line 1507
    .line 1508
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1509
    .line 1510
    .line 1511
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1512
    .line 1513
    .line 1514
    move-result-object v0

    .line 1515
    invoke-virtual {v2, v0}, Lmc/b;->f(Ljava/lang/Object;)V

    .line 1516
    .line 1517
    .line 1518
    :goto_1c
    invoke-virtual/range {p1 .. p1}, Lmc/b;->b()V

    .line 1519
    .line 1520
    .line 1521
    :goto_1d
    return-void

    .line 1522
    :pswitch_b
    move-object/from16 v1, v18

    .line 1523
    .line 1524
    move-object/from16 v5, v19

    .line 1525
    .line 1526
    const-string v3, "\u5220\u9664\u51fa\u9519"

    .line 1527
    .line 1528
    iget-object v4, v15, Lx9/n5;->c:Ljava/lang/String;

    .line 1529
    .line 1530
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    .line 1531
    .line 1532
    .line 1533
    move-result v4

    .line 1534
    if-eqz v4, :cond_2d

    .line 1535
    .line 1536
    const-string v4, "https://pc.woozooo.com"

    .line 1537
    .line 1538
    iput-object v4, v15, Lx9/n5;->c:Ljava/lang/String;

    .line 1539
    .line 1540
    :cond_2d
    new-instance v4, Ljava/lang/StringBuilder;

    .line 1541
    .line 1542
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 1543
    .line 1544
    .line 1545
    iget-object v6, v15, Lx9/n5;->c:Ljava/lang/String;

    .line 1546
    .line 1547
    const-string v7, "/doupload.php"

    .line 1548
    .line 1549
    invoke-static {v6, v7, v4}, Lg/b;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 1550
    .line 1551
    .line 1552
    move-result-object v4

    .line 1553
    new-instance v6, Ljava/lang/StringBuilder;

    .line 1554
    .line 1555
    const-string v7, "task=6&file_id="

    .line 1556
    .line 1557
    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1558
    .line 1559
    .line 1560
    iget-object v7, v0, Lcom/yunpan/appmanage/bean/WpPathBean;->path:Ljava/lang/String;

    .line 1561
    .line 1562
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1563
    .line 1564
    .line 1565
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1566
    .line 1567
    .line 1568
    move-result-object v6

    .line 1569
    iget-boolean v7, v0, Lcom/yunpan/appmanage/bean/WpPathBean;->is_dir:Z

    .line 1570
    .line 1571
    if-eqz v7, :cond_2e

    .line 1572
    .line 1573
    new-instance v6, Ljava/lang/StringBuilder;

    .line 1574
    .line 1575
    const-string v7, "task=3&folder_id="

    .line 1576
    .line 1577
    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1578
    .line 1579
    .line 1580
    iget-object v7, v0, Lcom/yunpan/appmanage/bean/WpPathBean;->path:Ljava/lang/String;

    .line 1581
    .line 1582
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1583
    .line 1584
    .line 1585
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1586
    .line 1587
    .line 1588
    move-result-object v6

    .line 1589
    :cond_2e
    new-instance v7, Ljava/lang/StringBuilder;

    .line 1590
    .line 1591
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 1592
    .line 1593
    .line 1594
    iget-object v8, v15, Lx9/n5;->c:Ljava/lang/String;

    .line 1595
    .line 1596
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1597
    .line 1598
    .line 1599
    const-string v8, "/mydisk.php?item=files&action=index&u="

    .line 1600
    .line 1601
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1602
    .line 1603
    .line 1604
    iget-object v0, v0, Lcom/yunpan/appmanage/bean/WpPathBean;->path:Ljava/lang/String;

    .line 1605
    .line 1606
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1607
    .line 1608
    .line 1609
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1610
    .line 1611
    .line 1612
    move-result-object v0

    .line 1613
    iget-object v7, v15, Lx9/n5;->i:Ljava/lang/String;

    .line 1614
    .line 1615
    invoke-static {v7, v4, v6, v0}, Lnh/b;->P(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1616
    .line 1617
    .line 1618
    move-result-object v0

    .line 1619
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 1620
    .line 1621
    .line 1622
    move-result v4

    .line 1623
    if-eqz v4, :cond_2f

    .line 1624
    .line 1625
    const-string v11, "\u8bf7\u6c42\u51fa\u9519"

    .line 1626
    .line 1627
    goto :goto_1f

    .line 1628
    :cond_2f
    :try_start_8
    invoke-static {v0}, Ld/b;->b0(Ljava/lang/String;)Lz7/p;

    .line 1629
    .line 1630
    .line 1631
    move-result-object v0

    .line 1632
    invoke-virtual {v0}, Lz7/p;->g()Lz7/s;

    .line 1633
    .line 1634
    .line 1635
    move-result-object v0

    .line 1636
    invoke-virtual {v0, v5}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 1637
    .line 1638
    .line 1639
    move-result-object v4

    .line 1640
    invoke-virtual {v4}, Lz7/p;->e()I

    .line 1641
    .line 1642
    .line 1643
    move-result v4

    .line 1644
    const/4 v5, 0x1

    .line 1645
    if-ne v4, v5, :cond_30

    .line 1646
    .line 1647
    goto :goto_1f

    .line 1648
    :cond_30
    invoke-virtual {v0, v1}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 1649
    .line 1650
    .line 1651
    move-result-object v0

    .line 1652
    invoke-virtual {v0}, Lz7/p;->i()Ljava/lang/String;

    .line 1653
    .line 1654
    .line 1655
    move-result-object v0

    .line 1656
    if-eqz v0, :cond_32

    .line 1657
    .line 1658
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 1659
    .line 1660
    .line 1661
    move-result v1
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_6

    .line 1662
    if-eqz v1, :cond_31

    .line 1663
    .line 1664
    goto :goto_1e

    .line 1665
    :cond_31
    move-object v11, v0

    .line 1666
    goto :goto_1f

    .line 1667
    :catch_6
    nop

    .line 1668
    :cond_32
    :goto_1e
    move-object v11, v3

    .line 1669
    :goto_1f
    invoke-virtual {v11}, Ljava/lang/String;->isEmpty()Z

    .line 1670
    .line 1671
    .line 1672
    move-result v0

    .line 1673
    if-eqz v0, :cond_33

    .line 1674
    .line 1675
    invoke-virtual/range {p1 .. p1}, Lmc/b;->b()V

    .line 1676
    .line 1677
    .line 1678
    goto :goto_20

    .line 1679
    :cond_33
    invoke-static {v11, v2}, Landroid/support/v4/media/session/a;->B(Ljava/lang/String;Lmc/b;)V

    .line 1680
    .line 1681
    .line 1682
    :goto_20
    return-void

    .line 1683
    :pswitch_c
    move-object/from16 v1, v18

    .line 1684
    .line 1685
    move-object/from16 v5, v19

    .line 1686
    .line 1687
    new-instance v4, Ljava/util/ArrayList;

    .line 1688
    .line 1689
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1690
    .line 1691
    .line 1692
    iget v6, v0, Lcom/yunpan/appmanage/bean/WpPathBean;->page:I

    .line 1693
    .line 1694
    const-string v7, "text"

    .line 1695
    .line 1696
    const/4 v8, 0x1

    .line 1697
    if-ne v6, v8, :cond_35

    .line 1698
    .line 1699
    invoke-static {v15, v0, v8}, Lnh/b;->N(Lx9/n5;Lcom/yunpan/appmanage/bean/WpPathBean;Z)Lz7/s;

    .line 1700
    .line 1701
    .line 1702
    move-result-object v6

    .line 1703
    :try_start_9
    invoke-virtual {v6, v5}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 1704
    .line 1705
    .line 1706
    move-result-object v9

    .line 1707
    invoke-virtual {v9}, Lz7/p;->e()I

    .line 1708
    .line 1709
    .line 1710
    move-result v9

    .line 1711
    if-eq v9, v8, :cond_34

    .line 1712
    .line 1713
    const/4 v8, 0x2

    .line 1714
    if-ne v9, v8, :cond_35

    .line 1715
    .line 1716
    :cond_34
    invoke-virtual {v6, v7}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 1717
    .line 1718
    .line 1719
    move-result-object v6

    .line 1720
    invoke-virtual {v6}, Lz7/p;->f()Lz7/o;

    .line 1721
    .line 1722
    .line 1723
    move-result-object v6

    .line 1724
    const/4 v8, 0x0

    .line 1725
    :goto_21
    iget-object v9, v6, Lz7/o;->a:Ljava/util/ArrayList;

    .line 1726
    .line 1727
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    .line 1728
    .line 1729
    .line 1730
    move-result v9

    .line 1731
    if-ge v8, v9, :cond_35

    .line 1732
    .line 1733
    new-instance v9, Lcom/yunpan/appmanage/bean/WpPathBean;

    .line 1734
    .line 1735
    invoke-direct {v9}, Lcom/yunpan/appmanage/bean/WpPathBean;-><init>()V

    .line 1736
    .line 1737
    .line 1738
    invoke-virtual {v6, v8}, Lz7/o;->l(I)Lz7/p;

    .line 1739
    .line 1740
    .line 1741
    move-result-object v10

    .line 1742
    invoke-virtual {v10}, Lz7/p;->g()Lz7/s;

    .line 1743
    .line 1744
    .line 1745
    move-result-object v10

    .line 1746
    iput-object v10, v9, Lcom/yunpan/appmanage/bean/WpPathBean;->jsonObject:Lz7/s;

    .line 1747
    .line 1748
    const-string v12, "name"

    .line 1749
    .line 1750
    invoke-virtual {v10, v12}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 1751
    .line 1752
    .line 1753
    move-result-object v10

    .line 1754
    invoke-virtual {v10}, Lz7/p;->i()Ljava/lang/String;

    .line 1755
    .line 1756
    .line 1757
    move-result-object v10

    .line 1758
    iput-object v10, v9, Lcom/yunpan/appmanage/bean/WpPathBean;->name:Ljava/lang/String;

    .line 1759
    .line 1760
    iget-object v10, v9, Lcom/yunpan/appmanage/bean/WpPathBean;->jsonObject:Lz7/s;

    .line 1761
    .line 1762
    const-string v12, "fol_id"

    .line 1763
    .line 1764
    invoke-virtual {v10, v12}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 1765
    .line 1766
    .line 1767
    move-result-object v10

    .line 1768
    invoke-virtual {v10}, Lz7/p;->i()Ljava/lang/String;

    .line 1769
    .line 1770
    .line 1771
    move-result-object v10

    .line 1772
    iput-object v10, v9, Lcom/yunpan/appmanage/bean/WpPathBean;->path:Ljava/lang/String;

    .line 1773
    .line 1774
    iget-object v10, v9, Lcom/yunpan/appmanage/bean/WpPathBean;->jsonObject:Lz7/s;

    .line 1775
    .line 1776
    const-string v12, "folder_des"

    .line 1777
    .line 1778
    invoke-virtual {v10, v12}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 1779
    .line 1780
    .line 1781
    move-result-object v10

    .line 1782
    invoke-virtual {v10}, Lz7/p;->i()Ljava/lang/String;

    .line 1783
    .line 1784
    .line 1785
    move-result-object v10

    .line 1786
    iput-object v10, v9, Lcom/yunpan/appmanage/bean/WpPathBean;->time_txt:Ljava/lang/String;

    .line 1787
    .line 1788
    const/4 v10, 0x1

    .line 1789
    iput-boolean v10, v9, Lcom/yunpan/appmanage/bean/WpPathBean;->is_dir:Z

    .line 1790
    .line 1791
    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_7

    .line 1792
    .line 1793
    .line 1794
    add-int/2addr v8, v10

    .line 1795
    goto :goto_21

    .line 1796
    :catch_7
    nop

    .line 1797
    :cond_35
    const/4 v6, 0x0

    .line 1798
    invoke-static {v15, v0, v6}, Lnh/b;->N(Lx9/n5;Lcom/yunpan/appmanage/bean/WpPathBean;Z)Lz7/s;

    .line 1799
    .line 1800
    .line 1801
    move-result-object v8

    .line 1802
    if-nez v8, :cond_36

    .line 1803
    .line 1804
    invoke-static {v3, v2}, Landroid/support/v4/media/session/a;->B(Ljava/lang/String;Lmc/b;)V

    .line 1805
    .line 1806
    .line 1807
    goto/16 :goto_25

    .line 1808
    .line 1809
    :cond_36
    invoke-virtual {v8, v5}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 1810
    .line 1811
    .line 1812
    move-result-object v3

    .line 1813
    invoke-virtual {v3}, Lz7/p;->e()I

    .line 1814
    .line 1815
    .line 1816
    move-result v3

    .line 1817
    const/4 v5, 0x1

    .line 1818
    if-ne v3, v5, :cond_39

    .line 1819
    .line 1820
    invoke-virtual {v8, v7}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 1821
    .line 1822
    .line 1823
    move-result-object v1

    .line 1824
    invoke-virtual {v1}, Lz7/p;->f()Lz7/o;

    .line 1825
    .line 1826
    .line 1827
    move-result-object v1

    .line 1828
    const/4 v3, 0x0

    .line 1829
    :goto_22
    iget-object v5, v1, Lz7/o;->a:Ljava/util/ArrayList;

    .line 1830
    .line 1831
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 1832
    .line 1833
    .line 1834
    move-result v6

    .line 1835
    if-ge v3, v6, :cond_37

    .line 1836
    .line 1837
    new-instance v5, Lcom/yunpan/appmanage/bean/WpPathBean;

    .line 1838
    .line 1839
    invoke-direct {v5}, Lcom/yunpan/appmanage/bean/WpPathBean;-><init>()V

    .line 1840
    .line 1841
    .line 1842
    invoke-virtual {v1, v3}, Lz7/o;->l(I)Lz7/p;

    .line 1843
    .line 1844
    .line 1845
    move-result-object v6

    .line 1846
    invoke-virtual {v6}, Lz7/p;->g()Lz7/s;

    .line 1847
    .line 1848
    .line 1849
    move-result-object v6

    .line 1850
    iput-object v6, v5, Lcom/yunpan/appmanage/bean/WpPathBean;->jsonObject:Lz7/s;

    .line 1851
    .line 1852
    const-string v7, "name_all"

    .line 1853
    .line 1854
    invoke-virtual {v6, v7}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 1855
    .line 1856
    .line 1857
    move-result-object v6

    .line 1858
    invoke-virtual {v6}, Lz7/p;->i()Ljava/lang/String;

    .line 1859
    .line 1860
    .line 1861
    move-result-object v6

    .line 1862
    iput-object v6, v5, Lcom/yunpan/appmanage/bean/WpPathBean;->name:Ljava/lang/String;

    .line 1863
    .line 1864
    iget-object v6, v5, Lcom/yunpan/appmanage/bean/WpPathBean;->jsonObject:Lz7/s;

    .line 1865
    .line 1866
    const-string v7, "id"

    .line 1867
    .line 1868
    invoke-virtual {v6, v7}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 1869
    .line 1870
    .line 1871
    move-result-object v6

    .line 1872
    invoke-virtual {v6}, Lz7/p;->i()Ljava/lang/String;

    .line 1873
    .line 1874
    .line 1875
    move-result-object v6

    .line 1876
    iput-object v6, v5, Lcom/yunpan/appmanage/bean/WpPathBean;->path:Ljava/lang/String;

    .line 1877
    .line 1878
    const/4 v6, 0x0

    .line 1879
    iput-boolean v6, v5, Lcom/yunpan/appmanage/bean/WpPathBean;->is_dir:Z

    .line 1880
    .line 1881
    iget-object v6, v5, Lcom/yunpan/appmanage/bean/WpPathBean;->jsonObject:Lz7/s;

    .line 1882
    .line 1883
    const-string v7, "size"

    .line 1884
    .line 1885
    invoke-virtual {v6, v7}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 1886
    .line 1887
    .line 1888
    move-result-object v6

    .line 1889
    invoke-virtual {v6}, Lz7/p;->i()Ljava/lang/String;

    .line 1890
    .line 1891
    .line 1892
    move-result-object v6

    .line 1893
    iput-object v6, v5, Lcom/yunpan/appmanage/bean/WpPathBean;->size_txt:Ljava/lang/String;

    .line 1894
    .line 1895
    iget-object v6, v5, Lcom/yunpan/appmanage/bean/WpPathBean;->jsonObject:Lz7/s;

    .line 1896
    .line 1897
    const-string v7, "time"

    .line 1898
    .line 1899
    invoke-virtual {v6, v7}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 1900
    .line 1901
    .line 1902
    move-result-object v6

    .line 1903
    invoke-virtual {v6}, Lz7/p;->i()Ljava/lang/String;

    .line 1904
    .line 1905
    .line 1906
    move-result-object v6

    .line 1907
    iput-object v6, v5, Lcom/yunpan/appmanage/bean/WpPathBean;->time_txt:Ljava/lang/String;

    .line 1908
    .line 1909
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1910
    .line 1911
    .line 1912
    const/4 v6, 0x1

    .line 1913
    add-int/2addr v3, v6

    .line 1914
    goto :goto_22

    .line 1915
    :cond_37
    const/4 v6, 0x1

    .line 1916
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 1917
    .line 1918
    .line 1919
    move-result v1

    .line 1920
    const/16 v3, 0xf

    .line 1921
    .line 1922
    if-ge v1, v3, :cond_38

    .line 1923
    .line 1924
    const/4 v1, 0x0

    .line 1925
    iput-boolean v1, v0, Lcom/yunpan/appmanage/bean/WpPathBean;->hasMoreData:Z

    .line 1926
    .line 1927
    goto :goto_23

    .line 1928
    :cond_38
    iput-boolean v6, v0, Lcom/yunpan/appmanage/bean/WpPathBean;->hasMoreData:Z

    .line 1929
    .line 1930
    :goto_23
    iget v1, v0, Lcom/yunpan/appmanage/bean/WpPathBean;->page:I

    .line 1931
    .line 1932
    add-int/2addr v1, v6

    .line 1933
    iput v1, v0, Lcom/yunpan/appmanage/bean/WpPathBean;->page:I

    .line 1934
    .line 1935
    invoke-virtual {v2, v4}, Lmc/b;->f(Ljava/lang/Object;)V

    .line 1936
    .line 1937
    .line 1938
    invoke-virtual/range {p1 .. p1}, Lmc/b;->b()V

    .line 1939
    .line 1940
    .line 1941
    goto :goto_25

    .line 1942
    :cond_39
    :try_start_a
    invoke-virtual {v8, v1}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 1943
    .line 1944
    .line 1945
    move-result-object v0

    .line 1946
    invoke-virtual {v0}, Lz7/p;->i()Ljava/lang/String;

    .line 1947
    .line 1948
    .line 1949
    move-result-object v11
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_8

    .line 1950
    goto :goto_24

    .line 1951
    :catch_8
    :try_start_b
    invoke-virtual {v8, v7}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 1952
    .line 1953
    .line 1954
    move-result-object v0

    .line 1955
    invoke-virtual {v0}, Lz7/p;->i()Ljava/lang/String;

    .line 1956
    .line 1957
    .line 1958
    move-result-object v11
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_9

    .line 1959
    goto :goto_24

    .line 1960
    :catch_9
    nop

    .line 1961
    :goto_24
    if-eqz v11, :cond_3a

    .line 1962
    .line 1963
    invoke-virtual {v11}, Ljava/lang/String;->isEmpty()Z

    .line 1964
    .line 1965
    .line 1966
    move-result v0

    .line 1967
    if-nez v0, :cond_3a

    .line 1968
    .line 1969
    const-string v0, "null"

    .line 1970
    .line 1971
    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1972
    .line 1973
    .line 1974
    move-result v0

    .line 1975
    if-eqz v0, :cond_3b

    .line 1976
    .line 1977
    :cond_3a
    move-object/from16 v11, v16

    .line 1978
    .line 1979
    :cond_3b
    invoke-static {v11, v2}, Landroid/support/v4/media/session/a;->B(Ljava/lang/String;Lmc/b;)V

    .line 1980
    .line 1981
    .line 1982
    :goto_25
    return-void

    .line 1983
    :pswitch_d
    move-object/from16 v8, v20

    .line 1984
    .line 1985
    :try_start_c
    new-instance v1, Lz7/s;

    .line 1986
    .line 1987
    invoke-direct {v1}, Lz7/s;-><init>()V

    .line 1988
    .line 1989
    .line 1990
    new-instance v3, Lz7/o;

    .line 1991
    .line 1992
    invoke-direct {v3}, Lz7/o;-><init>()V

    .line 1993
    .line 1994
    .line 1995
    iget-object v4, v0, Lcom/yunpan/appmanage/bean/WpPathBean;->path:Ljava/lang/String;

    .line 1996
    .line 1997
    invoke-virtual {v3, v4}, Lz7/o;->j(Ljava/lang/String;)V

    .line 1998
    .line 1999
    .line 2000
    const-string v4, "fileIds"

    .line 2001
    .line 2002
    invoke-virtual {v1, v4, v3}, Lz7/s;->j(Ljava/lang/String;Lz7/p;)V

    .line 2003
    .line 2004
    .line 2005
    const-string v3, "title"

    .line 2006
    .line 2007
    iget-object v0, v0, Lcom/yunpan/appmanage/bean/WpPathBean;->name:Ljava/lang/String;

    .line 2008
    .line 2009
    invoke-virtual {v1, v3, v0}, Lz7/s;->m(Ljava/lang/String;Ljava/lang/String;)V

    .line 2010
    .line 2011
    .line 2012
    const-string v0, "validateDuration"

    .line 2013
    .line 2014
    const/4 v3, 0x0

    .line 2015
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 2016
    .line 2017
    .line 2018
    move-result-object v4

    .line 2019
    invoke-virtual {v1, v0, v4}, Lz7/s;->l(Ljava/lang/String;Ljava/lang/Number;)V

    .line 2020
    .line 2021
    .line 2022
    const-string v0, "shareType"

    .line 2023
    .line 2024
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 2025
    .line 2026
    .line 2027
    move-result-object v4

    .line 2028
    invoke-virtual {v1, v0, v4}, Lz7/s;->l(Ljava/lang/String;Ljava/lang/Number;)V

    .line 2029
    .line 2030
    .line 2031
    invoke-virtual {v1, v14, v11}, Lz7/s;->m(Ljava/lang/String;Ljava/lang/String;)V

    .line 2032
    .line 2033
    .line 2034
    const-string v0, "autoFillCode"

    .line 2035
    .line 2036
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 2037
    .line 2038
    invoke-virtual {v1, v0, v3}, Lz7/s;->k(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 2039
    .line 2040
    .line 2041
    const-string v0, "trafficLimit"

    .line 2042
    .line 2043
    const-string v3, "0"

    .line 2044
    .line 2045
    invoke-virtual {v1, v0, v3}, Lz7/s;->m(Ljava/lang/String;Ljava/lang/String;)V

    .line 2046
    .line 2047
    .line 2048
    const-string v0, "maxRestoreCount"

    .line 2049
    .line 2050
    const/4 v3, 0x0

    .line 2051
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 2052
    .line 2053
    .line 2054
    move-result-object v3

    .line 2055
    invoke-virtual {v1, v0, v3}, Lz7/s;->l(Ljava/lang/String;Ljava/lang/Number;)V

    .line 2056
    .line 2057
    .line 2058
    const-string v0, "downloadType"

    .line 2059
    .line 2060
    const/4 v3, 0x1

    .line 2061
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 2062
    .line 2063
    .line 2064
    move-result-object v3

    .line 2065
    invoke-virtual {v1, v0, v3}, Lz7/s;->l(Ljava/lang/String;Ljava/lang/Number;)V

    .line 2066
    .line 2067
    .line 2068
    const-string v0, "https://api.guangyapan.com/userres/v1/share_file"

    .line 2069
    .line 2070
    invoke-virtual {v1}, Lz7/p;->toString()Ljava/lang/String;

    .line 2071
    .line 2072
    .line 2073
    move-result-object v1

    .line 2074
    invoke-static {v15, v0, v1}, Ls1/g;->H(Lx9/n5;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 2075
    .line 2076
    .line 2077
    move-result-object v0

    .line 2078
    invoke-static {v0}, Ld/b;->b0(Ljava/lang/String;)Lz7/p;

    .line 2079
    .line 2080
    .line 2081
    move-result-object v0

    .line 2082
    invoke-virtual {v0}, Lz7/p;->g()Lz7/s;

    .line 2083
    .line 2084
    .line 2085
    move-result-object v0

    .line 2086
    invoke-virtual {v0, v13}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 2087
    .line 2088
    .line 2089
    move-result-object v1

    .line 2090
    invoke-virtual {v1}, Lz7/p;->i()Ljava/lang/String;

    .line 2091
    .line 2092
    .line 2093
    move-result-object v1

    .line 2094
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 2095
    .line 2096
    .line 2097
    move-result-object v1

    .line 2098
    const-string v3, "success"

    .line 2099
    .line 2100
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 2101
    .line 2102
    .line 2103
    move-result v1

    .line 2104
    if-eqz v1, :cond_3c

    .line 2105
    .line 2106
    invoke-virtual {v0, v8}, Lz7/s;->q(Ljava/lang/String;)Lz7/s;

    .line 2107
    .line 2108
    .line 2109
    move-result-object v0

    .line 2110
    const-string v1, "shareUrl"

    .line 2111
    .line 2112
    invoke-virtual {v0, v1}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 2113
    .line 2114
    .line 2115
    move-result-object v0

    .line 2116
    invoke-virtual {v0}, Lz7/p;->i()Ljava/lang/String;

    .line 2117
    .line 2118
    .line 2119
    move-result-object v0

    .line 2120
    invoke-virtual {v2, v0}, Lmc/b;->f(Ljava/lang/Object;)V

    .line 2121
    .line 2122
    .line 2123
    invoke-virtual/range {p1 .. p1}, Lmc/b;->b()V

    .line 2124
    .line 2125
    .line 2126
    goto :goto_27

    .line 2127
    :catch_a
    move-exception v0

    .line 2128
    goto :goto_26

    .line 2129
    :cond_3c
    new-instance v1, Ljava/lang/Exception;

    .line 2130
    .line 2131
    invoke-virtual {v0, v13}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 2132
    .line 2133
    .line 2134
    move-result-object v0

    .line 2135
    invoke-virtual {v0}, Lz7/p;->i()Ljava/lang/String;

    .line 2136
    .line 2137
    .line 2138
    move-result-object v0

    .line 2139
    invoke-direct {v1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 2140
    .line 2141
    .line 2142
    throw v1
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_a

    .line 2143
    :goto_26
    invoke-virtual {v2, v0}, Lmc/b;->d(Ljava/lang/Throwable;)V

    .line 2144
    .line 2145
    .line 2146
    :goto_27
    return-void

    .line 2147
    :pswitch_e
    move-object/from16 v8, v20

    .line 2148
    .line 2149
    new-instance v1, Ljava/lang/StringBuilder;

    .line 2150
    .line 2151
    const-string v3, "{\"pageSize\":50,\"orderBy\":3,\"sortType\":1,\"parentId\":\""

    .line 2152
    .line 2153
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2154
    .line 2155
    .line 2156
    iget-object v3, v0, Lcom/yunpan/appmanage/bean/WpPathBean;->path:Ljava/lang/String;

    .line 2157
    .line 2158
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2159
    .line 2160
    .line 2161
    const-string v3, "\",\"page\":"

    .line 2162
    .line 2163
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2164
    .line 2165
    .line 2166
    iget v3, v0, Lcom/yunpan/appmanage/bean/WpPathBean;->page:I

    .line 2167
    .line 2168
    const/4 v9, 0x1

    .line 2169
    sub-int/2addr v3, v9

    .line 2170
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2171
    .line 2172
    .line 2173
    const-string v3, "}"

    .line 2174
    .line 2175
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2176
    .line 2177
    .line 2178
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2179
    .line 2180
    .line 2181
    move-result-object v1

    .line 2182
    const-string v3, "https://api.guangyapan.com/userres/v1/file/get_file_list"

    .line 2183
    .line 2184
    invoke-static {v15, v3, v1}, Ls1/g;->H(Lx9/n5;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 2185
    .line 2186
    .line 2187
    move-result-object v1

    .line 2188
    invoke-static {v1}, Ld/b;->b0(Ljava/lang/String;)Lz7/p;

    .line 2189
    .line 2190
    .line 2191
    move-result-object v1

    .line 2192
    invoke-virtual {v1}, Lz7/p;->g()Lz7/s;

    .line 2193
    .line 2194
    .line 2195
    move-result-object v1

    .line 2196
    invoke-virtual {v1, v13}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 2197
    .line 2198
    .line 2199
    move-result-object v3

    .line 2200
    invoke-virtual {v3}, Lz7/p;->i()Ljava/lang/String;

    .line 2201
    .line 2202
    .line 2203
    move-result-object v3

    .line 2204
    const-string v9, "success"

    .line 2205
    .line 2206
    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 2207
    .line 2208
    .line 2209
    move-result v3

    .line 2210
    if-nez v3, :cond_40

    .line 2211
    .line 2212
    invoke-virtual {v1, v13}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 2213
    .line 2214
    .line 2215
    move-result-object v0

    .line 2216
    invoke-virtual {v0}, Lz7/p;->i()Ljava/lang/String;

    .line 2217
    .line 2218
    .line 2219
    move-result-object v0

    .line 2220
    if-eqz v0, :cond_3d

    .line 2221
    .line 2222
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 2223
    .line 2224
    .line 2225
    move-result v1

    .line 2226
    if-eqz v1, :cond_3e

    .line 2227
    .line 2228
    :cond_3d
    move-object/from16 v0, v16

    .line 2229
    .line 2230
    :cond_3e
    invoke-virtual {v0, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 2231
    .line 2232
    .line 2233
    move-result v1

    .line 2234
    if-eqz v1, :cond_3f

    .line 2235
    .line 2236
    move-object/from16 v11, v17

    .line 2237
    .line 2238
    goto :goto_28

    .line 2239
    :cond_3f
    move-object v11, v0

    .line 2240
    :goto_28
    invoke-static {v11, v2}, Landroid/support/v4/media/session/a;->B(Ljava/lang/String;Lmc/b;)V

    .line 2241
    .line 2242
    .line 2243
    goto/16 :goto_2c

    .line 2244
    .line 2245
    :cond_40
    new-instance v3, Ljava/util/ArrayList;

    .line 2246
    .line 2247
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 2248
    .line 2249
    .line 2250
    invoke-virtual {v1, v8}, Lz7/s;->q(Ljava/lang/String;)Lz7/s;

    .line 2251
    .line 2252
    .line 2253
    move-result-object v1

    .line 2254
    iget-object v8, v1, Lz7/s;->a:Lb8/n;

    .line 2255
    .line 2256
    invoke-virtual {v8, v7}, Lb8/n;->containsKey(Ljava/lang/Object;)Z

    .line 2257
    .line 2258
    .line 2259
    move-result v8

    .line 2260
    if-nez v8, :cond_41

    .line 2261
    .line 2262
    const/4 v8, 0x0

    .line 2263
    iput-boolean v8, v0, Lcom/yunpan/appmanage/bean/WpPathBean;->hasMoreData:Z

    .line 2264
    .line 2265
    invoke-virtual {v2, v3}, Lmc/b;->f(Ljava/lang/Object;)V

    .line 2266
    .line 2267
    .line 2268
    invoke-virtual/range {p1 .. p1}, Lmc/b;->b()V

    .line 2269
    .line 2270
    .line 2271
    goto/16 :goto_2c

    .line 2272
    .line 2273
    :cond_41
    invoke-virtual {v1, v7}, Lz7/s;->p(Ljava/lang/String;)Lz7/o;

    .line 2274
    .line 2275
    .line 2276
    move-result-object v7

    .line 2277
    const/4 v8, 0x0

    .line 2278
    :goto_29
    iget-object v9, v7, Lz7/o;->a:Ljava/util/ArrayList;

    .line 2279
    .line 2280
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    .line 2281
    .line 2282
    .line 2283
    move-result v9

    .line 2284
    if-ge v8, v9, :cond_43

    .line 2285
    .line 2286
    new-instance v9, Lcom/yunpan/appmanage/bean/WpPathBean;

    .line 2287
    .line 2288
    invoke-direct {v9}, Lcom/yunpan/appmanage/bean/WpPathBean;-><init>()V

    .line 2289
    .line 2290
    .line 2291
    invoke-virtual {v7, v8}, Lz7/o;->l(I)Lz7/p;

    .line 2292
    .line 2293
    .line 2294
    move-result-object v10

    .line 2295
    invoke-virtual {v10}, Lz7/p;->g()Lz7/s;

    .line 2296
    .line 2297
    .line 2298
    move-result-object v10

    .line 2299
    iput-object v10, v9, Lcom/yunpan/appmanage/bean/WpPathBean;->jsonObject:Lz7/s;

    .line 2300
    .line 2301
    iget-object v10, v10, Lz7/s;->a:Lb8/n;

    .line 2302
    .line 2303
    invoke-virtual {v10, v4}, Lb8/n;->containsKey(Ljava/lang/Object;)Z

    .line 2304
    .line 2305
    .line 2306
    move-result v10

    .line 2307
    const/4 v11, 0x1

    .line 2308
    xor-int/lit8 v12, v10, 0x1

    .line 2309
    .line 2310
    iput-boolean v12, v9, Lcom/yunpan/appmanage/bean/WpPathBean;->is_dir:Z

    .line 2311
    .line 2312
    const-string v11, "utime"

    .line 2313
    .line 2314
    if-nez v10, :cond_42

    .line 2315
    .line 2316
    iget-object v10, v9, Lcom/yunpan/appmanage/bean/WpPathBean;->jsonObject:Lz7/s;

    .line 2317
    .line 2318
    invoke-virtual {v10, v6}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 2319
    .line 2320
    .line 2321
    move-result-object v10

    .line 2322
    invoke-virtual {v10}, Lz7/p;->i()Ljava/lang/String;

    .line 2323
    .line 2324
    .line 2325
    move-result-object v10

    .line 2326
    iput-object v10, v9, Lcom/yunpan/appmanage/bean/WpPathBean;->name:Ljava/lang/String;

    .line 2327
    .line 2328
    iget-object v10, v9, Lcom/yunpan/appmanage/bean/WpPathBean;->jsonObject:Lz7/s;

    .line 2329
    .line 2330
    invoke-virtual {v10, v5}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 2331
    .line 2332
    .line 2333
    move-result-object v10

    .line 2334
    invoke-virtual {v10}, Lz7/p;->i()Ljava/lang/String;

    .line 2335
    .line 2336
    .line 2337
    move-result-object v10

    .line 2338
    iput-object v10, v9, Lcom/yunpan/appmanage/bean/WpPathBean;->path:Ljava/lang/String;

    .line 2339
    .line 2340
    iget-object v10, v9, Lcom/yunpan/appmanage/bean/WpPathBean;->jsonObject:Lz7/s;

    .line 2341
    .line 2342
    invoke-virtual {v10, v11}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 2343
    .line 2344
    .line 2345
    move-result-object v10

    .line 2346
    invoke-virtual {v10}, Lz7/p;->h()J

    .line 2347
    .line 2348
    .line 2349
    move-result-wide v10

    .line 2350
    invoke-static {v10, v11}, Lif/a;->m0(J)Ljava/lang/String;

    .line 2351
    .line 2352
    .line 2353
    move-result-object v10

    .line 2354
    iput-object v10, v9, Lcom/yunpan/appmanage/bean/WpPathBean;->time_txt:Ljava/lang/String;

    .line 2355
    .line 2356
    goto :goto_2a

    .line 2357
    :cond_42
    iget-object v10, v9, Lcom/yunpan/appmanage/bean/WpPathBean;->jsonObject:Lz7/s;

    .line 2358
    .line 2359
    invoke-virtual {v10, v6}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 2360
    .line 2361
    .line 2362
    move-result-object v10

    .line 2363
    invoke-virtual {v10}, Lz7/p;->i()Ljava/lang/String;

    .line 2364
    .line 2365
    .line 2366
    move-result-object v10

    .line 2367
    iput-object v10, v9, Lcom/yunpan/appmanage/bean/WpPathBean;->name:Ljava/lang/String;

    .line 2368
    .line 2369
    iget-object v10, v9, Lcom/yunpan/appmanage/bean/WpPathBean;->jsonObject:Lz7/s;

    .line 2370
    .line 2371
    invoke-virtual {v10, v5}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 2372
    .line 2373
    .line 2374
    move-result-object v10

    .line 2375
    invoke-virtual {v10}, Lz7/p;->i()Ljava/lang/String;

    .line 2376
    .line 2377
    .line 2378
    move-result-object v10

    .line 2379
    iput-object v10, v9, Lcom/yunpan/appmanage/bean/WpPathBean;->path:Ljava/lang/String;

    .line 2380
    .line 2381
    iget-object v10, v9, Lcom/yunpan/appmanage/bean/WpPathBean;->jsonObject:Lz7/s;

    .line 2382
    .line 2383
    invoke-virtual {v10, v11}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 2384
    .line 2385
    .line 2386
    move-result-object v10

    .line 2387
    invoke-virtual {v10}, Lz7/p;->h()J

    .line 2388
    .line 2389
    .line 2390
    move-result-wide v10

    .line 2391
    invoke-static {v10, v11}, Lif/a;->m0(J)Ljava/lang/String;

    .line 2392
    .line 2393
    .line 2394
    move-result-object v10

    .line 2395
    iput-object v10, v9, Lcom/yunpan/appmanage/bean/WpPathBean;->time_txt:Ljava/lang/String;

    .line 2396
    .line 2397
    iget-object v10, v9, Lcom/yunpan/appmanage/bean/WpPathBean;->jsonObject:Lz7/s;

    .line 2398
    .line 2399
    invoke-virtual {v10, v4}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 2400
    .line 2401
    .line 2402
    move-result-object v10

    .line 2403
    invoke-virtual {v10}, Lz7/p;->h()J

    .line 2404
    .line 2405
    .line 2406
    move-result-wide v10

    .line 2407
    iput-wide v10, v9, Lcom/yunpan/appmanage/bean/WpPathBean;->size_long:J

    .line 2408
    .line 2409
    long-to-double v10, v10

    .line 2410
    invoke-static {v10, v11}, Lif/a;->D0(D)Ljava/lang/String;

    .line 2411
    .line 2412
    .line 2413
    move-result-object v10

    .line 2414
    iput-object v10, v9, Lcom/yunpan/appmanage/bean/WpPathBean;->size_txt:Ljava/lang/String;

    .line 2415
    .line 2416
    :goto_2a
    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2417
    .line 2418
    .line 2419
    const/4 v9, 0x1

    .line 2420
    add-int/2addr v8, v9

    .line 2421
    goto/16 :goto_29

    .line 2422
    .line 2423
    :cond_43
    const/4 v9, 0x1

    .line 2424
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 2425
    .line 2426
    .line 2427
    move-result v4

    .line 2428
    const/16 v5, 0x32

    .line 2429
    .line 2430
    if-lt v4, v5, :cond_44

    .line 2431
    .line 2432
    iget v4, v0, Lcom/yunpan/appmanage/bean/WpPathBean;->page:I

    .line 2433
    .line 2434
    mul-int/lit8 v4, v4, 0x32

    .line 2435
    .line 2436
    const-string v5, "total"

    .line 2437
    .line 2438
    invoke-virtual {v1, v5}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 2439
    .line 2440
    .line 2441
    move-result-object v1

    .line 2442
    invoke-virtual {v1}, Lz7/p;->e()I

    .line 2443
    .line 2444
    .line 2445
    move-result v1

    .line 2446
    if-ge v4, v1, :cond_44

    .line 2447
    .line 2448
    iput-boolean v9, v0, Lcom/yunpan/appmanage/bean/WpPathBean;->hasMoreData:Z

    .line 2449
    .line 2450
    iget v1, v0, Lcom/yunpan/appmanage/bean/WpPathBean;->page:I

    .line 2451
    .line 2452
    add-int/2addr v1, v9

    .line 2453
    iput v1, v0, Lcom/yunpan/appmanage/bean/WpPathBean;->page:I

    .line 2454
    .line 2455
    goto :goto_2b

    .line 2456
    :cond_44
    const/4 v1, 0x0

    .line 2457
    iput-boolean v1, v0, Lcom/yunpan/appmanage/bean/WpPathBean;->hasMoreData:Z

    .line 2458
    .line 2459
    :goto_2b
    invoke-virtual {v2, v3}, Lmc/b;->f(Ljava/lang/Object;)V

    .line 2460
    .line 2461
    .line 2462
    invoke-virtual/range {p1 .. p1}, Lmc/b;->b()V

    .line 2463
    .line 2464
    .line 2465
    :goto_2c
    return-void

    .line 2466
    nop

    .line 2467
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
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
.end method
