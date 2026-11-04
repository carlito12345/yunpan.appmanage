.class public final synthetic Lha/le;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lha/z6;


# direct methods
.method public synthetic constructor <init>(Lha/z6;I)V
    .locals 0

    .line 1
    iput p2, p0, Lha/le;->a:I

    iput-object p1, p0, Lha/le;->b:Lha/z6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 10

    .line 1
    const/4 v0, 0x0

    .line 2
    iget-object v1, p0, Lha/le;->b:Lha/z6;

    .line 3
    .line 4
    iget v2, p0, Lha/le;->a:I

    .line 5
    .line 6
    packed-switch v2, :pswitch_data_0

    .line 7
    .line 8
    .line 9
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    const/16 v2, 0x3e8

    .line 13
    .line 14
    invoke-static {v2, p1}, Lcom/bumptech/glide/c;->i(ILandroid/view/View;)V

    .line 15
    .line 16
    .line 17
    sget-object p1, Lcom/yunpan/appmanage/util/k;->u0:Ljava/text/DecimalFormat;

    .line 18
    .line 19
    sget-object p1, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 20
    .line 21
    iget-object v2, p1, Lcom/yunpan/appmanage/util/k;->s:Ljava/lang/String;

    .line 22
    .line 23
    iput-object v2, v1, Lha/z6;->h:Ljava/lang/String;

    .line 24
    .line 25
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    const/4 v3, 0x1

    .line 30
    xor-int/2addr v2, v3

    .line 31
    iput-boolean v2, v1, Lha/z6;->l:Z

    .line 32
    .line 33
    iget-object v2, v1, Lha/z6;->h:Ljava/lang/String;

    .line 34
    .line 35
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    .line 36
    .line 37
    .line 38
    move-result v2

    .line 39
    if-eqz v2, :cond_0

    .line 40
    .line 41
    iget-object v2, p1, Lcom/yunpan/appmanage/util/k;->v:Ljava/util/HashSet;

    .line 42
    .line 43
    invoke-virtual {v2}, Ljava/util/HashSet;->isEmpty()Z

    .line 44
    .line 45
    .line 46
    move-result v2

    .line 47
    if-nez v2, :cond_0

    .line 48
    .line 49
    new-instance v2, Ljava/lang/StringBuilder;

    .line 50
    .line 51
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 52
    .line 53
    .line 54
    iget-object v4, p1, Lcom/yunpan/appmanage/util/k;->v:Ljava/util/HashSet;

    .line 55
    .line 56
    invoke-virtual {v4}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 57
    .line 58
    .line 59
    move-result-object v4

    .line 60
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object v4

    .line 64
    check-cast v4, Ljava/lang/String;

    .line 65
    .line 66
    const-string v5, "/Download"

    .line 67
    .line 68
    invoke-static {v4, v5, v2}, Lg/b;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v2

    .line 72
    iput-object v2, v1, Lha/z6;->h:Ljava/lang/String;

    .line 73
    .line 74
    iput-boolean v3, v1, Lha/z6;->l:Z

    .line 75
    .line 76
    :cond_0
    iget-object v2, v1, Lha/z6;->h:Ljava/lang/String;

    .line 77
    .line 78
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    .line 79
    .line 80
    .line 81
    move-result v2

    .line 82
    if-eqz v2, :cond_1

    .line 83
    .line 84
    iget-object v2, v1, Lha/a4;->b:Landroid/content/Context;

    .line 85
    .line 86
    invoke-virtual {v2}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    .line 87
    .line 88
    .line 89
    move-result-object v2

    .line 90
    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v2

    .line 94
    iput-object v2, v1, Lha/z6;->h:Ljava/lang/String;

    .line 95
    .line 96
    iget-boolean p1, p1, Lcom/yunpan/appmanage/util/k;->m:Z

    .line 97
    .line 98
    if-nez p1, :cond_1

    .line 99
    .line 100
    new-instance p1, Lha/z6;

    .line 101
    .line 102
    new-instance v9, Lh5/m;

    .line 103
    .line 104
    const/16 v0, 0x14

    .line 105
    .line 106
    invoke-direct {v9, v0, v1}, Lh5/m;-><init>(ILjava/lang/Object;)V

    .line 107
    .line 108
    .line 109
    iget-object v3, v1, Lha/a4;->a:Landroid/app/Activity;

    .line 110
    .line 111
    iget-object v4, v1, Lha/a4;->b:Landroid/content/Context;

    .line 112
    .line 113
    const-string v7, "\u597d\u7684"

    .line 114
    .line 115
    const-string v8, ""

    .line 116
    .line 117
    const-string v5, "\u68c0\u6d4b\u5230\u60a8\u7684\u8bbe\u5907\u6ca1\u6709SD\u5361\u4e5f\u6ca1\u6709\u63d2\u5165U\u76d8\uff0c\u4e5f\u6ca1\u6709\u7cfb\u7edf\u5199\u5165\u6743\uff0c\u6240\u4ee5\u65e0\u6cd5\u4f7f\u7528\u81ea\u52a8\u66f4\u65b0\uff0c\u8bf7\u81ea\u884c\u4e0b\u8f7d\u5b89\u88c5"

    .line 118
    .line 119
    const-string v6, "\u6ca1\u6709SD\u5361\u7684\u8bbe\u5907\u5f3a\u70c8\u5efa\u8bae\u60a8\u63d2\u5165U\u76d8\u4f7f\u7528"

    .line 120
    .line 121
    move-object v2, p1

    .line 122
    invoke-direct/range {v2 .. v9}, Lha/z6;-><init>(Landroid/app/Activity;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lha/wd;)V

    .line 123
    .line 124
    .line 125
    invoke-virtual {p1}, Lha/a4;->show()V

    .line 126
    .line 127
    .line 128
    goto :goto_0

    .line 129
    :cond_1
    :try_start_0
    new-instance p1, Ljava/io/File;

    .line 130
    .line 131
    iget-object v2, v1, Lha/z6;->h:Ljava/lang/String;

    .line 132
    .line 133
    invoke-direct {p1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 134
    .line 135
    .line 136
    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 137
    .line 138
    .line 139
    :catch_0
    new-instance p1, Ljava/lang/StringBuilder;

    .line 140
    .line 141
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 142
    .line 143
    .line 144
    iget-object v2, v1, Lha/z6;->h:Ljava/lang/String;

    .line 145
    .line 146
    const-string v3, "/updata.apk"

    .line 147
    .line 148
    invoke-static {v2, v3, p1}, Lg/b;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 149
    .line 150
    .line 151
    move-result-object p1

    .line 152
    iput-object p1, v1, Lha/z6;->h:Ljava/lang/String;

    .line 153
    .line 154
    iget-object p1, v1, Lha/z6;->n:Ljava/lang/Object;

    .line 155
    .line 156
    check-cast p1, Landroid/widget/LinearLayout;

    .line 157
    .line 158
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 159
    .line 160
    .line 161
    iget-object p1, v1, Lha/z6;->k:Ljava/lang/Object;

    .line 162
    .line 163
    check-cast p1, Landroid/widget/LinearLayout;

    .line 164
    .line 165
    const/16 v2, 0x8

    .line 166
    .line 167
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 168
    .line 169
    .line 170
    iget-object p1, v1, Lha/z6;->i:Ljava/lang/Object;

    .line 171
    .line 172
    check-cast p1, Lcom/yunpan/appmanage/view/MyProgressViewTest;

    .line 173
    .line 174
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 175
    .line 176
    .line 177
    iget-object p1, v1, Lha/z6;->j:Ljava/lang/Object;

    .line 178
    .line 179
    check-cast p1, Landroid/widget/TextView;

    .line 180
    .line 181
    const-string v2, ""

    .line 182
    .line 183
    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 184
    .line 185
    .line 186
    iget-object p1, v1, Lha/z6;->j:Ljava/lang/Object;

    .line 187
    .line 188
    check-cast p1, Landroid/widget/TextView;

    .line 189
    .line 190
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 191
    .line 192
    .line 193
    new-instance p1, Lha/p7;

    .line 194
    .line 195
    const/16 v2, 0x16

    .line 196
    .line 197
    invoke-direct {p1, v2, v1}, Lha/p7;-><init>(ILjava/lang/Object;)V

    .line 198
    .line 199
    .line 200
    new-instance v2, Lmc/c;

    .line 201
    .line 202
    invoke-direct {v2, v0, p1}, Lmc/c;-><init>(ILjava/lang/Object;)V

    .line 203
    .line 204
    .line 205
    sget-object p1, Lrc/f;->b:Lec/j;

    .line 206
    .line 207
    invoke-virtual {v2, p1}, Lec/b;->d(Lec/j;)Lmc/p;

    .line 208
    .line 209
    .line 210
    move-result-object p1

    .line 211
    invoke-static {}, Lfc/b;->a()Lfc/e;

    .line 212
    .line 213
    .line 214
    move-result-object v0

    .line 215
    invoke-virtual {p1, v0}, Lec/b;->a(Lfc/e;)Lmc/g;

    .line 216
    .line 217
    .line 218
    move-result-object p1

    .line 219
    new-instance v0, Lha/p0;

    .line 220
    .line 221
    const/16 v2, 0x19

    .line 222
    .line 223
    invoke-direct {v0, v2, v1}, Lha/p0;-><init>(ILjava/lang/Object;)V

    .line 224
    .line 225
    .line 226
    invoke-virtual {p1, v0}, Lec/b;->b(Lec/e;)V

    .line 227
    .line 228
    .line 229
    :goto_0
    return-void

    .line 230
    :pswitch_0
    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    .line 231
    .line 232
    .line 233
    return-void

    .line 234
    nop

    .line 235
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
