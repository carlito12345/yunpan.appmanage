.class public final synthetic Ld2/w;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ld2/b0;
.implements Lu1/f;
.implements Lec/d;
.implements Lea/g;
.implements Lha/he;
.implements Lea/e;
.implements Lea/b;
.implements Lc6/e;
.implements Lha/ea;
.implements Lha/n7;
.implements Lfa/w;
.implements Lha/q0;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p2, p0, Ld2/w;->a:I

    iput-object p1, p0, Ld2/w;->b:Ljava/lang/Object;

    iput-object p3, p0, Ld2/w;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 8

    .line 1
    iget v0, p0, Ld2/w;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Ld2/w;->b:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v0, Lha/e9;

    .line 9
    .line 10
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    const-string v1, ":"

    .line 14
    .line 15
    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    const/4 v2, -0x1

    .line 20
    if-ne v1, v2, :cond_0

    .line 21
    .line 22
    const-string p1, "\u6b64\u6761\u65e5\u5fd7\u4e0d\u7b26\u5408"

    .line 23
    .line 24
    invoke-static {p1}, Lcom/hjq/toast/Toaster;->show(Ljava/lang/CharSequence;)V

    .line 25
    .line 26
    .line 27
    goto :goto_1

    .line 28
    :cond_0
    iget-object v2, v0, Lha/e9;->h:Landroid/widget/EditText;

    .line 29
    .line 30
    iget-object v3, p0, Ld2/w;->c:Ljava/lang/Object;

    .line 31
    .line 32
    check-cast v3, Landroid/widget/EditText;

    .line 33
    .line 34
    const/4 v4, 0x0

    .line 35
    if-ne v3, v2, :cond_1

    .line 36
    .line 37
    invoke-virtual {p1, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v2

    .line 45
    iput-object v2, v0, Lha/e9;->C:Ljava/lang/String;

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_1
    iget-object v2, v0, Lha/e9;->i:Landroid/widget/EditText;

    .line 49
    .line 50
    if-ne v3, v2, :cond_2

    .line 51
    .line 52
    invoke-virtual {p1, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v2

    .line 56
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v2

    .line 60
    iput-object v2, v0, Lha/e9;->D:Ljava/lang/String;

    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_2
    iget-object v2, v0, Lha/e9;->j:Landroid/widget/EditText;

    .line 64
    .line 65
    if-ne v3, v2, :cond_3

    .line 66
    .line 67
    invoke-virtual {p1, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v2

    .line 71
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v2

    .line 75
    iput-object v2, v0, Lha/e9;->E:Ljava/lang/String;

    .line 76
    .line 77
    :cond_3
    :goto_0
    add-int/lit8 v1, v1, 0x1

    .line 78
    .line 79
    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object p1

    .line 83
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object p1

    .line 87
    invoke-virtual {v3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 88
    .line 89
    .line 90
    :goto_1
    return-void

    .line 91
    :pswitch_0
    iget-object v0, p0, Ld2/w;->b:Ljava/lang/Object;

    .line 92
    .line 93
    check-cast v0, Lha/p;

    .line 94
    .line 95
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 96
    .line 97
    .line 98
    const-string v1, ":"

    .line 99
    .line 100
    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 101
    .line 102
    .line 103
    move-result v1

    .line 104
    const/4 v2, -0x1

    .line 105
    if-ne v1, v2, :cond_4

    .line 106
    .line 107
    const-string p1, "\u6b64\u6761\u65e5\u5fd7\u4e0d\u7b26\u5408"

    .line 108
    .line 109
    invoke-static {p1}, Lcom/hjq/toast/Toaster;->show(Ljava/lang/CharSequence;)V

    .line 110
    .line 111
    .line 112
    goto/16 :goto_2

    .line 113
    .line 114
    :cond_4
    add-int/lit8 v2, v1, 0x1

    .line 115
    .line 116
    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object v2

    .line 120
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object v2

    .line 124
    iget-object v3, p0, Ld2/w;->c:Ljava/lang/Object;

    .line 125
    .line 126
    check-cast v3, Landroid/widget/EditText;

    .line 127
    .line 128
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 129
    .line 130
    .line 131
    iget-object v2, v0, Lha/p;->m:Landroid/widget/EditText;

    .line 132
    .line 133
    iget-object v4, v0, Lha/p;->B:[I

    .line 134
    .line 135
    iget-object v5, v0, Lha/p;->A:[Ljava/lang/String;

    .line 136
    .line 137
    const/4 v6, 0x0

    .line 138
    if-ne v3, v2, :cond_5

    .line 139
    .line 140
    invoke-virtual {p1, v6, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object v0

    .line 144
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 145
    .line 146
    .line 147
    move-result-object v0

    .line 148
    aput-object v0, v5, v6

    .line 149
    .line 150
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 151
    .line 152
    .line 153
    move-result p1

    .line 154
    add-int/lit8 p1, p1, -0x5

    .line 155
    .line 156
    aput p1, v4, v6

    .line 157
    .line 158
    goto :goto_2

    .line 159
    :cond_5
    iget-object v2, v0, Lha/p;->n:Landroid/widget/EditText;

    .line 160
    .line 161
    if-ne v3, v2, :cond_6

    .line 162
    .line 163
    invoke-virtual {p1, v6, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 164
    .line 165
    .line 166
    move-result-object v0

    .line 167
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 168
    .line 169
    .line 170
    move-result-object v0

    .line 171
    const/4 v1, 0x1

    .line 172
    aput-object v0, v5, v1

    .line 173
    .line 174
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 175
    .line 176
    .line 177
    move-result p1

    .line 178
    add-int/lit8 p1, p1, -0x5

    .line 179
    .line 180
    aput p1, v4, v1

    .line 181
    .line 182
    goto :goto_2

    .line 183
    :cond_6
    iget-object v2, v0, Lha/p;->p:Landroid/widget/EditText;

    .line 184
    .line 185
    const/4 v7, 0x3

    .line 186
    if-ne v3, v2, :cond_7

    .line 187
    .line 188
    invoke-virtual {p1, v6, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 189
    .line 190
    .line 191
    move-result-object v0

    .line 192
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 193
    .line 194
    .line 195
    move-result-object v0

    .line 196
    const/4 v1, 0x2

    .line 197
    aput-object v0, v5, v1

    .line 198
    .line 199
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 200
    .line 201
    .line 202
    move-result p1

    .line 203
    add-int/lit8 p1, p1, -0x5

    .line 204
    .line 205
    aput p1, v4, v7

    .line 206
    .line 207
    goto :goto_2

    .line 208
    :cond_7
    iget-object v2, v0, Lha/p;->q:Landroid/widget/EditText;

    .line 209
    .line 210
    if-ne v3, v2, :cond_8

    .line 211
    .line 212
    invoke-virtual {p1, v6, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 213
    .line 214
    .line 215
    move-result-object v0

    .line 216
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 217
    .line 218
    .line 219
    move-result-object v0

    .line 220
    aput-object v0, v5, v7

    .line 221
    .line 222
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 223
    .line 224
    .line 225
    move-result p1

    .line 226
    add-int/lit8 p1, p1, -0x5

    .line 227
    .line 228
    aput p1, v4, v7

    .line 229
    .line 230
    goto :goto_2

    .line 231
    :cond_8
    iget-object v0, v0, Lha/p;->r:Landroid/widget/EditText;

    .line 232
    .line 233
    if-ne v3, v0, :cond_9

    .line 234
    .line 235
    invoke-virtual {p1, v6, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 236
    .line 237
    .line 238
    move-result-object v0

    .line 239
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 240
    .line 241
    .line 242
    move-result-object v0

    .line 243
    const/4 v1, 0x4

    .line 244
    aput-object v0, v5, v1

    .line 245
    .line 246
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 247
    .line 248
    .line 249
    move-result p1

    .line 250
    add-int/lit8 p1, p1, -0x5

    .line 251
    .line 252
    aput p1, v4, v1

    .line 253
    .line 254
    :cond_9
    :goto_2
    return-void

    .line 255
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method

.method public accept(Ljava/lang/Object;)V
    .locals 3

    .line 1
    check-cast p1, Lf2/i0;

    .line 2
    .line 3
    iget-object v0, p0, Ld2/w;->b:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast v0, Lb2/d;

    .line 6
    .line 7
    iget v1, v0, Lb2/d;->a:I

    .line 8
    .line 9
    iget-object v0, v0, Lb2/d;->b:Lf2/c0;

    .line 10
    .line 11
    iget-object v2, p0, Ld2/w;->c:Ljava/lang/Object;

    .line 12
    .line 13
    check-cast v2, Lf2/y;

    .line 14
    .line 15
    invoke-interface {p1, v1, v0, v2}, Lf2/i0;->l(ILf2/c0;Lf2/y;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public b(I)V
    .locals 21

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v1, p1

    .line 4
    .line 5
    const/16 v3, 0x15

    .line 6
    .line 7
    const/4 v4, 0x3

    .line 8
    const/4 v5, 0x2

    .line 9
    const/4 v6, 0x0

    .line 10
    const/4 v7, 0x4

    .line 11
    const/4 v8, 0x1

    .line 12
    iget-object v9, v0, Ld2/w;->c:Ljava/lang/Object;

    .line 13
    .line 14
    iget-object v10, v0, Ld2/w;->b:Ljava/lang/Object;

    .line 15
    .line 16
    iget v11, v0, Ld2/w;->a:I

    .line 17
    .line 18
    packed-switch v11, :pswitch_data_0

    .line 19
    .line 20
    .line 21
    :pswitch_0
    check-cast v10, Lha/vc;

    .line 22
    .line 23
    check-cast v9, Landroid/widget/TextView;

    .line 24
    .line 25
    if-nez v1, :cond_0

    .line 26
    .line 27
    const-string v1, "d"

    .line 28
    .line 29
    iput-object v1, v10, Lha/vc;->i:Ljava/lang/String;

    .line 30
    .line 31
    const-string v1, "\u7b49\u7ea7\uff1a\u8c03\u8bd5  D"

    .line 32
    .line 33
    invoke-virtual {v9, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_0
    if-ne v1, v8, :cond_1

    .line 38
    .line 39
    const-string v1, "i"

    .line 40
    .line 41
    iput-object v1, v10, Lha/vc;->i:Ljava/lang/String;

    .line 42
    .line 43
    const-string v1, "\u7b49\u7ea7\uff1a\u4fe1\u606f  I"

    .line 44
    .line 45
    invoke-virtual {v9, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 46
    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_1
    if-ne v1, v5, :cond_2

    .line 50
    .line 51
    const-string v1, "w"

    .line 52
    .line 53
    iput-object v1, v10, Lha/vc;->i:Ljava/lang/String;

    .line 54
    .line 55
    const-string v1, "\u7b49\u7ea7\uff1a\u8b66\u544a  W"

    .line 56
    .line 57
    invoke-virtual {v9, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 58
    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_2
    if-ne v1, v4, :cond_3

    .line 62
    .line 63
    const-string v1, "v"

    .line 64
    .line 65
    iput-object v1, v10, Lha/vc;->i:Ljava/lang/String;

    .line 66
    .line 67
    const-string v1, "\u7b49\u7ea7\uff1a\u8be6\u7ec6  V"

    .line 68
    .line 69
    invoke-virtual {v9, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 70
    .line 71
    .line 72
    goto :goto_0

    .line 73
    :cond_3
    if-ne v1, v7, :cond_4

    .line 74
    .line 75
    const-string v1, "e"

    .line 76
    .line 77
    iput-object v1, v10, Lha/vc;->i:Ljava/lang/String;

    .line 78
    .line 79
    const-string v1, "\u7b49\u7ea7\uff1a\u9519\u8bef  E"

    .line 80
    .line 81
    invoke-virtual {v9, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 82
    .line 83
    .line 84
    goto :goto_0

    .line 85
    :cond_4
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 86
    .line 87
    .line 88
    :goto_0
    return-void

    .line 89
    :pswitch_1
    check-cast v10, Lha/ba;

    .line 90
    .line 91
    iget-object v2, v10, Lha/ba;->m:Landroid/widget/EditText;

    .line 92
    .line 93
    check-cast v9, [Ljava/lang/String;

    .line 94
    .line 95
    aget-object v1, v9, v1

    .line 96
    .line 97
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 98
    .line 99
    .line 100
    return-void

    .line 101
    :pswitch_2
    check-cast v10, Lha/a9;

    .line 102
    .line 103
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 104
    .line 105
    .line 106
    check-cast v9, Ljava/util/ArrayList;

    .line 107
    .line 108
    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 109
    .line 110
    .line 111
    move-result-object v1

    .line 112
    check-cast v1, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;

    .line 113
    .line 114
    iget v9, v1, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;->gn_type:I

    .line 115
    .line 116
    const/4 v11, -0x1

    .line 117
    if-ne v9, v11, :cond_5

    .line 118
    .line 119
    goto/16 :goto_e

    .line 120
    .line 121
    :cond_5
    const/16 v11, 0x2712

    .line 122
    .line 123
    if-lt v9, v11, :cond_6

    .line 124
    .line 125
    const/16 v12, 0x2774

    .line 126
    .line 127
    if-ge v9, v12, :cond_6

    .line 128
    .line 129
    sget v9, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 130
    .line 131
    const/16 v12, 0x13

    .line 132
    .line 133
    if-ne v9, v12, :cond_6

    .line 134
    .line 135
    const-string v9, "\u6b64\u529f\u80fd\u4e0d\u9002\u5408\u60a8\u7684\u7cfb\u7edf\uff08\u5b89\u53534.4\uff09"

    .line 136
    .line 137
    invoke-static {v9}, Lcom/yunpan/appmanage/util/a0;->t(Ljava/lang/String;)V

    .line 138
    .line 139
    .line 140
    :cond_6
    iget v9, v1, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;->gn_type:I

    .line 141
    .line 142
    const/16 v12, 0x2713

    .line 143
    .line 144
    if-eq v9, v12, :cond_28

    .line 145
    .line 146
    const/16 v12, 0x2715

    .line 147
    .line 148
    if-ne v9, v12, :cond_7

    .line 149
    .line 150
    goto/16 :goto_d

    .line 151
    .line 152
    :cond_7
    iget-object v12, v10, Lha/a4;->a:Landroid/app/Activity;

    .line 153
    .line 154
    iget-object v13, v10, Lha/a4;->b:Landroid/content/Context;

    .line 155
    .line 156
    const/16 v14, 0x64

    .line 157
    .line 158
    if-eq v9, v14, :cond_27

    .line 159
    .line 160
    const/16 v14, 0x65

    .line 161
    .line 162
    if-ne v9, v14, :cond_8

    .line 163
    .line 164
    goto/16 :goto_c

    .line 165
    .line 166
    :cond_8
    const/16 v14, 0xcc

    .line 167
    .line 168
    if-eq v9, v14, :cond_1e

    .line 169
    .line 170
    const/16 v14, 0xcd

    .line 171
    .line 172
    if-ne v9, v14, :cond_9

    .line 173
    .line 174
    goto/16 :goto_7

    .line 175
    .line 176
    :cond_9
    iget-object v14, v10, Lha/a9;->s:Lz7/s;

    .line 177
    .line 178
    const/16 v15, 0x130

    .line 179
    .line 180
    const-string v2, "event"

    .line 181
    .line 182
    const-string v4, "name"

    .line 183
    .line 184
    const-string v5, "type"

    .line 185
    .line 186
    if-eq v9, v15, :cond_18

    .line 187
    .line 188
    const/16 v15, 0x131

    .line 189
    .line 190
    if-ne v9, v15, :cond_a

    .line 191
    .line 192
    goto/16 :goto_6

    .line 193
    .line 194
    :cond_a
    const/16 v15, 0x160

    .line 195
    .line 196
    if-ne v9, v15, :cond_10

    .line 197
    .line 198
    const-string v2, "usb"

    .line 199
    .line 200
    invoke-virtual {v13, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 201
    .line 202
    .line 203
    move-result-object v2

    .line 204
    check-cast v2, Landroid/hardware/usb/UsbManager;

    .line 205
    .line 206
    invoke-virtual {v2}, Landroid/hardware/usb/UsbManager;->getDeviceList()Ljava/util/HashMap;

    .line 207
    .line 208
    .line 209
    move-result-object v2

    .line 210
    if-eqz v2, :cond_f

    .line 211
    .line 212
    invoke-virtual {v2}, Ljava/util/HashMap;->isEmpty()Z

    .line 213
    .line 214
    .line 215
    move-result v4

    .line 216
    if-eqz v4, :cond_b

    .line 217
    .line 218
    goto/16 :goto_3

    .line 219
    .line 220
    :cond_b
    new-instance v4, Ljava/util/ArrayList;

    .line 221
    .line 222
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 223
    .line 224
    .line 225
    new-instance v5, Ljava/util/ArrayList;

    .line 226
    .line 227
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 228
    .line 229
    .line 230
    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 231
    .line 232
    .line 233
    move-result-object v2

    .line 234
    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 235
    .line 236
    .line 237
    move-result-object v2

    .line 238
    :cond_c
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 239
    .line 240
    .line 241
    move-result v6

    .line 242
    if-eqz v6, :cond_d

    .line 243
    .line 244
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 245
    .line 246
    .line 247
    move-result-object v6

    .line 248
    check-cast v6, Landroid/hardware/usb/UsbDevice;

    .line 249
    .line 250
    new-instance v7, Ljava/lang/StringBuilder;

    .line 251
    .line 252
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 253
    .line 254
    .line 255
    invoke-virtual {v6}, Landroid/hardware/usb/UsbDevice;->getVendorId()I

    .line 256
    .line 257
    .line 258
    move-result v9

    .line 259
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 260
    .line 261
    .line 262
    const-string v9, ","

    .line 263
    .line 264
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 265
    .line 266
    .line 267
    invoke-virtual {v6}, Landroid/hardware/usb/UsbDevice;->getProductId()I

    .line 268
    .line 269
    .line 270
    move-result v11

    .line 271
    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 272
    .line 273
    .line 274
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 275
    .line 276
    .line 277
    move-result-object v7

    .line 278
    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 279
    .line 280
    .line 281
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 282
    .line 283
    if-lt v7, v3, :cond_c

    .line 284
    .line 285
    new-instance v7, Ljava/lang/StringBuilder;

    .line 286
    .line 287
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 288
    .line 289
    .line 290
    invoke-static {v6}, Lwa/h;->w(Landroid/hardware/usb/UsbDevice;)Ljava/lang/String;

    .line 291
    .line 292
    .line 293
    move-result-object v11

    .line 294
    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 295
    .line 296
    .line 297
    const-string v11, " "

    .line 298
    .line 299
    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 300
    .line 301
    .line 302
    invoke-static {v6}, Lwa/h;->m(Landroid/hardware/usb/UsbDevice;)Ljava/lang/String;

    .line 303
    .line 304
    .line 305
    move-result-object v12

    .line 306
    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 307
    .line 308
    .line 309
    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 310
    .line 311
    .line 312
    invoke-virtual {v6}, Landroid/hardware/usb/UsbDevice;->getVendorId()I

    .line 313
    .line 314
    .line 315
    move-result v11

    .line 316
    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 317
    .line 318
    .line 319
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 320
    .line 321
    .line 322
    invoke-virtual {v6}, Landroid/hardware/usb/UsbDevice;->getProductId()I

    .line 323
    .line 324
    .line 325
    move-result v6

    .line 326
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 327
    .line 328
    .line 329
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 330
    .line 331
    .line 332
    move-result-object v6

    .line 333
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 334
    .line 335
    .line 336
    goto :goto_1

    .line 337
    :cond_d
    new-instance v2, Lha/fa;

    .line 338
    .line 339
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 340
    .line 341
    if-lt v6, v3, :cond_e

    .line 342
    .line 343
    move-object v15, v4

    .line 344
    goto :goto_2

    .line 345
    :cond_e
    move-object v15, v5

    .line 346
    :goto_2
    new-instance v3, Lha/x8;

    .line 347
    .line 348
    invoke-direct {v3, v10, v1, v4, v8}, Lha/x8;-><init>(Lha/a9;Lcom/yunpan/appmanage/bean/KeyMapSelectBean;Ljava/util/ArrayList;I)V

    .line 349
    .line 350
    .line 351
    iget-object v12, v10, Lha/a4;->a:Landroid/app/Activity;

    .line 352
    .line 353
    iget-object v13, v10, Lha/a4;->b:Landroid/content/Context;

    .line 354
    .line 355
    const-string v14, "\u5f53\u524d\u5df2\u63d2\u5165\u7684USB\u8bbe\u5907"

    .line 356
    .line 357
    move-object v11, v2

    .line 358
    move-object/from16 v16, v3

    .line 359
    .line 360
    invoke-direct/range {v11 .. v16}, Lha/fa;-><init>(Landroid/app/Activity;Landroid/content/Context;Ljava/lang/String;Ljava/util/List;Lha/ea;)V

    .line 361
    .line 362
    .line 363
    invoke-virtual {v2}, Lha/a4;->show()V

    .line 364
    .line 365
    .line 366
    goto/16 :goto_e

    .line 367
    .line 368
    :cond_f
    :goto_3
    const-string v1, "\u8bf7\u5148\u63d2\u5165USB\u8bbe\u5907"

    .line 369
    .line 370
    invoke-static {v1}, Lcom/yunpan/appmanage/util/a0;->u(Ljava/lang/CharSequence;)V

    .line 371
    .line 372
    .line 373
    goto/16 :goto_e

    .line 374
    .line 375
    :cond_10
    if-eq v9, v11, :cond_17

    .line 376
    .line 377
    const/16 v3, 0x2717

    .line 378
    .line 379
    if-ne v9, v3, :cond_11

    .line 380
    .line 381
    goto/16 :goto_5

    .line 382
    .line 383
    :cond_11
    const/16 v3, 0x1f5

    .line 384
    .line 385
    if-ne v9, v3, :cond_12

    .line 386
    .line 387
    new-instance v1, Lha/o1;

    .line 388
    .line 389
    new-instance v2, Lha/y8;

    .line 390
    .line 391
    invoke-direct {v2, v10, v6}, Lha/y8;-><init>(Lha/a9;I)V

    .line 392
    .line 393
    .line 394
    invoke-direct {v1, v12, v13, v2}, Lha/o1;-><init>(Landroid/app/Activity;Landroid/content/Context;Lha/y8;)V

    .line 395
    .line 396
    .line 397
    invoke-virtual {v1}, Lha/a4;->show()V

    .line 398
    .line 399
    .line 400
    goto/16 :goto_e

    .line 401
    .line 402
    :cond_12
    const/16 v3, 0x1f6

    .line 403
    .line 404
    if-ne v9, v3, :cond_13

    .line 405
    .line 406
    new-instance v1, Lha/w;

    .line 407
    .line 408
    new-instance v2, Lha/y8;

    .line 409
    .line 410
    invoke-direct {v2, v10, v8}, Lha/y8;-><init>(Lha/a9;I)V

    .line 411
    .line 412
    .line 413
    invoke-direct {v1, v12, v13, v2}, Lha/w;-><init>(Landroid/app/Activity;Landroid/content/Context;Lha/y8;)V

    .line 414
    .line 415
    .line 416
    invoke-virtual {v1}, Lha/a4;->show()V

    .line 417
    .line 418
    .line 419
    goto/16 :goto_e

    .line 420
    .line 421
    :cond_13
    const/16 v3, 0x1f7

    .line 422
    .line 423
    if-ne v9, v3, :cond_14

    .line 424
    .line 425
    new-instance v1, Lha/y;

    .line 426
    .line 427
    new-instance v2, Lha/y8;

    .line 428
    .line 429
    invoke-direct {v2, v10, v7}, Lha/y8;-><init>(Lha/a9;I)V

    .line 430
    .line 431
    .line 432
    invoke-direct {v1, v12, v13, v2}, Lha/y;-><init>(Landroid/app/Activity;Landroid/content/Context;Lha/y8;)V

    .line 433
    .line 434
    .line 435
    invoke-virtual {v1}, Lha/a4;->show()V

    .line 436
    .line 437
    .line 438
    goto/16 :goto_e

    .line 439
    .line 440
    :cond_14
    const/16 v3, 0x1fa

    .line 441
    .line 442
    if-ne v9, v3, :cond_16

    .line 443
    .line 444
    new-instance v2, Ljava/util/ArrayList;

    .line 445
    .line 446
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 447
    .line 448
    .line 449
    const/4 v3, 0x1

    .line 450
    :goto_4
    const/16 v4, 0x258

    .line 451
    .line 452
    if-gt v3, v4, :cond_15

    .line 453
    .line 454
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 455
    .line 456
    .line 457
    move-result-object v4

    .line 458
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 459
    .line 460
    .line 461
    add-int/2addr v3, v8

    .line 462
    goto :goto_4

    .line 463
    :cond_15
    new-instance v3, Lha/fa;

    .line 464
    .line 465
    new-instance v4, Lha/w8;

    .line 466
    .line 467
    invoke-direct {v4, v10, v1}, Lha/w8;-><init>(Lha/a9;Lcom/yunpan/appmanage/bean/KeyMapSelectBean;)V

    .line 468
    .line 469
    .line 470
    iget-object v1, v10, Lha/a4;->b:Landroid/content/Context;

    .line 471
    .line 472
    const/16 v18, 0x0

    .line 473
    .line 474
    iget-object v5, v10, Lha/a4;->a:Landroid/app/Activity;

    .line 475
    .line 476
    move-object v15, v3

    .line 477
    move-object/from16 v16, v5

    .line 478
    .line 479
    move-object/from16 v17, v1

    .line 480
    .line 481
    move-object/from16 v19, v2

    .line 482
    .line 483
    move-object/from16 v20, v4

    .line 484
    .line 485
    invoke-direct/range {v15 .. v20}, Lha/fa;-><init>(Landroid/app/Activity;Landroid/content/Context;Ljava/lang/String;Ljava/util/List;Lha/ea;)V

    .line 486
    .line 487
    .line 488
    invoke-virtual {v3}, Lha/a4;->show()V

    .line 489
    .line 490
    .line 491
    goto/16 :goto_e

    .line 492
    .line 493
    :cond_16
    new-instance v3, Lz7/s;

    .line 494
    .line 495
    invoke-direct {v3}, Lz7/s;-><init>()V

    .line 496
    .line 497
    .line 498
    iget v6, v1, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;->gn_type:I

    .line 499
    .line 500
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 501
    .line 502
    .line 503
    move-result-object v6

    .line 504
    invoke-virtual {v3, v5, v6}, Lz7/s;->l(Ljava/lang/String;Ljava/lang/Number;)V

    .line 505
    .line 506
    .line 507
    iget-object v5, v1, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;->gn_name:Ljava/lang/String;

    .line 508
    .line 509
    invoke-virtual {v14, v4, v5}, Lz7/s;->m(Ljava/lang/String;Ljava/lang/String;)V

    .line 510
    .line 511
    .line 512
    invoke-virtual {v14, v2, v3}, Lz7/s;->j(Ljava/lang/String;Lz7/p;)V

    .line 513
    .line 514
    .line 515
    iget-object v1, v1, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;->gn_name:Ljava/lang/String;

    .line 516
    .line 517
    invoke-virtual {v10, v1}, Lha/a9;->b(Ljava/lang/String;)V

    .line 518
    .line 519
    .line 520
    goto/16 :goto_e

    .line 521
    .line 522
    :cond_17
    :goto_5
    const/16 v2, 0x8

    .line 523
    .line 524
    new-array v2, v2, [Ljava/lang/String;

    .line 525
    .line 526
    const-string v3, "OFF"

    .line 527
    .line 528
    aput-object v3, v2, v6

    .line 529
    .line 530
    const-string v3, "P"

    .line 531
    .line 532
    aput-object v3, v2, v8

    .line 533
    .line 534
    const-string v3, "R"

    .line 535
    .line 536
    const/4 v4, 0x2

    .line 537
    aput-object v3, v2, v4

    .line 538
    .line 539
    const-string v3, "N"

    .line 540
    .line 541
    const/4 v4, 0x3

    .line 542
    aput-object v3, v2, v4

    .line 543
    .line 544
    const-string v3, "D"

    .line 545
    .line 546
    aput-object v3, v2, v7

    .line 547
    .line 548
    const-string v3, "S"

    .line 549
    .line 550
    const/4 v4, 0x5

    .line 551
    aput-object v3, v2, v4

    .line 552
    .line 553
    const-string v3, "L"

    .line 554
    .line 555
    const/4 v4, 0x6

    .line 556
    aput-object v3, v2, v4

    .line 557
    .line 558
    const-string v3, "B"

    .line 559
    .line 560
    const/4 v4, 0x7

    .line 561
    aput-object v3, v2, v4

    .line 562
    .line 563
    new-instance v3, Lha/fa;

    .line 564
    .line 565
    new-instance v15, Ljava/util/ArrayList;

    .line 566
    .line 567
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 568
    .line 569
    .line 570
    move-result-object v4

    .line 571
    invoke-direct {v15, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 572
    .line 573
    .line 574
    new-instance v4, Lcom/hjq/permissions/b;

    .line 575
    .line 576
    invoke-direct {v4, v10, v1, v2, v7}, Lcom/hjq/permissions/b;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 577
    .line 578
    .line 579
    iget-object v12, v10, Lha/a4;->a:Landroid/app/Activity;

    .line 580
    .line 581
    iget-object v13, v10, Lha/a4;->b:Landroid/content/Context;

    .line 582
    .line 583
    const-string v14, "\u8bf7\u9009\u62e9\u6863\u4f4d"

    .line 584
    .line 585
    move-object v11, v3

    .line 586
    move-object/from16 v16, v4

    .line 587
    .line 588
    invoke-direct/range {v11 .. v16}, Lha/fa;-><init>(Landroid/app/Activity;Landroid/content/Context;Ljava/lang/String;Ljava/util/List;Lha/ea;)V

    .line 589
    .line 590
    .line 591
    invoke-virtual {v3}, Lha/a4;->show()V

    .line 592
    .line 593
    .line 594
    goto/16 :goto_e

    .line 595
    .line 596
    :cond_18
    :goto_6
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 597
    .line 598
    const/16 v6, 0x17

    .line 599
    .line 600
    if-lt v3, v6, :cond_19

    .line 601
    .line 602
    new-instance v3, Ljava/util/ArrayList;

    .line 603
    .line 604
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 605
    .line 606
    .line 607
    invoke-static {}, Lcom/hjq/permissions/permission/PermissionLists;->getAccessCoarseLocationPermission()Lcom/hjq/permissions/permission/base/IPermission;

    .line 608
    .line 609
    .line 610
    move-result-object v6

    .line 611
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 612
    .line 613
    .line 614
    invoke-static {}, Lcom/hjq/permissions/permission/PermissionLists;->getAccessFineLocationPermission()Lcom/hjq/permissions/permission/base/IPermission;

    .line 615
    .line 616
    .line 617
    move-result-object v6

    .line 618
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 619
    .line 620
    .line 621
    invoke-static {v13, v3}, Lcom/hjq/permissions/XXPermissions;->isGrantedPermissions(Landroid/content/Context;Ljava/util/List;)Z

    .line 622
    .line 623
    .line 624
    move-result v6

    .line 625
    if-nez v6, :cond_19

    .line 626
    .line 627
    invoke-static {v13}, Lcom/hjq/permissions/XXPermissions;->with(Landroid/content/Context;)Lcom/hjq/permissions/XXPermissions;

    .line 628
    .line 629
    .line 630
    move-result-object v1

    .line 631
    invoke-virtual {v1, v3}, Lcom/hjq/permissions/XXPermissions;->permissions(Ljava/util/List;)Lcom/hjq/permissions/XXPermissions;

    .line 632
    .line 633
    .line 634
    move-result-object v1

    .line 635
    new-instance v2, Lg2/c;

    .line 636
    .line 637
    const/16 v3, 0xc

    .line 638
    .line 639
    invoke-direct {v2, v3}, Lg2/c;-><init>(I)V

    .line 640
    .line 641
    .line 642
    invoke-virtual {v1, v2}, Lcom/hjq/permissions/XXPermissions;->request(Lcom/hjq/permissions/OnPermissionCallback;)V

    .line 643
    .line 644
    .line 645
    goto/16 :goto_e

    .line 646
    .line 647
    :cond_19
    invoke-virtual {v13}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 648
    .line 649
    .line 650
    move-result-object v3

    .line 651
    const-string v6, "wifi"

    .line 652
    .line 653
    invoke-virtual {v3, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 654
    .line 655
    .line 656
    move-result-object v3

    .line 657
    check-cast v3, Landroid/net/wifi/WifiManager;

    .line 658
    .line 659
    if-nez v3, :cond_1a

    .line 660
    .line 661
    const-string v1, "\u6b64\u7cfb\u7edf\u6ca1\u6709WiFi\u529f\u80fd\uff1f"

    .line 662
    .line 663
    invoke-static {v1}, Lcom/yunpan/appmanage/util/a0;->u(Ljava/lang/CharSequence;)V

    .line 664
    .line 665
    .line 666
    goto/16 :goto_e

    .line 667
    .line 668
    :cond_1a
    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    .line 669
    .line 670
    .line 671
    move-result v6

    .line 672
    const-string v7, "\u8bf7\u5148\u8fde\u63a5\u6307\u5b9awifi"

    .line 673
    .line 674
    if-nez v6, :cond_1b

    .line 675
    .line 676
    invoke-static {v7}, Lcom/yunpan/appmanage/util/a0;->u(Ljava/lang/CharSequence;)V

    .line 677
    .line 678
    .line 679
    goto/16 :goto_e

    .line 680
    .line 681
    :cond_1b
    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    .line 682
    .line 683
    .line 684
    move-result-object v3

    .line 685
    if-nez v3, :cond_1c

    .line 686
    .line 687
    invoke-static {v7}, Lcom/yunpan/appmanage/util/a0;->u(Ljava/lang/CharSequence;)V

    .line 688
    .line 689
    .line 690
    goto/16 :goto_e

    .line 691
    .line 692
    :cond_1c
    invoke-virtual {v3}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    .line 693
    .line 694
    .line 695
    move-result-object v3

    .line 696
    const-string v6, "\""

    .line 697
    .line 698
    const-string v7, ""

    .line 699
    .line 700
    invoke-virtual {v3, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 701
    .line 702
    .line 703
    move-result-object v3

    .line 704
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    .line 705
    .line 706
    .line 707
    move-result v6

    .line 708
    if-eqz v6, :cond_1d

    .line 709
    .line 710
    const-string v3, "\u672a\u77e5wifi"

    .line 711
    .line 712
    :cond_1d
    new-instance v6, Ljava/lang/StringBuilder;

    .line 713
    .line 714
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 715
    .line 716
    .line 717
    iget-object v7, v1, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;->gn_name:Ljava/lang/String;

    .line 718
    .line 719
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 720
    .line 721
    .line 722
    const-string v7, "\uff08"

    .line 723
    .line 724
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 725
    .line 726
    .line 727
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 728
    .line 729
    .line 730
    const-string v7, "\uff09"

    .line 731
    .line 732
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 733
    .line 734
    .line 735
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 736
    .line 737
    .line 738
    move-result-object v6

    .line 739
    invoke-virtual {v10, v6}, Lha/a9;->b(Ljava/lang/String;)V

    .line 740
    .line 741
    .line 742
    new-instance v7, Lz7/s;

    .line 743
    .line 744
    invoke-direct {v7}, Lz7/s;-><init>()V

    .line 745
    .line 746
    .line 747
    iget v1, v1, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;->gn_type:I

    .line 748
    .line 749
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 750
    .line 751
    .line 752
    move-result-object v1

    .line 753
    invoke-virtual {v7, v5, v1}, Lz7/s;->l(Ljava/lang/String;Ljava/lang/Number;)V

    .line 754
    .line 755
    .line 756
    const-string v1, "str1"

    .line 757
    .line 758
    invoke-virtual {v7, v1, v3}, Lz7/s;->m(Ljava/lang/String;Ljava/lang/String;)V

    .line 759
    .line 760
    .line 761
    invoke-virtual {v14, v4, v6}, Lz7/s;->m(Ljava/lang/String;Ljava/lang/String;)V

    .line 762
    .line 763
    .line 764
    invoke-virtual {v14, v2, v7}, Lz7/s;->j(Ljava/lang/String;Lz7/p;)V

    .line 765
    .line 766
    .line 767
    goto/16 :goto_e

    .line 768
    .line 769
    :cond_1e
    :goto_7
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 770
    .line 771
    const/16 v3, 0x17

    .line 772
    .line 773
    if-lt v2, v3, :cond_1f

    .line 774
    .line 775
    new-instance v3, Ljava/util/ArrayList;

    .line 776
    .line 777
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 778
    .line 779
    .line 780
    invoke-static {}, Lcom/hjq/permissions/permission/PermissionLists;->getAccessCoarseLocationPermission()Lcom/hjq/permissions/permission/base/IPermission;

    .line 781
    .line 782
    .line 783
    move-result-object v4

    .line 784
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 785
    .line 786
    .line 787
    invoke-static {}, Lcom/hjq/permissions/permission/PermissionLists;->getAccessFineLocationPermission()Lcom/hjq/permissions/permission/base/IPermission;

    .line 788
    .line 789
    .line 790
    move-result-object v4

    .line 791
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 792
    .line 793
    .line 794
    invoke-static {v13, v3}, Lcom/hjq/permissions/XXPermissions;->isGrantedPermissions(Landroid/content/Context;Ljava/util/List;)Z

    .line 795
    .line 796
    .line 797
    move-result v4

    .line 798
    if-nez v4, :cond_1f

    .line 799
    .line 800
    invoke-static {v13}, Lcom/hjq/permissions/XXPermissions;->with(Landroid/content/Context;)Lcom/hjq/permissions/XXPermissions;

    .line 801
    .line 802
    .line 803
    move-result-object v1

    .line 804
    invoke-virtual {v1, v3}, Lcom/hjq/permissions/XXPermissions;->permissions(Ljava/util/List;)Lcom/hjq/permissions/XXPermissions;

    .line 805
    .line 806
    .line 807
    move-result-object v1

    .line 808
    new-instance v2, Lg2/c;

    .line 809
    .line 810
    const/16 v3, 0xb

    .line 811
    .line 812
    invoke-direct {v2, v3}, Lg2/c;-><init>(I)V

    .line 813
    .line 814
    .line 815
    invoke-virtual {v1, v2}, Lcom/hjq/permissions/XXPermissions;->request(Lcom/hjq/permissions/OnPermissionCallback;)V

    .line 816
    .line 817
    .line 818
    goto/16 :goto_e

    .line 819
    .line 820
    :cond_1f
    const/16 v3, 0x12

    .line 821
    .line 822
    if-lt v2, v3, :cond_20

    .line 823
    .line 824
    sget-object v2, Lwa/t;->a:Lwa/u;

    .line 825
    .line 826
    iget-object v2, v2, Lwa/u;->d:Lcom/yunpan/appmanage/base/AppStart;

    .line 827
    .line 828
    const-string v3, "bluetooth"

    .line 829
    .line 830
    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 831
    .line 832
    .line 833
    move-result-object v2

    .line 834
    invoke-static {v2}, Lb1/o;->d(Ljava/lang/Object;)Landroid/bluetooth/BluetoothManager;

    .line 835
    .line 836
    .line 837
    move-result-object v2

    .line 838
    invoke-static {v2}, Lb1/o;->c(Landroid/bluetooth/BluetoothManager;)Landroid/bluetooth/BluetoothAdapter;

    .line 839
    .line 840
    .line 841
    move-result-object v2

    .line 842
    goto :goto_8

    .line 843
    :cond_20
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    .line 844
    .line 845
    .line 846
    move-result-object v2

    .line 847
    :goto_8
    invoke-virtual {v2}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    .line 848
    .line 849
    .line 850
    move-result v3

    .line 851
    const/4 v4, 0x0

    .line 852
    const-string v5, "\u8bf7\u5148\u6253\u5f00\u84dd\u7259"

    .line 853
    .line 854
    if-nez v3, :cond_21

    .line 855
    .line 856
    invoke-static {v5}, Lcom/yunpan/appmanage/util/a0;->u(Ljava/lang/CharSequence;)V

    .line 857
    .line 858
    .line 859
    :goto_9
    move-object v15, v4

    .line 860
    goto :goto_b

    .line 861
    :cond_21
    invoke-virtual {v2}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    .line 862
    .line 863
    .line 864
    move-result v3

    .line 865
    if-nez v3, :cond_22

    .line 866
    .line 867
    invoke-static {v5}, Lcom/hjq/toast/Toaster;->show(Ljava/lang/CharSequence;)V

    .line 868
    .line 869
    .line 870
    goto :goto_9

    .line 871
    :cond_22
    invoke-virtual {v2}, Landroid/bluetooth/BluetoothAdapter;->getBondedDevices()Ljava/util/Set;

    .line 872
    .line 873
    .line 874
    move-result-object v2

    .line 875
    new-instance v3, Ljava/util/HashSet;

    .line 876
    .line 877
    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 878
    .line 879
    .line 880
    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    .line 881
    .line 882
    .line 883
    move-result v4

    .line 884
    if-nez v4, :cond_24

    .line 885
    .line 886
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 887
    .line 888
    .line 889
    move-result-object v2

    .line 890
    :goto_a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 891
    .line 892
    .line 893
    move-result v4

    .line 894
    if-eqz v4, :cond_24

    .line 895
    .line 896
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 897
    .line 898
    .line 899
    move-result-object v4

    .line 900
    check-cast v4, Landroid/bluetooth/BluetoothDevice;

    .line 901
    .line 902
    invoke-virtual {v4}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    .line 903
    .line 904
    .line 905
    move-result-object v4

    .line 906
    if-nez v4, :cond_23

    .line 907
    .line 908
    const-string v4, "\u672a\u77e5\u8bbe\u5907"

    .line 909
    .line 910
    :cond_23
    invoke-virtual {v3, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 911
    .line 912
    .line 913
    goto :goto_a

    .line 914
    :cond_24
    invoke-virtual {v3}, Ljava/util/HashSet;->isEmpty()Z

    .line 915
    .line 916
    .line 917
    move-result v2

    .line 918
    if-eqz v2, :cond_25

    .line 919
    .line 920
    const-string v2, "\u6ca1\u627e\u5230\u5339\u914d\u8fc7\u7684\u84dd\u7259\u8bbe\u5907"

    .line 921
    .line 922
    invoke-static {v2}, Lcom/yunpan/appmanage/util/a0;->u(Ljava/lang/CharSequence;)V

    .line 923
    .line 924
    .line 925
    :cond_25
    new-instance v4, Ljava/util/ArrayList;

    .line 926
    .line 927
    invoke-direct {v4, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 928
    .line 929
    .line 930
    goto :goto_9

    .line 931
    :goto_b
    if-eqz v15, :cond_29

    .line 932
    .line 933
    invoke-interface {v15}, Ljava/util/List;->isEmpty()Z

    .line 934
    .line 935
    .line 936
    move-result v2

    .line 937
    if-eqz v2, :cond_26

    .line 938
    .line 939
    goto :goto_e

    .line 940
    :cond_26
    new-instance v2, Lha/fa;

    .line 941
    .line 942
    new-instance v3, Lha/x8;

    .line 943
    .line 944
    invoke-direct {v3, v10, v1, v15, v6}, Lha/x8;-><init>(Lha/a9;Lcom/yunpan/appmanage/bean/KeyMapSelectBean;Ljava/util/ArrayList;I)V

    .line 945
    .line 946
    .line 947
    iget-object v12, v10, Lha/a4;->a:Landroid/app/Activity;

    .line 948
    .line 949
    iget-object v13, v10, Lha/a4;->b:Landroid/content/Context;

    .line 950
    .line 951
    const-string v14, "\u9009\u62e9\u5339\u914d\u8fc7\u7684\u84dd\u7259\u8bbe\u5907"

    .line 952
    .line 953
    move-object v11, v2

    .line 954
    move-object/from16 v16, v3

    .line 955
    .line 956
    invoke-direct/range {v11 .. v16}, Lha/fa;-><init>(Landroid/app/Activity;Landroid/content/Context;Ljava/lang/String;Ljava/util/List;Lha/ea;)V

    .line 957
    .line 958
    .line 959
    invoke-virtual {v2}, Lha/a4;->show()V

    .line 960
    .line 961
    .line 962
    goto :goto_e

    .line 963
    :cond_27
    :goto_c
    new-instance v2, Lha/r0;

    .line 964
    .line 965
    new-instance v3, Lha/w8;

    .line 966
    .line 967
    invoke-direct {v3, v10, v1}, Lha/w8;-><init>(Lha/a9;Lcom/yunpan/appmanage/bean/KeyMapSelectBean;)V

    .line 968
    .line 969
    .line 970
    const/4 v1, 0x5

    .line 971
    invoke-direct {v2, v12, v13, v1, v3}, Lha/r0;-><init>(Landroid/app/Activity;Landroid/content/Context;ILha/q0;)V

    .line 972
    .line 973
    .line 974
    invoke-virtual {v2}, Lha/a4;->show()V

    .line 975
    .line 976
    .line 977
    goto :goto_e

    .line 978
    :cond_28
    :goto_d
    new-instance v2, Lha/z6;

    .line 979
    .line 980
    new-instance v11, La2/g1;

    .line 981
    .line 982
    invoke-direct {v11, v3, v10, v1, v6}, La2/g1;-><init>(ILjava/lang/Object;Ljava/lang/Object;Z)V

    .line 983
    .line 984
    .line 985
    iget-object v5, v10, Lha/a4;->a:Landroid/app/Activity;

    .line 986
    .line 987
    iget-object v6, v10, Lha/a4;->b:Landroid/content/Context;

    .line 988
    .line 989
    const-string v9, "\u786e\u5b9a"

    .line 990
    .line 991
    const-string v10, "\u53d6\u6d88"

    .line 992
    .line 993
    const-string v7, "\u6b64\u529f\u80fd\u4ec5\u9002\u5408\u77ed\u65f6\u95f4\u4e0b\u8f66\u540e\u53c8\u7acb\u5373\u4e0a\u8f66\u7684\u60c5\u51b5\u4e0b"

    .line 994
    .line 995
    const-string v8, "\u5c31\u662f\u8f66\u673a\u8fd8\u6ca1\u91cd\u542f\u7684\u60c5\u51b5\u4e0b"

    .line 996
    .line 997
    move-object v4, v2

    .line 998
    invoke-direct/range {v4 .. v11}, Lha/z6;-><init>(Landroid/app/Activity;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lha/wd;)V

    .line 999
    .line 1000
    .line 1001
    invoke-virtual {v2}, Lha/a4;->show()V

    .line 1002
    .line 1003
    .line 1004
    :cond_29
    :goto_e
    return-void

    .line 1005
    :pswitch_3
    check-cast v9, Ljava/util/ArrayList;

    .line 1006
    .line 1007
    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1008
    .line 1009
    .line 1010
    move-result-object v1

    .line 1011
    check-cast v1, Ljava/lang/CharSequence;

    .line 1012
    .line 1013
    check-cast v10, Landroid/widget/EditText;

    .line 1014
    .line 1015
    invoke-virtual {v10, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1016
    .line 1017
    .line 1018
    return-void

    .line 1019
    :pswitch_4
    check-cast v10, Lha/r3;

    .line 1020
    .line 1021
    iget-object v2, v10, Lha/r3;->D:Ljava/util/ArrayList;

    .line 1022
    .line 1023
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1024
    .line 1025
    .line 1026
    move-result-object v1

    .line 1027
    check-cast v1, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;

    .line 1028
    .line 1029
    iput-object v1, v10, Lha/r3;->r:Lcom/yunpan/appmanage/bean/KeyMapSelectBean;

    .line 1030
    .line 1031
    iget-object v1, v1, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;->gn_name:Ljava/lang/String;

    .line 1032
    .line 1033
    check-cast v9, Landroid/widget/TextView;

    .line 1034
    .line 1035
    invoke-virtual {v9, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1036
    .line 1037
    .line 1038
    return-void

    .line 1039
    :pswitch_5
    check-cast v10, Lha/j3;

    .line 1040
    .line 1041
    iget-object v2, v10, Lha/j3;->F:Ljava/util/ArrayList;

    .line 1042
    .line 1043
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1044
    .line 1045
    .line 1046
    move-result-object v1

    .line 1047
    check-cast v1, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;

    .line 1048
    .line 1049
    iput-object v1, v10, Lha/j3;->w:Lcom/yunpan/appmanage/bean/KeyMapSelectBean;

    .line 1050
    .line 1051
    iget-object v1, v1, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;->gn_name:Ljava/lang/String;

    .line 1052
    .line 1053
    check-cast v9, Landroid/widget/TextView;

    .line 1054
    .line 1055
    invoke-virtual {v9, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1056
    .line 1057
    .line 1058
    return-void

    .line 1059
    :pswitch_6
    check-cast v10, Lha/x0;

    .line 1060
    .line 1061
    iget-object v2, v10, Lha/x0;->v:Ljava/util/ArrayList;

    .line 1062
    .line 1063
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1064
    .line 1065
    .line 1066
    move-result-object v1

    .line 1067
    check-cast v1, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;

    .line 1068
    .line 1069
    iput-object v1, v10, Lha/x0;->m:Lcom/yunpan/appmanage/bean/KeyMapSelectBean;

    .line 1070
    .line 1071
    iget-object v1, v1, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;->gn_name:Ljava/lang/String;

    .line 1072
    .line 1073
    check-cast v9, Landroid/widget/TextView;

    .line 1074
    .line 1075
    invoke-virtual {v9, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1076
    .line 1077
    .line 1078
    return-void

    .line 1079
    :pswitch_7
    check-cast v10, Lha/y;

    .line 1080
    .line 1081
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1082
    .line 1083
    .line 1084
    check-cast v9, Ljava/util/ArrayList;

    .line 1085
    .line 1086
    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1087
    .line 1088
    .line 1089
    move-result-object v1

    .line 1090
    check-cast v1, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;

    .line 1091
    .line 1092
    iput-object v1, v10, Lha/y;->m:Lcom/yunpan/appmanage/bean/KeyMapSelectBean;

    .line 1093
    .line 1094
    iget-object v2, v10, Lha/y;->j:Landroid/widget/TextView;

    .line 1095
    .line 1096
    iget-object v1, v1, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;->gn_name:Ljava/lang/String;

    .line 1097
    .line 1098
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1099
    .line 1100
    .line 1101
    return-void

    .line 1102
    :pswitch_8
    check-cast v10, Lha/w;

    .line 1103
    .line 1104
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1105
    .line 1106
    .line 1107
    check-cast v9, Ljava/util/ArrayList;

    .line 1108
    .line 1109
    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1110
    .line 1111
    .line 1112
    move-result-object v1

    .line 1113
    check-cast v1, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;

    .line 1114
    .line 1115
    iput-object v1, v10, Lha/w;->n:Ljava/lang/Object;

    .line 1116
    .line 1117
    iget-object v2, v10, Lha/w;->h:Landroid/widget/TextView;

    .line 1118
    .line 1119
    iget-object v1, v1, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;->gn_name:Ljava/lang/String;

    .line 1120
    .line 1121
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1122
    .line 1123
    .line 1124
    return-void

    .line 1125
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_8
        :pswitch_7
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_0
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public c(Ljava/lang/String;Z)V
    .locals 6

    .line 1
    iget-object v0, p0, Ld2/w;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lha/hb;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    const/4 v1, 0x1

    .line 9
    if-eqz p2, :cond_0

    .line 10
    .line 11
    new-instance p1, Ljava/io/File;

    .line 12
    .line 13
    iget-object p2, v0, Lha/hb;->g:Lx9/w3;

    .line 14
    .line 15
    iget-object v2, p2, Lx9/w3;->b:Ljava/lang/String;

    .line 16
    .line 17
    invoke-direct {p1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    sget-object v2, Lcom/yunpan/appmanage/util/k;->u0:Ljava/text/DecimalFormat;

    .line 21
    .line 22
    sget-object v2, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 23
    .line 24
    iget-object v2, v2, Lcom/yunpan/appmanage/util/k;->g0:Ljava/util/concurrent/ExecutorService;

    .line 25
    .line 26
    new-instance v3, La2/e0;

    .line 27
    .line 28
    iget-object v4, p0, Ld2/w;->c:Ljava/lang/Object;

    .line 29
    .line 30
    check-cast v4, Ljava/lang/String;

    .line 31
    .line 32
    const/16 v5, 0xa

    .line 33
    .line 34
    invoke-direct {v3, v0, p1, v4, v5}, La2/e0;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 35
    .line 36
    .line 37
    invoke-interface {v2, v3}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 38
    .line 39
    .line 40
    const-string v2, "\u4fee\u6539\u6210\u529f"

    .line 41
    .line 42
    invoke-static {v2, v1}, Lcom/yunpan/appmanage/util/a0;->v(Ljava/lang/CharSequence;Z)V

    .line 43
    .line 44
    .line 45
    iput-object v4, p2, Lx9/w3;->a:Ljava/lang/String;

    .line 46
    .line 47
    new-instance v1, Ljava/lang/StringBuilder;

    .line 48
    .line 49
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 50
    .line 51
    .line 52
    invoke-virtual {p1}, Ljava/io/File;->getParent()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    const-string p1, "/"

    .line 60
    .line 61
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    iput-object p1, p2, Lx9/w3;->b:Ljava/lang/String;

    .line 72
    .line 73
    iget-object p1, v0, Lha/hb;->h:Lha/gb;

    .line 74
    .line 75
    invoke-interface {p1, p2}, Lha/gb;->a(Lx9/w3;)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 79
    .line 80
    .line 81
    goto :goto_0

    .line 82
    :cond_0
    invoke-static {p1, v1}, Lcom/yunpan/appmanage/util/a0;->s(Ljava/lang/CharSequence;Z)V

    .line 83
    .line 84
    .line 85
    :goto_0
    return-void
.end method

.method public d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    iget-object p3, p0, Ld2/w;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p3, Lha/vc;

    .line 4
    .line 5
    iput-object p2, p3, Lha/vc;->i:Ljava/lang/String;

    .line 6
    .line 7
    const-string p2, "\u6253\u5f00\u5e94\u7528\uff1a"

    .line 8
    .line 9
    invoke-static {p2, p1}, Lda/b;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    iget-object p2, p0, Ld2/w;->c:Ljava/lang/Object;

    .line 14
    .line 15
    check-cast p2, Landroid/widget/TextView;

    .line 16
    .line 17
    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public e(Ljava/lang/Object;)I
    .locals 5

    .line 1
    check-cast p1, Ld2/q;

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Ld2/w;->c:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v0, Lr1/p;

    .line 9
    .line 10
    iget-object v1, v0, Lr1/p;->o:Ljava/lang/String;

    .line 11
    .line 12
    iget-object v2, p1, Ld2/q;->b:Ljava/lang/String;

    .line 13
    .line 14
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    const/4 v3, 0x1

    .line 19
    const/4 v4, 0x0

    .line 20
    if-nez v1, :cond_1

    .line 21
    .line 22
    invoke-static {v0}, Ld2/c0;->c(Lr1/p;)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    if-eqz v1, :cond_0

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_0
    const/4 v1, 0x0

    .line 34
    goto :goto_1

    .line 35
    :cond_1
    :goto_0
    const/4 v1, 0x1

    .line 36
    :goto_1
    if-eqz v1, :cond_2

    .line 37
    .line 38
    iget-object v1, p0, Ld2/w;->b:Ljava/lang/Object;

    .line 39
    .line 40
    check-cast v1, Landroid/content/Context;

    .line 41
    .line 42
    invoke-virtual {p1, v1, v0, v4}, Ld2/q;->c(Landroid/content/Context;Lr1/p;Z)Z

    .line 43
    .line 44
    .line 45
    move-result v1

    .line 46
    if-eqz v1, :cond_2

    .line 47
    .line 48
    invoke-virtual {p1, v0}, Ld2/q;->d(Lr1/p;)Z

    .line 49
    .line 50
    .line 51
    move-result p1

    .line 52
    if-eqz p1, :cond_2

    .line 53
    .line 54
    goto :goto_2

    .line 55
    :cond_2
    const/4 v3, 0x0

    .line 56
    :goto_2
    return v3
.end method

.method public f(Z)V
    .locals 5

    .line 1
    iget-object v0, p0, Ld2/w;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lha/w1;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    if-eqz p1, :cond_2

    .line 9
    .line 10
    iget-object p1, p0, Ld2/w;->c:Ljava/lang/Object;

    .line 11
    .line 12
    check-cast p1, Lz7/s;

    .line 13
    .line 14
    const-string v1, "name"

    .line 15
    .line 16
    invoke-virtual {p1, v1}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    invoke-virtual {v2}, Lz7/p;->i()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    const/4 v3, 0x0

    .line 25
    :goto_0
    iget-object v4, v0, Lha/w1;->s:Lx9/s2;

    .line 26
    .line 27
    invoke-virtual {v4}, Lc6/g;->b()I

    .line 28
    .line 29
    .line 30
    move-result v4

    .line 31
    if-ge v3, v4, :cond_1

    .line 32
    .line 33
    iget-object v4, v0, Lha/w1;->s:Lx9/s2;

    .line 34
    .line 35
    invoke-virtual {v4, v3}, Lc6/g;->t(I)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v4

    .line 39
    check-cast v4, Lz7/s;

    .line 40
    .line 41
    invoke-virtual {v4, v1}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 42
    .line 43
    .line 44
    move-result-object v4

    .line 45
    invoke-virtual {v4}, Lz7/p;->i()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v4

    .line 49
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 50
    .line 51
    .line 52
    move-result v4

    .line 53
    if-eqz v4, :cond_0

    .line 54
    .line 55
    const-string p1, "\u5173\u952e\u5b57\u5df2\u5b58\u5728\uff0c\u8bf7\u52ff\u91cd\u590d\u6dfb\u52a0"

    .line 56
    .line 57
    invoke-static {p1}, Lcom/yunpan/appmanage/util/a0;->u(Ljava/lang/CharSequence;)V

    .line 58
    .line 59
    .line 60
    goto :goto_1

    .line 61
    :cond_0
    add-int/lit8 v3, v3, 0x1

    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_1
    iget-object v0, v0, Lha/w1;->s:Lx9/s2;

    .line 65
    .line 66
    invoke-virtual {v0, p1}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 67
    .line 68
    .line 69
    :cond_2
    :goto_1
    return-void
.end method

.method public g(Lmc/b;)V
    .locals 13

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    iget-object v2, p0, Ld2/w;->b:Ljava/lang/Object;

    .line 4
    .line 5
    iget-object v3, p0, Ld2/w;->c:Ljava/lang/Object;

    .line 6
    .line 7
    iget v4, p0, Ld2/w;->a:I

    .line 8
    .line 9
    sparse-switch v4, :sswitch_data_0

    .line 10
    .line 11
    .line 12
    check-cast v3, Ljava/lang/String;

    .line 13
    .line 14
    check-cast v2, Lha/pe;

    .line 15
    .line 16
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    .line 18
    .line 19
    const-string v4, "auto_time"

    .line 20
    .line 21
    const-string v5, "Asia/Hong_Kong"

    .line 22
    .line 23
    invoke-static {}, Lha/pe;->a()Ljava/util/Date;

    .line 24
    .line 25
    .line 26
    move-result-object v6

    .line 27
    if-eqz v6, :cond_0

    .line 28
    .line 29
    new-instance v7, Ljava/lang/StringBuilder;

    .line 30
    .line 31
    const-string v8, "\u5f53\u524d\u5317\u4eac\u65f6\u95f4\uff1a"

    .line 32
    .line 33
    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    new-instance v8, Ljava/text/SimpleDateFormat;

    .line 37
    .line 38
    const-string v9, "yyyy-MM-dd HH:mm:ss"

    .line 39
    .line 40
    invoke-direct {v8, v9}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v8, v6}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v8

    .line 47
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v7

    .line 54
    invoke-static {v7}, Lcom/hjq/toast/Toaster;->show(Ljava/lang/CharSequence;)V

    .line 55
    .line 56
    .line 57
    :cond_0
    iget-object v2, v2, Lha/a4;->b:Landroid/content/Context;

    .line 58
    .line 59
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 60
    .line 61
    .line 62
    move-result-object v7

    .line 63
    :try_start_0
    invoke-static {v7, v4, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 64
    .line 65
    .line 66
    const-string v8, "auto_time_zone"

    .line 67
    .line 68
    invoke-static {v7, v8, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 69
    .line 70
    .line 71
    const-string v0, "time_zone"

    .line 72
    .line 73
    invoke-static {v7, v0, v5}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 74
    .line 75
    .line 76
    const-string v0, "ntp_server"

    .line 77
    .line 78
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    .line 79
    .line 80
    .line 81
    move-result v8

    .line 82
    if-eqz v8, :cond_1

    .line 83
    .line 84
    const-string v3, "ntp.ntsc.ac.cn"

    .line 85
    .line 86
    :cond_1
    invoke-static {v7, v0, v3}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 87
    .line 88
    .line 89
    :catch_0
    :try_start_1
    invoke-static {v5}, Lj$/util/DesugarTimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    .line 90
    .line 91
    .line 92
    move-result-object v0

    .line 93
    invoke-static {v0}, Ljava/util/TimeZone;->setDefault(Ljava/util/TimeZone;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 94
    .line 95
    .line 96
    :catch_1
    sget-object v0, Lfa/b0;->a:La2/w0;

    .line 97
    .line 98
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 99
    .line 100
    .line 101
    const-string v0, "setprop persist.sys.timezone Asia/Hong_Kong"

    .line 102
    .line 103
    invoke-static {v0}, La2/w0;->h(Ljava/lang/String;)Lfa/a0;

    .line 104
    .line 105
    .line 106
    const-string v0, "settings put global time_zone Asia/Hong_Kong"

    .line 107
    .line 108
    invoke-static {v0}, La2/w0;->h(Ljava/lang/String;)Lfa/a0;

    .line 109
    .line 110
    .line 111
    const-string v0, "service call alarm 3 s16 Asia/Hong_Kong"

    .line 112
    .line 113
    invoke-static {v0}, La2/w0;->h(Ljava/lang/String;)Lfa/a0;

    .line 114
    .line 115
    .line 116
    :try_start_2
    const-string v0, "alarm"

    .line 117
    .line 118
    invoke-virtual {v2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 119
    .line 120
    .line 121
    move-result-object v0

    .line 122
    check-cast v0, Landroid/app/AlarmManager;

    .line 123
    .line 124
    invoke-virtual {v0, v5}, Landroid/app/AlarmManager;->setTimeZone(Ljava/lang/String;)V

    .line 125
    .line 126
    .line 127
    if-eqz v6, :cond_2

    .line 128
    .line 129
    invoke-virtual {v6}, Ljava/util/Date;->getTime()J

    .line 130
    .line 131
    .line 132
    move-result-wide v2

    .line 133
    invoke-virtual {v0, v2, v3}, Landroid/app/AlarmManager;->setTime(J)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 134
    .line 135
    .line 136
    goto :goto_0

    .line 137
    :catch_2
    nop

    .line 138
    if-eqz v6, :cond_2

    .line 139
    .line 140
    sget-object v0, Lfa/b0;->a:La2/w0;

    .line 141
    .line 142
    new-instance v2, Ljava/lang/StringBuilder;

    .line 143
    .line 144
    const-string v3, "date "

    .line 145
    .line 146
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 147
    .line 148
    .line 149
    new-instance v3, Ljava/text/SimpleDateFormat;

    .line 150
    .line 151
    const-string v5, "MMddHHmmyyyy.ss"

    .line 152
    .line 153
    invoke-direct {v3, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 154
    .line 155
    .line 156
    invoke-virtual {v3, v6}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 157
    .line 158
    .line 159
    move-result-object v3

    .line 160
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    .line 162
    .line 163
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 164
    .line 165
    .line 166
    move-result-object v2

    .line 167
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 168
    .line 169
    .line 170
    invoke-static {v2}, La2/w0;->h(Ljava/lang/String;)Lfa/a0;

    .line 171
    .line 172
    .line 173
    :cond_2
    :goto_0
    invoke-static {v7, v4, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 174
    .line 175
    .line 176
    sget-object v0, Lfa/b0;->a:La2/w0;

    .line 177
    .line 178
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 179
    .line 180
    .line 181
    const-string v0, "am broadcast -a android.intent.action.CONFIGURATION_CHANGED"

    .line 182
    .line 183
    invoke-static {v0}, La2/w0;->h(Ljava/lang/String;)Lfa/a0;

    .line 184
    .line 185
    .line 186
    invoke-virtual {p1}, Lmc/b;->b()V

    .line 187
    .line 188
    .line 189
    return-void

    .line 190
    :sswitch_0
    const-string v4, "\u5b89\u88c5\u5931\u8d25\uff1a"

    .line 191
    .line 192
    check-cast v3, Lx9/w3;

    .line 193
    .line 194
    const-string v5, "setprop ro.adb.secure 1\n"

    .line 195
    .line 196
    const-string v6, "setprop sys.adb.authed true\n"

    .line 197
    .line 198
    check-cast v2, Lha/qd;

    .line 199
    .line 200
    iget-object v7, v2, Lha/qd;->q:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 201
    .line 202
    :try_start_3
    sget-object v8, Lfa/i0;->a:Lfa/p;

    .line 203
    .line 204
    iget-object v9, v8, Lfa/p;->c:Ljava/net/Socket;

    .line 205
    .line 206
    if-eqz v9, :cond_4

    .line 207
    .line 208
    iget-object v9, v8, Lfa/p;->d:Ly9/f;

    .line 209
    .line 210
    if-eqz v9, :cond_4

    .line 211
    .line 212
    iget-boolean v9, v9, Ly9/f;->f:Z

    .line 213
    .line 214
    if-nez v9, :cond_4

    .line 215
    .line 216
    iget-object v9, v8, Lfa/p;->e:Ly9/g;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 217
    .line 218
    if-nez v9, :cond_3

    .line 219
    .line 220
    goto :goto_1

    .line 221
    :cond_3
    const/4 v9, 0x1

    .line 222
    goto :goto_2

    .line 223
    :cond_4
    :goto_1
    const/4 v9, 0x0

    .line 224
    :goto_2
    if-nez v9, :cond_6

    .line 225
    .line 226
    const-wide/16 v9, 0xa8

    .line 227
    .line 228
    :try_start_4
    invoke-virtual {v7, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 229
    .line 230
    .line 231
    iget-object v0, v2, Lha/qd;->p:Lgh/c;

    .line 232
    .line 233
    const-string v11, "setprop sys.adb.authed false\n"

    .line 234
    .line 235
    sget-object v12, Lj$/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 236
    .line 237
    invoke-virtual {v11, v12}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 238
    .line 239
    .line 240
    move-result-object v11

    .line 241
    invoke-virtual {v0, v11}, Lgh/c;->write([B)V

    .line 242
    .line 243
    .line 244
    iget-object v0, v2, Lha/qd;->p:Lgh/c;

    .line 245
    .line 246
    invoke-virtual {v0}, Lgh/c;->flush()V

    .line 247
    .line 248
    .line 249
    iget-object v0, v2, Lha/qd;->p:Lgh/c;

    .line 250
    .line 251
    const-string v11, "setprop ro.adb.secure 0\n"

    .line 252
    .line 253
    invoke-virtual {v11, v12}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 254
    .line 255
    .line 256
    move-result-object v11

    .line 257
    invoke-virtual {v0, v11}, Lgh/c;->write([B)V

    .line 258
    .line 259
    .line 260
    iget-object v0, v2, Lha/qd;->p:Lgh/c;

    .line 261
    .line 262
    invoke-virtual {v0}, Lgh/c;->flush()V

    .line 263
    .line 264
    .line 265
    iget-object v0, v2, Lha/qd;->g:Lgh/a;

    .line 266
    .line 267
    iget-object v0, v0, Lch/d;->b:Ljava/net/Socket;

    .line 268
    .line 269
    invoke-virtual {v0}, Ljava/net/Socket;->getInetAddress()Ljava/net/InetAddress;

    .line 270
    .line 271
    .line 272
    move-result-object v0

    .line 273
    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    .line 274
    .line 275
    .line 276
    move-result-object v0

    .line 277
    invoke-virtual {v8, v0}, Lfa/p;->e(Ljava/lang/String;)Z

    .line 278
    .line 279
    .line 280
    move-result v0

    .line 281
    if-nez v0, :cond_5

    .line 282
    .line 283
    const-string v0, "\u8fde\u63a5\u5931\u8d25"

    .line 284
    .line 285
    invoke-static {v0}, Lcom/yunpan/appmanage/util/a0;->t(Ljava/lang/String;)V

    .line 286
    .line 287
    .line 288
    invoke-virtual {p1}, Lmc/b;->b()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 289
    .line 290
    .line 291
    :try_start_5
    iget-object v0, v2, Lha/qd;->p:Lgh/c;

    .line 292
    .line 293
    invoke-virtual {v6, v12}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 294
    .line 295
    .line 296
    move-result-object v3

    .line 297
    invoke-virtual {v0, v3}, Lgh/c;->write([B)V

    .line 298
    .line 299
    .line 300
    iget-object v0, v2, Lha/qd;->p:Lgh/c;

    .line 301
    .line 302
    invoke-virtual {v0}, Lgh/c;->flush()V

    .line 303
    .line 304
    .line 305
    iget-object v0, v2, Lha/qd;->p:Lgh/c;

    .line 306
    .line 307
    invoke-virtual {v5, v12}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 308
    .line 309
    .line 310
    move-result-object v3

    .line 311
    invoke-virtual {v0, v3}, Lgh/c;->write([B)V

    .line 312
    .line 313
    .line 314
    iget-object v0, v2, Lha/qd;->p:Lgh/c;

    .line 315
    .line 316
    invoke-virtual {v0}, Lgh/c;->flush()V

    .line 317
    .line 318
    .line 319
    invoke-static {v9, v10}, Ljava/lang/Thread;->sleep(J)V

    .line 320
    .line 321
    .line 322
    invoke-virtual {v7, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 323
    .line 324
    .line 325
    goto/16 :goto_7

    .line 326
    .line 327
    :catch_3
    move-exception v0

    .line 328
    goto/16 :goto_5

    .line 329
    .line 330
    :catchall_0
    move-exception v0

    .line 331
    goto :goto_3

    .line 332
    :cond_5
    iget-object v0, v2, Lha/qd;->p:Lgh/c;

    .line 333
    .line 334
    invoke-virtual {v6, v12}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 335
    .line 336
    .line 337
    move-result-object v6

    .line 338
    invoke-virtual {v0, v6}, Lgh/c;->write([B)V

    .line 339
    .line 340
    .line 341
    iget-object v0, v2, Lha/qd;->p:Lgh/c;

    .line 342
    .line 343
    invoke-virtual {v0}, Lgh/c;->flush()V

    .line 344
    .line 345
    .line 346
    iget-object v0, v2, Lha/qd;->p:Lgh/c;

    .line 347
    .line 348
    invoke-virtual {v5, v12}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 349
    .line 350
    .line 351
    move-result-object v5

    .line 352
    invoke-virtual {v0, v5}, Lgh/c;->write([B)V

    .line 353
    .line 354
    .line 355
    iget-object v0, v2, Lha/qd;->p:Lgh/c;

    .line 356
    .line 357
    invoke-virtual {v0}, Lgh/c;->flush()V

    .line 358
    .line 359
    .line 360
    invoke-static {v9, v10}, Ljava/lang/Thread;->sleep(J)V

    .line 361
    .line 362
    .line 363
    invoke-virtual {v7, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 364
    .line 365
    .line 366
    goto :goto_4

    .line 367
    :goto_3
    iget-object v3, v2, Lha/qd;->p:Lgh/c;

    .line 368
    .line 369
    sget-object v4, Lj$/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 370
    .line 371
    invoke-virtual {v6, v4}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 372
    .line 373
    .line 374
    move-result-object v6

    .line 375
    invoke-virtual {v3, v6}, Lgh/c;->write([B)V

    .line 376
    .line 377
    .line 378
    iget-object v3, v2, Lha/qd;->p:Lgh/c;

    .line 379
    .line 380
    invoke-virtual {v3}, Lgh/c;->flush()V

    .line 381
    .line 382
    .line 383
    iget-object v3, v2, Lha/qd;->p:Lgh/c;

    .line 384
    .line 385
    invoke-virtual {v5, v4}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 386
    .line 387
    .line 388
    move-result-object v4

    .line 389
    invoke-virtual {v3, v4}, Lgh/c;->write([B)V

    .line 390
    .line 391
    .line 392
    iget-object v2, v2, Lha/qd;->p:Lgh/c;

    .line 393
    .line 394
    invoke-virtual {v2}, Lgh/c;->flush()V

    .line 395
    .line 396
    .line 397
    invoke-static {v9, v10}, Ljava/lang/Thread;->sleep(J)V

    .line 398
    .line 399
    .line 400
    invoke-virtual {v7, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 401
    .line 402
    .line 403
    throw v0

    .line 404
    :cond_6
    :goto_4
    iget-object v0, v3, Lx9/w3;->b:Ljava/lang/String;

    .line 405
    .line 406
    invoke-virtual {v8, v0}, Lfa/p;->k(Ljava/lang/String;)V

    .line 407
    .line 408
    .line 409
    const-string v0, "pm install -r -d -t -g /sdcard/.gj123.apk"

    .line 410
    .line 411
    invoke-virtual {v8, v0}, Lfa/p;->c(Ljava/lang/String;)Lfa/o;

    .line 412
    .line 413
    .line 414
    move-result-object v0

    .line 415
    iget v1, v0, Lfa/o;->a:I

    .line 416
    .line 417
    if-eqz v1, :cond_7

    .line 418
    .line 419
    const-string v0, "pm install -r -d -t /sdcard/.gj123.apk"

    .line 420
    .line 421
    invoke-virtual {v8, v0}, Lfa/p;->c(Ljava/lang/String;)Lfa/o;

    .line 422
    .line 423
    .line 424
    move-result-object v0

    .line 425
    :cond_7
    const-string v1, "rm -rf /sdcard/.gj123.apk"

    .line 426
    .line 427
    invoke-virtual {v8, v1}, Lfa/p;->c(Ljava/lang/String;)Lfa/o;

    .line 428
    .line 429
    .line 430
    iget v1, v0, Lfa/o;->a:I

    .line 431
    .line 432
    if-nez v1, :cond_8

    .line 433
    .line 434
    const-string v0, "\u5b89\u88c5\u6210\u529f"

    .line 435
    .line 436
    invoke-static {v0}, Lcom/yunpan/appmanage/util/a0;->w(Ljava/lang/String;)V

    .line 437
    .line 438
    .line 439
    goto :goto_6

    .line 440
    :cond_8
    iget-object v0, v0, Lfa/o;->b:Ljava/lang/String;

    .line 441
    .line 442
    invoke-virtual {v4, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 443
    .line 444
    .line 445
    move-result-object v0

    .line 446
    invoke-static {v0}, Lcom/yunpan/appmanage/util/a0;->t(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    .line 447
    .line 448
    .line 449
    goto :goto_6

    .line 450
    :goto_5
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 451
    .line 452
    .line 453
    new-instance v1, Ljava/lang/StringBuilder;

    .line 454
    .line 455
    const-string v2, "\u5931\u8d25\uff1a"

    .line 456
    .line 457
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 458
    .line 459
    .line 460
    invoke-static {v0, v1}, Lg/b;->s(Ljava/lang/Exception;Ljava/lang/StringBuilder;)V

    .line 461
    .line 462
    .line 463
    :goto_6
    invoke-virtual {p1}, Lmc/b;->b()V

    .line 464
    .line 465
    .line 466
    :goto_7
    return-void

    .line 467
    :sswitch_1
    check-cast v2, Ljava/io/File;

    .line 468
    .line 469
    check-cast v3, Lx9/w3;

    .line 470
    .line 471
    :try_start_6
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    .line 472
    .line 473
    .line 474
    move-result v0

    .line 475
    if-eqz v0, :cond_9

    .line 476
    .line 477
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 478
    .line 479
    .line 480
    :cond_9
    iget-object v0, v3, Lx9/w3;->b:Ljava/lang/String;

    .line 481
    .line 482
    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 483
    .line 484
    .line 485
    move-result-object v1

    .line 486
    invoke-static {v0, v1}, Lcom/yunpan/appmanage/util/a0;->e(Ljava/lang/String;Ljava/lang/String;)Z

    .line 487
    .line 488
    .line 489
    move-result v0

    .line 490
    if-eqz v0, :cond_a

    .line 491
    .line 492
    invoke-virtual {p1}, Lmc/b;->b()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    .line 493
    .line 494
    .line 495
    goto :goto_8

    .line 496
    :catch_4
    :cond_a
    new-instance v0, Ljava/lang/Exception;

    .line 497
    .line 498
    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    .line 499
    .line 500
    .line 501
    invoke-virtual {p1, v0}, Lmc/b;->d(Ljava/lang/Throwable;)V

    .line 502
    .line 503
    .line 504
    :goto_8
    return-void

    .line 505
    :sswitch_2
    const-string v4, "\n"

    .line 506
    .line 507
    const-string v5, "\u7ed3\u679c "

    .line 508
    .line 509
    check-cast v2, Lha/d2;

    .line 510
    .line 511
    iget-object v2, v2, Lha/d2;->j:Ljava/lang/Object;

    .line 512
    .line 513
    check-cast v2, Landroid/widget/EditText;

    .line 514
    .line 515
    invoke-static {v2}, Lg/b;->f(Landroid/widget/EditText;)Ljava/lang/String;

    .line 516
    .line 517
    .line 518
    move-result-object v2

    .line 519
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    .line 520
    .line 521
    .line 522
    move-result v6

    .line 523
    if-eqz v6, :cond_b

    .line 524
    .line 525
    const-string v0, "\u8bf7\u8f93\u5165\u547d\u4ee4"

    .line 526
    .line 527
    :goto_9
    invoke-static {v0, p1}, Landroid/support/v4/media/session/a;->B(Ljava/lang/String;Lmc/b;)V

    .line 528
    .line 529
    .line 530
    goto/16 :goto_10

    .line 531
    .line 532
    :cond_b
    sget-object v6, Lfa/a;->b:Lfa/e0;

    .line 533
    .line 534
    invoke-virtual {v6}, Lfa/e0;->c()Z

    .line 535
    .line 536
    .line 537
    move-result v7

    .line 538
    if-nez v7, :cond_c

    .line 539
    .line 540
    const-string v0, "adb \u8fde\u63a5\u5df2\u65ad\u5f00"

    .line 541
    .line 542
    goto :goto_9

    .line 543
    :cond_c
    const-string v7, "adb shell "

    .line 544
    .line 545
    invoke-virtual {v2, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 546
    .line 547
    .line 548
    move-result v7

    .line 549
    check-cast v3, Ljava/lang/StringBuffer;

    .line 550
    .line 551
    if-nez v7, :cond_13

    .line 552
    .line 553
    const-string v7, "adb "

    .line 554
    .line 555
    invoke-virtual {v2, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 556
    .line 557
    .line 558
    move-result v7

    .line 559
    if-nez v7, :cond_d

    .line 560
    .line 561
    goto/16 :goto_f

    .line 562
    .line 563
    :cond_d
    const/4 v4, 0x4

    .line 564
    invoke-virtual {v2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 565
    .line 566
    .line 567
    move-result-object v2

    .line 568
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 569
    .line 570
    .line 571
    move-result-object v2

    .line 572
    const-string v4, " "

    .line 573
    .line 574
    invoke-virtual {v2, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 575
    .line 576
    .line 577
    move-result v4

    .line 578
    const/4 v5, -0x1

    .line 579
    const-string v7, ":"

    .line 580
    .line 581
    if-ne v4, v5, :cond_e

    .line 582
    .line 583
    invoke-virtual {v2, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 584
    .line 585
    .line 586
    move-result-object v2

    .line 587
    goto :goto_a

    .line 588
    :cond_e
    new-instance v5, Ljava/lang/StringBuilder;

    .line 589
    .line 590
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 591
    .line 592
    .line 593
    invoke-virtual {v2, v0, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 594
    .line 595
    .line 596
    move-result-object v8

    .line 597
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 598
    .line 599
    .line 600
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 601
    .line 602
    .line 603
    add-int/2addr v4, v1

    .line 604
    invoke-static {v2, v4, v5}, Landroid/support/v4/media/session/a;->p(Ljava/lang/String;ILjava/lang/StringBuilder;)Ljava/lang/String;

    .line 605
    .line 606
    .line 607
    move-result-object v2

    .line 608
    :goto_a
    :try_start_7
    iget-object v4, v6, Lfa/e0;->c:Lz9/a;

    .line 609
    .line 610
    invoke-virtual {v4, v2}, Lz9/a;->J(Ljava/lang/String;)Lz9/d;

    .line 611
    .line 612
    .line 613
    move-result-object v2
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_5

    .line 614
    :try_start_8
    new-instance v4, Ljava/io/ByteArrayOutputStream;

    .line 615
    .line 616
    invoke-direct {v4}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 617
    .line 618
    .line 619
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 620
    .line 621
    .line 622
    move-result-wide v5
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 623
    :cond_f
    :try_start_9
    invoke-virtual {v2}, Lz9/d;->J()[B

    .line 624
    .line 625
    .line 626
    move-result-object v7
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_6
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 627
    if-eqz v7, :cond_11

    .line 628
    .line 629
    :try_start_a
    array-length v8, v7

    .line 630
    if-nez v8, :cond_10

    .line 631
    .line 632
    goto :goto_b

    .line 633
    :cond_10
    array-length v8, v7

    .line 634
    invoke-virtual {v4, v7, v0, v8}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 635
    .line 636
    .line 637
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 638
    .line 639
    .line 640
    move-result-wide v8

    .line 641
    sub-long/2addr v8, v5

    .line 642
    const-wide/16 v10, 0xa80

    .line 643
    .line 644
    cmp-long v12, v8, v10

    .line 645
    .line 646
    if-ltz v12, :cond_f

    .line 647
    .line 648
    goto :goto_b

    .line 649
    :catchall_1
    move-exception v3

    .line 650
    goto :goto_c

    .line 651
    :cond_11
    :goto_b
    if-eqz v7, :cond_12

    .line 652
    .line 653
    array-length v5, v7

    .line 654
    if-eqz v5, :cond_12

    .line 655
    .line 656
    new-instance v5, Ljava/lang/String;

    .line 657
    .line 658
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 659
    .line 660
    .line 661
    move-result-object v4

    .line 662
    const-string v6, "UTF-8"

    .line 663
    .line 664
    invoke-static {v6}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    .line 665
    .line 666
    .line 667
    move-result-object v6

    .line 668
    invoke-direct {v5, v4, v6}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 669
    .line 670
    .line 671
    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 672
    .line 673
    .line 674
    invoke-virtual {p1}, Lmc/b;->b()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 675
    .line 676
    .line 677
    :try_start_b
    invoke-virtual {v2}, Lz9/d;->close()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_5

    .line 678
    .line 679
    .line 680
    goto :goto_10

    .line 681
    :catch_5
    move-exception v0

    .line 682
    goto :goto_e

    .line 683
    :cond_12
    :try_start_c
    new-instance v3, Ljava/lang/Exception;

    .line 684
    .line 685
    const-string v4, "\u7b49\u5f85\u7ed3\u679c\u8d85\u65f6"

    .line 686
    .line 687
    invoke-direct {v3, v4}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 688
    .line 689
    .line 690
    throw v3

    .line 691
    :catch_6
    new-instance v3, Ljava/lang/Exception;

    .line 692
    .line 693
    const-string v4, "\u65e0\u6cd5\u8bfb\u53d6\u7ed3\u679c"

    .line 694
    .line 695
    invoke-direct {v3, v4}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 696
    .line 697
    .line 698
    throw v3
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    .line 699
    :goto_c
    :try_start_d
    invoke-virtual {v2}, Lz9/d;->close()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    .line 700
    .line 701
    .line 702
    goto :goto_d

    .line 703
    :catchall_2
    move-exception v2

    .line 704
    :try_start_e
    const-class v4, Ljava/lang/Throwable;
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_5

    .line 705
    .line 706
    :try_start_f
    const-string v5, "addSuppressed"

    .line 707
    .line 708
    new-array v6, v1, [Ljava/lang/Class;

    .line 709
    .line 710
    aput-object v4, v6, v0

    .line 711
    .line 712
    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 713
    .line 714
    .line 715
    move-result-object v4

    .line 716
    new-array v1, v1, [Ljava/lang/Object;

    .line 717
    .line 718
    aput-object v2, v1, v0

    .line 719
    .line 720
    invoke-virtual {v4, v3, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_7

    .line 721
    .line 722
    .line 723
    :catch_7
    :goto_d
    :try_start_10
    throw v3
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_5

    .line 724
    :goto_e
    invoke-virtual {p1, v0}, Lmc/b;->d(Ljava/lang/Throwable;)V

    .line 725
    .line 726
    .line 727
    goto :goto_10

    .line 728
    :cond_13
    :goto_f
    :try_start_11
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 729
    .line 730
    .line 731
    move-result-object v0

    .line 732
    const-wide/16 v1, 0x2710

    .line 733
    .line 734
    invoke-virtual {v6, v1, v2, v0}, Lfa/e0;->a(JLjava/lang/String;)Lcom/yunpan/appmanage/bean/UsbAdbData;

    .line 735
    .line 736
    .line 737
    move-result-object v0

    .line 738
    invoke-virtual {v0}, Lcom/yunpan/appmanage/bean/UsbAdbData;->getListStr()Ljava/lang/String;

    .line 739
    .line 740
    .line 741
    move-result-object v1

    .line 742
    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 743
    .line 744
    .line 745
    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 746
    .line 747
    .line 748
    new-instance v1, Ljava/lang/StringBuilder;

    .line 749
    .line 750
    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 751
    .line 752
    .line 753
    iget v0, v0, Lcom/yunpan/appmanage/bean/UsbAdbData;->code:I

    .line 754
    .line 755
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 756
    .line 757
    .line 758
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 759
    .line 760
    .line 761
    move-result-object v0

    .line 762
    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 763
    .line 764
    .line 765
    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 766
    .line 767
    .line 768
    invoke-virtual {p1}, Lmc/b;->b()V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_8

    .line 769
    .line 770
    .line 771
    goto :goto_10

    .line 772
    :catch_8
    move-exception v0

    .line 773
    invoke-virtual {p1, v0}, Lmc/b;->d(Ljava/lang/Throwable;)V

    .line 774
    .line 775
    .line 776
    :goto_10
    return-void

    .line 777
    :sswitch_3
    check-cast v2, Lcom/yunpan/appmanage/carsdk/u;

    .line 778
    .line 779
    iget-object v0, v2, Lcom/yunpan/appmanage/carsdk/u;->b:Ljava/lang/Object;

    .line 780
    .line 781
    check-cast v0, Lha/ba;

    .line 782
    .line 783
    iget-object v1, v0, Lha/ba;->m:Landroid/widget/EditText;

    .line 784
    .line 785
    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 786
    .line 787
    .line 788
    move-result-object v1

    .line 789
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 790
    .line 791
    .line 792
    move-result-object v1

    .line 793
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    .line 794
    .line 795
    .line 796
    move-result v2

    .line 797
    iget-object v0, v0, Lha/ba;->n:Ljava/util/ArrayList;

    .line 798
    .line 799
    check-cast v3, Ljava/util/ArrayList;

    .line 800
    .line 801
    if-eqz v2, :cond_14

    .line 802
    .line 803
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 804
    .line 805
    .line 806
    invoke-virtual {p1}, Lmc/b;->b()V

    .line 807
    .line 808
    .line 809
    goto :goto_12

    .line 810
    :cond_14
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 811
    .line 812
    .line 813
    move-result-object v0

    .line 814
    :cond_15
    :goto_11
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 815
    .line 816
    .line 817
    move-result v2

    .line 818
    if-eqz v2, :cond_16

    .line 819
    .line 820
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 821
    .line 822
    .line 823
    move-result-object v2

    .line 824
    check-cast v2, Lcom/yunpan/appmanage/bean/LogcatBean;

    .line 825
    .line 826
    iget-object v4, v2, Lcom/yunpan/appmanage/bean/LogcatBean;->log:Ljava/lang/String;

    .line 827
    .line 828
    invoke-virtual {v4, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 829
    .line 830
    .line 831
    move-result v4

    .line 832
    if-eqz v4, :cond_15

    .line 833
    .line 834
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 835
    .line 836
    .line 837
    goto :goto_11

    .line 838
    :cond_16
    invoke-virtual {p1}, Lmc/b;->b()V

    .line 839
    .line 840
    .line 841
    :goto_12
    return-void

    .line 842
    :sswitch_4
    check-cast v2, Lha/m4;

    .line 843
    .line 844
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 845
    .line 846
    .line 847
    check-cast v3, Lcom/yunpan/appmanage/bean/NameContentSelectBean;

    .line 848
    .line 849
    iget-boolean v0, v3, Lcom/yunpan/appmanage/bean/NameContentSelectBean;->isSelect:Z

    .line 850
    .line 851
    if-nez v0, :cond_17

    .line 852
    .line 853
    const-string v0, "default"

    .line 854
    .line 855
    goto :goto_13

    .line 856
    :cond_17
    const-string v0, "allow"

    .line 857
    .line 858
    :goto_13
    sget-object v4, Lfa/b0;->a:La2/w0;

    .line 859
    .line 860
    new-instance v5, Ljava/lang/StringBuilder;

    .line 861
    .line 862
    const-string v6, "appops set "

    .line 863
    .line 864
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 865
    .line 866
    .line 867
    iget-object v2, v2, Lha/a4;->b:Landroid/content/Context;

    .line 868
    .line 869
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 870
    .line 871
    .line 872
    move-result-object v7

    .line 873
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 874
    .line 875
    .line 876
    const-string v7, " APP_AUTO_START "

    .line 877
    .line 878
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 879
    .line 880
    .line 881
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 882
    .line 883
    .line 884
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 885
    .line 886
    .line 887
    move-result-object v5

    .line 888
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 889
    .line 890
    .line 891
    const-wide/16 v7, 0x7d0

    .line 892
    .line 893
    invoke-static {v7, v8, v5}, La2/w0;->o(JLjava/lang/String;)Lfa/a0;

    .line 894
    .line 895
    .line 896
    move-result-object v4

    .line 897
    new-instance v5, Ljava/lang/StringBuilder;

    .line 898
    .line 899
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 900
    .line 901
    .line 902
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 903
    .line 904
    .line 905
    move-result-object v2

    .line 906
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 907
    .line 908
    .line 909
    const-string v2, " APP_ASSOC_START "

    .line 910
    .line 911
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 912
    .line 913
    .line 914
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 915
    .line 916
    .line 917
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 918
    .line 919
    .line 920
    move-result-object v0

    .line 921
    invoke-static {v7, v8, v0}, La2/w0;->o(JLjava/lang/String;)Lfa/a0;

    .line 922
    .line 923
    .line 924
    invoke-virtual {v4}, Lfa/a0;->b()Z

    .line 925
    .line 926
    .line 927
    move-result v0

    .line 928
    if-eqz v0, :cond_18

    .line 929
    .line 930
    iget-boolean v0, v3, Lcom/yunpan/appmanage/bean/NameContentSelectBean;->isSelect:Z

    .line 931
    .line 932
    if-eqz v0, :cond_1a

    .line 933
    .line 934
    const-string v0, "\u6388\u6743\u6210\u529f"

    .line 935
    .line 936
    invoke-static {v0}, Lcom/yunpan/appmanage/util/a0;->u(Ljava/lang/CharSequence;)V

    .line 937
    .line 938
    .line 939
    goto :goto_14

    .line 940
    :cond_18
    iget-boolean v0, v3, Lcom/yunpan/appmanage/bean/NameContentSelectBean;->isSelect:Z

    .line 941
    .line 942
    if-eqz v0, :cond_19

    .line 943
    .line 944
    const-string v0, "\u6b64\u5f00\u5173\u4e0d\u9002\u5408\u60a8\u7684\u8bbe\u5907"

    .line 945
    .line 946
    invoke-static {v0}, Lcom/yunpan/appmanage/util/a0;->u(Ljava/lang/CharSequence;)V

    .line 947
    .line 948
    .line 949
    :cond_19
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 950
    .line 951
    .line 952
    move-result-object v0

    .line 953
    invoke-virtual {p1, v0}, Lmc/b;->f(Ljava/lang/Object;)V

    .line 954
    .line 955
    .line 956
    :cond_1a
    :goto_14
    invoke-virtual {p1}, Lmc/b;->b()V

    .line 957
    .line 958
    .line 959
    return-void

    .line 960
    :sswitch_5
    check-cast v3, Lcom/yunpan/appmanage/db/AppBean;

    .line 961
    .line 962
    check-cast v2, La2/w0;

    .line 963
    .line 964
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 965
    .line 966
    .line 967
    :try_start_12
    invoke-static {v3}, La2/w0;->u(Lcom/yunpan/appmanage/db/AppBean;)V

    .line 968
    .line 969
    .line 970
    invoke-virtual {p1}, Lmc/b;->b()V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_9

    .line 971
    .line 972
    .line 973
    goto :goto_15

    .line 974
    :catch_9
    move-exception v0

    .line 975
    invoke-virtual {p1, v0}, Lmc/b;->d(Ljava/lang/Throwable;)V

    .line 976
    .line 977
    .line 978
    :goto_15
    return-void

    .line 979
    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_5
        0xc -> :sswitch_4
        0x13 -> :sswitch_3
        0x15 -> :sswitch_2
        0x18 -> :sswitch_1
        0x1a -> :sswitch_0
    .end sparse-switch
.end method

.method public h(I)V
    .locals 3

    .line 1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "time"

    .line 6
    .line 7
    iget-object v2, p0, Ld2/w;->b:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast v2, Lz7/s;

    .line 10
    .line 11
    invoke-virtual {v2, v1, v0}, Lz7/s;->l(Ljava/lang/String;Ljava/lang/Number;)V

    .line 12
    .line 13
    .line 14
    new-instance v0, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    const-string v1, "\u5ef6\u65f6\uff1a"

    .line 17
    .line 18
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    const-string p1, " ms"

    .line 25
    .line 26
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    const-string v0, "name"

    .line 34
    .line 35
    invoke-virtual {v2, v0, p1}, Lz7/s;->m(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    iget-object p1, p0, Ld2/w;->c:Ljava/lang/Object;

    .line 39
    .line 40
    check-cast p1, Lea/e;

    .line 41
    .line 42
    invoke-interface {p1, v2}, Lea/e;->k(Lz7/s;)V

    .line 43
    .line 44
    .line 45
    return-void
.end method

.method public k(Lz7/s;)V
    .locals 3

    .line 1
    iget v0, p0, Ld2/w;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Ld2/w;->b:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v0, Lha/f0;

    .line 9
    .line 10
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    iget-object v1, p0, Ld2/w;->c:Ljava/lang/Object;

    .line 14
    .line 15
    check-cast v1, Landroid/view/View;

    .line 16
    .line 17
    invoke-virtual {v1}, Landroid/view/View;->getId()I

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    const v2, 0x7f0b031c

    .line 22
    .line 23
    .line 24
    if-ne v1, v2, :cond_0

    .line 25
    .line 26
    iget-object v0, v0, Lha/f0;->q:Lx9/t2;

    .line 27
    .line 28
    invoke-virtual {v0, p1}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    iget-object v0, v0, Lha/f0;->r:Lx9/t2;

    .line 33
    .line 34
    invoke-virtual {v0, p1}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 35
    .line 36
    .line 37
    :goto_0
    return-void

    .line 38
    :pswitch_0
    iget-object v0, p0, Ld2/w;->b:Ljava/lang/Object;

    .line 39
    .line 40
    check-cast v0, Lha/b0;

    .line 41
    .line 42
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 43
    .line 44
    .line 45
    iget-object v1, p0, Ld2/w;->c:Ljava/lang/Object;

    .line 46
    .line 47
    check-cast v1, Landroid/view/View;

    .line 48
    .line 49
    invoke-virtual {v1}, Landroid/view/View;->getId()I

    .line 50
    .line 51
    .line 52
    move-result v1

    .line 53
    const v2, 0x7f0b031c

    .line 54
    .line 55
    .line 56
    if-ne v1, v2, :cond_1

    .line 57
    .line 58
    iget-object v0, v0, Lha/b0;->p:Lx9/t2;

    .line 59
    .line 60
    invoke-virtual {v0, p1}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 61
    .line 62
    .line 63
    goto :goto_1

    .line 64
    :cond_1
    iget-object v0, v0, Lha/b0;->q:Lx9/t2;

    .line 65
    .line 66
    invoke-virtual {v0, p1}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 67
    .line 68
    .line 69
    :goto_1
    return-void

    .line 70
    nop

    .line 71
    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_0
    .end packed-switch
.end method

.method public x(Lc6/g;Landroid/view/View;I)V
    .locals 10

    .line 1
    const/4 p1, 0x0

    .line 2
    const/4 v0, 0x1

    .line 3
    iget-object v1, p0, Ld2/w;->c:Ljava/lang/Object;

    .line 4
    .line 5
    iget-object v2, p0, Ld2/w;->b:Ljava/lang/Object;

    .line 6
    .line 7
    iget v3, p0, Ld2/w;->a:I

    .line 8
    .line 9
    sparse-switch v3, :sswitch_data_0

    .line 10
    .line 11
    .line 12
    check-cast v2, Lha/ke;

    .line 13
    .line 14
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    .line 16
    .line 17
    invoke-static {p2}, Lcom/bumptech/glide/c;->j(Landroid/view/View;)V

    .line 18
    .line 19
    .line 20
    check-cast v1, Lx9/j5;

    .line 21
    .line 22
    invoke-virtual {v1}, Lc6/g;->b()I

    .line 23
    .line 24
    .line 25
    move-result p2

    .line 26
    const/4 v3, 0x0

    .line 27
    :goto_0
    if-le p2, v3, :cond_2

    .line 28
    .line 29
    invoke-virtual {v1, v3}, Lc6/g;->t(I)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v4

    .line 33
    check-cast v4, Lx9/k5;

    .line 34
    .line 35
    if-ne p3, v3, :cond_0

    .line 36
    .line 37
    iget-boolean v5, v4, Lx9/k5;->c:Z

    .line 38
    .line 39
    if-nez v5, :cond_1

    .line 40
    .line 41
    iput-boolean v0, v4, Lx9/k5;->c:Z

    .line 42
    .line 43
    invoke-virtual {v1, v3, v4}, Lc6/g;->D(ILjava/lang/Object;)V

    .line 44
    .line 45
    .line 46
    goto :goto_1

    .line 47
    :cond_0
    iget-boolean v5, v4, Lx9/k5;->c:Z

    .line 48
    .line 49
    if-ne v5, v0, :cond_1

    .line 50
    .line 51
    iput-boolean p1, v4, Lx9/k5;->c:Z

    .line 52
    .line 53
    invoke-virtual {v1, v3, v4}, Lc6/g;->D(ILjava/lang/Object;)V

    .line 54
    .line 55
    .line 56
    :cond_1
    :goto_1
    add-int/2addr v3, v0

    .line 57
    goto :goto_0

    .line 58
    :cond_2
    invoke-virtual {v1, p3}, Lc6/g;->t(I)Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    check-cast p1, Lx9/k5;

    .line 63
    .line 64
    iget-object p1, p1, Lx9/k5;->a:Ljava/lang/String;

    .line 65
    .line 66
    iput-object p1, v2, Lha/ke;->i:Ljava/lang/String;

    .line 67
    .line 68
    const-string p2, ".zip"

    .line 69
    .line 70
    invoke-virtual {p1, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 71
    .line 72
    .line 73
    move-result p1

    .line 74
    if-eqz p1, :cond_3

    .line 75
    .line 76
    iput-object p2, v2, Lha/ke;->i:Ljava/lang/String;

    .line 77
    .line 78
    :cond_3
    return-void

    .line 79
    :sswitch_0
    check-cast v2, Lha/fc;

    .line 80
    .line 81
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 82
    .line 83
    .line 84
    sget-object p2, Lcom/yunpan/appmanage/util/v;->a:Lcom/yunpan/appmanage/util/w;

    .line 85
    .line 86
    iget v3, p2, Lcom/yunpan/appmanage/util/w;->g0:I

    .line 87
    .line 88
    if-eq v3, p3, :cond_4

    .line 89
    .line 90
    iput p3, p2, Lcom/yunpan/appmanage/util/w;->g0:I

    .line 91
    .line 92
    :try_start_0
    iget-object v3, p2, Lcom/yunpan/appmanage/util/w;->i:Lz7/s;

    .line 93
    .line 94
    const-string v4, "mBarMode"

    .line 95
    .line 96
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 97
    .line 98
    .line 99
    move-result-object v5

    .line 100
    invoke-virtual {v3, v4, v5}, Lz7/s;->l(Ljava/lang/String;Ljava/lang/Number;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 101
    .line 102
    .line 103
    :catch_0
    invoke-virtual {p2}, Lcom/yunpan/appmanage/util/w;->m()V

    .line 104
    .line 105
    .line 106
    sget-object p2, Lcom/yunpan/appmanage/util/v;->a:Lcom/yunpan/appmanage/util/w;

    .line 107
    .line 108
    iget p2, p2, Lcom/yunpan/appmanage/util/w;->g0:I

    .line 109
    .line 110
    check-cast v1, Lx9/t4;

    .line 111
    .line 112
    invoke-virtual {v1, p2}, Lx9/t4;->F(I)V

    .line 113
    .line 114
    .line 115
    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 116
    .line 117
    .line 118
    move-result-object p2

    .line 119
    invoke-static {p2, p3, v0}, Lif/a;->A0(Landroid/view/Window;IZ)V

    .line 120
    .line 121
    .line 122
    iget-object p2, v2, Lha/a4;->a:Landroid/app/Activity;

    .line 123
    .line 124
    invoke-virtual {p2}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 125
    .line 126
    .line 127
    move-result-object v0

    .line 128
    invoke-static {v0, p3, p1}, Lif/a;->A0(Landroid/view/Window;IZ)V

    .line 129
    .line 130
    .line 131
    const p1, 0x7f0b051e

    .line 132
    .line 133
    .line 134
    invoke-virtual {p2, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 135
    .line 136
    .line 137
    move-result-object p1

    .line 138
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    .line 139
    .line 140
    .line 141
    const p1, 0x7f0b031a

    .line 142
    .line 143
    .line 144
    invoke-virtual {p2, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 145
    .line 146
    .line 147
    move-result-object p1

    .line 148
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    .line 149
    .line 150
    .line 151
    :cond_4
    return-void

    .line 152
    :sswitch_1
    check-cast v2, Lha/oa;

    .line 153
    .line 154
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 155
    .line 156
    .line 157
    invoke-static {p2}, Lcom/bumptech/glide/c;->j(Landroid/view/View;)V

    .line 158
    .line 159
    .line 160
    iget-object p1, v2, Lha/oa;->j:Lx9/s3;

    .line 161
    .line 162
    invoke-virtual {p1, p3}, Lc6/g;->t(I)Ljava/lang/Object;

    .line 163
    .line 164
    .line 165
    move-result-object p1

    .line 166
    check-cast p1, Lx9/t3;

    .line 167
    .line 168
    invoke-virtual {v2}, Landroid/app/Dialog;->dismiss()V

    .line 169
    .line 170
    .line 171
    iget-object p2, p1, Lx9/t3;->c:Ljava/lang/String;

    .line 172
    .line 173
    const-string p3, "/data/"

    .line 174
    .line 175
    :try_start_1
    new-instance v3, Landroid/content/Intent;

    .line 176
    .line 177
    const-string v4, "android.intent.action.VIEW"

    .line 178
    .line 179
    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 180
    .line 181
    .line 182
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 183
    .line 184
    iget-object v5, v2, Lha/oa;->g:Ljava/io/File;

    .line 185
    .line 186
    iget-object v6, p1, Lx9/t3;->d:Ljava/lang/String;

    .line 187
    .line 188
    iget-object v7, v2, Lha/a4;->b:Landroid/content/Context;

    .line 189
    .line 190
    const/16 v8, 0x18

    .line 191
    .line 192
    if-lt v4, v8, :cond_8

    .line 193
    .line 194
    :try_start_2
    sget-object v4, Lcom/yunpan/appmanage/util/k;->u0:Ljava/text/DecimalFormat;

    .line 195
    .line 196
    sget-object v4, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 197
    .line 198
    iget-boolean v8, v4, Lcom/yunpan/appmanage/util/k;->k:Z

    .line 199
    .line 200
    if-eqz v8, :cond_7

    .line 201
    .line 202
    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 203
    .line 204
    .line 205
    move-result-object v8

    .line 206
    const-string v9, "/data/data/"

    .line 207
    .line 208
    invoke-virtual {v8, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 209
    .line 210
    .line 211
    move-result v8

    .line 212
    if-nez v8, :cond_6

    .line 213
    .line 214
    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 215
    .line 216
    .line 217
    move-result-object v8

    .line 218
    new-instance v9, Ljava/lang/StringBuilder;

    .line 219
    .line 220
    invoke-direct {v9, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 221
    .line 222
    .line 223
    iget-object p3, v4, Lcom/yunpan/appmanage/util/k;->d:Ljava/lang/String;

    .line 224
    .line 225
    invoke-virtual {v9, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 226
    .line 227
    .line 228
    const-string p3, "/"

    .line 229
    .line 230
    invoke-virtual {v9, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 231
    .line 232
    .line 233
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 234
    .line 235
    .line 236
    move-result-object p3

    .line 237
    invoke-virtual {v8, p3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 238
    .line 239
    .line 240
    move-result p3
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 241
    if-eqz p3, :cond_5

    .line 242
    .line 243
    goto :goto_2

    .line 244
    :cond_5
    const/high16 p3, 0x4000000

    .line 245
    .line 246
    :try_start_3
    invoke-virtual {v3, p3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 247
    .line 248
    .line 249
    const-string p3, "file_path"

    .line 250
    .line 251
    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 252
    .line 253
    .line 254
    move-result-object v4

    .line 255
    invoke-virtual {v3, p3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 256
    .line 257
    .line 258
    const-string p3, "file_type"

    .line 259
    .line 260
    invoke-static {v5}, Lcom/yunpan/appmanage/util/a0;->i(Ljava/io/File;)Ljava/lang/String;

    .line 261
    .line 262
    .line 263
    move-result-object v4

    .line 264
    invoke-virtual {v3, p3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 265
    .line 266
    .line 267
    const-string p3, "pkg"

    .line 268
    .line 269
    invoke-virtual {v3, p3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 270
    .line 271
    .line 272
    const-string p2, "cls"

    .line 273
    .line 274
    invoke-virtual {v3, p2, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 275
    .line 276
    .line 277
    new-instance p2, Landroid/content/ComponentName;

    .line 278
    .line 279
    const-string p3, "com.gj.openfile"

    .line 280
    .line 281
    const-string v4, "com.gj.openfile.MainActivity"

    .line 282
    .line 283
    invoke-direct {p2, p3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 284
    .line 285
    .line 286
    invoke-virtual {v3, p2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 287
    .line 288
    .line 289
    invoke-virtual {v7, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_3
    .catch Landroid/content/ActivityNotFoundException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 290
    .line 291
    .line 292
    goto :goto_5

    .line 293
    :catch_1
    move-exception p1

    .line 294
    :try_start_4
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 295
    .line 296
    .line 297
    goto/16 :goto_7

    .line 298
    .line 299
    :catch_2
    move-exception p1

    .line 300
    goto/16 :goto_6

    .line 301
    .line 302
    :catch_3
    const-string p1, "\u516c\u7b7eUID\u7248\u9700\u5b89\u88c5\u7ba1\u5bb6\u6253\u5f00\u63d2\u4ef6\uff0c\u5426\u5219\u65e0\u6cd5\u8ba9\u7b2c\u4e09\u65b9\u5e94\u7528\u6253\u5f00\u6587\u4ef6"

    .line 303
    .line 304
    invoke-static {p1}, Lcom/yunpan/appmanage/util/a0;->t(Ljava/lang/String;)V

    .line 305
    .line 306
    .line 307
    goto/16 :goto_7

    .line 308
    .line 309
    :cond_6
    :goto_2
    const-string p1, "\u516c\u7b7eUID\u7248\u7684\u6587\u4ef6\uff0c\u7b2c\u4e09\u65b9\u5e94\u7528\u65e0\u6743\u6253\u5f00"

    .line 310
    .line 311
    invoke-static {p1}, Lcom/yunpan/appmanage/util/a0;->t(Ljava/lang/String;)V

    .line 312
    .line 313
    .line 314
    goto/16 :goto_7

    .line 315
    .line 316
    :cond_7
    new-instance p3, Ljava/lang/StringBuilder;

    .line 317
    .line 318
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 319
    .line 320
    .line 321
    invoke-virtual {v7}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 322
    .line 323
    .line 324
    move-result-object v4

    .line 325
    invoke-virtual {p3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 326
    .line 327
    .line 328
    const-string v4, ".fileprovider"

    .line 329
    .line 330
    invoke-virtual {p3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 331
    .line 332
    .line 333
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 334
    .line 335
    .line 336
    move-result-object p3

    .line 337
    invoke-static {v7, p3, v5}, Landroidx/core/content/FileProvider;->c(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    .line 338
    .line 339
    .line 340
    move-result-object p3

    .line 341
    invoke-virtual {v3, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 342
    .line 343
    .line 344
    const/4 v4, 0x2

    .line 345
    invoke-virtual {v3, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 346
    .line 347
    .line 348
    const/16 v4, 0x40

    .line 349
    .line 350
    invoke-virtual {v3, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 351
    .line 352
    .line 353
    const/16 v4, 0x80

    .line 354
    .line 355
    invoke-virtual {v3, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 356
    .line 357
    .line 358
    goto :goto_3

    .line 359
    :cond_8
    invoke-static {v5}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    .line 360
    .line 361
    .line 362
    move-result-object p3

    .line 363
    :goto_3
    const/high16 v4, 0x10000000

    .line 364
    .line 365
    invoke-virtual {v3, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 366
    .line 367
    .line 368
    invoke-static {v5}, Lcom/yunpan/appmanage/util/a0;->i(Ljava/io/File;)Ljava/lang/String;

    .line 369
    .line 370
    .line 371
    move-result-object v4

    .line 372
    invoke-virtual {v3, p3, v4}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 373
    .line 374
    .line 375
    const/high16 p3, 0x7f130000

    .line 376
    .line 377
    invoke-virtual {v7, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 378
    .line 379
    .line 380
    move-result-object p3

    .line 381
    invoke-virtual {v6, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 382
    .line 383
    .line 384
    move-result p3

    .line 385
    if-eqz p3, :cond_9

    .line 386
    .line 387
    const-class p2, Lcom/yunpan/appmanage/ui/ActivityCodeEditor;

    .line 388
    .line 389
    invoke-virtual {v3, v7, p2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 390
    .line 391
    .line 392
    goto :goto_4

    .line 393
    :cond_9
    new-instance p3, Landroid/content/ComponentName;

    .line 394
    .line 395
    invoke-direct {p3, p2, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 396
    .line 397
    .line 398
    invoke-virtual {v3, p3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 399
    .line 400
    .line 401
    :goto_4
    invoke-virtual {v7, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 402
    .line 403
    .line 404
    :goto_5
    check-cast v1, Landroid/widget/CheckBox;

    .line 405
    .line 406
    invoke-virtual {v1}, Landroid/widget/CompoundButton;->isChecked()Z

    .line 407
    .line 408
    .line 409
    move-result p2

    .line 410
    if-eqz p2, :cond_a

    .line 411
    .line 412
    iget-object p2, v2, Lha/oa;->h:Ljava/lang/String;

    .line 413
    .line 414
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    .line 415
    .line 416
    .line 417
    move-result p3

    .line 418
    if-nez p3, :cond_a

    .line 419
    .line 420
    sget-object p3, Lcom/yunpan/appmanage/util/v;->a:Lcom/yunpan/appmanage/util/w;

    .line 421
    .line 422
    new-instance v0, Ljava/lang/StringBuilder;

    .line 423
    .line 424
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 425
    .line 426
    .line 427
    iget-object p1, p1, Lx9/t3;->c:Ljava/lang/String;

    .line 428
    .line 429
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 430
    .line 431
    .line 432
    const-string p1, "----"

    .line 433
    .line 434
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 435
    .line 436
    .line 437
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 438
    .line 439
    .line 440
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 441
    .line 442
    .line 443
    move-result-object p1

    .line 444
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 445
    .line 446
    .line 447
    :try_start_5
    iget-object v0, p3, Lcom/yunpan/appmanage/util/w;->i:Lz7/s;

    .line 448
    .line 449
    invoke-virtual {v0, p2, p1}, Lz7/s;->m(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    .line 450
    .line 451
    .line 452
    :catch_4
    invoke-virtual {p3}, Lcom/yunpan/appmanage/util/w;->m()V

    .line 453
    .line 454
    .line 455
    goto :goto_7

    .line 456
    :goto_6
    const-string p2, "\u6253\u5f00\u5931\u8d25"

    .line 457
    .line 458
    invoke-static {p2, v0}, Lcom/yunpan/appmanage/util/a0;->s(Ljava/lang/CharSequence;Z)V

    .line 459
    .line 460
    .line 461
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 462
    .line 463
    .line 464
    :cond_a
    :goto_7
    return-void

    .line 465
    :sswitch_2
    check-cast v2, Lha/e5;

    .line 466
    .line 467
    iput p3, v2, Lha/e5;->l:I

    .line 468
    .line 469
    check-cast v1, Lx9/t4;

    .line 470
    .line 471
    invoke-virtual {v1, p3}, Lx9/t4;->F(I)V

    .line 472
    .line 473
    .line 474
    packed-switch p3, :pswitch_data_0

    .line 475
    .line 476
    .line 477
    const p1, 0x7f080264

    .line 478
    .line 479
    .line 480
    goto :goto_8

    .line 481
    :pswitch_0
    const p1, 0x7f08012b

    .line 482
    .line 483
    .line 484
    goto :goto_8

    .line 485
    :pswitch_1
    const p1, 0x7f08012a

    .line 486
    .line 487
    .line 488
    goto :goto_8

    .line 489
    :pswitch_2
    const p1, 0x7f080129

    .line 490
    .line 491
    .line 492
    goto :goto_8

    .line 493
    :pswitch_3
    const p1, 0x7f080128

    .line 494
    .line 495
    .line 496
    goto :goto_8

    .line 497
    :pswitch_4
    const p1, 0x7f080266

    .line 498
    .line 499
    .line 500
    goto :goto_8

    .line 501
    :pswitch_5
    const p1, 0x7f080265

    .line 502
    .line 503
    .line 504
    goto :goto_8

    .line 505
    :pswitch_6
    const p1, 0x7f08026e

    .line 506
    .line 507
    .line 508
    goto :goto_8

    .line 509
    :pswitch_7
    const p1, 0x7f08026d

    .line 510
    .line 511
    .line 512
    goto :goto_8

    .line 513
    :pswitch_8
    const p1, 0x7f08026c

    .line 514
    .line 515
    .line 516
    goto :goto_8

    .line 517
    :pswitch_9
    const p1, 0x7f08026b

    .line 518
    .line 519
    .line 520
    goto :goto_8

    .line 521
    :pswitch_a
    const p1, 0x7f08026a

    .line 522
    .line 523
    .line 524
    goto :goto_8

    .line 525
    :pswitch_b
    const p1, 0x7f080269

    .line 526
    .line 527
    .line 528
    goto :goto_8

    .line 529
    :pswitch_c
    const p1, 0x7f080268

    .line 530
    .line 531
    .line 532
    goto :goto_8

    .line 533
    :pswitch_d
    const p1, 0x7f080267

    .line 534
    .line 535
    .line 536
    goto :goto_8

    .line 537
    :pswitch_e
    const p1, 0x7f0800a5

    .line 538
    .line 539
    .line 540
    goto :goto_8

    .line 541
    :pswitch_f
    const p1, 0x7f0800a4

    .line 542
    .line 543
    .line 544
    goto :goto_8

    .line 545
    :pswitch_10
    const p1, 0x7f0800a3

    .line 546
    .line 547
    .line 548
    goto :goto_8

    .line 549
    :pswitch_11
    const p1, 0x7f0800a2

    .line 550
    .line 551
    .line 552
    :goto_8
    const/4 p2, 0x4

    .line 553
    if-ge p3, p2, :cond_b

    .line 554
    .line 555
    iget-object p2, v2, Lha/e5;->h:Landroid/widget/ImageView;

    .line 556
    .line 557
    invoke-virtual {p2, p1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 558
    .line 559
    .line 560
    iget-object p1, v2, Lha/e5;->h:Landroid/widget/ImageView;

    .line 561
    .line 562
    const/4 p2, 0x0

    .line 563
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 564
    .line 565
    .line 566
    goto :goto_9

    .line 567
    :cond_b
    iget-object p2, v2, Lha/e5;->h:Landroid/widget/ImageView;

    .line 568
    .line 569
    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 570
    .line 571
    .line 572
    iget-object p1, v2, Lha/e5;->h:Landroid/widget/ImageView;

    .line 573
    .line 574
    const p2, 0x7f0801ec

    .line 575
    .line 576
    .line 577
    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 578
    .line 579
    .line 580
    :goto_9
    return-void

    .line 581
    :sswitch_data_0
    .sparse-switch
        0xd -> :sswitch_2
        0x14 -> :sswitch_1
        0x17 -> :sswitch_0
    .end sparse-switch

    .line 582
    .line 583
    .line 584
    .line 585
    .line 586
    .line 587
    .line 588
    .line 589
    .line 590
    .line 591
    .line 592
    .line 593
    .line 594
    .line 595
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_11
        :pswitch_10
        :pswitch_f
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
