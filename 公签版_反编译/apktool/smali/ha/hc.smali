.class public final synthetic Lha/hc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lha/w;


# direct methods
.method public synthetic constructor <init>(Lha/w;I)V
    .locals 0

    .line 1
    iput p2, p0, Lha/hc;->a:I

    iput-object p1, p0, Lha/hc;->b:Lha/w;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 3

    .line 1
    iget v0, p0, Lha/hc;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lha/hc;->b:Lha/w;

    .line 7
    .line 8
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    .line 12
    .line 13
    .line 14
    move-result p3

    .line 15
    const/16 v0, 0x13

    .line 16
    .line 17
    const/16 v1, 0x14

    .line 18
    .line 19
    const/4 v2, 0x1

    .line 20
    if-nez p3, :cond_1

    .line 21
    .line 22
    if-ne p2, v1, :cond_0

    .line 23
    .line 24
    iget-object p1, p1, Lha/w;->j:Landroid/widget/TextView;

    .line 25
    .line 26
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 27
    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    if-ne p2, v0, :cond_1

    .line 31
    .line 32
    iget-object p1, p1, Lha/w;->q:Ljava/lang/Object;

    .line 33
    .line 34
    check-cast p1, Landroid/widget/EditText;

    .line 35
    .line 36
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 37
    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_1
    if-eq p2, v1, :cond_3

    .line 41
    .line 42
    if-ne p2, v0, :cond_2

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_2
    const/4 v2, 0x0

    .line 46
    :cond_3
    :goto_0
    return v2

    .line 47
    :pswitch_0
    iget-object p1, p0, Lha/hc;->b:Lha/w;

    .line 48
    .line 49
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 50
    .line 51
    .line 52
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    .line 53
    .line 54
    .line 55
    move-result p3

    .line 56
    const/16 v0, 0x13

    .line 57
    .line 58
    const/16 v1, 0x14

    .line 59
    .line 60
    const/4 v2, 0x1

    .line 61
    if-nez p3, :cond_5

    .line 62
    .line 63
    if-ne p2, v1, :cond_4

    .line 64
    .line 65
    iget-object p1, p1, Lha/w;->i:Landroid/widget/TextView;

    .line 66
    .line 67
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 68
    .line 69
    .line 70
    goto :goto_1

    .line 71
    :cond_4
    if-ne p2, v0, :cond_5

    .line 72
    .line 73
    iget-object p1, p1, Lha/w;->p:Ljava/lang/Object;

    .line 74
    .line 75
    check-cast p1, Landroid/widget/EditText;

    .line 76
    .line 77
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 78
    .line 79
    .line 80
    goto :goto_1

    .line 81
    :cond_5
    if-eq p2, v1, :cond_7

    .line 82
    .line 83
    if-ne p2, v0, :cond_6

    .line 84
    .line 85
    goto :goto_1

    .line 86
    :cond_6
    const/4 v2, 0x0

    .line 87
    :cond_7
    :goto_1
    return v2

    .line 88
    :pswitch_1
    iget-object p1, p0, Lha/hc;->b:Lha/w;

    .line 89
    .line 90
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 91
    .line 92
    .line 93
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    .line 94
    .line 95
    .line 96
    move-result p3

    .line 97
    const/16 v0, 0x13

    .line 98
    .line 99
    const/16 v1, 0x14

    .line 100
    .line 101
    const/4 v2, 0x1

    .line 102
    if-nez p3, :cond_9

    .line 103
    .line 104
    if-ne p2, v1, :cond_8

    .line 105
    .line 106
    iget-object p1, p1, Lha/w;->q:Ljava/lang/Object;

    .line 107
    .line 108
    check-cast p1, Landroid/widget/EditText;

    .line 109
    .line 110
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 111
    .line 112
    .line 113
    goto :goto_2

    .line 114
    :cond_8
    if-ne p2, v0, :cond_9

    .line 115
    .line 116
    iget-object p1, p1, Lha/w;->n:Ljava/lang/Object;

    .line 117
    .line 118
    check-cast p1, Landroid/widget/EditText;

    .line 119
    .line 120
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 121
    .line 122
    .line 123
    goto :goto_2

    .line 124
    :cond_9
    if-eq p2, v1, :cond_b

    .line 125
    .line 126
    if-ne p2, v0, :cond_a

    .line 127
    .line 128
    goto :goto_2

    .line 129
    :cond_a
    const/4 v2, 0x0

    .line 130
    :cond_b
    :goto_2
    return v2

    .line 131
    :pswitch_2
    iget-object p1, p0, Lha/hc;->b:Lha/w;

    .line 132
    .line 133
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 134
    .line 135
    .line 136
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    .line 137
    .line 138
    .line 139
    move-result p3

    .line 140
    const/16 v0, 0x13

    .line 141
    .line 142
    const/16 v1, 0x14

    .line 143
    .line 144
    const/4 v2, 0x1

    .line 145
    if-nez p3, :cond_d

    .line 146
    .line 147
    if-ne p2, v1, :cond_c

    .line 148
    .line 149
    iget-object p1, p1, Lha/w;->p:Ljava/lang/Object;

    .line 150
    .line 151
    check-cast p1, Landroid/widget/EditText;

    .line 152
    .line 153
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 154
    .line 155
    .line 156
    goto :goto_3

    .line 157
    :cond_c
    if-ne p2, v0, :cond_d

    .line 158
    .line 159
    iget-object p1, p1, Lha/w;->m:Landroid/view/View;

    .line 160
    .line 161
    check-cast p1, Landroid/widget/EditText;

    .line 162
    .line 163
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 164
    .line 165
    .line 166
    goto :goto_3

    .line 167
    :cond_d
    if-eq p2, v1, :cond_f

    .line 168
    .line 169
    if-ne p2, v0, :cond_e

    .line 170
    .line 171
    goto :goto_3

    .line 172
    :cond_e
    const/4 v2, 0x0

    .line 173
    :cond_f
    :goto_3
    return v2

    .line 174
    :pswitch_3
    iget-object p1, p0, Lha/hc;->b:Lha/w;

    .line 175
    .line 176
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 177
    .line 178
    .line 179
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    .line 180
    .line 181
    .line 182
    move-result p3

    .line 183
    const/4 v0, 0x1

    .line 184
    const/16 v1, 0x14

    .line 185
    .line 186
    if-nez p3, :cond_10

    .line 187
    .line 188
    if-ne p2, v1, :cond_10

    .line 189
    .line 190
    iget-object p1, p1, Lha/w;->n:Ljava/lang/Object;

    .line 191
    .line 192
    check-cast p1, Landroid/widget/EditText;

    .line 193
    .line 194
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 195
    .line 196
    .line 197
    goto :goto_4

    .line 198
    :cond_10
    if-eq p2, v1, :cond_12

    .line 199
    .line 200
    const/16 p1, 0x13

    .line 201
    .line 202
    if-ne p2, p1, :cond_11

    .line 203
    .line 204
    goto :goto_4

    .line 205
    :cond_11
    const/4 v0, 0x0

    .line 206
    :cond_12
    :goto_4
    return v0

    .line 207
    :pswitch_4
    iget-object v0, p0, Lha/hc;->b:Lha/w;

    .line 208
    .line 209
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 210
    .line 211
    .line 212
    const/16 v1, 0x13

    .line 213
    .line 214
    const/4 v2, 0x1

    .line 215
    if-ne p2, v1, :cond_13

    .line 216
    .line 217
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    .line 218
    .line 219
    .line 220
    move-result p1

    .line 221
    if-nez p1, :cond_17

    .line 222
    .line 223
    iget-object p1, v0, Lha/w;->i:Landroid/widget/TextView;

    .line 224
    .line 225
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 226
    .line 227
    .line 228
    goto :goto_5

    .line 229
    :cond_13
    const/16 v0, 0x15

    .line 230
    .line 231
    if-ne p2, v0, :cond_14

    .line 232
    .line 233
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    .line 234
    .line 235
    .line 236
    move-result p2

    .line 237
    if-nez p2, :cond_17

    .line 238
    .line 239
    const/16 p2, 0x14d

    .line 240
    .line 241
    invoke-static {p2, p1}, Ls1/g;->W(ILandroid/view/View;)V

    .line 242
    .line 243
    .line 244
    goto :goto_5

    .line 245
    :cond_14
    const/16 v0, 0x16

    .line 246
    .line 247
    if-ne p2, v0, :cond_15

    .line 248
    .line 249
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    .line 250
    .line 251
    .line 252
    move-result p2

    .line 253
    if-nez p2, :cond_17

    .line 254
    .line 255
    const/16 p2, 0x14c

    .line 256
    .line 257
    invoke-static {p2, p1}, Ls1/g;->W(ILandroid/view/View;)V

    .line 258
    .line 259
    .line 260
    goto :goto_5

    .line 261
    :cond_15
    const/16 v0, 0x14

    .line 262
    .line 263
    if-ne p2, v0, :cond_16

    .line 264
    .line 265
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    .line 266
    .line 267
    .line 268
    move-result p2

    .line 269
    if-nez p2, :cond_17

    .line 270
    .line 271
    const/16 p2, 0x14b

    .line 272
    .line 273
    invoke-static {p2, p1}, Ls1/g;->Z(ILandroid/view/View;)V

    .line 274
    .line 275
    .line 276
    goto :goto_5

    .line 277
    :cond_16
    const/4 v2, 0x0

    .line 278
    :cond_17
    :goto_5
    return v2

    .line 279
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
