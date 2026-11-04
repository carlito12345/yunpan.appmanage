.class public final Lha/dc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lha/wd;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Landroid/widget/ImageView;

.field public final synthetic c:Landroid/widget/ImageView;

.field public final synthetic d:Landroid/widget/ImageView;

.field public final synthetic e:Lha/fc;


# direct methods
.method public synthetic constructor <init>(Lha/fc;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;I)V
    .locals 0

    .line 1
    iput p5, p0, Lha/dc;->a:I

    iput-object p1, p0, Lha/dc;->e:Lha/fc;

    iput-object p2, p0, Lha/dc;->b:Landroid/widget/ImageView;

    iput-object p3, p0, Lha/dc;->c:Landroid/widget/ImageView;

    iput-object p4, p0, Lha/dc;->d:Landroid/widget/ImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final a()V
    .locals 0

    .line 1
    return-void
.end method

.method private final b()V
    .locals 0

    .line 1
    return-void
.end method

.method private final c()V
    .locals 0

    .line 1
    return-void
.end method


# virtual methods
.method public final D()V
    .locals 3

    .line 1
    iget v0, p0, Lha/dc;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lha/dc;->b:Landroid/widget/ImageView;

    .line 7
    .line 8
    const v1, 0x7f0802af

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lha/dc;->c:Landroid/widget/ImageView;

    .line 15
    .line 16
    const v2, 0x7f0802b0

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 20
    .line 21
    .line 22
    iget-object v0, p0, Lha/dc;->d:Landroid/widget/ImageView;

    .line 23
    .line 24
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 25
    .line 26
    .line 27
    sget-object v0, Lcom/yunpan/appmanage/util/v;->a:Lcom/yunpan/appmanage/util/w;

    .line 28
    .line 29
    const/4 v1, 0x1

    .line 30
    invoke-virtual {v0, v1}, Lcom/yunpan/appmanage/util/w;->o(I)V

    .line 31
    .line 32
    .line 33
    sget-object v0, Lfa/g0;->a:Lfa/h0;

    .line 34
    .line 35
    invoke-virtual {v0}, Lfa/h0;->f()Z

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    if-nez v0, :cond_0

    .line 40
    .line 41
    sget-object v0, Lfa/b0;->a:La2/w0;

    .line 42
    .line 43
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 44
    .line 45
    .line 46
    invoke-static {}, La2/w0;->P()Z

    .line 47
    .line 48
    .line 49
    move-result v0

    .line 50
    if-eqz v0, :cond_0

    .line 51
    .line 52
    new-instance v0, Ljava/lang/StringBuilder;

    .line 53
    .line 54
    const-string v1, "\u9700\u91cd\u65b0\u6253\u5f00"

    .line 55
    .line 56
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    iget-object v1, p0, Lha/dc;->e:Lha/fc;

    .line 60
    .line 61
    iget-object v1, v1, Lha/a4;->b:Landroid/content/Context;

    .line 62
    .line 63
    const v2, 0x7f13002f

    .line 64
    .line 65
    .line 66
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v1

    .line 70
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    const-string v1, "\u65b9\u53ef\u751f\u6548"

    .line 74
    .line 75
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v0

    .line 82
    const/4 v1, 0x0

    .line 83
    invoke-static {v0, v1}, Lcom/yunpan/appmanage/util/a0;->v(Ljava/lang/CharSequence;Z)V

    .line 84
    .line 85
    .line 86
    :cond_0
    return-void

    .line 87
    :pswitch_0
    iget-object v0, p0, Lha/dc;->b:Landroid/widget/ImageView;

    .line 88
    .line 89
    const v1, 0x7f0802af

    .line 90
    .line 91
    .line 92
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 93
    .line 94
    .line 95
    iget-object v0, p0, Lha/dc;->c:Landroid/widget/ImageView;

    .line 96
    .line 97
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 98
    .line 99
    .line 100
    iget-object v0, p0, Lha/dc;->d:Landroid/widget/ImageView;

    .line 101
    .line 102
    const v1, 0x7f0802b0

    .line 103
    .line 104
    .line 105
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 106
    .line 107
    .line 108
    sget-object v0, Lcom/yunpan/appmanage/util/v;->a:Lcom/yunpan/appmanage/util/w;

    .line 109
    .line 110
    const/4 v1, 0x2

    .line 111
    invoke-virtual {v0, v1}, Lcom/yunpan/appmanage/util/w;->p(I)V

    .line 112
    .line 113
    .line 114
    sget-object v0, Lfa/g0;->a:Lfa/h0;

    .line 115
    .line 116
    invoke-virtual {v0}, Lfa/h0;->f()Z

    .line 117
    .line 118
    .line 119
    move-result v0

    .line 120
    if-nez v0, :cond_1

    .line 121
    .line 122
    sget-object v0, Lfa/b0;->a:La2/w0;

    .line 123
    .line 124
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 125
    .line 126
    .line 127
    invoke-static {}, La2/w0;->P()Z

    .line 128
    .line 129
    .line 130
    move-result v0

    .line 131
    if-eqz v0, :cond_1

    .line 132
    .line 133
    new-instance v0, Ljava/lang/StringBuilder;

    .line 134
    .line 135
    const-string v1, "\u9700\u91cd\u65b0\u6253\u5f00"

    .line 136
    .line 137
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 138
    .line 139
    .line 140
    iget-object v1, p0, Lha/dc;->e:Lha/fc;

    .line 141
    .line 142
    iget-object v1, v1, Lha/a4;->b:Landroid/content/Context;

    .line 143
    .line 144
    const v2, 0x7f13002f

    .line 145
    .line 146
    .line 147
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 148
    .line 149
    .line 150
    move-result-object v1

    .line 151
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 152
    .line 153
    .line 154
    const-string v1, "\u65b9\u53ef\u751f\u6548"

    .line 155
    .line 156
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 157
    .line 158
    .line 159
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 160
    .line 161
    .line 162
    move-result-object v0

    .line 163
    const/4 v1, 0x0

    .line 164
    invoke-static {v0, v1}, Lcom/yunpan/appmanage/util/a0;->v(Ljava/lang/CharSequence;Z)V

    .line 165
    .line 166
    .line 167
    :cond_1
    return-void

    .line 168
    :pswitch_1
    iget-object v0, p0, Lha/dc;->b:Landroid/widget/ImageView;

    .line 169
    .line 170
    const v1, 0x7f0802af

    .line 171
    .line 172
    .line 173
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 174
    .line 175
    .line 176
    iget-object v0, p0, Lha/dc;->c:Landroid/widget/ImageView;

    .line 177
    .line 178
    const v2, 0x7f0802b0

    .line 179
    .line 180
    .line 181
    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 182
    .line 183
    .line 184
    iget-object v0, p0, Lha/dc;->d:Landroid/widget/ImageView;

    .line 185
    .line 186
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 187
    .line 188
    .line 189
    sget-object v0, Lcom/yunpan/appmanage/util/v;->a:Lcom/yunpan/appmanage/util/w;

    .line 190
    .line 191
    const/4 v1, 0x1

    .line 192
    invoke-virtual {v0, v1}, Lcom/yunpan/appmanage/util/w;->p(I)V

    .line 193
    .line 194
    .line 195
    sget-object v0, Lfa/g0;->a:Lfa/h0;

    .line 196
    .line 197
    invoke-virtual {v0}, Lfa/h0;->f()Z

    .line 198
    .line 199
    .line 200
    move-result v0

    .line 201
    if-nez v0, :cond_2

    .line 202
    .line 203
    sget-object v0, Lfa/b0;->a:La2/w0;

    .line 204
    .line 205
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 206
    .line 207
    .line 208
    invoke-static {}, La2/w0;->P()Z

    .line 209
    .line 210
    .line 211
    move-result v0

    .line 212
    if-eqz v0, :cond_2

    .line 213
    .line 214
    new-instance v0, Ljava/lang/StringBuilder;

    .line 215
    .line 216
    const-string v1, "\u9700\u91cd\u65b0\u6253\u5f00"

    .line 217
    .line 218
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 219
    .line 220
    .line 221
    iget-object v1, p0, Lha/dc;->e:Lha/fc;

    .line 222
    .line 223
    iget-object v1, v1, Lha/a4;->b:Landroid/content/Context;

    .line 224
    .line 225
    const v2, 0x7f13002f

    .line 226
    .line 227
    .line 228
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 229
    .line 230
    .line 231
    move-result-object v1

    .line 232
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 233
    .line 234
    .line 235
    const-string v1, "\u65b9\u53ef\u751f\u6548"

    .line 236
    .line 237
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 238
    .line 239
    .line 240
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 241
    .line 242
    .line 243
    move-result-object v0

    .line 244
    const/4 v1, 0x0

    .line 245
    invoke-static {v0, v1}, Lcom/yunpan/appmanage/util/a0;->v(Ljava/lang/CharSequence;Z)V

    .line 246
    .line 247
    .line 248
    :cond_2
    return-void

    .line 249
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final t()V
    .locals 1

    .line 1
    iget v0, p0, Lha/dc;->a:I

    return-void
.end method
