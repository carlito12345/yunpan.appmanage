.class public final synthetic Lua/e3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lec/d;


# instance fields
.field public final synthetic a:Z

.field public final synthetic b:Z


# direct methods
.method public synthetic constructor <init>(ZZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lua/e3;->a:Z

    iput-boolean p2, p0, Lua/e3;->b:Z

    return-void
.end method


# virtual methods
.method public final g(Lmc/b;)V
    .locals 6

    .line 1
    sget v0, Lcom/yunpan/appmanage/ui/ActivityJiliE01;->F:I

    .line 2
    .line 3
    const-string v0, "/amapauto9/"

    .line 4
    .line 5
    iget-boolean v1, p0, Lua/e3;->a:Z

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    const-string v2, "com.autonavi.amapauto"

    .line 10
    .line 11
    invoke-static {v2}, Landroid/support/v4/media/session/a;->k(Ljava/lang/String;)Lcom/yunpan/appmanage/db/AppBean;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    if-nez v2, :cond_1

    .line 16
    .line 17
    invoke-static {}, Lcom/yunpan/appmanage/db/MyDb;->get()Lcom/yunpan/appmanage/db/MyDb;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    invoke-virtual {v2}, Lcom/yunpan/appmanage/db/MyDb;->getAppDao()Lcom/yunpan/appmanage/db/AppDao;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    const-string v3, "\u9ad8\u5fb7\u5730\u56fe"

    .line 26
    .line 27
    invoke-interface {v2, v3}, Lcom/yunpan/appmanage/db/AppDao;->get_appBean_name(Ljava/lang/String;)Lcom/yunpan/appmanage/db/AppBean;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    goto :goto_0

    .line 32
    :cond_0
    const-string v2, "cn.kuwo.kwmusiccar"

    .line 33
    .line 34
    invoke-static {v2}, Landroid/support/v4/media/session/a;->k(Ljava/lang/String;)Lcom/yunpan/appmanage/db/AppBean;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    if-nez v2, :cond_1

    .line 39
    .line 40
    invoke-static {}, Lcom/yunpan/appmanage/db/MyDb;->get()Lcom/yunpan/appmanage/db/MyDb;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    invoke-virtual {v2}, Lcom/yunpan/appmanage/db/MyDb;->getAppDao()Lcom/yunpan/appmanage/db/AppDao;

    .line 45
    .line 46
    .line 47
    move-result-object v2

    .line 48
    const-string v3, "\u9177\u6211\u97f3\u4e50"

    .line 49
    .line 50
    invoke-interface {v2, v3}, Lcom/yunpan/appmanage/db/AppDao;->get_appBean_name(Ljava/lang/String;)Lcom/yunpan/appmanage/db/AppBean;

    .line 51
    .line 52
    .line 53
    move-result-object v2

    .line 54
    :cond_1
    :goto_0
    if-nez v2, :cond_2

    .line 55
    .line 56
    const-string v0, "\u672a\u627e\u5230\u6b64\u5e94\u7528"

    .line 57
    .line 58
    :goto_1
    invoke-static {v0, p1}, Landroid/support/v4/media/session/a;->B(Ljava/lang/String;Lmc/b;)V

    .line 59
    .line 60
    .line 61
    goto/16 :goto_4

    .line 62
    .line 63
    :cond_2
    iget-boolean v3, v2, Lcom/yunpan/appmanage/db/AppBean;->isSystem:Z

    .line 64
    .line 65
    if-nez v3, :cond_3

    .line 66
    .line 67
    const-string v0, "\u975e\u7cfb\u7edf\u539f\u5e94\u7528\uff0c\u8bf7\u5728\u5e94\u7528\u7ba1\u7406\u4e2d\u5378\u8f7d"

    .line 68
    .line 69
    goto :goto_1

    .line 70
    :cond_3
    sget-object v3, Lfa/b0;->a:La2/w0;

    .line 71
    .line 72
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 73
    .line 74
    .line 75
    invoke-static {v2}, La2/w0;->u(Lcom/yunpan/appmanage/db/AppBean;)V

    .line 76
    .line 77
    .line 78
    iget-boolean v2, p0, Lua/e3;->b:Z

    .line 79
    .line 80
    if-nez v2, :cond_4

    .line 81
    .line 82
    invoke-virtual {p1}, Lmc/b;->b()V

    .line 83
    .line 84
    .line 85
    goto/16 :goto_4

    .line 86
    .line 87
    :cond_4
    sget-object v2, Lfa/g0;->a:Lfa/h0;

    .line 88
    .line 89
    invoke-virtual {v2}, Lfa/h0;->d()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v2

    .line 93
    const-string v3, "rm -rf \'"

    .line 94
    .line 95
    if-eqz v1, :cond_6

    .line 96
    .line 97
    new-instance v1, Ljava/lang/StringBuilder;

    .line 98
    .line 99
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 100
    .line 101
    .line 102
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    const-string v4, "/amapauto9/AutoDeviceAdapter/"

    .line 106
    .line 107
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    .line 109
    .line 110
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object v1

    .line 114
    invoke-static {v1}, Lcom/yunpan/appmanage/util/a0;->g(Ljava/lang/String;)Z

    .line 115
    .line 116
    .line 117
    move-result v1

    .line 118
    const-string v4, "mv "

    .line 119
    .line 120
    if-eqz v1, :cond_5

    .line 121
    .line 122
    new-instance v1, Ljava/lang/StringBuilder;

    .line 123
    .line 124
    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 125
    .line 126
    .line 127
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    .line 129
    .line 130
    const-string v5, "/amapauto9/AutoDeviceAdapter "

    .line 131
    .line 132
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    .line 134
    .line 135
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    .line 137
    .line 138
    const-string v5, "/"

    .line 139
    .line 140
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    .line 142
    .line 143
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 144
    .line 145
    .line 146
    move-result-object v1

    .line 147
    invoke-static {v1}, La2/w0;->h(Ljava/lang/String;)Lfa/a0;

    .line 148
    .line 149
    .line 150
    const/4 v1, 0x1

    .line 151
    goto :goto_2

    .line 152
    :cond_5
    const/4 v1, 0x0

    .line 153
    :goto_2
    new-instance v5, Ljava/lang/StringBuilder;

    .line 154
    .line 155
    invoke-direct {v5, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 156
    .line 157
    .line 158
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    .line 160
    .line 161
    const-string v3, "/amapauto9\'"

    .line 162
    .line 163
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    .line 165
    .line 166
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 167
    .line 168
    .line 169
    move-result-object v3

    .line 170
    invoke-static {v3}, La2/w0;->h(Ljava/lang/String;)Lfa/a0;

    .line 171
    .line 172
    .line 173
    if-eqz v1, :cond_7

    .line 174
    .line 175
    :try_start_0
    new-instance v1, Ljava/io/File;

    .line 176
    .line 177
    new-instance v3, Ljava/lang/StringBuilder;

    .line 178
    .line 179
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 180
    .line 181
    .line 182
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 183
    .line 184
    .line 185
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 186
    .line 187
    .line 188
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 189
    .line 190
    .line 191
    move-result-object v3

    .line 192
    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 193
    .line 194
    .line 195
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 196
    .line 197
    .line 198
    :catch_0
    sget-object v1, Lfa/b0;->a:La2/w0;

    .line 199
    .line 200
    const-string v3, "/AutoDeviceAdapter "

    .line 201
    .line 202
    invoke-static {v4, v2, v3, v2, v0}, Lta/q;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 203
    .line 204
    .line 205
    move-result-object v0

    .line 206
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 207
    .line 208
    .line 209
    invoke-static {v0}, La2/w0;->h(Ljava/lang/String;)Lfa/a0;

    .line 210
    .line 211
    .line 212
    goto :goto_3

    .line 213
    :cond_6
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    .line 214
    .line 215
    .line 216
    move-result v0

    .line 217
    if-nez v0, :cond_7

    .line 218
    .line 219
    new-instance v0, Ljava/lang/StringBuilder;

    .line 220
    .line 221
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 222
    .line 223
    .line 224
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 225
    .line 226
    .line 227
    const-string v1, "/cn_kuwo_kwmusiccas\'"

    .line 228
    .line 229
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 230
    .line 231
    .line 232
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 233
    .line 234
    .line 235
    move-result-object v0

    .line 236
    invoke-static {v0}, La2/w0;->h(Ljava/lang/String;)Lfa/a0;

    .line 237
    .line 238
    .line 239
    new-instance v0, Ljava/lang/StringBuilder;

    .line 240
    .line 241
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 242
    .line 243
    .line 244
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 245
    .line 246
    .line 247
    const-string v1, "/KuwoTingshu\'"

    .line 248
    .line 249
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 250
    .line 251
    .line 252
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 253
    .line 254
    .line 255
    move-result-object v0

    .line 256
    invoke-static {v0}, La2/w0;->h(Ljava/lang/String;)Lfa/a0;

    .line 257
    .line 258
    .line 259
    new-instance v0, Ljava/lang/StringBuilder;

    .line 260
    .line 261
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 262
    .line 263
    .line 264
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 265
    .line 266
    .line 267
    const-string v1, "/kwmusiccar\'"

    .line 268
    .line 269
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 270
    .line 271
    .line 272
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 273
    .line 274
    .line 275
    move-result-object v0

    .line 276
    invoke-static {v0}, La2/w0;->h(Ljava/lang/String;)Lfa/a0;

    .line 277
    .line 278
    .line 279
    :cond_7
    :goto_3
    invoke-virtual {p1}, Lmc/b;->b()V

    .line 280
    .line 281
    .line 282
    :goto_4
    return-void
.end method
