.class public final synthetic Lua/e2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/yunpan/appmanage/ui/ActivityImage;


# direct methods
.method public synthetic constructor <init>(Lcom/yunpan/appmanage/ui/ActivityImage;I)V
    .locals 0

    .line 1
    iput p2, p0, Lua/e2;->a:I

    iput-object p1, p0, Lua/e2;->b:Lcom/yunpan/appmanage/ui/ActivityImage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 5

    .line 1
    const-string p1, "s"

    .line 2
    .line 3
    const/16 v0, 0x8

    .line 4
    .line 5
    const/4 v1, 0x1

    .line 6
    const/4 v2, 0x0

    .line 7
    iget-object v3, p0, Lua/e2;->b:Lcom/yunpan/appmanage/ui/ActivityImage;

    .line 8
    .line 9
    iget v4, p0, Lua/e2;->a:I

    .line 10
    .line 11
    packed-switch v4, :pswitch_data_0

    .line 12
    .line 13
    .line 14
    sget p1, Lcom/yunpan/appmanage/ui/ActivityImage;->t0:I

    .line 15
    .line 16
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    .line 18
    .line 19
    new-instance p1, Lua/g2;

    .line 20
    .line 21
    invoke-direct {p1, v3, v1}, Lua/g2;-><init>(Lcom/yunpan/appmanage/ui/ActivityImage;I)V

    .line 22
    .line 23
    .line 24
    new-instance v0, Lmc/c;

    .line 25
    .line 26
    invoke-direct {v0, v2, p1}, Lmc/c;-><init>(ILjava/lang/Object;)V

    .line 27
    .line 28
    .line 29
    sget-object p1, Lrc/f;->b:Lec/j;

    .line 30
    .line 31
    invoke-virtual {v0, p1}, Lec/b;->d(Lec/j;)Lmc/p;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    invoke-static {}, Lfc/b;->a()Lfc/e;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    invoke-virtual {p1, v0}, Lec/b;->a(Lfc/e;)Lmc/g;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    new-instance v0, Lua/h2;

    .line 44
    .line 45
    const/4 v1, 0x2

    .line 46
    invoke-direct {v0, v3, v1}, Lua/h2;-><init>(Lcom/yunpan/appmanage/ui/ActivityImage;I)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {p1, v0}, Lec/b;->b(Lec/e;)V

    .line 50
    .line 51
    .line 52
    return-void

    .line 53
    :pswitch_0
    iget p1, v3, Lcom/yunpan/appmanage/ui/ActivityImage;->X:F

    .line 54
    .line 55
    const/high16 v4, 0x42b40000    # 90.0f

    .line 56
    .line 57
    add-float/2addr p1, v4

    .line 58
    iput p1, v3, Lcom/yunpan/appmanage/ui/ActivityImage;->X:F

    .line 59
    .line 60
    const/high16 v4, 0x43b40000    # 360.0f

    .line 61
    .line 62
    cmpl-float p1, p1, v4

    .line 63
    .line 64
    if-ltz p1, :cond_0

    .line 65
    .line 66
    const/4 p1, 0x0

    .line 67
    iput p1, v3, Lcom/yunpan/appmanage/ui/ActivityImage;->X:F

    .line 68
    .line 69
    iget-object p1, v3, Lcom/yunpan/appmanage/ui/ActivityImage;->M:Landroid/widget/TextView;

    .line 70
    .line 71
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 72
    .line 73
    .line 74
    sget-object p1, Lcom/yunpan/appmanage/util/k;->u0:Ljava/text/DecimalFormat;

    .line 75
    .line 76
    sget-object p1, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 77
    .line 78
    iget-object p1, p1, Lcom/yunpan/appmanage/util/k;->y:Lcom/yunpan/appmanage/bean/ImageData;

    .line 79
    .line 80
    iget-object v0, p1, Lcom/yunpan/appmanage/bean/ImageData;->bdFiles:Ljava/util/List;

    .line 81
    .line 82
    iget p1, p1, Lcom/yunpan/appmanage/bean/ImageData;->position:I

    .line 83
    .line 84
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    move-result-object p1

    .line 88
    check-cast p1, Lx9/w3;

    .line 89
    .line 90
    iget-object p1, p1, Lx9/w3;->b:Ljava/lang/String;

    .line 91
    .line 92
    invoke-virtual {v3, p1}, Lcom/yunpan/appmanage/ui/ActivityImage;->z(Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    goto :goto_0

    .line 96
    :cond_0
    new-instance p1, Lua/g2;

    .line 97
    .line 98
    invoke-direct {p1, v3, v2}, Lua/g2;-><init>(Lcom/yunpan/appmanage/ui/ActivityImage;I)V

    .line 99
    .line 100
    .line 101
    new-instance v0, Lmc/c;

    .line 102
    .line 103
    invoke-direct {v0, v2, p1}, Lmc/c;-><init>(ILjava/lang/Object;)V

    .line 104
    .line 105
    .line 106
    sget-object p1, Lrc/f;->b:Lec/j;

    .line 107
    .line 108
    invoke-virtual {v0, p1}, Lec/b;->d(Lec/j;)Lmc/p;

    .line 109
    .line 110
    .line 111
    move-result-object p1

    .line 112
    invoke-static {}, Lfc/b;->a()Lfc/e;

    .line 113
    .line 114
    .line 115
    move-result-object v0

    .line 116
    invoke-virtual {p1, v0}, Lec/b;->a(Lfc/e;)Lmc/g;

    .line 117
    .line 118
    .line 119
    move-result-object p1

    .line 120
    new-instance v0, Lua/h2;

    .line 121
    .line 122
    invoke-direct {v0, v3, v1}, Lua/h2;-><init>(Lcom/yunpan/appmanage/ui/ActivityImage;I)V

    .line 123
    .line 124
    .line 125
    invoke-virtual {p1, v0}, Lec/b;->b(Lec/e;)V

    .line 126
    .line 127
    .line 128
    :goto_0
    return-void

    .line 129
    :pswitch_1
    sget p1, Lcom/yunpan/appmanage/ui/ActivityImage;->t0:I

    .line 130
    .line 131
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 132
    .line 133
    .line 134
    sget-object p1, Lcom/yunpan/appmanage/util/k;->u0:Ljava/text/DecimalFormat;

    .line 135
    .line 136
    sget-object p1, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 137
    .line 138
    iget-object p1, p1, Lcom/yunpan/appmanage/util/k;->y:Lcom/yunpan/appmanage/bean/ImageData;

    .line 139
    .line 140
    iget-object p1, p1, Lcom/yunpan/appmanage/bean/ImageData;->userInfo:Lx9/n5;

    .line 141
    .line 142
    if-nez p1, :cond_1

    .line 143
    .line 144
    new-instance p1, Lua/v0;

    .line 145
    .line 146
    const/4 v0, 0x7

    .line 147
    invoke-direct {p1, v0}, Lua/v0;-><init>(I)V

    .line 148
    .line 149
    .line 150
    new-instance v0, Lmc/c;

    .line 151
    .line 152
    invoke-direct {v0, v2, p1}, Lmc/c;-><init>(ILjava/lang/Object;)V

    .line 153
    .line 154
    .line 155
    sget-object p1, Lrc/f;->b:Lec/j;

    .line 156
    .line 157
    invoke-virtual {v0, p1}, Lec/b;->d(Lec/j;)Lmc/p;

    .line 158
    .line 159
    .line 160
    move-result-object p1

    .line 161
    invoke-static {}, Lfc/b;->a()Lfc/e;

    .line 162
    .line 163
    .line 164
    move-result-object v0

    .line 165
    invoke-virtual {p1, v0}, Lec/b;->a(Lfc/e;)Lmc/g;

    .line 166
    .line 167
    .line 168
    move-result-object p1

    .line 169
    new-instance v0, Lua/h2;

    .line 170
    .line 171
    invoke-direct {v0, v3, v2}, Lua/h2;-><init>(Lcom/yunpan/appmanage/ui/ActivityImage;I)V

    .line 172
    .line 173
    .line 174
    invoke-virtual {p1, v0}, Lec/b;->b(Lec/e;)V

    .line 175
    .line 176
    .line 177
    :cond_1
    return-void

    .line 178
    :pswitch_2
    iget-object p1, v3, Lcom/yunpan/appmanage/ui/ActivityImage;->O:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 179
    .line 180
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    .line 181
    .line 182
    .line 183
    move-result v1

    .line 184
    if-nez v1, :cond_2

    .line 185
    .line 186
    goto :goto_1

    .line 187
    :cond_2
    const/4 v0, 0x0

    .line 188
    :goto_1
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 189
    .line 190
    .line 191
    return-void

    .line 192
    :pswitch_3
    iget-object p1, v3, Lcom/yunpan/appmanage/ui/ActivityImage;->D:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 193
    .line 194
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    .line 195
    .line 196
    .line 197
    move-result p1

    .line 198
    if-nez p1, :cond_3

    .line 199
    .line 200
    invoke-virtual {v3}, Lcom/yunpan/appmanage/ui/ActivityImage;->x()V

    .line 201
    .line 202
    .line 203
    goto :goto_2

    .line 204
    :cond_3
    invoke-virtual {v3}, Lcom/yunpan/appmanage/ui/ActivityImage;->A()V

    .line 205
    .line 206
    .line 207
    :goto_2
    return-void

    .line 208
    :pswitch_4
    sget v0, Lcom/yunpan/appmanage/ui/ActivityImage;->t0:I

    .line 209
    .line 210
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 211
    .line 212
    .line 213
    sget-object v0, Lcom/yunpan/appmanage/util/v;->a:Lcom/yunpan/appmanage/util/w;

    .line 214
    .line 215
    iget v2, v0, Lcom/yunpan/appmanage/util/w;->H0:I

    .line 216
    .line 217
    add-int/2addr v2, v1

    .line 218
    iget-object v1, v3, Lcom/yunpan/appmanage/ui/ActivityImage;->T:Landroid/widget/TextView;

    .line 219
    .line 220
    new-instance v3, Ljava/lang/StringBuilder;

    .line 221
    .line 222
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 223
    .line 224
    .line 225
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 226
    .line 227
    .line 228
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 229
    .line 230
    .line 231
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 232
    .line 233
    .line 234
    move-result-object p1

    .line 235
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 236
    .line 237
    .line 238
    invoke-virtual {v0, v2}, Lcom/yunpan/appmanage/util/w;->x(I)V

    .line 239
    .line 240
    .line 241
    return-void

    .line 242
    :pswitch_5
    sget v0, Lcom/yunpan/appmanage/ui/ActivityImage;->t0:I

    .line 243
    .line 244
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 245
    .line 246
    .line 247
    sget-object v0, Lcom/yunpan/appmanage/util/v;->a:Lcom/yunpan/appmanage/util/w;

    .line 248
    .line 249
    iget v1, v0, Lcom/yunpan/appmanage/util/w;->H0:I

    .line 250
    .line 251
    add-int/lit8 v1, v1, -0x1

    .line 252
    .line 253
    if-gez v1, :cond_4

    .line 254
    .line 255
    goto :goto_3

    .line 256
    :cond_4
    move v2, v1

    .line 257
    :goto_3
    iget-object v1, v3, Lcom/yunpan/appmanage/ui/ActivityImage;->T:Landroid/widget/TextView;

    .line 258
    .line 259
    new-instance v3, Ljava/lang/StringBuilder;

    .line 260
    .line 261
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 262
    .line 263
    .line 264
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 265
    .line 266
    .line 267
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 268
    .line 269
    .line 270
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 271
    .line 272
    .line 273
    move-result-object p1

    .line 274
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 275
    .line 276
    .line 277
    invoke-virtual {v0, v2}, Lcom/yunpan/appmanage/util/w;->x(I)V

    .line 278
    .line 279
    .line 280
    return-void

    .line 281
    :pswitch_6
    sget p1, Lcom/yunpan/appmanage/ui/ActivityImage;->t0:I

    .line 282
    .line 283
    invoke-virtual {v3}, Landroid/app/Activity;->finish()V

    .line 284
    .line 285
    .line 286
    return-void

    .line 287
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
