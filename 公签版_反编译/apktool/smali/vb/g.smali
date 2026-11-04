.class public final synthetic Lvb/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lvb/k;


# direct methods
.method public synthetic constructor <init>(Lvb/k;I)V
    .locals 0

    .line 1
    iput p2, p0, Lvb/g;->a:I

    iput-object p1, p0, Lvb/g;->b:Lvb/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 1
    iget v0, p0, Lvb/g;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lvb/g;->b:Lvb/k;

    .line 7
    .line 8
    invoke-virtual {v0}, Lvb/k;->f()V

    .line 9
    .line 10
    .line 11
    return-void

    .line 12
    :pswitch_0
    iget-object v0, p0, Lvb/g;->b:Lvb/k;

    .line 13
    .line 14
    iget-boolean v1, v0, Lvb/k;->F:Z

    .line 15
    .line 16
    if-eqz v1, :cond_0

    .line 17
    .line 18
    iget-object v0, v0, Lvb/k;->z:La2/w0;

    .line 19
    .line 20
    iget-object v0, v0, La2/w0;->c:Ljava/lang/Object;

    .line 21
    .line 22
    check-cast v0, Landroid/widget/ProgressBar;

    .line 23
    .line 24
    const/4 v1, 0x0

    .line 25
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 26
    .line 27
    .line 28
    :cond_0
    return-void

    .line 29
    :pswitch_1
    iget-object v0, p0, Lvb/g;->b:Lvb/k;

    .line 30
    .line 31
    iget-object v0, v0, Lvb/k;->z:La2/w0;

    .line 32
    .line 33
    iget-object v1, v0, La2/w0;->b:Ljava/lang/Object;

    .line 34
    .line 35
    check-cast v1, Landroid/widget/ListView;

    .line 36
    .line 37
    new-instance v2, Lcom/yunpan/appmanage/carsdk/a;

    .line 38
    .line 39
    const/4 v3, 0x0

    .line 40
    const/4 v4, 0x2

    .line 41
    invoke-direct {v2, v0, v3, v3, v4}, Lcom/yunpan/appmanage/carsdk/a;-><init>(Ljava/lang/Object;III)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {v1, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 45
    .line 46
    .line 47
    return-void

    .line 48
    :pswitch_2
    iget-object v0, p0, Lvb/g;->b:Lvb/k;

    .line 49
    .line 50
    iget-object v1, v0, Lvb/k;->v:Ldg/a;

    .line 51
    .line 52
    iget-object v1, v1, Ldg/a;->b:Ljava/lang/Object;

    .line 53
    .line 54
    check-cast v1, Ljava/util/ArrayList;

    .line 55
    .line 56
    iget-boolean v2, v0, Lvb/k;->G:Z

    .line 57
    .line 58
    iget-object v3, v0, Lvb/k;->p:Lio/github/rosemoe/sora/widget/CodeEditor;

    .line 59
    .line 60
    if-eqz v2, :cond_3

    .line 61
    .line 62
    invoke-virtual {v3}, Lio/github/rosemoe/sora/widget/CodeEditor;->getColorScheme()Lzb/a;

    .line 63
    .line 64
    .line 65
    move-result-object v2

    .line 66
    const-string v4, "<this>"

    .line 67
    .line 68
    invoke-static {v1, v4}, Lue/d;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    if-nez v2, :cond_1

    .line 72
    .line 73
    sget-object v2, Lzb/a;->c:Lzb/a;

    .line 74
    .line 75
    const-string v4, "getDefault(...)"

    .line 76
    .line 77
    invoke-static {v2, v4}, Lue/d;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    :cond_1
    iget-object v2, v2, Lzb/a;->a:Landroid/util/SparseIntArray;

    .line 81
    .line 82
    const/16 v4, 0x43

    .line 83
    .line 84
    invoke-virtual {v2, v4}, Landroid/util/SparseIntArray;->get(I)I

    .line 85
    .line 86
    .line 87
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 88
    .line 89
    .line 90
    move-result-object v2

    .line 91
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 92
    .line 93
    .line 94
    move-result v4

    .line 95
    if-nez v4, :cond_2

    .line 96
    .line 97
    goto :goto_0

    .line 98
    :cond_2
    invoke-static {v2}, Ll2/z;->d(Ljava/util/Iterator;)Ljava/lang/ClassCastException;

    .line 99
    .line 100
    .line 101
    move-result-object v0

    .line 102
    throw v0

    .line 103
    :cond_3
    :goto_0
    iget-object v2, v0, Lvb/k;->w:Ljava/lang/ref/WeakReference;

    .line 104
    .line 105
    iget-object v4, v0, Lvb/k;->y:Lvb/a;

    .line 106
    .line 107
    if-eqz v2, :cond_5

    .line 108
    .line 109
    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 110
    .line 111
    .line 112
    move-result-object v2

    .line 113
    if-eq v2, v1, :cond_4

    .line 114
    .line 115
    goto :goto_1

    .line 116
    :cond_4
    invoke-virtual {v4}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 117
    .line 118
    .line 119
    goto :goto_2

    .line 120
    :cond_5
    :goto_1
    iput-object v0, v4, Lvb/a;->a:Lvb/k;

    .line 121
    .line 122
    iput-object v1, v4, Lvb/a;->b:Ljava/util/ArrayList;

    .line 123
    .line 124
    invoke-virtual {v4}, Landroid/widget/BaseAdapter;->notifyDataSetInvalidated()V

    .line 125
    .line 126
    .line 127
    new-instance v2, Ljava/lang/ref/WeakReference;

    .line 128
    .line 129
    invoke-direct {v2, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 130
    .line 131
    .line 132
    iput-object v2, v0, Lvb/k;->w:Ljava/lang/ref/WeakReference;

    .line 133
    .line 134
    :goto_2
    invoke-virtual {v3}, Lio/github/rosemoe/sora/widget/CodeEditor;->getProps()Ltb/e;

    .line 135
    .line 136
    .line 137
    move-result-object v1

    .line 138
    iget-boolean v1, v1, Ltb/e;->L:Z

    .line 139
    .line 140
    const/4 v2, 0x1

    .line 141
    if-eqz v1, :cond_8

    .line 142
    .line 143
    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 144
    .line 145
    .line 146
    move-result-object v1

    .line 147
    if-nez v1, :cond_6

    .line 148
    .line 149
    goto :goto_3

    .line 150
    :cond_6
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 151
    .line 152
    .line 153
    move-result-object v1

    .line 154
    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 155
    .line 156
    .line 157
    move-result-object v1

    .line 158
    iget v5, v1, Landroid/content/res/Configuration;->keyboard:I

    .line 159
    .line 160
    if-ne v5, v2, :cond_7

    .line 161
    .line 162
    iget v1, v1, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    .line 163
    .line 164
    if-ne v1, v2, :cond_8

    .line 165
    .line 166
    :cond_7
    iget v1, v0, Lvb/k;->x:I

    .line 167
    .line 168
    const/4 v5, -0x1

    .line 169
    if-ne v1, v5, :cond_8

    .line 170
    .line 171
    invoke-virtual {v0}, Lvb/k;->g()V

    .line 172
    .line 173
    .line 174
    :cond_8
    :goto_3
    iget-object v1, v4, Lvb/a;->a:Lvb/k;

    .line 175
    .line 176
    iget-object v1, v1, Lvb/k;->p:Lio/github/rosemoe/sora/widget/CodeEditor;

    .line 177
    .line 178
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 179
    .line 180
    .line 181
    move-result-object v1

    .line 182
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 183
    .line 184
    .line 185
    move-result-object v1

    .line 186
    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 187
    .line 188
    .line 189
    move-result-object v1

    .line 190
    const/high16 v5, 0x42340000    # 45.0f

    .line 191
    .line 192
    invoke-static {v2, v5, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    .line 193
    .line 194
    .line 195
    move-result v1

    .line 196
    float-to-int v1, v1

    .line 197
    invoke-virtual {v4}, Lvb/a;->getCount()I

    .line 198
    .line 199
    .line 200
    move-result v4

    .line 201
    mul-int v4, v4, v1

    .line 202
    .line 203
    int-to-float v1, v4

    .line 204
    const/4 v4, 0x0

    .line 205
    cmpl-float v4, v1, v4

    .line 206
    .line 207
    if-nez v4, :cond_9

    .line 208
    .line 209
    invoke-virtual {v0}, Lvb/k;->f()V

    .line 210
    .line 211
    .line 212
    :cond_9
    invoke-virtual {v0, v2}, Lvb/k;->k(Z)V

    .line 213
    .line 214
    .line 215
    iget v2, v0, Lub/b;->m:I

    .line 216
    .line 217
    iget v4, v0, Lvb/k;->s:I

    .line 218
    .line 219
    int-to-float v4, v4

    .line 220
    invoke-static {v1, v4}, Ljava/lang/Math;->min(FF)F

    .line 221
    .line 222
    .line 223
    move-result v1

    .line 224
    float-to-int v1, v1

    .line 225
    iput v2, v0, Lub/b;->m:I

    .line 226
    .line 227
    iput v1, v0, Lub/b;->n:I

    .line 228
    .line 229
    const/4 v1, 0x0

    .line 230
    invoke-virtual {v0, v1}, Lub/b;->a(Z)V

    .line 231
    .line 232
    .line 233
    new-instance v1, Lvb/g;

    .line 234
    .line 235
    const/4 v2, 0x1

    .line 236
    invoke-direct {v1, v0, v2}, Lvb/g;-><init>(Lvb/k;I)V

    .line 237
    .line 238
    .line 239
    const-wide/16 v4, 0xa

    .line 240
    .line 241
    invoke-virtual {v3, v1, v4, v5}, Lio/github/rosemoe/sora/widget/CodeEditor;->Y(Ljava/lang/Runnable;J)V

    .line 242
    .line 243
    .line 244
    iget-object v1, v0, Lub/b;->a:Landroid/widget/PopupWindow;

    .line 245
    .line 246
    invoke-virtual {v1}, Landroid/widget/PopupWindow;->isShowing()Z

    .line 247
    .line 248
    .line 249
    move-result v1

    .line 250
    if-nez v1, :cond_b

    .line 251
    .line 252
    iget-boolean v1, v0, Lvb/k;->q:Z

    .line 253
    .line 254
    if-nez v1, :cond_b

    .line 255
    .line 256
    iget-boolean v1, v0, Lvb/k;->E:Z

    .line 257
    .line 258
    if-nez v1, :cond_a

    .line 259
    .line 260
    goto :goto_4

    .line 261
    :cond_a
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 262
    .line 263
    .line 264
    move-result-wide v1

    .line 265
    iput-wide v1, v0, Lvb/k;->C:J

    .line 266
    .line 267
    iget-wide v1, v0, Lvb/k;->r:J

    .line 268
    .line 269
    new-instance v4, La2/h0;

    .line 270
    .line 271
    const/4 v5, 0x1

    .line 272
    invoke-direct {v4, v5, v1, v2, v0}, La2/h0;-><init>(IJLjava/lang/Object;)V

    .line 273
    .line 274
    .line 275
    const-wide/16 v0, 0x46

    .line 276
    .line 277
    invoke-virtual {v3, v4, v0, v1}, Lio/github/rosemoe/sora/widget/CodeEditor;->Y(Ljava/lang/Runnable;J)V

    .line 278
    .line 279
    .line 280
    :cond_b
    :goto_4
    return-void

    .line 281
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
