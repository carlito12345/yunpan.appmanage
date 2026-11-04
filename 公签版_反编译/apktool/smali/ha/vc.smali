.class public final Lha/vc;
.super Lha/a4;
.source "SourceFile"


# instance fields
.field public final synthetic g:I

.field public final h:Lha/h8;

.field public i:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/content/Context;Lha/h8;I)V
    .locals 0

    .line 1
    iput p4, p0, Lha/vc;->g:I

    .line 2
    .line 3
    packed-switch p4, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    const p4, 0x7f0e00f5

    .line 7
    .line 8
    .line 9
    invoke-direct {p0, p1, p2, p4}, Lha/a4;-><init>(Landroid/app/Activity;Landroid/content/Context;I)V

    .line 10
    .line 11
    .line 12
    const-string p1, ""

    .line 13
    .line 14
    iput-object p1, p0, Lha/vc;->i:Ljava/lang/String;

    .line 15
    .line 16
    iput-object p3, p0, Lha/vc;->h:Lha/h8;

    .line 17
    .line 18
    return-void

    .line 19
    :pswitch_0
    const p4, 0x7f0e0107

    .line 20
    .line 21
    .line 22
    invoke-direct {p0, p1, p2, p4}, Lha/a4;-><init>(Landroid/app/Activity;Landroid/content/Context;I)V

    .line 23
    .line 24
    .line 25
    iput-object p3, p0, Lha/vc;->h:Lha/h8;

    .line 26
    .line 27
    return-void

    .line 28
    nop

    .line 29
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public final onCreate(Landroid/os/Bundle;)V
    .locals 9

    .line 1
    iget v0, p0, Lha/vc;->g:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    invoke-super {p0, p1}, Lha/a4;->onCreate(Landroid/os/Bundle;)V

    .line 7
    .line 8
    .line 9
    const p1, 0x7f0b05f7

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    check-cast p1, Landroid/widget/TextView;

    .line 17
    .line 18
    new-instance v0, Ljava/util/ArrayList;

    .line 19
    .line 20
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 21
    .line 22
    .line 23
    const-string v1, "d"

    .line 24
    .line 25
    iput-object v1, p0, Lha/vc;->i:Ljava/lang/String;

    .line 26
    .line 27
    const-string v1, "\u7b49\u7ea7\uff1a\u8c03\u8bd5  D"

    .line 28
    .line 29
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    const-string v1, "\u7b49\u7ea7\uff1a\u4fe1\u606f  I"

    .line 36
    .line 37
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    const-string v1, "\u7b49\u7ea7\uff1a\u8b66\u544a  W"

    .line 41
    .line 42
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 43
    .line 44
    .line 45
    const-string v1, "\u7b49\u7ea7\uff1a\u8be6\u7ec6  V"

    .line 46
    .line 47
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    const-string v1, "\u7b49\u7ea7\uff1a\u9519\u8bef  E"

    .line 51
    .line 52
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 53
    .line 54
    .line 55
    const v1, 0x7f0b05f6

    .line 56
    .line 57
    .line 58
    invoke-virtual {p0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    new-instance v2, Lha/s6;

    .line 63
    .line 64
    const/4 v3, 0x7

    .line 65
    invoke-direct {v2, p0, v0, p1, v3}, Lha/s6;-><init>(Ljava/lang/Object;Ljava/lang/Object;Landroid/widget/TextView;I)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 69
    .line 70
    .line 71
    const p1, 0x7f0b0334

    .line 72
    .line 73
    .line 74
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 75
    .line 76
    .line 77
    move-result-object p1

    .line 78
    check-cast p1, Landroid/widget/TextView;

    .line 79
    .line 80
    const v0, 0x7f0b044d

    .line 81
    .line 82
    .line 83
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    check-cast v0, Landroid/widget/EditText;

    .line 88
    .line 89
    const v1, 0x7f0b0441

    .line 90
    .line 91
    .line 92
    invoke-virtual {p0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 93
    .line 94
    .line 95
    move-result-object v1

    .line 96
    check-cast v1, Landroid/widget/EditText;

    .line 97
    .line 98
    new-instance v2, Lha/r6;

    .line 99
    .line 100
    const/4 v3, 0x1

    .line 101
    invoke-direct {v2, v3, v1}, Lha/r6;-><init>(ILandroid/widget/EditText;)V

    .line 102
    .line 103
    .line 104
    invoke-virtual {v0, v2}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 105
    .line 106
    .line 107
    new-instance v2, Lha/j1;

    .line 108
    .line 109
    const/4 v3, 0x5

    .line 110
    invoke-direct {v2, p1, v0, v3}, Lha/j1;-><init>(Landroid/widget/TextView;Landroid/widget/EditText;I)V

    .line 111
    .line 112
    .line 113
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 114
    .line 115
    .line 116
    new-instance v2, Lha/s6;

    .line 117
    .line 118
    const/4 v3, 0x6

    .line 119
    invoke-direct {v2, p0, v0, v1, v3}, Lha/s6;-><init>(Ljava/lang/Object;Ljava/lang/Object;Landroid/widget/TextView;I)V

    .line 120
    .line 121
    .line 122
    invoke-virtual {p1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 123
    .line 124
    .line 125
    return-void

    .line 126
    :pswitch_0
    invoke-super {p0, p1}, Lha/a4;->onCreate(Landroid/os/Bundle;)V

    .line 127
    .line 128
    .line 129
    const p1, 0x7f0b05c2

    .line 130
    .line 131
    .line 132
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 133
    .line 134
    .line 135
    move-result-object p1

    .line 136
    check-cast p1, Landroid/widget/TextView;

    .line 137
    .line 138
    const v0, 0x7f0b05cd

    .line 139
    .line 140
    .line 141
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 142
    .line 143
    .line 144
    move-result-object v0

    .line 145
    check-cast v0, Landroid/widget/TextView;

    .line 146
    .line 147
    const v0, 0x7f0b0428

    .line 148
    .line 149
    .line 150
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 151
    .line 152
    .line 153
    move-result-object v0

    .line 154
    check-cast v0, Landroid/widget/EditText;

    .line 155
    .line 156
    const v1, 0x7f0b03f3

    .line 157
    .line 158
    .line 159
    invoke-virtual {p0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 160
    .line 161
    .line 162
    move-result-object v1

    .line 163
    move-object v7, v1

    .line 164
    check-cast v7, Landroid/widget/TextView;

    .line 165
    .line 166
    const v1, 0x7f0b03b5

    .line 167
    .line 168
    .line 169
    invoke-virtual {p0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 170
    .line 171
    .line 172
    move-result-object v1

    .line 173
    check-cast v1, Landroid/widget/TextView;

    .line 174
    .line 175
    const v2, 0x7f0b03b6

    .line 176
    .line 177
    .line 178
    invoke-virtual {p0, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 179
    .line 180
    .line 181
    move-result-object v2

    .line 182
    move-object v8, v2

    .line 183
    check-cast v8, Landroid/widget/TextView;

    .line 184
    .line 185
    new-instance v2, Lc6/c;

    .line 186
    .line 187
    const/16 v3, 0x17

    .line 188
    .line 189
    invoke-direct {v2, p0, v3, p1}, Lc6/c;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 190
    .line 191
    .line 192
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 193
    .line 194
    .line 195
    new-instance p1, Lha/uc;

    .line 196
    .line 197
    const/4 v1, 0x0

    .line 198
    invoke-direct {p1, v7, v1}, Lha/uc;-><init>(Landroid/view/KeyEvent$Callback;I)V

    .line 199
    .line 200
    .line 201
    invoke-virtual {v0, p1}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 202
    .line 203
    .line 204
    new-instance v3, Ljava/util/ArrayList;

    .line 205
    .line 206
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 207
    .line 208
    .line 209
    const-string p1, "\u9ed8\u8ba4"

    .line 210
    .line 211
    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 212
    .line 213
    .line 214
    const-string p1, "1/2 \u5de6"

    .line 215
    .line 216
    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 217
    .line 218
    .line 219
    const-string p1, "1/2 \u53f3"

    .line 220
    .line 221
    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 222
    .line 223
    .line 224
    const-string p1, "1/2 \u4e0a"

    .line 225
    .line 226
    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 227
    .line 228
    .line 229
    const-string p1, "1/2 \u4e0b"

    .line 230
    .line 231
    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 232
    .line 233
    .line 234
    const-string p1, "1/3 \u5de6"

    .line 235
    .line 236
    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 237
    .line 238
    .line 239
    const-string p1, "1/3 \u4e2d"

    .line 240
    .line 241
    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 242
    .line 243
    .line 244
    const-string v1, "1/3 \u53f3"

    .line 245
    .line 246
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 247
    .line 248
    .line 249
    const-string v1, "1/3 \u4e0a"

    .line 250
    .line 251
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 252
    .line 253
    .line 254
    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 255
    .line 256
    .line 257
    const-string p1, "1/3 \u4e0b"

    .line 258
    .line 259
    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 260
    .line 261
    .line 262
    const-string p1, "1/4 \u5de6\u4e0a"

    .line 263
    .line 264
    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 265
    .line 266
    .line 267
    const-string p1, "1/4 \u53f3\u4e0a"

    .line 268
    .line 269
    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 270
    .line 271
    .line 272
    const-string p1, "1/4 \u5de6\u4e0b"

    .line 273
    .line 274
    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 275
    .line 276
    .line 277
    const-string p1, "1/4 \u53f3\u4e0b"

    .line 278
    .line 279
    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 280
    .line 281
    .line 282
    const-string p1, "2/3 \u5de6"

    .line 283
    .line 284
    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 285
    .line 286
    .line 287
    const-string p1, "2/3 \u53f3"

    .line 288
    .line 289
    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 290
    .line 291
    .line 292
    iget-object p1, p0, Lha/a4;->b:Landroid/content/Context;

    .line 293
    .line 294
    invoke-static {p1}, Lif/a;->R(Landroid/content/Context;)Landroid/graphics/Point;

    .line 295
    .line 296
    .line 297
    move-result-object v5

    .line 298
    new-instance p1, Lha/tc;

    .line 299
    .line 300
    const/4 v6, 0x0

    .line 301
    move-object v1, p1

    .line 302
    move-object v2, p0

    .line 303
    move-object v4, v0

    .line 304
    invoke-direct/range {v1 .. v6}, Lha/tc;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 305
    .line 306
    .line 307
    invoke-virtual {v8, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 308
    .line 309
    .line 310
    new-instance p1, Lc6/c;

    .line 311
    .line 312
    const/16 v1, 0x18

    .line 313
    .line 314
    invoke-direct {p1, p0, v1, v0}, Lc6/c;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 315
    .line 316
    .line 317
    invoke-virtual {v7, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 318
    .line 319
    .line 320
    return-void

    .line 321
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
