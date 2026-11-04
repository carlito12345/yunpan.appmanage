.class public final synthetic Lua/o3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lc6/e;
.implements Lc6/f;
.implements Lha/ga;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/yunpan/appmanage/ui/ActivityKeymapAiOnY;


# direct methods
.method public synthetic constructor <init>(Lcom/yunpan/appmanage/ui/ActivityKeymapAiOnY;I)V
    .locals 0

    .line 1
    iput p2, p0, Lua/o3;->a:I

    iput-object p1, p0, Lua/o3;->b:Lcom/yunpan/appmanage/ui/ActivityKeymapAiOnY;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public b(I)V
    .locals 5

    .line 1
    iget-object v0, p0, Lua/o3;->b:Lcom/yunpan/appmanage/ui/ActivityKeymapAiOnY;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/yunpan/appmanage/ui/ActivityKeymapAiOnY;->I:Ljava/util/ArrayList;

    .line 4
    .line 5
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    check-cast p1, Lcom/yunpan/appmanage/bean/KeyCodeBean;

    .line 10
    .line 11
    iget-object v1, v0, Lcom/yunpan/appmanage/ui/ActivityKeymapAiOnY;->H:Lz7/s;

    .line 12
    .line 13
    const-string v2, "maps"

    .line 14
    .line 15
    invoke-virtual {v1, v2}, Lz7/s;->p(Ljava/lang/String;)Lz7/o;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    const/4 v2, 0x0

    .line 20
    :goto_0
    iget-object v3, v1, Lz7/o;->a:Ljava/util/ArrayList;

    .line 21
    .line 22
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 23
    .line 24
    .line 25
    move-result v3

    .line 26
    const-string v4, "type"

    .line 27
    .line 28
    if-ge v2, v3, :cond_1

    .line 29
    .line 30
    invoke-static {v1, v2, v4}, Landroid/support/v4/media/session/a;->j(Lz7/o;ILjava/lang/String;)I

    .line 31
    .line 32
    .line 33
    move-result v3

    .line 34
    iget v4, p1, Lcom/yunpan/appmanage/bean/KeyCodeBean;->keyCode:I

    .line 35
    .line 36
    if-ne v3, v4, :cond_0

    .line 37
    .line 38
    const-string p1, "\u5df2\u5b58\u5728\u6b64\u6620\u5c04"

    .line 39
    .line 40
    invoke-static {p1}, Lcom/yunpan/appmanage/util/a0;->u(Ljava/lang/CharSequence;)V

    .line 41
    .line 42
    .line 43
    goto :goto_1

    .line 44
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_1
    new-instance v1, Lz7/s;

    .line 48
    .line 49
    invoke-direct {v1}, Lz7/s;-><init>()V

    .line 50
    .line 51
    .line 52
    iget v2, p1, Lcom/yunpan/appmanage/bean/KeyCodeBean;->keyCode:I

    .line 53
    .line 54
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 55
    .line 56
    .line 57
    move-result-object v2

    .line 58
    invoke-virtual {v1, v4, v2}, Lz7/s;->l(Ljava/lang/String;Ljava/lang/Number;)V

    .line 59
    .line 60
    .line 61
    const-string v2, "name"

    .line 62
    .line 63
    iget-object v3, p1, Lcom/yunpan/appmanage/bean/KeyCodeBean;->keyName:Ljava/lang/String;

    .line 64
    .line 65
    invoke-virtual {v1, v2, v3}, Lz7/s;->m(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    const-string v2, "eventName"

    .line 69
    .line 70
    iget-object p1, p1, Lcom/yunpan/appmanage/bean/KeyCodeBean;->keyName:Ljava/lang/String;

    .line 71
    .line 72
    invoke-virtual {v1, v2, p1}, Lz7/s;->m(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    new-instance p1, Lz7/o;

    .line 76
    .line 77
    invoke-direct {p1}, Lz7/o;-><init>()V

    .line 78
    .line 79
    .line 80
    const-string v2, "click"

    .line 81
    .line 82
    invoke-virtual {v1, v2, p1}, Lz7/s;->j(Ljava/lang/String;Lz7/p;)V

    .line 83
    .line 84
    .line 85
    new-instance p1, Lha/x7;

    .line 86
    .line 87
    new-instance v2, Ld3/g;

    .line 88
    .line 89
    const/4 v3, -0x1

    .line 90
    const/16 v4, 0xe

    .line 91
    .line 92
    invoke-direct {v2, v3, v4, v0}, Ld3/g;-><init>(IILjava/lang/Object;)V

    .line 93
    .line 94
    .line 95
    invoke-direct {p1, v0, v0, v1, v2}, Lha/x7;-><init>(Lda/g;Lda/g;Lz7/s;Lha/w7;)V

    .line 96
    .line 97
    .line 98
    invoke-virtual {p1}, Lha/a4;->show()V

    .line 99
    .line 100
    .line 101
    :goto_1
    return-void
.end method

.method public c(ILandroid/view/View;)Z
    .locals 3

    .line 1
    iget-object p2, p0, Lua/o3;->b:Lcom/yunpan/appmanage/ui/ActivityKeymapAiOnY;

    .line 2
    .line 3
    iget-object p2, p2, Lcom/yunpan/appmanage/ui/ActivityKeymapAiOnY;->D:Lx9/m0;

    .line 4
    .line 5
    invoke-virtual {p2}, Lc6/g;->b()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x1

    .line 10
    sub-int/2addr v0, v1

    .line 11
    if-ne p1, v0, :cond_0

    .line 12
    .line 13
    const/4 p1, 0x3

    .line 14
    invoke-virtual {p2, p1}, Lc6/g;->t(I)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    check-cast v0, Ljava/lang/String;

    .line 19
    .line 20
    const-string v2, "\u7279\u6b8a"

    .line 21
    .line 22
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    if-nez v0, :cond_0

    .line 27
    .line 28
    invoke-virtual {p2, p1, v2}, Lc6/g;->p(ILjava/lang/Object;)V

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    const/4 v1, 0x0

    .line 33
    :goto_0
    return v1
.end method

.method public x(Lc6/g;Landroid/view/View;I)V
    .locals 11

    .line 1
    iget p1, p0, Lua/o3;->a:I

    .line 2
    .line 3
    packed-switch p1, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lua/o3;->b:Lcom/yunpan/appmanage/ui/ActivityKeymapAiOnY;

    .line 7
    .line 8
    iget-object p2, p1, Lcom/yunpan/appmanage/ui/ActivityKeymapAiOnY;->F:Lx9/s2;

    .line 9
    .line 10
    invoke-virtual {p2, p3}, Lc6/g;->t(I)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object p2

    .line 14
    check-cast p2, Lz7/s;

    .line 15
    .line 16
    new-instance v0, Lha/x7;

    .line 17
    .line 18
    new-instance v1, Ld3/g;

    .line 19
    .line 20
    const/16 v2, 0xe

    .line 21
    .line 22
    invoke-direct {v1, p3, v2, p1}, Ld3/g;-><init>(IILjava/lang/Object;)V

    .line 23
    .line 24
    .line 25
    invoke-direct {v0, p1, p1, p2, v1}, Lha/x7;-><init>(Lda/g;Lda/g;Lz7/s;Lha/w7;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0}, Lha/a4;->show()V

    .line 29
    .line 30
    .line 31
    return-void

    .line 32
    :pswitch_0
    iget-object p1, p0, Lua/o3;->b:Lcom/yunpan/appmanage/ui/ActivityKeymapAiOnY;

    .line 33
    .line 34
    if-nez p3, :cond_0

    .line 35
    .line 36
    sget p2, Lcom/yunpan/appmanage/ui/ActivityKeymapAiOnY;->K:I

    .line 37
    .line 38
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    .line 39
    .line 40
    .line 41
    goto/16 :goto_0

    .line 42
    .line 43
    :cond_0
    const/4 p2, 0x1

    .line 44
    if-ne p3, p2, :cond_2

    .line 45
    .line 46
    iget-object v7, p1, Lcom/yunpan/appmanage/ui/ActivityKeymapAiOnY;->I:Ljava/util/ArrayList;

    .line 47
    .line 48
    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    .line 49
    .line 50
    .line 51
    move-result p2

    .line 52
    if-eqz p2, :cond_1

    .line 53
    .line 54
    new-instance p2, Lcom/yunpan/appmanage/bean/KeyCodeBean;

    .line 55
    .line 56
    sget-object p3, Lcom/desay_svautomotive/libsvcarinfo/AiOnYType;->GEAR_P:Lcom/desay_svautomotive/libsvcarinfo/AiOnYType;

    .line 57
    .line 58
    invoke-virtual {p3}, Lcom/desay_svautomotive/libsvcarinfo/AiOnYType;->getValue()I

    .line 59
    .line 60
    .line 61
    move-result v0

    .line 62
    invoke-virtual {p3}, Lcom/desay_svautomotive/libsvcarinfo/AiOnYType;->getDesc()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object p3

    .line 66
    invoke-direct {p2, v0, p3}, Lcom/yunpan/appmanage/bean/KeyCodeBean;-><init>(ILjava/lang/String;)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {v7, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 70
    .line 71
    .line 72
    new-instance p2, Lcom/yunpan/appmanage/bean/KeyCodeBean;

    .line 73
    .line 74
    sget-object p3, Lcom/desay_svautomotive/libsvcarinfo/AiOnYType;->GEAR_R:Lcom/desay_svautomotive/libsvcarinfo/AiOnYType;

    .line 75
    .line 76
    invoke-virtual {p3}, Lcom/desay_svautomotive/libsvcarinfo/AiOnYType;->getValue()I

    .line 77
    .line 78
    .line 79
    move-result v0

    .line 80
    invoke-virtual {p3}, Lcom/desay_svautomotive/libsvcarinfo/AiOnYType;->getDesc()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object p3

    .line 84
    invoke-direct {p2, v0, p3}, Lcom/yunpan/appmanage/bean/KeyCodeBean;-><init>(ILjava/lang/String;)V

    .line 85
    .line 86
    .line 87
    invoke-virtual {v7, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 88
    .line 89
    .line 90
    new-instance p2, Lcom/yunpan/appmanage/bean/KeyCodeBean;

    .line 91
    .line 92
    sget-object p3, Lcom/desay_svautomotive/libsvcarinfo/AiOnYType;->GEAR_N:Lcom/desay_svautomotive/libsvcarinfo/AiOnYType;

    .line 93
    .line 94
    invoke-virtual {p3}, Lcom/desay_svautomotive/libsvcarinfo/AiOnYType;->getValue()I

    .line 95
    .line 96
    .line 97
    move-result v0

    .line 98
    invoke-virtual {p3}, Lcom/desay_svautomotive/libsvcarinfo/AiOnYType;->getDesc()Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object p3

    .line 102
    invoke-direct {p2, v0, p3}, Lcom/yunpan/appmanage/bean/KeyCodeBean;-><init>(ILjava/lang/String;)V

    .line 103
    .line 104
    .line 105
    invoke-virtual {v7, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 106
    .line 107
    .line 108
    new-instance p2, Lcom/yunpan/appmanage/bean/KeyCodeBean;

    .line 109
    .line 110
    sget-object p3, Lcom/desay_svautomotive/libsvcarinfo/AiOnYType;->GEAR_D:Lcom/desay_svautomotive/libsvcarinfo/AiOnYType;

    .line 111
    .line 112
    invoke-virtual {p3}, Lcom/desay_svautomotive/libsvcarinfo/AiOnYType;->getValue()I

    .line 113
    .line 114
    .line 115
    move-result v0

    .line 116
    invoke-virtual {p3}, Lcom/desay_svautomotive/libsvcarinfo/AiOnYType;->getDesc()Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object p3

    .line 120
    invoke-direct {p2, v0, p3}, Lcom/yunpan/appmanage/bean/KeyCodeBean;-><init>(ILjava/lang/String;)V

    .line 121
    .line 122
    .line 123
    invoke-virtual {v7, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 124
    .line 125
    .line 126
    new-instance p2, Lcom/yunpan/appmanage/bean/KeyCodeBean;

    .line 127
    .line 128
    sget-object p3, Lcom/desay_svautomotive/libsvcarinfo/AiOnYType;->SPEED_START:Lcom/desay_svautomotive/libsvcarinfo/AiOnYType;

    .line 129
    .line 130
    invoke-virtual {p3}, Lcom/desay_svautomotive/libsvcarinfo/AiOnYType;->getValue()I

    .line 131
    .line 132
    .line 133
    move-result v0

    .line 134
    invoke-virtual {p3}, Lcom/desay_svautomotive/libsvcarinfo/AiOnYType;->getDesc()Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object p3

    .line 138
    invoke-direct {p2, v0, p3}, Lcom/yunpan/appmanage/bean/KeyCodeBean;-><init>(ILjava/lang/String;)V

    .line 139
    .line 140
    .line 141
    invoke-virtual {v7, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 142
    .line 143
    .line 144
    new-instance p2, Lcom/yunpan/appmanage/bean/KeyCodeBean;

    .line 145
    .line 146
    sget-object p3, Lcom/desay_svautomotive/libsvcarinfo/AiOnYType;->SPEED_STOP:Lcom/desay_svautomotive/libsvcarinfo/AiOnYType;

    .line 147
    .line 148
    invoke-virtual {p3}, Lcom/desay_svautomotive/libsvcarinfo/AiOnYType;->getValue()I

    .line 149
    .line 150
    .line 151
    move-result v0

    .line 152
    invoke-virtual {p3}, Lcom/desay_svautomotive/libsvcarinfo/AiOnYType;->getDesc()Ljava/lang/String;

    .line 153
    .line 154
    .line 155
    move-result-object p3

    .line 156
    invoke-direct {p2, v0, p3}, Lcom/yunpan/appmanage/bean/KeyCodeBean;-><init>(ILjava/lang/String;)V

    .line 157
    .line 158
    .line 159
    invoke-virtual {v7, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 160
    .line 161
    .line 162
    new-instance p2, Lcom/yunpan/appmanage/bean/KeyCodeBean;

    .line 163
    .line 164
    sget-object p3, Lcom/desay_svautomotive/libsvcarinfo/AiOnYType;->LAMP_OPEN:Lcom/desay_svautomotive/libsvcarinfo/AiOnYType;

    .line 165
    .line 166
    invoke-virtual {p3}, Lcom/desay_svautomotive/libsvcarinfo/AiOnYType;->getValue()I

    .line 167
    .line 168
    .line 169
    move-result v0

    .line 170
    invoke-virtual {p3}, Lcom/desay_svautomotive/libsvcarinfo/AiOnYType;->getDesc()Ljava/lang/String;

    .line 171
    .line 172
    .line 173
    move-result-object p3

    .line 174
    invoke-direct {p2, v0, p3}, Lcom/yunpan/appmanage/bean/KeyCodeBean;-><init>(ILjava/lang/String;)V

    .line 175
    .line 176
    .line 177
    invoke-virtual {v7, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 178
    .line 179
    .line 180
    new-instance p2, Lcom/yunpan/appmanage/bean/KeyCodeBean;

    .line 181
    .line 182
    sget-object p3, Lcom/desay_svautomotive/libsvcarinfo/AiOnYType;->LAMP_CLOSE:Lcom/desay_svautomotive/libsvcarinfo/AiOnYType;

    .line 183
    .line 184
    invoke-virtual {p3}, Lcom/desay_svautomotive/libsvcarinfo/AiOnYType;->getValue()I

    .line 185
    .line 186
    .line 187
    move-result v0

    .line 188
    invoke-virtual {p3}, Lcom/desay_svautomotive/libsvcarinfo/AiOnYType;->getDesc()Ljava/lang/String;

    .line 189
    .line 190
    .line 191
    move-result-object p3

    .line 192
    invoke-direct {p2, v0, p3}, Lcom/yunpan/appmanage/bean/KeyCodeBean;-><init>(ILjava/lang/String;)V

    .line 193
    .line 194
    .line 195
    invoke-virtual {v7, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 196
    .line 197
    .line 198
    new-instance p2, Lcom/yunpan/appmanage/bean/KeyCodeBean;

    .line 199
    .line 200
    sget-object p3, Lcom/desay_svautomotive/libsvcarinfo/AiOnYType;->DOOR_OPEN:Lcom/desay_svautomotive/libsvcarinfo/AiOnYType;

    .line 201
    .line 202
    invoke-virtual {p3}, Lcom/desay_svautomotive/libsvcarinfo/AiOnYType;->getValue()I

    .line 203
    .line 204
    .line 205
    move-result v0

    .line 206
    invoke-virtual {p3}, Lcom/desay_svautomotive/libsvcarinfo/AiOnYType;->getDesc()Ljava/lang/String;

    .line 207
    .line 208
    .line 209
    move-result-object p3

    .line 210
    invoke-direct {p2, v0, p3}, Lcom/yunpan/appmanage/bean/KeyCodeBean;-><init>(ILjava/lang/String;)V

    .line 211
    .line 212
    .line 213
    invoke-virtual {v7, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 214
    .line 215
    .line 216
    new-instance p2, Lcom/yunpan/appmanage/bean/KeyCodeBean;

    .line 217
    .line 218
    sget-object p3, Lcom/desay_svautomotive/libsvcarinfo/AiOnYType;->DOOR_FL_OPEN:Lcom/desay_svautomotive/libsvcarinfo/AiOnYType;

    .line 219
    .line 220
    invoke-virtual {p3}, Lcom/desay_svautomotive/libsvcarinfo/AiOnYType;->getValue()I

    .line 221
    .line 222
    .line 223
    move-result v0

    .line 224
    invoke-virtual {p3}, Lcom/desay_svautomotive/libsvcarinfo/AiOnYType;->getDesc()Ljava/lang/String;

    .line 225
    .line 226
    .line 227
    move-result-object p3

    .line 228
    invoke-direct {p2, v0, p3}, Lcom/yunpan/appmanage/bean/KeyCodeBean;-><init>(ILjava/lang/String;)V

    .line 229
    .line 230
    .line 231
    invoke-virtual {v7, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 232
    .line 233
    .line 234
    new-instance p2, Lcom/yunpan/appmanage/bean/KeyCodeBean;

    .line 235
    .line 236
    sget-object p3, Lcom/desay_svautomotive/libsvcarinfo/AiOnYType;->DOOR_FL_CLOSE:Lcom/desay_svautomotive/libsvcarinfo/AiOnYType;

    .line 237
    .line 238
    invoke-virtual {p3}, Lcom/desay_svautomotive/libsvcarinfo/AiOnYType;->getValue()I

    .line 239
    .line 240
    .line 241
    move-result v0

    .line 242
    invoke-virtual {p3}, Lcom/desay_svautomotive/libsvcarinfo/AiOnYType;->getDesc()Ljava/lang/String;

    .line 243
    .line 244
    .line 245
    move-result-object p3

    .line 246
    invoke-direct {p2, v0, p3}, Lcom/yunpan/appmanage/bean/KeyCodeBean;-><init>(ILjava/lang/String;)V

    .line 247
    .line 248
    .line 249
    invoke-virtual {v7, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 250
    .line 251
    .line 252
    new-instance p2, Lcom/yunpan/appmanage/bean/KeyCodeBean;

    .line 253
    .line 254
    sget-object p3, Lcom/desay_svautomotive/libsvcarinfo/AiOnYType;->DOOR_FR_OPEN:Lcom/desay_svautomotive/libsvcarinfo/AiOnYType;

    .line 255
    .line 256
    invoke-virtual {p3}, Lcom/desay_svautomotive/libsvcarinfo/AiOnYType;->getValue()I

    .line 257
    .line 258
    .line 259
    move-result v0

    .line 260
    invoke-virtual {p3}, Lcom/desay_svautomotive/libsvcarinfo/AiOnYType;->getDesc()Ljava/lang/String;

    .line 261
    .line 262
    .line 263
    move-result-object p3

    .line 264
    invoke-direct {p2, v0, p3}, Lcom/yunpan/appmanage/bean/KeyCodeBean;-><init>(ILjava/lang/String;)V

    .line 265
    .line 266
    .line 267
    invoke-virtual {v7, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 268
    .line 269
    .line 270
    new-instance p2, Lcom/yunpan/appmanage/bean/KeyCodeBean;

    .line 271
    .line 272
    sget-object p3, Lcom/desay_svautomotive/libsvcarinfo/AiOnYType;->DOOR_FR_CLOSE:Lcom/desay_svautomotive/libsvcarinfo/AiOnYType;

    .line 273
    .line 274
    invoke-virtual {p3}, Lcom/desay_svautomotive/libsvcarinfo/AiOnYType;->getValue()I

    .line 275
    .line 276
    .line 277
    move-result v0

    .line 278
    invoke-virtual {p3}, Lcom/desay_svautomotive/libsvcarinfo/AiOnYType;->getDesc()Ljava/lang/String;

    .line 279
    .line 280
    .line 281
    move-result-object p3

    .line 282
    invoke-direct {p2, v0, p3}, Lcom/yunpan/appmanage/bean/KeyCodeBean;-><init>(ILjava/lang/String;)V

    .line 283
    .line 284
    .line 285
    invoke-virtual {v7, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 286
    .line 287
    .line 288
    new-instance p2, Lcom/yunpan/appmanage/bean/KeyCodeBean;

    .line 289
    .line 290
    sget-object p3, Lcom/desay_svautomotive/libsvcarinfo/AiOnYType;->DOOR_RL_OPEN:Lcom/desay_svautomotive/libsvcarinfo/AiOnYType;

    .line 291
    .line 292
    invoke-virtual {p3}, Lcom/desay_svautomotive/libsvcarinfo/AiOnYType;->getValue()I

    .line 293
    .line 294
    .line 295
    move-result v0

    .line 296
    invoke-virtual {p3}, Lcom/desay_svautomotive/libsvcarinfo/AiOnYType;->getDesc()Ljava/lang/String;

    .line 297
    .line 298
    .line 299
    move-result-object p3

    .line 300
    invoke-direct {p2, v0, p3}, Lcom/yunpan/appmanage/bean/KeyCodeBean;-><init>(ILjava/lang/String;)V

    .line 301
    .line 302
    .line 303
    invoke-virtual {v7, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 304
    .line 305
    .line 306
    new-instance p2, Lcom/yunpan/appmanage/bean/KeyCodeBean;

    .line 307
    .line 308
    sget-object p3, Lcom/desay_svautomotive/libsvcarinfo/AiOnYType;->DOOR_RL_CLOSE:Lcom/desay_svautomotive/libsvcarinfo/AiOnYType;

    .line 309
    .line 310
    invoke-virtual {p3}, Lcom/desay_svautomotive/libsvcarinfo/AiOnYType;->getValue()I

    .line 311
    .line 312
    .line 313
    move-result v0

    .line 314
    invoke-virtual {p3}, Lcom/desay_svautomotive/libsvcarinfo/AiOnYType;->getDesc()Ljava/lang/String;

    .line 315
    .line 316
    .line 317
    move-result-object p3

    .line 318
    invoke-direct {p2, v0, p3}, Lcom/yunpan/appmanage/bean/KeyCodeBean;-><init>(ILjava/lang/String;)V

    .line 319
    .line 320
    .line 321
    invoke-virtual {v7, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 322
    .line 323
    .line 324
    new-instance p2, Lcom/yunpan/appmanage/bean/KeyCodeBean;

    .line 325
    .line 326
    sget-object p3, Lcom/desay_svautomotive/libsvcarinfo/AiOnYType;->DOOR_RR_OPEN:Lcom/desay_svautomotive/libsvcarinfo/AiOnYType;

    .line 327
    .line 328
    invoke-virtual {p3}, Lcom/desay_svautomotive/libsvcarinfo/AiOnYType;->getValue()I

    .line 329
    .line 330
    .line 331
    move-result v0

    .line 332
    invoke-virtual {p3}, Lcom/desay_svautomotive/libsvcarinfo/AiOnYType;->getDesc()Ljava/lang/String;

    .line 333
    .line 334
    .line 335
    move-result-object p3

    .line 336
    invoke-direct {p2, v0, p3}, Lcom/yunpan/appmanage/bean/KeyCodeBean;-><init>(ILjava/lang/String;)V

    .line 337
    .line 338
    .line 339
    invoke-virtual {v7, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 340
    .line 341
    .line 342
    new-instance p2, Lcom/yunpan/appmanage/bean/KeyCodeBean;

    .line 343
    .line 344
    sget-object p3, Lcom/desay_svautomotive/libsvcarinfo/AiOnYType;->DOOR_RR_CLOSE:Lcom/desay_svautomotive/libsvcarinfo/AiOnYType;

    .line 345
    .line 346
    invoke-virtual {p3}, Lcom/desay_svautomotive/libsvcarinfo/AiOnYType;->getValue()I

    .line 347
    .line 348
    .line 349
    move-result v0

    .line 350
    invoke-virtual {p3}, Lcom/desay_svautomotive/libsvcarinfo/AiOnYType;->getDesc()Ljava/lang/String;

    .line 351
    .line 352
    .line 353
    move-result-object p3

    .line 354
    invoke-direct {p2, v0, p3}, Lcom/yunpan/appmanage/bean/KeyCodeBean;-><init>(ILjava/lang/String;)V

    .line 355
    .line 356
    .line 357
    invoke-virtual {v7, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 358
    .line 359
    .line 360
    new-instance p2, Lcom/yunpan/appmanage/bean/KeyCodeBean;

    .line 361
    .line 362
    sget-object p3, Lcom/desay_svautomotive/libsvcarinfo/AiOnYType;->DOOR_HATCH_OPEN:Lcom/desay_svautomotive/libsvcarinfo/AiOnYType;

    .line 363
    .line 364
    invoke-virtual {p3}, Lcom/desay_svautomotive/libsvcarinfo/AiOnYType;->getValue()I

    .line 365
    .line 366
    .line 367
    move-result v0

    .line 368
    invoke-virtual {p3}, Lcom/desay_svautomotive/libsvcarinfo/AiOnYType;->getDesc()Ljava/lang/String;

    .line 369
    .line 370
    .line 371
    move-result-object p3

    .line 372
    invoke-direct {p2, v0, p3}, Lcom/yunpan/appmanage/bean/KeyCodeBean;-><init>(ILjava/lang/String;)V

    .line 373
    .line 374
    .line 375
    invoke-virtual {v7, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 376
    .line 377
    .line 378
    new-instance p2, Lcom/yunpan/appmanage/bean/KeyCodeBean;

    .line 379
    .line 380
    sget-object p3, Lcom/desay_svautomotive/libsvcarinfo/AiOnYType;->DOOR_HATCH_CLOSE:Lcom/desay_svautomotive/libsvcarinfo/AiOnYType;

    .line 381
    .line 382
    invoke-virtual {p3}, Lcom/desay_svautomotive/libsvcarinfo/AiOnYType;->getValue()I

    .line 383
    .line 384
    .line 385
    move-result v0

    .line 386
    invoke-virtual {p3}, Lcom/desay_svautomotive/libsvcarinfo/AiOnYType;->getDesc()Ljava/lang/String;

    .line 387
    .line 388
    .line 389
    move-result-object p3

    .line 390
    invoke-direct {p2, v0, p3}, Lcom/yunpan/appmanage/bean/KeyCodeBean;-><init>(ILjava/lang/String;)V

    .line 391
    .line 392
    .line 393
    invoke-virtual {v7, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 394
    .line 395
    .line 396
    new-instance p2, Lcom/yunpan/appmanage/bean/KeyCodeBean;

    .line 397
    .line 398
    sget-object p3, Lcom/desay_svautomotive/libsvcarinfo/AiOnYType;->MODE_ECO:Lcom/desay_svautomotive/libsvcarinfo/AiOnYType;

    .line 399
    .line 400
    invoke-virtual {p3}, Lcom/desay_svautomotive/libsvcarinfo/AiOnYType;->getValue()I

    .line 401
    .line 402
    .line 403
    move-result v0

    .line 404
    invoke-virtual {p3}, Lcom/desay_svautomotive/libsvcarinfo/AiOnYType;->getDesc()Ljava/lang/String;

    .line 405
    .line 406
    .line 407
    move-result-object p3

    .line 408
    invoke-direct {p2, v0, p3}, Lcom/yunpan/appmanage/bean/KeyCodeBean;-><init>(ILjava/lang/String;)V

    .line 409
    .line 410
    .line 411
    invoke-virtual {v7, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 412
    .line 413
    .line 414
    new-instance p2, Lcom/yunpan/appmanage/bean/KeyCodeBean;

    .line 415
    .line 416
    sget-object p3, Lcom/desay_svautomotive/libsvcarinfo/AiOnYType;->MODE_NORMAL:Lcom/desay_svautomotive/libsvcarinfo/AiOnYType;

    .line 417
    .line 418
    invoke-virtual {p3}, Lcom/desay_svautomotive/libsvcarinfo/AiOnYType;->getValue()I

    .line 419
    .line 420
    .line 421
    move-result v0

    .line 422
    invoke-virtual {p3}, Lcom/desay_svautomotive/libsvcarinfo/AiOnYType;->getDesc()Ljava/lang/String;

    .line 423
    .line 424
    .line 425
    move-result-object p3

    .line 426
    invoke-direct {p2, v0, p3}, Lcom/yunpan/appmanage/bean/KeyCodeBean;-><init>(ILjava/lang/String;)V

    .line 427
    .line 428
    .line 429
    invoke-virtual {v7, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 430
    .line 431
    .line 432
    new-instance p2, Lcom/yunpan/appmanage/bean/KeyCodeBean;

    .line 433
    .line 434
    sget-object p3, Lcom/desay_svautomotive/libsvcarinfo/AiOnYType;->MODE_SPORT:Lcom/desay_svautomotive/libsvcarinfo/AiOnYType;

    .line 435
    .line 436
    invoke-virtual {p3}, Lcom/desay_svautomotive/libsvcarinfo/AiOnYType;->getValue()I

    .line 437
    .line 438
    .line 439
    move-result v0

    .line 440
    invoke-virtual {p3}, Lcom/desay_svautomotive/libsvcarinfo/AiOnYType;->getDesc()Ljava/lang/String;

    .line 441
    .line 442
    .line 443
    move-result-object p3

    .line 444
    invoke-direct {p2, v0, p3}, Lcom/yunpan/appmanage/bean/KeyCodeBean;-><init>(ILjava/lang/String;)V

    .line 445
    .line 446
    .line 447
    invoke-virtual {v7, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 448
    .line 449
    .line 450
    new-instance p2, Lcom/yunpan/appmanage/bean/KeyCodeBean;

    .line 451
    .line 452
    sget-object p3, Lcom/desay_svautomotive/libsvcarinfo/AiOnYType;->MODE_I_PEDAL:Lcom/desay_svautomotive/libsvcarinfo/AiOnYType;

    .line 453
    .line 454
    invoke-virtual {p3}, Lcom/desay_svautomotive/libsvcarinfo/AiOnYType;->getValue()I

    .line 455
    .line 456
    .line 457
    move-result v0

    .line 458
    invoke-virtual {p3}, Lcom/desay_svautomotive/libsvcarinfo/AiOnYType;->getDesc()Ljava/lang/String;

    .line 459
    .line 460
    .line 461
    move-result-object p3

    .line 462
    invoke-direct {p2, v0, p3}, Lcom/yunpan/appmanage/bean/KeyCodeBean;-><init>(ILjava/lang/String;)V

    .line 463
    .line 464
    .line 465
    invoke-virtual {v7, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 466
    .line 467
    .line 468
    :cond_1
    new-instance p2, Lha/ha;

    .line 469
    .line 470
    new-instance v8, Lua/o3;

    .line 471
    .line 472
    const/4 p3, 0x3

    .line 473
    invoke-direct {v8, p1, p3}, Lua/o3;-><init>(Lcom/yunpan/appmanage/ui/ActivityKeymapAiOnY;I)V

    .line 474
    .line 475
    .line 476
    const/4 v6, 0x0

    .line 477
    move-object v3, p2

    .line 478
    move-object v4, p1

    .line 479
    move-object v5, p1

    .line 480
    invoke-direct/range {v3 .. v8}, Lha/ha;-><init>(Landroid/app/Activity;Landroid/content/Context;Ljava/lang/String;Ljava/util/List;Lha/ga;)V

    .line 481
    .line 482
    .line 483
    invoke-virtual {p2}, Lha/a4;->show()V

    .line 484
    .line 485
    .line 486
    goto :goto_0

    .line 487
    :cond_2
    const/4 v0, 0x2

    .line 488
    if-ne p3, v0, :cond_4

    .line 489
    .line 490
    iget-object p2, p1, Lcom/yunpan/appmanage/ui/ActivityKeymapAiOnY;->F:Lx9/s2;

    .line 491
    .line 492
    invoke-virtual {p2}, Lc6/g;->b()I

    .line 493
    .line 494
    .line 495
    move-result p2

    .line 496
    if-nez p2, :cond_3

    .line 497
    .line 498
    goto :goto_0

    .line 499
    :cond_3
    new-instance p2, Lha/z6;

    .line 500
    .line 501
    iget-object v5, p1, Lda/g;->A:Lda/g;

    .line 502
    .line 503
    new-instance v10, Lua/i1;

    .line 504
    .line 505
    const/16 p3, 0xa

    .line 506
    .line 507
    invoke-direct {v10, p3, p1}, Lua/i1;-><init>(ILjava/lang/Object;)V

    .line 508
    .line 509
    .line 510
    const-string v8, "\u786e\u5b9a"

    .line 511
    .line 512
    const-string v9, "\u53d6\u6d88"

    .line 513
    .line 514
    const-string v6, "\u786e\u5b9a\u8981\u6e05\u7a7a\u6240\u6709\u6620\u5c04\u5417\uff1f"

    .line 515
    .line 516
    const-string v7, ""

    .line 517
    .line 518
    move-object v3, p2

    .line 519
    move-object v4, p1

    .line 520
    invoke-direct/range {v3 .. v10}, Lha/z6;-><init>(Landroid/app/Activity;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lha/wd;)V

    .line 521
    .line 522
    .line 523
    invoke-virtual {p2}, Lha/a4;->show()V

    .line 524
    .line 525
    .line 526
    goto :goto_0

    .line 527
    :cond_4
    iget-object v0, p1, Lcom/yunpan/appmanage/ui/ActivityKeymapAiOnY;->D:Lx9/m0;

    .line 528
    .line 529
    invoke-virtual {v0, p3}, Lc6/g;->t(I)Ljava/lang/Object;

    .line 530
    .line 531
    .line 532
    move-result-object v1

    .line 533
    check-cast v1, Ljava/lang/String;

    .line 534
    .line 535
    const-string v2, "\u7279\u6b8a"

    .line 536
    .line 537
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 538
    .line 539
    .line 540
    move-result v1

    .line 541
    if-eqz v1, :cond_5

    .line 542
    .line 543
    new-instance p2, Lha/n9;

    .line 544
    .line 545
    iget-object p3, p1, Lda/g;->A:Lda/g;

    .line 546
    .line 547
    invoke-direct {p2, p1, p3}, Lha/n9;-><init>(Landroid/app/Activity;Lda/g;)V

    .line 548
    .line 549
    .line 550
    invoke-virtual {p2}, Lha/a4;->show()V

    .line 551
    .line 552
    .line 553
    goto :goto_0

    .line 554
    :cond_5
    invoke-virtual {v0}, Lc6/g;->b()I

    .line 555
    .line 556
    .line 557
    move-result v0

    .line 558
    sub-int/2addr v0, p2

    .line 559
    if-ne p3, v0, :cond_6

    .line 560
    .line 561
    new-instance p2, Lha/z6;

    .line 562
    .line 563
    iget-object p3, p1, Lda/g;->A:Lda/g;

    .line 564
    .line 565
    const-string v0, "\u6b64\u529f\u80fd\u662f\u57fa\u4e8e\u57c3\u5b89Y\u7684\u8f66\u673a\u7cfb\u7edf\u5f00\u53d1\u7684\uff0c\u5982\u679c\u4f60\u7684\u8f66\u673a\u7cfb\u7edf\u548c\u57c3\u5b89Y\u7cfb\u7edf\u662f\u4e00\u6837\u7684\u8bdd\uff0c\u90a3\u4e48\u53ef\u4ee5\u4f7f\u7528\u6b64\u529f\u80fd"

    .line 566
    .line 567
    const-string v1, ""

    .line 568
    .line 569
    invoke-direct {p2, p1, p3, v0, v1}, Lha/z6;-><init>(Landroid/app/Activity;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 570
    .line 571
    .line 572
    invoke-virtual {p2}, Lha/a4;->show()V

    .line 573
    .line 574
    .line 575
    :cond_6
    :goto_0
    return-void

    .line 576
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
