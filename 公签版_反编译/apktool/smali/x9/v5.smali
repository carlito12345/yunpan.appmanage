.class public final synthetic Lx9/v5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lx9/y5;

.field public final synthetic c:Lcom/yunpan/appmanage/bean/WpPathBean;

.field public final synthetic d:Landroid/widget/ImageView;


# direct methods
.method public synthetic constructor <init>(Lx9/y5;Lcom/yunpan/appmanage/bean/WpPathBean;Landroid/widget/ImageView;I)V
    .locals 0

    .line 1
    iput p4, p0, Lx9/v5;->a:I

    iput-object p1, p0, Lx9/v5;->b:Lx9/y5;

    iput-object p2, p0, Lx9/v5;->c:Lcom/yunpan/appmanage/bean/WpPathBean;

    iput-object p3, p0, Lx9/v5;->d:Landroid/widget/ImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 12

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    iget-object v2, p0, Lx9/v5;->d:Landroid/widget/ImageView;

    .line 4
    .line 5
    const-string v3, "/"

    .line 6
    .line 7
    iget-object v4, p0, Lx9/v5;->c:Lcom/yunpan/appmanage/bean/WpPathBean;

    .line 8
    .line 9
    iget-object v5, p0, Lx9/v5;->b:Lx9/y5;

    .line 10
    .line 11
    iget v6, p0, Lx9/v5;->a:I

    .line 12
    .line 13
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    packed-switch v6, :pswitch_data_0

    .line 17
    .line 18
    .line 19
    iget-object v0, v4, Lcom/yunpan/appmanage/bean/WpPathBean;->path:Ljava/lang/String;

    .line 20
    .line 21
    invoke-static {v0}, Lif/a;->p0(Ljava/lang/String;)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 26
    .line 27
    .line 28
    move-result v6

    .line 29
    if-eqz v6, :cond_0

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    new-instance v6, Ljava/lang/StringBuilder;

    .line 33
    .line 34
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 35
    .line 36
    .line 37
    sget-object v7, Lcom/yunpan/appmanage/util/k;->u0:Ljava/text/DecimalFormat;

    .line 38
    .line 39
    sget-object v7, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 40
    .line 41
    iget-object v8, v7, Lcom/yunpan/appmanage/util/k;->Y:Ljava/lang/String;

    .line 42
    .line 43
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    iget-object v8, v7, Lcom/yunpan/appmanage/util/k;->A:Lx9/n5;

    .line 47
    .line 48
    iget-object v8, v8, Lx9/n5;->g:Ljava/lang/String;

    .line 49
    .line 50
    invoke-static {v6, v8, v3, v0}, Landroid/support/v4/media/session/a;->u(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 55
    .line 56
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 57
    .line 58
    .line 59
    iget-object v3, v7, Lcom/yunpan/appmanage/util/k;->A:Lx9/n5;

    .line 60
    .line 61
    iget-object v3, v3, Lx9/n5;->g:Ljava/lang/String;

    .line 62
    .line 63
    new-instance v3, Ljava/lang/StringBuilder;

    .line 64
    .line 65
    const-string v6, "http://127.0.0.1:"

    .line 66
    .line 67
    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    iget v6, v7, Lcom/yunpan/appmanage/util/k;->j0:I

    .line 71
    .line 72
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    const-string v6, "/videoimage/"

    .line 76
    .line 77
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    iget-object v6, v4, Lcom/yunpan/appmanage/bean/WpPathBean;->path:Ljava/lang/String;

    .line 81
    .line 82
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v3

    .line 89
    invoke-static {v0}, Lcom/yunpan/appmanage/util/a0;->g(Ljava/lang/String;)Z

    .line 90
    .line 91
    .line 92
    move-result v6

    .line 93
    if-nez v6, :cond_1

    .line 94
    .line 95
    invoke-static {v3, v0}, Lq4/a;->z(Ljava/lang/String;Ljava/lang/String;)Z

    .line 96
    .line 97
    .line 98
    move-result v6

    .line 99
    :cond_1
    if-eqz v6, :cond_2

    .line 100
    .line 101
    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 102
    .line 103
    .line 104
    move-result-object v3

    .line 105
    iget-object v4, v4, Lcom/yunpan/appmanage/bean/WpPathBean;->path:Ljava/lang/String;

    .line 106
    .line 107
    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 108
    .line 109
    .line 110
    move-result v3

    .line 111
    if-eqz v3, :cond_2

    .line 112
    .line 113
    new-instance v3, Lx9/w5;

    .line 114
    .line 115
    invoke-direct {v3, v5, v0, v2, v1}, Lx9/w5;-><init>(Lx9/y5;Ljava/lang/String;Landroid/widget/ImageView;I)V

    .line 116
    .line 117
    .line 118
    iget-object v0, v5, Lx9/y5;->h:Lcom/yunpan/appmanage/carsdk/u;

    .line 119
    .line 120
    invoke-virtual {v0, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 121
    .line 122
    .line 123
    :cond_2
    :goto_0
    return-void

    .line 124
    :pswitch_0
    iget-object v6, v4, Lcom/yunpan/appmanage/bean/WpPathBean;->path:Ljava/lang/String;

    .line 125
    .line 126
    invoke-static {v6}, Lif/a;->p0(Ljava/lang/String;)Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object v6

    .line 130
    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    .line 131
    .line 132
    .line 133
    move-result v7

    .line 134
    if-eqz v7, :cond_3

    .line 135
    .line 136
    goto/16 :goto_3

    .line 137
    .line 138
    :cond_3
    new-instance v7, Ljava/lang/StringBuilder;

    .line 139
    .line 140
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 141
    .line 142
    .line 143
    sget-object v8, Lcom/yunpan/appmanage/util/k;->u0:Ljava/text/DecimalFormat;

    .line 144
    .line 145
    sget-object v8, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 146
    .line 147
    iget-object v9, v8, Lcom/yunpan/appmanage/util/k;->Y:Ljava/lang/String;

    .line 148
    .line 149
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    .line 151
    .line 152
    iget-object v9, v8, Lcom/yunpan/appmanage/util/k;->A:Lx9/n5;

    .line 153
    .line 154
    iget-object v9, v9, Lx9/n5;->g:Ljava/lang/String;

    .line 155
    .line 156
    invoke-static {v7, v9, v3, v6}, Landroid/support/v4/media/session/a;->u(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 157
    .line 158
    .line 159
    move-result-object v3

    .line 160
    invoke-static {v3}, Lcom/yunpan/appmanage/util/a0;->g(Ljava/lang/String;)Z

    .line 161
    .line 162
    .line 163
    move-result v6

    .line 164
    if-eqz v6, :cond_4

    .line 165
    .line 166
    new-instance v6, Ljava/io/File;

    .line 167
    .line 168
    invoke-direct {v6, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 169
    .line 170
    .line 171
    invoke-virtual {v6}, Ljava/io/File;->length()J

    .line 172
    .line 173
    .line 174
    move-result-wide v6

    .line 175
    iget-wide v9, v4, Lcom/yunpan/appmanage/bean/WpPathBean;->size_long:J

    .line 176
    .line 177
    cmp-long v11, v6, v9

    .line 178
    .line 179
    if-nez v11, :cond_4

    .line 180
    .line 181
    const/4 v6, 0x1

    .line 182
    goto :goto_1

    .line 183
    :cond_4
    const/4 v6, 0x0

    .line 184
    :goto_1
    if-nez v6, :cond_9

    .line 185
    .line 186
    iget-object v7, v8, Lcom/yunpan/appmanage/util/k;->A:Lx9/n5;

    .line 187
    .line 188
    iget v8, v7, Lx9/n5;->a:I

    .line 189
    .line 190
    const/4 v9, 0x3

    .line 191
    if-ne v8, v9, :cond_5

    .line 192
    .line 193
    invoke-static {v4, v3, v7}, Lqa/f;->a(Lcom/yunpan/appmanage/bean/WpPathBean;Ljava/lang/String;Lx9/n5;)Z

    .line 194
    .line 195
    .line 196
    move-result v1

    .line 197
    goto :goto_2

    .line 198
    :cond_5
    const/4 v9, 0x4

    .line 199
    if-ne v8, v9, :cond_6

    .line 200
    .line 201
    invoke-static {v4, v3, v7}, Lcom/bumptech/glide/c;->a(Lcom/yunpan/appmanage/bean/WpPathBean;Ljava/lang/String;Lx9/n5;)Z

    .line 202
    .line 203
    .line 204
    move-result v1

    .line 205
    goto :goto_2

    .line 206
    :cond_6
    const/4 v9, 0x5

    .line 207
    if-ne v8, v9, :cond_7

    .line 208
    .line 209
    invoke-static {v4, v3, v7}, Lcom/bumptech/glide/d;->d(Lcom/yunpan/appmanage/bean/WpPathBean;Ljava/lang/String;Lx9/n5;)Z

    .line 210
    .line 211
    .line 212
    move-result v1

    .line 213
    goto :goto_2

    .line 214
    :cond_7
    const/4 v9, 0x6

    .line 215
    if-ne v8, v9, :cond_8

    .line 216
    .line 217
    invoke-static {v7}, Lif/a;->f(Lx9/n5;)V

    .line 218
    .line 219
    .line 220
    goto :goto_2

    .line 221
    :cond_8
    const/4 v1, 0x7

    .line 222
    if-ne v8, v1, :cond_9

    .line 223
    .line 224
    invoke-static {v4, v3, v7}, Lqa/g;->a(Lcom/yunpan/appmanage/bean/WpPathBean;Ljava/lang/String;Lx9/n5;)Z

    .line 225
    .line 226
    .line 227
    move-result v1

    .line 228
    goto :goto_2

    .line 229
    :cond_9
    move v1, v6

    .line 230
    :goto_2
    if-eqz v1, :cond_a

    .line 231
    .line 232
    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 233
    .line 234
    .line 235
    move-result-object v1

    .line 236
    iget-object v4, v4, Lcom/yunpan/appmanage/bean/WpPathBean;->path:Ljava/lang/String;

    .line 237
    .line 238
    invoke-virtual {v1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 239
    .line 240
    .line 241
    move-result v1

    .line 242
    if-eqz v1, :cond_a

    .line 243
    .line 244
    new-instance v1, Lx9/w5;

    .line 245
    .line 246
    invoke-direct {v1, v5, v3, v2, v0}, Lx9/w5;-><init>(Lx9/y5;Ljava/lang/String;Landroid/widget/ImageView;I)V

    .line 247
    .line 248
    .line 249
    iget-object v0, v5, Lx9/y5;->h:Lcom/yunpan/appmanage/carsdk/u;

    .line 250
    .line 251
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 252
    .line 253
    .line 254
    :cond_a
    :goto_3
    return-void

    .line 255
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
