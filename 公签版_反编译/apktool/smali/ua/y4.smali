.class public final synthetic Lua/y4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lc6/e;
.implements Lea/c;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/yunpan/appmanage/ui/ActivityNissanTextGN;


# direct methods
.method public synthetic constructor <init>(Lcom/yunpan/appmanage/ui/ActivityNissanTextGN;I)V
    .locals 0

    .line 1
    iput p2, p0, Lua/y4;->a:I

    iput-object p1, p0, Lua/y4;->b:Lcom/yunpan/appmanage/ui/ActivityNissanTextGN;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public e(I)V
    .locals 3

    .line 1
    const-string v0, "\u6b64\u529f\u80fd\u4e0d\u9002\u5408\u60a8\u7684\u8bbe\u5907"

    .line 2
    .line 3
    iget-object v1, p0, Lua/y4;->b:Lcom/yunpan/appmanage/ui/ActivityNissanTextGN;

    .line 4
    .line 5
    iget v2, p0, Lua/y4;->a:I

    .line 6
    .line 7
    packed-switch v2, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    sget v2, Lcom/yunpan/appmanage/ui/ActivityNissanTextGN;->F:I

    .line 11
    .line 12
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    :try_start_0
    iget-object v1, v1, Lcom/yunpan/appmanage/ui/ActivityNissanTextGN;->E:Lcom/hsae/autosdk/settings/IAutoSettings;

    .line 16
    .line 17
    invoke-interface {v1, p1}, Lcom/hsae/autosdk/settings/IAutoSettings;->setHighpitch(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 18
    .line 19
    .line 20
    goto :goto_0

    .line 21
    :catch_0
    invoke-static {v0}, Lcom/yunpan/appmanage/util/a0;->t(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    :goto_0
    return-void

    .line 25
    :pswitch_0
    sget v2, Lcom/yunpan/appmanage/ui/ActivityNissanTextGN;->F:I

    .line 26
    .line 27
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 28
    .line 29
    .line 30
    :try_start_1
    iget-object v1, v1, Lcom/yunpan/appmanage/ui/ActivityNissanTextGN;->E:Lcom/hsae/autosdk/settings/IAutoSettings;

    .line 31
    .line 32
    invoke-interface {v1, p1}, Lcom/hsae/autosdk/settings/IAutoSettings;->setBtPhoneVolume(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 33
    .line 34
    .line 35
    goto :goto_1

    .line 36
    :catch_1
    invoke-static {v0}, Lcom/yunpan/appmanage/util/a0;->t(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    :goto_1
    return-void

    .line 40
    :pswitch_1
    sget v2, Lcom/yunpan/appmanage/ui/ActivityNissanTextGN;->F:I

    .line 41
    .line 42
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 43
    .line 44
    .line 45
    :try_start_2
    iget-object v1, v1, Lcom/yunpan/appmanage/ui/ActivityNissanTextGN;->E:Lcom/hsae/autosdk/settings/IAutoSettings;

    .line 46
    .line 47
    const/16 v2, 0x9

    .line 48
    .line 49
    invoke-interface {v1, v2, p1}, Lcom/hsae/autosdk/settings/IAutoSettings;->setSystemVolume(II)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 50
    .line 51
    .line 52
    goto :goto_2

    .line 53
    :catch_2
    invoke-static {v0}, Lcom/yunpan/appmanage/util/a0;->t(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    :goto_2
    return-void

    .line 57
    :pswitch_2
    sget v2, Lcom/yunpan/appmanage/ui/ActivityNissanTextGN;->F:I

    .line 58
    .line 59
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 60
    .line 61
    .line 62
    :try_start_3
    iget-object v1, v1, Lcom/yunpan/appmanage/ui/ActivityNissanTextGN;->E:Lcom/hsae/autosdk/settings/IAutoSettings;

    .line 63
    .line 64
    const/4 v2, 0x3

    .line 65
    invoke-interface {v1, v2, p1}, Lcom/hsae/autosdk/settings/IAutoSettings;->setSystemVolume(II)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 66
    .line 67
    .line 68
    goto :goto_3

    .line 69
    :catch_3
    invoke-static {v0}, Lcom/yunpan/appmanage/util/a0;->t(Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    :goto_3
    return-void

    .line 73
    :pswitch_3
    sget v2, Lcom/yunpan/appmanage/ui/ActivityNissanTextGN;->F:I

    .line 74
    .line 75
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 76
    .line 77
    .line 78
    :try_start_4
    iget-object v1, v1, Lcom/yunpan/appmanage/ui/ActivityNissanTextGN;->E:Lcom/hsae/autosdk/settings/IAutoSettings;

    .line 79
    .line 80
    add-int/lit8 p1, p1, -0x5

    .line 81
    .line 82
    invoke-interface {v1, p1}, Lcom/hsae/autosdk/settings/IAutoSettings;->changeHighForTest(I)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    .line 83
    .line 84
    .line 85
    goto :goto_4

    .line 86
    :catch_4
    invoke-static {v0}, Lcom/yunpan/appmanage/util/a0;->t(Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    :goto_4
    return-void

    .line 90
    :pswitch_4
    sget v2, Lcom/yunpan/appmanage/ui/ActivityNissanTextGN;->F:I

    .line 91
    .line 92
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 93
    .line 94
    .line 95
    :try_start_5
    iget-object v1, v1, Lcom/yunpan/appmanage/ui/ActivityNissanTextGN;->E:Lcom/hsae/autosdk/settings/IAutoSettings;

    .line 96
    .line 97
    add-int/lit8 p1, p1, -0x5

    .line 98
    .line 99
    invoke-interface {v1, p1}, Lcom/hsae/autosdk/settings/IAutoSettings;->changeBossForTest(I)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    .line 100
    .line 101
    .line 102
    goto :goto_5

    .line 103
    :catch_5
    invoke-static {v0}, Lcom/yunpan/appmanage/util/a0;->t(Ljava/lang/String;)V

    .line 104
    .line 105
    .line 106
    :goto_5
    return-void

    .line 107
    :pswitch_5
    sget v2, Lcom/yunpan/appmanage/ui/ActivityNissanTextGN;->F:I

    .line 108
    .line 109
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 110
    .line 111
    .line 112
    :try_start_6
    iget-object v1, v1, Lcom/yunpan/appmanage/ui/ActivityNissanTextGN;->E:Lcom/hsae/autosdk/settings/IAutoSettings;

    .line 113
    .line 114
    add-int/lit8 p1, p1, -0x5

    .line 115
    .line 116
    invoke-interface {v1, p1}, Lcom/hsae/autosdk/settings/IAutoSettings;->setHighpitch(I)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_6

    .line 117
    .line 118
    .line 119
    goto :goto_6

    .line 120
    :catch_6
    invoke-static {v0}, Lcom/yunpan/appmanage/util/a0;->t(Ljava/lang/String;)V

    .line 121
    .line 122
    .line 123
    :goto_6
    return-void

    .line 124
    :pswitch_6
    sget v2, Lcom/yunpan/appmanage/ui/ActivityNissanTextGN;->F:I

    .line 125
    .line 126
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 127
    .line 128
    .line 129
    :try_start_7
    iget-object v1, v1, Lcom/yunpan/appmanage/ui/ActivityNissanTextGN;->E:Lcom/hsae/autosdk/settings/IAutoSettings;

    .line 130
    .line 131
    add-int/lit8 p1, p1, -0x5

    .line 132
    .line 133
    invoke-interface {v1, p1}, Lcom/hsae/autosdk/settings/IAutoSettings;->setLowpitch(I)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_7

    .line 134
    .line 135
    .line 136
    goto :goto_7

    .line 137
    :catch_7
    invoke-static {v0}, Lcom/yunpan/appmanage/util/a0;->t(Ljava/lang/String;)V

    .line 138
    .line 139
    .line 140
    :goto_7
    return-void

    .line 141
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public x(Lc6/g;Landroid/view/View;I)V
    .locals 19

    .line 1
    move/from16 v0, p3

    .line 2
    .line 3
    const/16 v1, 0x8

    .line 4
    .line 5
    const/4 v2, 0x7

    .line 6
    const/4 v3, 0x6

    .line 7
    const/4 v4, 0x5

    .line 8
    const/4 v5, 0x0

    .line 9
    const/4 v6, 0x4

    .line 10
    const/4 v7, 0x3

    .line 11
    const/4 v8, 0x2

    .line 12
    const/4 v9, 0x1

    .line 13
    sget v10, Lcom/yunpan/appmanage/ui/ActivityNissanTextGN;->F:I

    .line 14
    .line 15
    move-object/from16 v10, p0

    .line 16
    .line 17
    iget-object v13, v10, Lua/y4;->b:Lcom/yunpan/appmanage/ui/ActivityNissanTextGN;

    .line 18
    .line 19
    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 20
    .line 21
    .line 22
    if-nez v0, :cond_0

    .line 23
    .line 24
    new-instance v0, Lha/h1;

    .line 25
    .line 26
    new-instance v1, Lua/y4;

    .line 27
    .line 28
    invoke-direct {v1, v13, v9}, Lua/y4;-><init>(Lcom/yunpan/appmanage/ui/ActivityNissanTextGN;I)V

    .line 29
    .line 30
    .line 31
    const/16 v15, 0xa

    .line 32
    .line 33
    const/16 v16, 0x5

    .line 34
    .line 35
    const-string v14, "\u4f4e\u97f3\u8c03\u8282"

    .line 36
    .line 37
    const/16 v18, 0x1

    .line 38
    .line 39
    move-object v11, v0

    .line 40
    move-object v12, v13

    .line 41
    move-object/from16 v17, v1

    .line 42
    .line 43
    invoke-direct/range {v11 .. v18}, Lha/h1;-><init>(Landroid/app/Activity;Landroid/content/Context;Ljava/lang/String;IILea/c;I)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0}, Lha/a4;->show()V

    .line 47
    .line 48
    .line 49
    goto/16 :goto_3

    .line 50
    .line 51
    :cond_0
    if-ne v0, v9, :cond_1

    .line 52
    .line 53
    new-instance v0, Lha/h1;

    .line 54
    .line 55
    new-instance v1, Lua/y4;

    .line 56
    .line 57
    invoke-direct {v1, v13, v8}, Lua/y4;-><init>(Lcom/yunpan/appmanage/ui/ActivityNissanTextGN;I)V

    .line 58
    .line 59
    .line 60
    const/16 v15, 0xa

    .line 61
    .line 62
    const/16 v16, 0x5

    .line 63
    .line 64
    const-string v14, "\u9ad8\u97f3\u8c03\u8282"

    .line 65
    .line 66
    const/16 v18, 0x1

    .line 67
    .line 68
    move-object v11, v0

    .line 69
    move-object v12, v13

    .line 70
    move-object/from16 v17, v1

    .line 71
    .line 72
    invoke-direct/range {v11 .. v18}, Lha/h1;-><init>(Landroid/app/Activity;Landroid/content/Context;Ljava/lang/String;IILea/c;I)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {v0}, Lha/a4;->show()V

    .line 76
    .line 77
    .line 78
    goto/16 :goto_3

    .line 79
    .line 80
    :cond_1
    if-ne v0, v8, :cond_2

    .line 81
    .line 82
    new-instance v0, Lha/h1;

    .line 83
    .line 84
    new-instance v1, Lua/y4;

    .line 85
    .line 86
    invoke-direct {v1, v13, v7}, Lua/y4;-><init>(Lcom/yunpan/appmanage/ui/ActivityNissanTextGN;I)V

    .line 87
    .line 88
    .line 89
    const/16 v15, 0xa

    .line 90
    .line 91
    const/16 v16, 0x5

    .line 92
    .line 93
    const-string v14, "\u4f4e\u97f3\u8c03\u8282"

    .line 94
    .line 95
    const/16 v18, 0x1

    .line 96
    .line 97
    move-object v11, v0

    .line 98
    move-object v12, v13

    .line 99
    move-object/from16 v17, v1

    .line 100
    .line 101
    invoke-direct/range {v11 .. v18}, Lha/h1;-><init>(Landroid/app/Activity;Landroid/content/Context;Ljava/lang/String;IILea/c;I)V

    .line 102
    .line 103
    .line 104
    invoke-virtual {v0}, Lha/a4;->show()V

    .line 105
    .line 106
    .line 107
    goto/16 :goto_3

    .line 108
    .line 109
    :cond_2
    if-ne v0, v7, :cond_3

    .line 110
    .line 111
    new-instance v0, Lha/h1;

    .line 112
    .line 113
    new-instance v1, Lua/y4;

    .line 114
    .line 115
    invoke-direct {v1, v13, v6}, Lua/y4;-><init>(Lcom/yunpan/appmanage/ui/ActivityNissanTextGN;I)V

    .line 116
    .line 117
    .line 118
    const/16 v15, 0xa

    .line 119
    .line 120
    const/16 v16, 0x5

    .line 121
    .line 122
    const-string v14, "\u9ad8\u97f3\u8c03\u8282"

    .line 123
    .line 124
    const/16 v18, 0x1

    .line 125
    .line 126
    move-object v11, v0

    .line 127
    move-object v12, v13

    .line 128
    move-object/from16 v17, v1

    .line 129
    .line 130
    invoke-direct/range {v11 .. v18}, Lha/h1;-><init>(Landroid/app/Activity;Landroid/content/Context;Ljava/lang/String;IILea/c;I)V

    .line 131
    .line 132
    .line 133
    invoke-virtual {v0}, Lha/a4;->show()V

    .line 134
    .line 135
    .line 136
    goto/16 :goto_3

    .line 137
    .line 138
    :cond_3
    if-ne v0, v6, :cond_4

    .line 139
    .line 140
    new-instance v0, Lha/z6;

    .line 141
    .line 142
    new-instance v1, Lua/z4;

    .line 143
    .line 144
    invoke-direct {v1, v13, v5}, Lua/z4;-><init>(Lcom/yunpan/appmanage/ui/ActivityNissanTextGN;I)V

    .line 145
    .line 146
    .line 147
    const-string v16, "\u5f00\u542f"

    .line 148
    .line 149
    const-string v17, "\u5173\u95ed"

    .line 150
    .line 151
    const-string v14, "\u97f3\u54cd\u589e\u5f3a"

    .line 152
    .line 153
    const-string v15, ""

    .line 154
    .line 155
    move-object v11, v0

    .line 156
    move-object v12, v13

    .line 157
    move-object/from16 v18, v1

    .line 158
    .line 159
    invoke-direct/range {v11 .. v18}, Lha/z6;-><init>(Landroid/app/Activity;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lha/wd;)V

    .line 160
    .line 161
    .line 162
    invoke-virtual {v0}, Lha/a4;->show()V

    .line 163
    .line 164
    .line 165
    goto/16 :goto_3

    .line 166
    .line 167
    :cond_4
    const/16 v6, 0xa

    .line 168
    .line 169
    if-ne v0, v4, :cond_5

    .line 170
    .line 171
    :try_start_0
    iget-object v0, v13, Lcom/yunpan/appmanage/ui/ActivityNissanTextGN;->E:Lcom/hsae/autosdk/settings/IAutoSettings;

    .line 172
    .line 173
    invoke-interface {v0, v7}, Lcom/hsae/autosdk/settings/IAutoSettings;->getSystemVolume(I)I

    .line 174
    .line 175
    .line 176
    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 177
    move/from16 v16, v0

    .line 178
    .line 179
    goto :goto_0

    .line 180
    :catch_0
    const/16 v16, 0xa

    .line 181
    .line 182
    :goto_0
    new-instance v0, Lha/h1;

    .line 183
    .line 184
    new-instance v1, Lua/y4;

    .line 185
    .line 186
    invoke-direct {v1, v13, v4}, Lua/y4;-><init>(Lcom/yunpan/appmanage/ui/ActivityNissanTextGN;I)V

    .line 187
    .line 188
    .line 189
    const/16 v15, 0x28

    .line 190
    .line 191
    const-string v14, "\u4fee\u6539\u7cfb\u7edf\u97f3\u91cf"

    .line 192
    .line 193
    const/16 v18, 0x1

    .line 194
    .line 195
    move-object v11, v0

    .line 196
    move-object v12, v13

    .line 197
    move-object/from16 v17, v1

    .line 198
    .line 199
    invoke-direct/range {v11 .. v18}, Lha/h1;-><init>(Landroid/app/Activity;Landroid/content/Context;Ljava/lang/String;IILea/c;I)V

    .line 200
    .line 201
    .line 202
    invoke-virtual {v0}, Lha/a4;->show()V

    .line 203
    .line 204
    .line 205
    goto/16 :goto_3

    .line 206
    .line 207
    :cond_5
    const/16 v4, 0x9

    .line 208
    .line 209
    if-ne v0, v3, :cond_6

    .line 210
    .line 211
    :try_start_1
    iget-object v0, v13, Lcom/yunpan/appmanage/ui/ActivityNissanTextGN;->E:Lcom/hsae/autosdk/settings/IAutoSettings;

    .line 212
    .line 213
    invoke-interface {v0, v4}, Lcom/hsae/autosdk/settings/IAutoSettings;->getSystemVolume(I)I

    .line 214
    .line 215
    .line 216
    move-result v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 217
    move/from16 v16, v2

    .line 218
    .line 219
    goto :goto_1

    .line 220
    :catch_1
    const/16 v16, 0x7

    .line 221
    .line 222
    :goto_1
    new-instance v0, Lha/h1;

    .line 223
    .line 224
    new-instance v1, Lua/y4;

    .line 225
    .line 226
    invoke-direct {v1, v13, v3}, Lua/y4;-><init>(Lcom/yunpan/appmanage/ui/ActivityNissanTextGN;I)V

    .line 227
    .line 228
    .line 229
    const/16 v15, 0xc

    .line 230
    .line 231
    const-string v14, "\u4fee\u6539\u5bfc\u822a\u97f3\u91cf"

    .line 232
    .line 233
    const/16 v18, 0x1

    .line 234
    .line 235
    move-object v11, v0

    .line 236
    move-object v12, v13

    .line 237
    move-object/from16 v17, v1

    .line 238
    .line 239
    invoke-direct/range {v11 .. v18}, Lha/h1;-><init>(Landroid/app/Activity;Landroid/content/Context;Ljava/lang/String;IILea/c;I)V

    .line 240
    .line 241
    .line 242
    invoke-virtual {v0}, Lha/a4;->show()V

    .line 243
    .line 244
    .line 245
    goto/16 :goto_3

    .line 246
    .line 247
    :cond_6
    if-ne v0, v2, :cond_7

    .line 248
    .line 249
    :try_start_2
    iget-object v0, v13, Lcom/yunpan/appmanage/ui/ActivityNissanTextGN;->E:Lcom/hsae/autosdk/settings/IAutoSettings;

    .line 250
    .line 251
    invoke-interface {v0}, Lcom/hsae/autosdk/settings/IAutoSettings;->getBtPhoneVolume()I

    .line 252
    .line 253
    .line 254
    move-result v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 255
    move/from16 v16, v0

    .line 256
    .line 257
    goto :goto_2

    .line 258
    :catch_2
    const/16 v16, 0x7

    .line 259
    .line 260
    :goto_2
    new-instance v0, Lha/h1;

    .line 261
    .line 262
    new-instance v1, Lua/y4;

    .line 263
    .line 264
    invoke-direct {v1, v13, v2}, Lua/y4;-><init>(Lcom/yunpan/appmanage/ui/ActivityNissanTextGN;I)V

    .line 265
    .line 266
    .line 267
    const/16 v15, 0x10

    .line 268
    .line 269
    const-string v14, "\u84dd\u7259\u7535\u8bdd\u97f3\u91cf"

    .line 270
    .line 271
    const/16 v18, 0x1

    .line 272
    .line 273
    move-object v11, v0

    .line 274
    move-object v12, v13

    .line 275
    move-object/from16 v17, v1

    .line 276
    .line 277
    invoke-direct/range {v11 .. v18}, Lha/h1;-><init>(Landroid/app/Activity;Landroid/content/Context;Ljava/lang/String;IILea/c;I)V

    .line 278
    .line 279
    .line 280
    invoke-virtual {v0}, Lha/a4;->show()V

    .line 281
    .line 282
    .line 283
    goto/16 :goto_3

    .line 284
    .line 285
    :cond_7
    const-string v2, "\u6b64\u529f\u80fd\u4e0d\u9002\u5408\u60a8\u7684\u8bbe\u5907"

    .line 286
    .line 287
    if-ne v0, v1, :cond_8

    .line 288
    .line 289
    :try_start_3
    iget-object v0, v13, Lcom/yunpan/appmanage/ui/ActivityNissanTextGN;->E:Lcom/hsae/autosdk/settings/IAutoSettings;

    .line 290
    .line 291
    invoke-interface {v0, v5}, Lcom/hsae/autosdk/settings/IAutoSettings;->setScreenState(Z)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 292
    .line 293
    .line 294
    goto/16 :goto_3

    .line 295
    .line 296
    :catch_3
    invoke-static {v2}, Lcom/yunpan/appmanage/util/a0;->t(Ljava/lang/String;)V

    .line 297
    .line 298
    .line 299
    goto/16 :goto_3

    .line 300
    .line 301
    :cond_8
    if-ne v0, v4, :cond_9

    .line 302
    .line 303
    :try_start_4
    iget-object v0, v13, Lcom/yunpan/appmanage/ui/ActivityNissanTextGN;->E:Lcom/hsae/autosdk/settings/IAutoSettings;

    .line 304
    .line 305
    invoke-interface {v0, v5}, Lcom/hsae/autosdk/settings/IAutoSettings;->setPowerState(Z)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    .line 306
    .line 307
    .line 308
    goto :goto_3

    .line 309
    :catch_4
    invoke-static {v2}, Lcom/yunpan/appmanage/util/a0;->t(Ljava/lang/String;)V

    .line 310
    .line 311
    .line 312
    goto :goto_3

    .line 313
    :cond_9
    if-ne v0, v6, :cond_a

    .line 314
    .line 315
    new-instance v0, Lha/z6;

    .line 316
    .line 317
    new-instance v1, Lua/z4;

    .line 318
    .line 319
    invoke-direct {v1, v13, v9}, Lua/z4;-><init>(Lcom/yunpan/appmanage/ui/ActivityNissanTextGN;I)V

    .line 320
    .line 321
    .line 322
    const-string v16, "\u9759\u97f3"

    .line 323
    .line 324
    const-string v17, "\u89e3\u9664"

    .line 325
    .line 326
    const-string v14, "\u9759\u97f3(\u7cfb\u7edf)"

    .line 327
    .line 328
    const-string v15, ""

    .line 329
    .line 330
    move-object v11, v0

    .line 331
    move-object v12, v13

    .line 332
    move-object/from16 v18, v1

    .line 333
    .line 334
    invoke-direct/range {v11 .. v18}, Lha/z6;-><init>(Landroid/app/Activity;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lha/wd;)V

    .line 335
    .line 336
    .line 337
    invoke-virtual {v0}, Lha/a4;->show()V

    .line 338
    .line 339
    .line 340
    goto :goto_3

    .line 341
    :cond_a
    const/16 v2, 0xb

    .line 342
    .line 343
    if-ne v0, v2, :cond_b

    .line 344
    .line 345
    new-instance v0, Lha/z6;

    .line 346
    .line 347
    new-instance v1, Lua/z4;

    .line 348
    .line 349
    invoke-direct {v1, v13, v8}, Lua/z4;-><init>(Lcom/yunpan/appmanage/ui/ActivityNissanTextGN;I)V

    .line 350
    .line 351
    .line 352
    const-string v16, "\u9759\u97f3"

    .line 353
    .line 354
    const-string v17, "\u89e3\u9664"

    .line 355
    .line 356
    const-string v14, "\u9759\u97f3(\u5bfc\u822a)"

    .line 357
    .line 358
    const-string v15, ""

    .line 359
    .line 360
    move-object v11, v0

    .line 361
    move-object v12, v13

    .line 362
    move-object/from16 v18, v1

    .line 363
    .line 364
    invoke-direct/range {v11 .. v18}, Lha/z6;-><init>(Landroid/app/Activity;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lha/wd;)V

    .line 365
    .line 366
    .line 367
    invoke-virtual {v0}, Lha/a4;->show()V

    .line 368
    .line 369
    .line 370
    goto :goto_3

    .line 371
    :cond_b
    const/16 v2, 0xc

    .line 372
    .line 373
    if-ne v0, v2, :cond_c

    .line 374
    .line 375
    new-instance v0, Lha/h1;

    .line 376
    .line 377
    new-instance v2, Lua/y4;

    .line 378
    .line 379
    invoke-direct {v2, v13, v1}, Lua/y4;-><init>(Lcom/yunpan/appmanage/ui/ActivityNissanTextGN;I)V

    .line 380
    .line 381
    .line 382
    const/4 v15, 0x5

    .line 383
    const/16 v16, 0x5

    .line 384
    .line 385
    const-string v14, "\u8f66\u901f\u611f\u5e94\u7ea7\u522b"

    .line 386
    .line 387
    const/16 v18, 0x1

    .line 388
    .line 389
    move-object v11, v0

    .line 390
    move-object v12, v13

    .line 391
    move-object/from16 v17, v2

    .line 392
    .line 393
    invoke-direct/range {v11 .. v18}, Lha/h1;-><init>(Landroid/app/Activity;Landroid/content/Context;Ljava/lang/String;IILea/c;I)V

    .line 394
    .line 395
    .line 396
    invoke-virtual {v0}, Lha/a4;->show()V

    .line 397
    .line 398
    .line 399
    :cond_c
    :goto_3
    return-void
.end method
