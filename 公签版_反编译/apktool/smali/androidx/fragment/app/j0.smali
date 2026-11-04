.class public abstract Landroidx/fragment/app/j0;
.super Landroidx/activity/m;
.source "SourceFile"

# interfaces
.implements Lm0/e;


# instance fields
.field public final t:Landroidx/fragment/app/y;

.field public final v:Landroidx/lifecycle/v;

.field public w:Z

.field public x:Z

.field public y:Z


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 1
    invoke-direct {p0}, Landroidx/activity/m;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroidx/fragment/app/i0;

    .line 5
    .line 6
    move-object v1, p0

    .line 7
    check-cast v1, Lq/i;

    .line 8
    .line 9
    invoke-direct {v0, v1}, Landroidx/fragment/app/i0;-><init>(Lq/i;)V

    .line 10
    .line 11
    .line 12
    new-instance v2, Landroidx/fragment/app/y;

    .line 13
    .line 14
    const/4 v3, 0x3

    .line 15
    invoke-direct {v2, v3, v0}, Landroidx/fragment/app/y;-><init>(ILjava/lang/Object;)V

    .line 16
    .line 17
    .line 18
    iput-object v2, p0, Landroidx/fragment/app/j0;->t:Landroidx/fragment/app/y;

    .line 19
    .line 20
    new-instance v0, Landroidx/lifecycle/v;

    .line 21
    .line 22
    invoke-direct {v0, p0}, Landroidx/lifecycle/v;-><init>(Landroidx/lifecycle/t;)V

    .line 23
    .line 24
    .line 25
    iput-object v0, p0, Landroidx/fragment/app/j0;->v:Landroidx/lifecycle/v;

    .line 26
    .line 27
    const/4 v0, 0x1

    .line 28
    iput-boolean v0, p0, Landroidx/fragment/app/j0;->y:Z

    .line 29
    .line 30
    iget-object v0, p0, Landroidx/activity/m;->e:Lb4/f;

    .line 31
    .line 32
    iget-object v0, v0, Lb4/f;->b:Lb4/e;

    .line 33
    .line 34
    new-instance v2, Landroidx/fragment/app/f0;

    .line 35
    .line 36
    const/4 v3, 0x0

    .line 37
    invoke-direct {v2, v3, v1}, Landroidx/fragment/app/f0;-><init>(ILjava/lang/Object;)V

    .line 38
    .line 39
    .line 40
    const-string v3, "android:support:lifecycle"

    .line 41
    .line 42
    invoke-virtual {v0, v3, v2}, Lb4/e;->c(Ljava/lang/String;Lb4/d;)V

    .line 43
    .line 44
    .line 45
    new-instance v0, Landroidx/fragment/app/g0;

    .line 46
    .line 47
    const/4 v2, 0x0

    .line 48
    invoke-direct {v0, v1, v2}, Landroidx/fragment/app/g0;-><init>(Lq/i;I)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {p0, v0}, Landroidx/activity/m;->b(Lw0/a;)V

    .line 52
    .line 53
    .line 54
    new-instance v0, Landroidx/fragment/app/g0;

    .line 55
    .line 56
    const/4 v2, 0x1

    .line 57
    invoke-direct {v0, v1, v2}, Landroidx/fragment/app/g0;-><init>(Lq/i;I)V

    .line 58
    .line 59
    .line 60
    iget-object v2, p0, Landroidx/activity/m;->n:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 61
    .line 62
    invoke-virtual {v2, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 63
    .line 64
    .line 65
    new-instance v0, Landroidx/fragment/app/h0;

    .line 66
    .line 67
    invoke-direct {v0, v1}, Landroidx/fragment/app/h0;-><init>(Lq/i;)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {p0, v0}, Landroidx/activity/m;->o(Lm/a;)V

    .line 71
    .line 72
    .line 73
    return-void
.end method

.method public static q(Landroidx/fragment/app/d1;)Z
    .locals 5

    .line 1
    iget-object p0, p0, Landroidx/fragment/app/d1;->c:Landroidx/fragment/app/l1;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/l1;->f()Ljava/util/List;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    const/4 v0, 0x0

    .line 12
    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    if-eqz v1, :cond_4

    .line 17
    .line 18
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    check-cast v1, Landroidx/fragment/app/Fragment;

    .line 23
    .line 24
    if-nez v1, :cond_1

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_1
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getHost()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    if-eqz v2, :cond_2

    .line 32
    .line 33
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/d1;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    invoke-static {v2}, Landroidx/fragment/app/j0;->q(Landroidx/fragment/app/d1;)Z

    .line 38
    .line 39
    .line 40
    move-result v2

    .line 41
    or-int/2addr v0, v2

    .line 42
    :cond_2
    iget-object v2, v1, Landroidx/fragment/app/Fragment;->mViewLifecycleOwner:Landroidx/fragment/app/w1;

    .line 43
    .line 44
    sget-object v3, Landroidx/lifecycle/n;->d:Landroidx/lifecycle/n;

    .line 45
    .line 46
    const/4 v4, 0x1

    .line 47
    if-eqz v2, :cond_3

    .line 48
    .line 49
    invoke-virtual {v2}, Landroidx/fragment/app/w1;->c()V

    .line 50
    .line 51
    .line 52
    iget-object v2, v2, Landroidx/fragment/app/w1;->d:Landroidx/lifecycle/v;

    .line 53
    .line 54
    iget-object v2, v2, Landroidx/lifecycle/v;->c:Landroidx/lifecycle/n;

    .line 55
    .line 56
    invoke-virtual {v2, v3}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    .line 57
    .line 58
    .line 59
    move-result v2

    .line 60
    if-ltz v2, :cond_3

    .line 61
    .line 62
    iget-object v0, v1, Landroidx/fragment/app/Fragment;->mViewLifecycleOwner:Landroidx/fragment/app/w1;

    .line 63
    .line 64
    iget-object v0, v0, Landroidx/fragment/app/w1;->d:Landroidx/lifecycle/v;

    .line 65
    .line 66
    invoke-virtual {v0}, Landroidx/lifecycle/v;->g()V

    .line 67
    .line 68
    .line 69
    const/4 v0, 0x1

    .line 70
    :cond_3
    iget-object v2, v1, Landroidx/fragment/app/Fragment;->mLifecycleRegistry:Landroidx/lifecycle/v;

    .line 71
    .line 72
    iget-object v2, v2, Landroidx/lifecycle/v;->c:Landroidx/lifecycle/n;

    .line 73
    .line 74
    invoke-virtual {v2, v3}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    .line 75
    .line 76
    .line 77
    move-result v2

    .line 78
    if-ltz v2, :cond_0

    .line 79
    .line 80
    iget-object v0, v1, Landroidx/fragment/app/Fragment;->mLifecycleRegistry:Landroidx/lifecycle/v;

    .line 81
    .line 82
    invoke-virtual {v0}, Landroidx/lifecycle/v;->g()V

    .line 83
    .line 84
    .line 85
    const/4 v0, 0x1

    .line 86
    goto :goto_0

    .line 87
    :cond_4
    return v0
.end method


# virtual methods
.method public final dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-super {p0, p1, p2, p3, p4}, Landroid/app/Activity;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 3
    .line 4
    .line 5
    if-eqz p4, :cond_5

    .line 6
    .line 7
    array-length v1, p4

    .line 8
    if-lez v1, :cond_5

    .line 9
    .line 10
    aget-object v1, p4, v0

    .line 11
    .line 12
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    const/4 v2, -0x1

    .line 16
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 17
    .line 18
    .line 19
    move-result v3

    .line 20
    sparse-switch v3, :sswitch_data_0

    .line 21
    .line 22
    .line 23
    goto :goto_0

    .line 24
    :sswitch_0
    const-string v3, "--autofill"

    .line 25
    .line 26
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    if-nez v1, :cond_0

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_0
    const/4 v2, 0x4

    .line 34
    goto :goto_0

    .line 35
    :sswitch_1
    const-string v3, "--contentcapture"

    .line 36
    .line 37
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    if-nez v1, :cond_1

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_1
    const/4 v2, 0x3

    .line 45
    goto :goto_0

    .line 46
    :sswitch_2
    const-string v3, "--list-dumpables"

    .line 47
    .line 48
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 49
    .line 50
    .line 51
    move-result v1

    .line 52
    if-nez v1, :cond_2

    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_2
    const/4 v2, 0x2

    .line 56
    goto :goto_0

    .line 57
    :sswitch_3
    const-string v3, "--dump-dumpable"

    .line 58
    .line 59
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 60
    .line 61
    .line 62
    move-result v1

    .line 63
    if-nez v1, :cond_3

    .line 64
    .line 65
    goto :goto_0

    .line 66
    :cond_3
    const/4 v2, 0x1

    .line 67
    goto :goto_0

    .line 68
    :sswitch_4
    const-string v3, "--translation"

    .line 69
    .line 70
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 71
    .line 72
    .line 73
    move-result v1

    .line 74
    if-nez v1, :cond_4

    .line 75
    .line 76
    goto :goto_0

    .line 77
    :cond_4
    const/4 v2, 0x0

    .line 78
    :goto_0
    packed-switch v2, :pswitch_data_0

    .line 79
    .line 80
    .line 81
    goto :goto_2

    .line 82
    :pswitch_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 83
    .line 84
    const/16 v2, 0x1a

    .line 85
    .line 86
    if-lt v1, v2, :cond_5

    .line 87
    .line 88
    goto :goto_1

    .line 89
    :pswitch_1
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 90
    .line 91
    const/16 v2, 0x1d

    .line 92
    .line 93
    if-lt v1, v2, :cond_5

    .line 94
    .line 95
    goto :goto_1

    .line 96
    :pswitch_2
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 97
    .line 98
    const/16 v2, 0x21

    .line 99
    .line 100
    if-lt v1, v2, :cond_5

    .line 101
    .line 102
    goto :goto_1

    .line 103
    :pswitch_3
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 104
    .line 105
    const/16 v2, 0x1f

    .line 106
    .line 107
    if-lt v1, v2, :cond_5

    .line 108
    .line 109
    :goto_1
    return-void

    .line 110
    :cond_5
    :goto_2
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 111
    .line 112
    .line 113
    const-string v1, "Local FragmentActivity "

    .line 114
    .line 115
    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 116
    .line 117
    .line 118
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    .line 119
    .line 120
    .line 121
    move-result v1

    .line 122
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object v1

    .line 126
    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 127
    .line 128
    .line 129
    const-string v1, " State:"

    .line 130
    .line 131
    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 132
    .line 133
    .line 134
    new-instance v1, Ljava/lang/StringBuilder;

    .line 135
    .line 136
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 137
    .line 138
    .line 139
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    .line 141
    .line 142
    const-string v2, "  "

    .line 143
    .line 144
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    .line 146
    .line 147
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 148
    .line 149
    .line 150
    move-result-object v1

    .line 151
    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 152
    .line 153
    .line 154
    const-string v2, "mCreated="

    .line 155
    .line 156
    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 157
    .line 158
    .line 159
    iget-boolean v2, p0, Landroidx/fragment/app/j0;->w:Z

    .line 160
    .line 161
    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(Z)V

    .line 162
    .line 163
    .line 164
    const-string v2, " mResumed="

    .line 165
    .line 166
    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 167
    .line 168
    .line 169
    iget-boolean v2, p0, Landroidx/fragment/app/j0;->x:Z

    .line 170
    .line 171
    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(Z)V

    .line 172
    .line 173
    .line 174
    const-string v2, " mStopped="

    .line 175
    .line 176
    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 177
    .line 178
    .line 179
    iget-boolean v2, p0, Landroidx/fragment/app/j0;->y:Z

    .line 180
    .line 181
    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(Z)V

    .line 182
    .line 183
    .line 184
    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    .line 185
    .line 186
    .line 187
    move-result-object v2

    .line 188
    if-eqz v2, :cond_9

    .line 189
    .line 190
    invoke-interface {p0}, Landroidx/lifecycle/w0;->getViewModelStore()Landroidx/lifecycle/v0;

    .line 191
    .line 192
    .line 193
    move-result-object v2

    .line 194
    new-instance v3, Lv3/f;

    .line 195
    .line 196
    sget-object v4, Lq1/b;->e:Lha/j2;

    .line 197
    .line 198
    invoke-direct {v3, v2, v4}, Lv3/f;-><init>(Landroidx/lifecycle/v0;Landroidx/lifecycle/u0;)V

    .line 199
    .line 200
    .line 201
    const-class v2, Lq1/b;

    .line 202
    .line 203
    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    .line 204
    .line 205
    .line 206
    move-result-object v4

    .line 207
    if-eqz v4, :cond_8

    .line 208
    .line 209
    const-string v5, "androidx.lifecycle.ViewModelProvider.DefaultKey:"

    .line 210
    .line 211
    invoke-virtual {v5, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 212
    .line 213
    .line 214
    move-result-object v4

    .line 215
    invoke-virtual {v3, v2, v4}, Lv3/f;->w(Ljava/lang/Class;Ljava/lang/String;)Landroidx/lifecycle/r0;

    .line 216
    .line 217
    .line 218
    move-result-object v2

    .line 219
    check-cast v2, Lq1/b;

    .line 220
    .line 221
    iget-object v2, v2, Lq1/b;->d:La0/u;

    .line 222
    .line 223
    iget v3, v2, La0/u;->c:I

    .line 224
    .line 225
    if-lez v3, :cond_9

    .line 226
    .line 227
    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 228
    .line 229
    .line 230
    const-string v3, "Loaders:"

    .line 231
    .line 232
    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 233
    .line 234
    .line 235
    iget v3, v2, La0/u;->c:I

    .line 236
    .line 237
    if-gtz v3, :cond_6

    .line 238
    .line 239
    goto :goto_3

    .line 240
    :cond_6
    invoke-virtual {v2, v0}, La0/u;->e(I)Ljava/lang/Object;

    .line 241
    .line 242
    .line 243
    move-result-object p1

    .line 244
    if-nez p1, :cond_7

    .line 245
    .line 246
    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 247
    .line 248
    .line 249
    const-string p1, "  #"

    .line 250
    .line 251
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 252
    .line 253
    .line 254
    iget-object p1, v2, La0/u;->a:[I

    .line 255
    .line 256
    aget p1, p1, v0

    .line 257
    .line 258
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(I)V

    .line 259
    .line 260
    .line 261
    const-string p1, ": "

    .line 262
    .line 263
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 264
    .line 265
    .line 266
    const/4 p1, 0x0

    .line 267
    throw p1

    .line 268
    :cond_7
    new-instance p1, Ljava/lang/ClassCastException;

    .line 269
    .line 270
    invoke-direct {p1}, Ljava/lang/ClassCastException;-><init>()V

    .line 271
    .line 272
    .line 273
    throw p1

    .line 274
    :cond_8
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 275
    .line 276
    const-string p2, "Local and anonymous classes can not be ViewModels"

    .line 277
    .line 278
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 279
    .line 280
    .line 281
    throw p1

    .line 282
    :cond_9
    :goto_3
    iget-object v0, p0, Landroidx/fragment/app/j0;->t:Landroidx/fragment/app/y;

    .line 283
    .line 284
    iget-object v0, v0, Landroidx/fragment/app/y;->b:Ljava/lang/Object;

    .line 285
    .line 286
    check-cast v0, Landroidx/fragment/app/i0;

    .line 287
    .line 288
    iget-object v0, v0, Landroidx/fragment/app/o0;->d:Landroidx/fragment/app/e1;

    .line 289
    .line 290
    invoke-virtual {v0, p1, p2, p3, p4}, Landroidx/fragment/app/d1;->v(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 291
    .line 292
    .line 293
    return-void

    .line 294
    nop

    .line 295
    :sswitch_data_0
    .sparse-switch
        -0x2673d6ef -> :sswitch_4
        0x5fd0f67 -> :sswitch_3
        0x1c2b8816 -> :sswitch_2
        0x4519f64d -> :sswitch_1
        0x56b9c952 -> :sswitch_0
    .end sparse-switch

    .line 296
    .line 297
    .line 298
    .line 299
    .line 300
    .line 301
    .line 302
    .line 303
    .line 304
    .line 305
    .line 306
    .line 307
    .line 308
    .line 309
    .line 310
    .line 311
    .line 312
    .line 313
    .line 314
    .line 315
    .line 316
    .line 317
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/j0;->t:Landroidx/fragment/app/y;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/fragment/app/y;->a()V

    .line 4
    .line 5
    .line 6
    invoke-super {p0, p1, p2, p3}, Landroidx/activity/m;->onActivityResult(IILandroid/content/Intent;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroidx/activity/m;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Landroidx/fragment/app/j0;->v:Landroidx/lifecycle/v;

    .line 5
    .line 6
    sget-object v0, Landroidx/lifecycle/m;->ON_CREATE:Landroidx/lifecycle/m;

    .line 7
    .line 8
    invoke-virtual {p1, v0}, Landroidx/lifecycle/v;->e(Landroidx/lifecycle/m;)V

    .line 9
    .line 10
    .line 11
    iget-object p1, p0, Landroidx/fragment/app/j0;->t:Landroidx/fragment/app/y;

    .line 12
    .line 13
    iget-object p1, p1, Landroidx/fragment/app/y;->b:Ljava/lang/Object;

    .line 14
    .line 15
    check-cast p1, Landroidx/fragment/app/i0;

    .line 16
    .line 17
    iget-object p1, p1, Landroidx/fragment/app/o0;->d:Landroidx/fragment/app/e1;

    .line 18
    .line 19
    const/4 v0, 0x0

    .line 20
    iput-boolean v0, p1, Landroidx/fragment/app/d1;->E:Z

    .line 21
    .line 22
    iput-boolean v0, p1, Landroidx/fragment/app/d1;->F:Z

    .line 23
    .line 24
    iget-object v1, p1, Landroidx/fragment/app/d1;->L:Landroidx/fragment/app/g1;

    .line 25
    .line 26
    iput-boolean v0, v1, Landroidx/fragment/app/g1;->i:Z

    .line 27
    .line 28
    const/4 v0, 0x1

    .line 29
    invoke-virtual {p1, v0}, Landroidx/fragment/app/d1;->t(I)V

    .line 30
    .line 31
    .line 32
    return-void
.end method

.method public final onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/j0;->t:Landroidx/fragment/app/y;

    iget-object v0, v0, Landroidx/fragment/app/y;->b:Ljava/lang/Object;

    check-cast v0, Landroidx/fragment/app/i0;

    .line 2
    iget-object v0, v0, Landroidx/fragment/app/o0;->d:Landroidx/fragment/app/e1;

    iget-object v0, v0, Landroidx/fragment/app/d1;->f:Landroidx/fragment/app/q0;

    .line 3
    invoke-virtual {v0, p1, p2, p3, p4}, Landroidx/fragment/app/q0;->onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    .line 4
    invoke-super {p0, p1, p2, p3, p4}, Landroid/app/Activity;->onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object p1

    return-object p1

    :cond_0
    return-object v0
.end method

.method public final onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 2

    .line 5
    iget-object v0, p0, Landroidx/fragment/app/j0;->t:Landroidx/fragment/app/y;

    iget-object v0, v0, Landroidx/fragment/app/y;->b:Ljava/lang/Object;

    check-cast v0, Landroidx/fragment/app/i0;

    .line 6
    iget-object v0, v0, Landroidx/fragment/app/o0;->d:Landroidx/fragment/app/e1;

    iget-object v0, v0, Landroidx/fragment/app/d1;->f:Landroidx/fragment/app/q0;

    const/4 v1, 0x0

    .line 7
    invoke-virtual {v0, v1, p1, p2, p3}, Landroidx/fragment/app/q0;->onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    .line 8
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object p1

    return-object p1

    :cond_0
    return-object v0
.end method

.method public onDestroy()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroidx/fragment/app/j0;->t:Landroidx/fragment/app/y;

    .line 5
    .line 6
    iget-object v0, v0, Landroidx/fragment/app/y;->b:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v0, Landroidx/fragment/app/i0;

    .line 9
    .line 10
    iget-object v0, v0, Landroidx/fragment/app/o0;->d:Landroidx/fragment/app/e1;

    .line 11
    .line 12
    invoke-virtual {v0}, Landroidx/fragment/app/d1;->k()V

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Landroidx/fragment/app/j0;->v:Landroidx/lifecycle/v;

    .line 16
    .line 17
    sget-object v1, Landroidx/lifecycle/m;->ON_DESTROY:Landroidx/lifecycle/m;

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Landroidx/lifecycle/v;->e(Landroidx/lifecycle/m;)V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public onMenuItemSelected(ILandroid/view/MenuItem;)Z
    .locals 1

    .line 1
    invoke-super {p0, p1, p2}, Landroidx/activity/m;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const/4 p1, 0x1

    .line 8
    return p1

    .line 9
    :cond_0
    const/4 v0, 0x6

    .line 10
    if-ne p1, v0, :cond_1

    .line 11
    .line 12
    iget-object p1, p0, Landroidx/fragment/app/j0;->t:Landroidx/fragment/app/y;

    .line 13
    .line 14
    iget-object p1, p1, Landroidx/fragment/app/y;->b:Ljava/lang/Object;

    .line 15
    .line 16
    check-cast p1, Landroidx/fragment/app/i0;

    .line 17
    .line 18
    iget-object p1, p1, Landroidx/fragment/app/o0;->d:Landroidx/fragment/app/e1;

    .line 19
    .line 20
    invoke-virtual {p1, p2}, Landroidx/fragment/app/d1;->i(Landroid/view/MenuItem;)Z

    .line 21
    .line 22
    .line 23
    move-result p1

    .line 24
    return p1

    .line 25
    :cond_1
    const/4 p1, 0x0

    .line 26
    return p1
.end method

.method public final onPause()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Landroidx/fragment/app/j0;->x:Z

    .line 6
    .line 7
    iget-object v0, p0, Landroidx/fragment/app/j0;->t:Landroidx/fragment/app/y;

    .line 8
    .line 9
    iget-object v0, v0, Landroidx/fragment/app/y;->b:Ljava/lang/Object;

    .line 10
    .line 11
    check-cast v0, Landroidx/fragment/app/i0;

    .line 12
    .line 13
    const/4 v1, 0x5

    .line 14
    iget-object v0, v0, Landroidx/fragment/app/o0;->d:Landroidx/fragment/app/e1;

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Landroidx/fragment/app/d1;->t(I)V

    .line 17
    .line 18
    .line 19
    iget-object v0, p0, Landroidx/fragment/app/j0;->v:Landroidx/lifecycle/v;

    .line 20
    .line 21
    sget-object v1, Landroidx/lifecycle/m;->ON_PAUSE:Landroidx/lifecycle/m;

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Landroidx/lifecycle/v;->e(Landroidx/lifecycle/m;)V

    .line 24
    .line 25
    .line 26
    return-void
.end method

.method public onPostResume()V
    .locals 3

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->onPostResume()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroidx/fragment/app/j0;->v:Landroidx/lifecycle/v;

    .line 5
    .line 6
    sget-object v1, Landroidx/lifecycle/m;->ON_RESUME:Landroidx/lifecycle/m;

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Landroidx/lifecycle/v;->e(Landroidx/lifecycle/m;)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Landroidx/fragment/app/j0;->t:Landroidx/fragment/app/y;

    .line 12
    .line 13
    iget-object v0, v0, Landroidx/fragment/app/y;->b:Ljava/lang/Object;

    .line 14
    .line 15
    check-cast v0, Landroidx/fragment/app/i0;

    .line 16
    .line 17
    iget-object v0, v0, Landroidx/fragment/app/o0;->d:Landroidx/fragment/app/e1;

    .line 18
    .line 19
    const/4 v1, 0x0

    .line 20
    iput-boolean v1, v0, Landroidx/fragment/app/d1;->E:Z

    .line 21
    .line 22
    iput-boolean v1, v0, Landroidx/fragment/app/d1;->F:Z

    .line 23
    .line 24
    iget-object v2, v0, Landroidx/fragment/app/d1;->L:Landroidx/fragment/app/g1;

    .line 25
    .line 26
    iput-boolean v1, v2, Landroidx/fragment/app/g1;->i:Z

    .line 27
    .line 28
    const/4 v1, 0x7

    .line 29
    invoke-virtual {v0, v1}, Landroidx/fragment/app/d1;->t(I)V

    .line 30
    .line 31
    .line 32
    return-void
.end method

.method public final onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/j0;->t:Landroidx/fragment/app/y;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/fragment/app/y;->a()V

    .line 4
    .line 5
    .line 6
    invoke-super {p0, p1, p2, p3}, Landroidx/activity/m;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public onResume()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/j0;->t:Landroidx/fragment/app/y;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/fragment/app/y;->a()V

    .line 4
    .line 5
    .line 6
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 7
    .line 8
    .line 9
    const/4 v1, 0x1

    .line 10
    iput-boolean v1, p0, Landroidx/fragment/app/j0;->x:Z

    .line 11
    .line 12
    iget-object v0, v0, Landroidx/fragment/app/y;->b:Ljava/lang/Object;

    .line 13
    .line 14
    check-cast v0, Landroidx/fragment/app/i0;

    .line 15
    .line 16
    iget-object v0, v0, Landroidx/fragment/app/o0;->d:Landroidx/fragment/app/e1;

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Landroidx/fragment/app/d1;->y(Z)Z

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public onStart()V
    .locals 5

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/j0;->t:Landroidx/fragment/app/y;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/fragment/app/y;->a()V

    .line 4
    .line 5
    .line 6
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 7
    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    iput-boolean v1, p0, Landroidx/fragment/app/j0;->y:Z

    .line 11
    .line 12
    iget-boolean v2, p0, Landroidx/fragment/app/j0;->w:Z

    .line 13
    .line 14
    const/4 v3, 0x1

    .line 15
    iget-object v0, v0, Landroidx/fragment/app/y;->b:Ljava/lang/Object;

    .line 16
    .line 17
    check-cast v0, Landroidx/fragment/app/i0;

    .line 18
    .line 19
    if-nez v2, :cond_0

    .line 20
    .line 21
    iput-boolean v3, p0, Landroidx/fragment/app/j0;->w:Z

    .line 22
    .line 23
    iget-object v2, v0, Landroidx/fragment/app/o0;->d:Landroidx/fragment/app/e1;

    .line 24
    .line 25
    iput-boolean v1, v2, Landroidx/fragment/app/d1;->E:Z

    .line 26
    .line 27
    iput-boolean v1, v2, Landroidx/fragment/app/d1;->F:Z

    .line 28
    .line 29
    iget-object v4, v2, Landroidx/fragment/app/d1;->L:Landroidx/fragment/app/g1;

    .line 30
    .line 31
    iput-boolean v1, v4, Landroidx/fragment/app/g1;->i:Z

    .line 32
    .line 33
    const/4 v4, 0x4

    .line 34
    invoke-virtual {v2, v4}, Landroidx/fragment/app/d1;->t(I)V

    .line 35
    .line 36
    .line 37
    :cond_0
    iget-object v2, v0, Landroidx/fragment/app/o0;->d:Landroidx/fragment/app/e1;

    .line 38
    .line 39
    invoke-virtual {v2, v3}, Landroidx/fragment/app/d1;->y(Z)Z

    .line 40
    .line 41
    .line 42
    iget-object v2, p0, Landroidx/fragment/app/j0;->v:Landroidx/lifecycle/v;

    .line 43
    .line 44
    sget-object v3, Landroidx/lifecycle/m;->ON_START:Landroidx/lifecycle/m;

    .line 45
    .line 46
    invoke-virtual {v2, v3}, Landroidx/lifecycle/v;->e(Landroidx/lifecycle/m;)V

    .line 47
    .line 48
    .line 49
    iget-object v0, v0, Landroidx/fragment/app/o0;->d:Landroidx/fragment/app/e1;

    .line 50
    .line 51
    iput-boolean v1, v0, Landroidx/fragment/app/d1;->E:Z

    .line 52
    .line 53
    iput-boolean v1, v0, Landroidx/fragment/app/d1;->F:Z

    .line 54
    .line 55
    iget-object v2, v0, Landroidx/fragment/app/d1;->L:Landroidx/fragment/app/g1;

    .line 56
    .line 57
    iput-boolean v1, v2, Landroidx/fragment/app/g1;->i:Z

    .line 58
    .line 59
    const/4 v1, 0x5

    .line 60
    invoke-virtual {v0, v1}, Landroidx/fragment/app/d1;->t(I)V

    .line 61
    .line 62
    .line 63
    return-void
.end method

.method public final onStateNotSaved()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/j0;->t:Landroidx/fragment/app/y;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/fragment/app/y;->a()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public onStop()V
    .locals 3

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Landroidx/fragment/app/j0;->y:Z

    .line 6
    .line 7
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/j0;->p()Landroidx/fragment/app/e1;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-static {v1}, Landroidx/fragment/app/j0;->q(Landroidx/fragment/app/d1;)Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-nez v1, :cond_0

    .line 16
    .line 17
    iget-object v1, p0, Landroidx/fragment/app/j0;->t:Landroidx/fragment/app/y;

    .line 18
    .line 19
    iget-object v1, v1, Landroidx/fragment/app/y;->b:Ljava/lang/Object;

    .line 20
    .line 21
    check-cast v1, Landroidx/fragment/app/i0;

    .line 22
    .line 23
    iget-object v1, v1, Landroidx/fragment/app/o0;->d:Landroidx/fragment/app/e1;

    .line 24
    .line 25
    iput-boolean v0, v1, Landroidx/fragment/app/d1;->F:Z

    .line 26
    .line 27
    iget-object v2, v1, Landroidx/fragment/app/d1;->L:Landroidx/fragment/app/g1;

    .line 28
    .line 29
    iput-boolean v0, v2, Landroidx/fragment/app/g1;->i:Z

    .line 30
    .line 31
    const/4 v0, 0x4

    .line 32
    invoke-virtual {v1, v0}, Landroidx/fragment/app/d1;->t(I)V

    .line 33
    .line 34
    .line 35
    iget-object v0, p0, Landroidx/fragment/app/j0;->v:Landroidx/lifecycle/v;

    .line 36
    .line 37
    sget-object v1, Landroidx/lifecycle/m;->ON_STOP:Landroidx/lifecycle/m;

    .line 38
    .line 39
    invoke-virtual {v0, v1}, Landroidx/lifecycle/v;->e(Landroidx/lifecycle/m;)V

    .line 40
    .line 41
    .line 42
    return-void
.end method

.method public final p()Landroidx/fragment/app/e1;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/j0;->t:Landroidx/fragment/app/y;

    .line 2
    .line 3
    iget-object v0, v0, Landroidx/fragment/app/y;->b:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast v0, Landroidx/fragment/app/i0;

    .line 6
    .line 7
    iget-object v0, v0, Landroidx/fragment/app/o0;->d:Landroidx/fragment/app/e1;

    .line 8
    .line 9
    return-object v0
.end method
