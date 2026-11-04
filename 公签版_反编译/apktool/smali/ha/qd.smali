.class public final Lha/qd;
.super Lha/a4;
.source "SourceFile"


# instance fields
.field public g:Lgh/a;

.field public h:Landroid/widget/TextView;

.field public i:Landroid/widget/TextView;

.field public j:Landroid/widget/TextView;

.field public k:Landroid/widget/TextView;

.field public l:Landroid/widget/EditText;

.field public m:Lio/github/rosemoe/sora/widget/CodeEditor;

.field public n:Ljava/io/BufferedInputStream;

.field public p:Lgh/c;

.field public final q:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final r:Ljava/util/regex/Pattern;

.field public s:Lha/u9;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/content/Context;Lgh/a;)V
    .locals 1

    .line 1
    const v0, 0x7f0e00fc

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, p1, p2, v0}, Lha/a4;-><init>(Landroid/app/Activity;Landroid/content/Context;I)V

    .line 5
    .line 6
    .line 7
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 8
    .line 9
    const/4 p2, 0x0

    .line 10
    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 11
    .line 12
    .line 13
    iput-object p1, p0, Lha/qd;->q:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 14
    .line 15
    const-string p1, "\u001b\\[[\\x30-\\x3F]*[\\x20-\\x2F]*[\\x40-\\x7E]"

    .line 16
    .line 17
    invoke-static {p1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    iput-object p1, p0, Lha/qd;->r:Ljava/util/regex/Pattern;

    .line 22
    .line 23
    iput-object p3, p0, Lha/qd;->g:Lgh/a;

    .line 24
    .line 25
    return-void
.end method


# virtual methods
.method public final dismiss()V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lha/qd;->g:Lgh/a;

    .line 2
    .line 3
    invoke-virtual {v0}, Lgh/a;->d()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    .line 5
    .line 6
    :catch_0
    const/4 v0, 0x0

    .line 7
    iput-object v0, p0, Lha/qd;->n:Ljava/io/BufferedInputStream;

    .line 8
    .line 9
    iput-object v0, p0, Lha/qd;->p:Lgh/c;

    .line 10
    .line 11
    iput-object v0, p0, Lha/qd;->g:Lgh/a;

    .line 12
    .line 13
    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 1
    invoke-super {p0, p1}, Lha/a4;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Lha/qd;->g:Lgh/a;

    .line 5
    .line 6
    if-eqz p1, :cond_1

    .line 7
    .line 8
    invoke-virtual {p1}, Lch/d;->f()Z

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    if-nez p1, :cond_0

    .line 13
    .line 14
    goto/16 :goto_0

    .line 15
    .line 16
    :cond_0
    const-string p1, "\u8fde\u63a5\u6210\u529f"

    .line 17
    .line 18
    invoke-static {p1}, Lcom/yunpan/appmanage/util/a0;->w(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    iget-object p1, p0, Lha/qd;->g:Lgh/a;

    .line 22
    .line 23
    iget-object v0, p1, Lgh/a;->r:Ljava/io/BufferedInputStream;

    .line 24
    .line 25
    iput-object v0, p0, Lha/qd;->n:Ljava/io/BufferedInputStream;

    .line 26
    .line 27
    iget-object p1, p1, Lgh/a;->s:Lgh/c;

    .line 28
    .line 29
    iput-object p1, p0, Lha/qd;->p:Lgh/c;

    .line 30
    .line 31
    const p1, 0x7f0b0382

    .line 32
    .line 33
    .line 34
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    check-cast p1, Landroid/widget/TextView;

    .line 39
    .line 40
    iput-object p1, p0, Lha/qd;->k:Landroid/widget/TextView;

    .line 41
    .line 42
    const p1, 0x7f0b03b4

    .line 43
    .line 44
    .line 45
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    check-cast p1, Landroid/widget/TextView;

    .line 50
    .line 51
    iput-object p1, p0, Lha/qd;->h:Landroid/widget/TextView;

    .line 52
    .line 53
    const p1, 0x7f0b0379

    .line 54
    .line 55
    .line 56
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    check-cast p1, Landroid/widget/TextView;

    .line 61
    .line 62
    iput-object p1, p0, Lha/qd;->i:Landroid/widget/TextView;

    .line 63
    .line 64
    const p1, 0x7f0b044b

    .line 65
    .line 66
    .line 67
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    check-cast p1, Landroid/widget/EditText;

    .line 72
    .line 73
    iput-object p1, p0, Lha/qd;->l:Landroid/widget/EditText;

    .line 74
    .line 75
    const p1, 0x7f0b0428

    .line 76
    .line 77
    .line 78
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 79
    .line 80
    .line 81
    move-result-object p1

    .line 82
    check-cast p1, Lio/github/rosemoe/sora/widget/CodeEditor;

    .line 83
    .line 84
    iput-object p1, p0, Lha/qd;->m:Lio/github/rosemoe/sora/widget/CodeEditor;

    .line 85
    .line 86
    const p1, 0x7f0b036b

    .line 87
    .line 88
    .line 89
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 90
    .line 91
    .line 92
    move-result-object p1

    .line 93
    check-cast p1, Landroid/widget/TextView;

    .line 94
    .line 95
    iput-object p1, p0, Lha/qd;->j:Landroid/widget/TextView;

    .line 96
    .line 97
    iget-object p1, p0, Lha/qd;->h:Landroid/widget/TextView;

    .line 98
    .line 99
    new-instance v0, Lha/z3;

    .line 100
    .line 101
    const/4 v1, 0x1

    .line 102
    invoke-direct {v0, v1}, Lha/z3;-><init>(I)V

    .line 103
    .line 104
    .line 105
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 106
    .line 107
    .line 108
    iget-object p1, p0, Lha/qd;->k:Landroid/widget/TextView;

    .line 109
    .line 110
    new-instance v0, Lha/nd;

    .line 111
    .line 112
    const/4 v1, 0x0

    .line 113
    invoke-direct {v0, p0, v1}, Lha/nd;-><init>(Lha/qd;I)V

    .line 114
    .line 115
    .line 116
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 117
    .line 118
    .line 119
    iget-object p1, p0, Lha/qd;->j:Landroid/widget/TextView;

    .line 120
    .line 121
    new-instance v0, Lha/nd;

    .line 122
    .line 123
    const/4 v1, 0x1

    .line 124
    invoke-direct {v0, p0, v1}, Lha/nd;-><init>(Lha/qd;I)V

    .line 125
    .line 126
    .line 127
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 128
    .line 129
    .line 130
    iget-object p1, p0, Lha/qd;->i:Landroid/widget/TextView;

    .line 131
    .line 132
    new-instance v0, Lha/nd;

    .line 133
    .line 134
    const/4 v1, 0x2

    .line 135
    invoke-direct {v0, p0, v1}, Lha/nd;-><init>(Lha/qd;I)V

    .line 136
    .line 137
    .line 138
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 139
    .line 140
    .line 141
    iget-object p1, p0, Lha/qd;->m:Lio/github/rosemoe/sora/widget/CodeEditor;

    .line 142
    .line 143
    iget-object v0, p0, Lha/a4;->b:Landroid/content/Context;

    .line 144
    .line 145
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 146
    .line 147
    .line 148
    move-result-object v1

    .line 149
    const v2, 0x7f0701c2

    .line 150
    .line 151
    .line 152
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 153
    .line 154
    .line 155
    move-result v1

    .line 156
    int-to-float v1, v1

    .line 157
    invoke-virtual {p1, v1}, Lio/github/rosemoe/sora/widget/CodeEditor;->setCursorWidth(F)V

    .line 158
    .line 159
    .line 160
    iget-object p1, p0, Lha/qd;->m:Lio/github/rosemoe/sora/widget/CodeEditor;

    .line 161
    .line 162
    sget-object v1, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    .line 163
    .line 164
    invoke-virtual {p1, v1}, Lio/github/rosemoe/sora/widget/CodeEditor;->setTypefaceText(Landroid/graphics/Typeface;)V

    .line 165
    .line 166
    .line 167
    iget-object p1, p0, Lha/qd;->m:Lio/github/rosemoe/sora/widget/CodeEditor;

    .line 168
    .line 169
    invoke-virtual {p1, v1}, Lio/github/rosemoe/sora/widget/CodeEditor;->setTypefaceText(Landroid/graphics/Typeface;)V

    .line 170
    .line 171
    .line 172
    iget-object p1, p0, Lha/qd;->m:Lio/github/rosemoe/sora/widget/CodeEditor;

    .line 173
    .line 174
    const/high16 v1, 0x40000000    # 2.0f

    .line 175
    .line 176
    iput v1, p1, Lio/github/rosemoe/sora/widget/CodeEditor;->B:F

    .line 177
    .line 178
    const v1, 0x3f8ccccd    # 1.1f

    .line 179
    .line 180
    .line 181
    iput v1, p1, Lio/github/rosemoe/sora/widget/CodeEditor;->A:F

    .line 182
    .line 183
    const/4 v1, 0x0

    .line 184
    invoke-virtual {p1, v1}, Lio/github/rosemoe/sora/widget/CodeEditor;->setWordwrap(Z)V

    .line 185
    .line 186
    .line 187
    iget-object p1, p0, Lha/qd;->m:Lio/github/rosemoe/sora/widget/CodeEditor;

    .line 188
    .line 189
    const/4 v1, 0x1

    .line 190
    invoke-virtual {p1, v1}, Lio/github/rosemoe/sora/widget/CodeEditor;->setLineNumberEnabled(Z)V

    .line 191
    .line 192
    .line 193
    iget-object p1, p0, Lha/qd;->m:Lio/github/rosemoe/sora/widget/CodeEditor;

    .line 194
    .line 195
    invoke-virtual {p1, v1}, Lio/github/rosemoe/sora/widget/CodeEditor;->setScalable(Z)V

    .line 196
    .line 197
    .line 198
    new-instance p1, Lha/od;

    .line 199
    .line 200
    const/4 v1, 0x0

    .line 201
    invoke-direct {p1, p0, v1}, Lha/od;-><init>(Lha/qd;I)V

    .line 202
    .line 203
    .line 204
    new-instance v1, Lmc/c;

    .line 205
    .line 206
    const/4 v2, 0x0

    .line 207
    invoke-direct {v1, v2, p1}, Lmc/c;-><init>(ILjava/lang/Object;)V

    .line 208
    .line 209
    .line 210
    sget-object p1, Lrc/f;->b:Lec/j;

    .line 211
    .line 212
    invoke-virtual {v1, p1}, Lec/b;->d(Lec/j;)Lmc/p;

    .line 213
    .line 214
    .line 215
    move-result-object v1

    .line 216
    invoke-static {}, Lfc/b;->a()Lfc/e;

    .line 217
    .line 218
    .line 219
    move-result-object v2

    .line 220
    invoke-virtual {v1, v2}, Lec/b;->a(Lfc/e;)Lmc/g;

    .line 221
    .line 222
    .line 223
    move-result-object v1

    .line 224
    new-instance v2, Lha/pd;

    .line 225
    .line 226
    const/4 v3, 0x1

    .line 227
    invoke-direct {v2, p0, v3}, Lha/pd;-><init>(Lha/qd;I)V

    .line 228
    .line 229
    .line 230
    invoke-virtual {v1, v2}, Lec/b;->b(Lec/e;)V

    .line 231
    .line 232
    .line 233
    new-instance v1, Lha/od;

    .line 234
    .line 235
    const/4 v2, 0x1

    .line 236
    invoke-direct {v1, p0, v2}, Lha/od;-><init>(Lha/qd;I)V

    .line 237
    .line 238
    .line 239
    new-instance v2, Lmc/c;

    .line 240
    .line 241
    const/4 v3, 0x0

    .line 242
    invoke-direct {v2, v3, v1}, Lmc/c;-><init>(ILjava/lang/Object;)V

    .line 243
    .line 244
    .line 245
    invoke-virtual {v2, p1}, Lec/b;->d(Lec/j;)Lmc/p;

    .line 246
    .line 247
    .line 248
    move-result-object p1

    .line 249
    invoke-static {}, Lfc/b;->a()Lfc/e;

    .line 250
    .line 251
    .line 252
    move-result-object v1

    .line 253
    invoke-virtual {p1, v1}, Lec/b;->a(Lfc/e;)Lmc/g;

    .line 254
    .line 255
    .line 256
    move-result-object p1

    .line 257
    new-instance v1, Lha/l2;

    .line 258
    .line 259
    const/16 v2, 0x1c

    .line 260
    .line 261
    invoke-direct {v1, v2}, Lha/l2;-><init>(I)V

    .line 262
    .line 263
    .line 264
    invoke-virtual {p1, v1}, Lec/b;->b(Lec/e;)V

    .line 265
    .line 266
    .line 267
    new-instance p1, Lha/u9;

    .line 268
    .line 269
    iget-object v1, p0, Lha/a4;->a:Landroid/app/Activity;

    .line 270
    .line 271
    invoke-direct {p1, v1, v0}, Lha/u9;-><init>(Landroid/app/Activity;Landroid/content/Context;)V

    .line 272
    .line 273
    .line 274
    iput-object p1, p0, Lha/qd;->s:Lha/u9;

    .line 275
    .line 276
    return-void

    .line 277
    :cond_1
    :goto_0
    const-string p1, "\u8fde\u63a5\u5df2\u65ad\u5f00"

    .line 278
    .line 279
    invoke-static {p1}, Lcom/yunpan/appmanage/util/a0;->t(Ljava/lang/String;)V

    .line 280
    .line 281
    .line 282
    invoke-virtual {p0}, Lha/qd;->dismiss()V

    .line 283
    .line 284
    .line 285
    return-void
.end method
