.class public final synthetic Lha/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Landroid/widget/ImageView;


# direct methods
.method public synthetic constructor <init>(Landroid/widget/ImageView;I)V
    .locals 0

    .line 1
    iput p2, p0, Lha/f;->a:I

    iput-object p1, p0, Lha/f;->b:Landroid/widget/ImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 6

    .line 1
    const p1, 0x7f080237

    .line 2
    .line 3
    .line 4
    const v0, 0x7f080234

    .line 5
    .line 6
    .line 7
    iget-object v1, p0, Lha/f;->b:Landroid/widget/ImageView;

    .line 8
    .line 9
    iget v2, p0, Lha/f;->a:I

    .line 10
    .line 11
    packed-switch v2, :pswitch_data_0

    .line 12
    .line 13
    .line 14
    sget v2, Lcom/yunpan/appmanage/ui/ActivityJiliE01;->F:I

    .line 15
    .line 16
    sget-object v2, Lcom/yunpan/appmanage/util/v;->a:Lcom/yunpan/appmanage/util/w;

    .line 17
    .line 18
    iget-boolean v3, v2, Lcom/yunpan/appmanage/util/w;->J:Z

    .line 19
    .line 20
    xor-int/lit8 v3, v3, 0x1

    .line 21
    .line 22
    iput-boolean v3, v2, Lcom/yunpan/appmanage/util/w;->J:Z

    .line 23
    .line 24
    :try_start_0
    iget-object v4, v2, Lcom/yunpan/appmanage/util/w;->i:Lz7/s;

    .line 25
    .line 26
    const-string v5, "Auto_xingrui_adb_root"

    .line 27
    .line 28
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 29
    .line 30
    .line 31
    move-result-object v3

    .line 32
    invoke-virtual {v4, v5, v3}, Lz7/s;->k(Ljava/lang/String;Ljava/lang/Boolean;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 33
    .line 34
    .line 35
    :catch_0
    invoke-virtual {v2}, Lcom/yunpan/appmanage/util/w;->m()V

    .line 36
    .line 37
    .line 38
    sget-object v2, Lcom/yunpan/appmanage/util/v;->a:Lcom/yunpan/appmanage/util/w;

    .line 39
    .line 40
    iget-boolean v2, v2, Lcom/yunpan/appmanage/util/w;->J:Z

    .line 41
    .line 42
    if-eqz v2, :cond_0

    .line 43
    .line 44
    const p1, 0x7f080234

    .line 45
    .line 46
    .line 47
    :cond_0
    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 48
    .line 49
    .line 50
    return-void

    .line 51
    :pswitch_0
    sget-object v2, Lcom/yunpan/appmanage/util/v;->a:Lcom/yunpan/appmanage/util/w;

    .line 52
    .line 53
    iget-boolean v3, v2, Lcom/yunpan/appmanage/util/w;->M:Z

    .line 54
    .line 55
    xor-int/lit8 v3, v3, 0x1

    .line 56
    .line 57
    iput-boolean v3, v2, Lcom/yunpan/appmanage/util/w;->M:Z

    .line 58
    .line 59
    :try_start_1
    iget-object v4, v2, Lcom/yunpan/appmanage/util/w;->i:Lz7/s;

    .line 60
    .line 61
    const-string v5, "Share_file_success_prompt"

    .line 62
    .line 63
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 64
    .line 65
    .line 66
    move-result-object v3

    .line 67
    invoke-virtual {v4, v5, v3}, Lz7/s;->k(Ljava/lang/String;Ljava/lang/Boolean;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 68
    .line 69
    .line 70
    :catch_1
    invoke-virtual {v2}, Lcom/yunpan/appmanage/util/w;->m()V

    .line 71
    .line 72
    .line 73
    sget-object v2, Lcom/yunpan/appmanage/util/v;->a:Lcom/yunpan/appmanage/util/w;

    .line 74
    .line 75
    iget-boolean v2, v2, Lcom/yunpan/appmanage/util/w;->M:Z

    .line 76
    .line 77
    if-eqz v2, :cond_1

    .line 78
    .line 79
    const p1, 0x7f080234

    .line 80
    .line 81
    .line 82
    :cond_1
    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 83
    .line 84
    .line 85
    return-void

    .line 86
    :pswitch_1
    sget-object v2, Lcom/yunpan/appmanage/util/k;->u0:Ljava/text/DecimalFormat;

    .line 87
    .line 88
    sget-object v2, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 89
    .line 90
    iget-boolean v3, v2, Lcom/yunpan/appmanage/util/k;->V:Z

    .line 91
    .line 92
    xor-int/lit8 v4, v3, 0x1

    .line 93
    .line 94
    iput-boolean v4, v2, Lcom/yunpan/appmanage/util/k;->V:Z

    .line 95
    .line 96
    if-nez v3, :cond_2

    .line 97
    .line 98
    const p1, 0x7f080234

    .line 99
    .line 100
    .line 101
    :cond_2
    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 102
    .line 103
    .line 104
    return-void

    .line 105
    :pswitch_2
    sget-object v2, Lcom/yunpan/appmanage/util/k;->u0:Ljava/text/DecimalFormat;

    .line 106
    .line 107
    sget-object v2, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 108
    .line 109
    iget-boolean v3, v2, Lcom/yunpan/appmanage/util/k;->U:Z

    .line 110
    .line 111
    xor-int/lit8 v4, v3, 0x1

    .line 112
    .line 113
    iput-boolean v4, v2, Lcom/yunpan/appmanage/util/k;->U:Z

    .line 114
    .line 115
    if-nez v3, :cond_3

    .line 116
    .line 117
    const p1, 0x7f080234

    .line 118
    .line 119
    .line 120
    :cond_3
    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 121
    .line 122
    .line 123
    return-void

    .line 124
    :pswitch_3
    sget-object v2, Lcom/yunpan/appmanage/util/v;->a:Lcom/yunpan/appmanage/util/w;

    .line 125
    .line 126
    iget-boolean v3, v2, Lcom/yunpan/appmanage/util/w;->w0:Z

    .line 127
    .line 128
    xor-int/lit8 v3, v3, 0x1

    .line 129
    .line 130
    iput-boolean v3, v2, Lcom/yunpan/appmanage/util/w;->w0:Z

    .line 131
    .line 132
    :try_start_2
    iget-object v4, v2, Lcom/yunpan/appmanage/util/w;->i:Lz7/s;

    .line 133
    .line 134
    const-string v5, "File_search_image_filtration"

    .line 135
    .line 136
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 137
    .line 138
    .line 139
    move-result-object v3

    .line 140
    invoke-virtual {v4, v5, v3}, Lz7/s;->k(Ljava/lang/String;Ljava/lang/Boolean;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 141
    .line 142
    .line 143
    :catch_2
    invoke-virtual {v2}, Lcom/yunpan/appmanage/util/w;->m()V

    .line 144
    .line 145
    .line 146
    sget-object v2, Lcom/yunpan/appmanage/util/v;->a:Lcom/yunpan/appmanage/util/w;

    .line 147
    .line 148
    iget-boolean v2, v2, Lcom/yunpan/appmanage/util/w;->w0:Z

    .line 149
    .line 150
    if-eqz v2, :cond_4

    .line 151
    .line 152
    const p1, 0x7f080234

    .line 153
    .line 154
    .line 155
    :cond_4
    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 156
    .line 157
    .line 158
    return-void

    .line 159
    :pswitch_4
    sget-object v2, Lcom/yunpan/appmanage/util/v;->a:Lcom/yunpan/appmanage/util/w;

    .line 160
    .line 161
    iget-boolean v3, v2, Lcom/yunpan/appmanage/util/w;->q:Z

    .line 162
    .line 163
    xor-int/lit8 v3, v3, 0x1

    .line 164
    .line 165
    iput-boolean v3, v2, Lcom/yunpan/appmanage/util/w;->q:Z

    .line 166
    .line 167
    :try_start_3
    iget-object v4, v2, Lcom/yunpan/appmanage/util/w;->i:Lz7/s;

    .line 168
    .line 169
    const-string v5, "IsHideGn"

    .line 170
    .line 171
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 172
    .line 173
    .line 174
    move-result-object v3

    .line 175
    invoke-virtual {v4, v5, v3}, Lz7/s;->k(Ljava/lang/String;Ljava/lang/Boolean;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 176
    .line 177
    .line 178
    :catch_3
    invoke-virtual {v2}, Lcom/yunpan/appmanage/util/w;->m()V

    .line 179
    .line 180
    .line 181
    sget-object v2, Lcom/yunpan/appmanage/util/v;->a:Lcom/yunpan/appmanage/util/w;

    .line 182
    .line 183
    iget-boolean v2, v2, Lcom/yunpan/appmanage/util/w;->q:Z

    .line 184
    .line 185
    if-eqz v2, :cond_5

    .line 186
    .line 187
    goto :goto_0

    .line 188
    :cond_5
    const p1, 0x7f080234

    .line 189
    .line 190
    .line 191
    :goto_0
    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 192
    .line 193
    .line 194
    return-void

    .line 195
    :pswitch_5
    sget-object p1, Lcom/yunpan/appmanage/util/v;->a:Lcom/yunpan/appmanage/util/w;

    .line 196
    .line 197
    iget-boolean v0, p1, Lcom/yunpan/appmanage/util/w;->q0:Z

    .line 198
    .line 199
    xor-int/lit8 v0, v0, 0x1

    .line 200
    .line 201
    iput-boolean v0, p1, Lcom/yunpan/appmanage/util/w;->q0:Z

    .line 202
    .line 203
    :try_start_4
    iget-object v2, p1, Lcom/yunpan/appmanage/util/w;->i:Lz7/s;

    .line 204
    .line 205
    const-string v3, "File_not_scanning_usb"

    .line 206
    .line 207
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 208
    .line 209
    .line 210
    move-result-object v0

    .line 211
    invoke-virtual {v2, v3, v0}, Lz7/s;->k(Ljava/lang/String;Ljava/lang/Boolean;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    .line 212
    .line 213
    .line 214
    :catch_4
    invoke-virtual {p1}, Lcom/yunpan/appmanage/util/w;->m()V

    .line 215
    .line 216
    .line 217
    sget-object p1, Lcom/yunpan/appmanage/util/v;->a:Lcom/yunpan/appmanage/util/w;

    .line 218
    .line 219
    iget-boolean p1, p1, Lcom/yunpan/appmanage/util/w;->q0:Z

    .line 220
    .line 221
    if-eqz p1, :cond_6

    .line 222
    .line 223
    const p1, 0x7f0800bd

    .line 224
    .line 225
    .line 226
    goto :goto_1

    .line 227
    :cond_6
    const p1, 0x7f0800bc

    .line 228
    .line 229
    .line 230
    :goto_1
    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 231
    .line 232
    .line 233
    return-void

    .line 234
    :pswitch_6
    sget-object v2, Lcom/yunpan/appmanage/util/v;->a:Lcom/yunpan/appmanage/util/w;

    .line 235
    .line 236
    iget-boolean v3, v2, Lcom/yunpan/appmanage/util/w;->C:Z

    .line 237
    .line 238
    xor-int/lit8 v3, v3, 0x1

    .line 239
    .line 240
    iput-boolean v3, v2, Lcom/yunpan/appmanage/util/w;->C:Z

    .line 241
    .line 242
    :try_start_5
    iget-object v4, v2, Lcom/yunpan/appmanage/util/w;->i:Lz7/s;

    .line 243
    .line 244
    const-string v5, "Auto_set_adb_port_5555"

    .line 245
    .line 246
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 247
    .line 248
    .line 249
    move-result-object v3

    .line 250
    invoke-virtual {v4, v5, v3}, Lz7/s;->k(Ljava/lang/String;Ljava/lang/Boolean;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    .line 251
    .line 252
    .line 253
    :catch_5
    invoke-virtual {v2}, Lcom/yunpan/appmanage/util/w;->m()V

    .line 254
    .line 255
    .line 256
    sget-object v2, Lcom/yunpan/appmanage/util/v;->a:Lcom/yunpan/appmanage/util/w;

    .line 257
    .line 258
    iget-boolean v2, v2, Lcom/yunpan/appmanage/util/w;->C:Z

    .line 259
    .line 260
    if-eqz v2, :cond_7

    .line 261
    .line 262
    const p1, 0x7f080234

    .line 263
    .line 264
    .line 265
    :cond_7
    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 266
    .line 267
    .line 268
    return-void

    .line 269
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
