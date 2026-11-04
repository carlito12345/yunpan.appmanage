.class public final Landroidx/activity/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final b:I

.field public final synthetic c:Ljava/lang/Object;

.field public final d:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/google/android/material/bottomsheet/BottomSheetBehavior;Landroid/view/View;I)V
    .locals 1

    const/4 v0, 0x5

    iput v0, p0, Landroidx/activity/f;->a:I

    .line 3
    iput-object p1, p0, Landroidx/activity/f;->c:Ljava/lang/Object;

    iput-object p2, p0, Landroidx/activity/f;->d:Ljava/lang/Object;

    iput p3, p0, Landroidx/activity/f;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;ILjava/lang/Object;I)V
    .locals 0

    .line 1
    iput p4, p0, Landroidx/activity/f;->a:I

    iput-object p1, p0, Landroidx/activity/f;->c:Ljava/lang/Object;

    iput p2, p0, Landroidx/activity/f;->b:I

    iput-object p3, p0, Landroidx/activity/f;->d:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;II)V
    .locals 0

    .line 2
    iput p4, p0, Landroidx/activity/f;->a:I

    iput-object p1, p0, Landroidx/activity/f;->d:Ljava/lang/Object;

    iput-object p2, p0, Landroidx/activity/f;->c:Ljava/lang/Object;

    iput p3, p0, Landroidx/activity/f;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    .line 1
    iget v0, p0, Landroidx/activity/f;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Landroidx/activity/f;->c:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    .line 9
    .line 10
    iget-object v1, p0, Landroidx/activity/f;->d:Ljava/lang/Object;

    .line 11
    .line 12
    check-cast v1, Landroid/view/View;

    .line 13
    .line 14
    iget v2, p0, Landroidx/activity/f;->b:I

    .line 15
    .line 16
    const/4 v3, 0x0

    .line 17
    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->E(Landroid/view/View;IZ)V

    .line 18
    .line 19
    .line 20
    return-void

    .line 21
    :pswitch_0
    iget-object v0, p0, Landroidx/activity/f;->c:Ljava/lang/Object;

    .line 22
    .line 23
    check-cast v0, Landroid/graphics/Typeface;

    .line 24
    .line 25
    iget v1, p0, Landroidx/activity/f;->b:I

    .line 26
    .line 27
    iget-object v2, p0, Landroidx/activity/f;->d:Ljava/lang/Object;

    .line 28
    .line 29
    check-cast v2, Landroid/widget/TextView;

    .line 30
    .line 31
    invoke-virtual {v2, v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 32
    .line 33
    .line 34
    return-void

    .line 35
    :pswitch_1
    iget-object v0, p0, Landroidx/activity/f;->c:Ljava/lang/Object;

    .line 36
    .line 37
    check-cast v0, Lua/q8;

    .line 38
    .line 39
    iget-object v1, v0, Lua/q8;->F:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 40
    .line 41
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 42
    .line 43
    .line 44
    iget-object v1, p0, Landroidx/activity/f;->d:Ljava/lang/Object;

    .line 45
    .line 46
    check-cast v1, Lx9/m5;

    .line 47
    .line 48
    sget-object v2, Lcom/yunpan/appmanage/util/f0;->a:Lo9/a;

    .line 49
    .line 50
    const/4 v3, 0x0

    .line 51
    iput-object v3, v2, Lo9/a;->b:Lokhttp3/HttpUrl;

    .line 52
    .line 53
    new-instance v2, Ljava/lang/StringBuilder;

    .line 54
    .line 55
    const-string v3, "http://"

    .line 56
    .line 57
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    iget-object v3, v1, Lx9/m5;->d:Ljava/lang/String;

    .line 61
    .line 62
    const-string v4, ":9898/upload"

    .line 63
    .line 64
    invoke-static {v3, v4, v2}, Lg/b;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v2

    .line 68
    new-instance v3, Ll9/b;

    .line 69
    .line 70
    invoke-direct {v3, v2}, Ll9/b;-><init>(Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    const/4 v2, 0x0

    .line 74
    new-array v2, v2, [Z

    .line 75
    .line 76
    const-string v4, "path"

    .line 77
    .line 78
    iget-object v5, v1, Lx9/m5;->e:Ljava/lang/String;

    .line 79
    .line 80
    invoke-virtual {v3, v4, v5, v2}, Lm9/e;->h(Ljava/lang/String;Ljava/lang/String;[Z)V

    .line 81
    .line 82
    .line 83
    new-instance v2, Ljava/lang/StringBuilder;

    .line 84
    .line 85
    const-string v4, "files-"

    .line 86
    .line 87
    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    new-instance v4, Ljava/io/File;

    .line 91
    .line 92
    iget-object v5, v1, Lx9/m5;->a:Ljava/lang/String;

    .line 93
    .line 94
    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    invoke-virtual {v4}, Ljava/io/File;->length()J

    .line 98
    .line 99
    .line 100
    move-result-wide v6

    .line 101
    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v2

    .line 108
    new-instance v4, Ljava/io/File;

    .line 109
    .line 110
    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 111
    .line 112
    .line 113
    invoke-virtual {v3, v4, v2}, Lm9/a;->j(Ljava/io/File;Ljava/lang/String;)V

    .line 114
    .line 115
    .line 116
    new-instance v2, Lua/l8;

    .line 117
    .line 118
    iget v4, p0, Landroidx/activity/f;->b:I

    .line 119
    .line 120
    invoke-direct {v2, v0, v1, v4}, Lua/l8;-><init>(Lua/q8;Lx9/m5;I)V

    .line 121
    .line 122
    .line 123
    invoke-virtual {v3, v2}, Lm9/e;->b(Lnh/b;)V

    .line 124
    .line 125
    .line 126
    :catch_0
    :goto_0
    iget-object v1, v0, Lua/q8;->F:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 127
    .line 128
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 129
    .line 130
    .line 131
    move-result v1

    .line 132
    if-eqz v1, :cond_0

    .line 133
    .line 134
    const-wide/16 v1, 0xc8

    .line 135
    .line 136
    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 137
    .line 138
    .line 139
    goto :goto_0

    .line 140
    :cond_0
    return-void

    .line 141
    :pswitch_2
    iget-object v0, p0, Landroidx/activity/f;->d:Ljava/lang/Object;

    .line 142
    .line 143
    check-cast v0, [Ljava/lang/String;

    .line 144
    .line 145
    array-length v1, v0

    .line 146
    new-array v1, v1, [I

    .line 147
    .line 148
    iget-object v2, p0, Landroidx/activity/f;->c:Ljava/lang/Object;

    .line 149
    .line 150
    check-cast v2, Landroidx/fragment/app/j0;

    .line 151
    .line 152
    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 153
    .line 154
    .line 155
    move-result-object v3

    .line 156
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 157
    .line 158
    .line 159
    move-result-object v4

    .line 160
    array-length v5, v0

    .line 161
    const/4 v6, 0x0

    .line 162
    :goto_1
    if-ge v6, v5, :cond_1

    .line 163
    .line 164
    aget-object v7, v0, v6

    .line 165
    .line 166
    invoke-virtual {v3, v7, v4}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    .line 168
    .line 169
    move-result v7

    .line 170
    aput v7, v1, v6

    .line 171
    .line 172
    add-int/lit8 v6, v6, 0x1

    .line 173
    .line 174
    goto :goto_1

    .line 175
    :cond_1
    iget v3, p0, Landroidx/activity/f;->b:I

    .line 176
    .line 177
    invoke-interface {v2, v3, v0, v1}, Lm0/e;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    .line 178
    .line 179
    .line 180
    return-void

    .line 181
    :pswitch_3
    new-instance v0, Landroid/content/Intent;

    .line 182
    .line 183
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 184
    .line 185
    .line 186
    const-string v1, "androidx.activity.result.contract.action.INTENT_SENDER_REQUEST"

    .line 187
    .line 188
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 189
    .line 190
    .line 191
    move-result-object v0

    .line 192
    const-string v1, "androidx.activity.result.contract.extra.SEND_INTENT_EXCEPTION"

    .line 193
    .line 194
    iget-object v2, p0, Landroidx/activity/f;->d:Ljava/lang/Object;

    .line 195
    .line 196
    check-cast v2, Landroid/content/IntentSender$SendIntentException;

    .line 197
    .line 198
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 199
    .line 200
    .line 201
    move-result-object v0

    .line 202
    iget-object v1, p0, Landroidx/activity/f;->c:Ljava/lang/Object;

    .line 203
    .line 204
    check-cast v1, Landroidx/activity/g;

    .line 205
    .line 206
    iget v2, p0, Landroidx/activity/f;->b:I

    .line 207
    .line 208
    const/4 v3, 0x0

    .line 209
    invoke-virtual {v1, v2, v3, v0}, Landroidx/activity/result/g;->a(IILandroid/content/Intent;)Z

    .line 210
    .line 211
    .line 212
    return-void

    .line 213
    :pswitch_4
    iget-object v0, p0, Landroidx/activity/f;->d:Ljava/lang/Object;

    .line 214
    .line 215
    check-cast v0, Lkh/h;

    .line 216
    .line 217
    iget-object v0, v0, Lkh/h;->a:Ljava/lang/Object;

    .line 218
    .line 219
    iget-object v1, p0, Landroidx/activity/f;->c:Ljava/lang/Object;

    .line 220
    .line 221
    check-cast v1, Landroidx/activity/g;

    .line 222
    .line 223
    iget-object v2, v1, Landroidx/activity/result/g;->a:Ljava/util/HashMap;

    .line 224
    .line 225
    iget v3, p0, Landroidx/activity/f;->b:I

    .line 226
    .line 227
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 228
    .line 229
    .line 230
    move-result-object v3

    .line 231
    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 232
    .line 233
    .line 234
    move-result-object v2

    .line 235
    check-cast v2, Ljava/lang/String;

    .line 236
    .line 237
    if-nez v2, :cond_2

    .line 238
    .line 239
    goto :goto_3

    .line 240
    :cond_2
    iget-object v3, v1, Landroidx/activity/result/g;->e:Ljava/util/HashMap;

    .line 241
    .line 242
    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 243
    .line 244
    .line 245
    move-result-object v3

    .line 246
    check-cast v3, Landroidx/activity/result/e;

    .line 247
    .line 248
    if-eqz v3, :cond_4

    .line 249
    .line 250
    iget-object v3, v3, Landroidx/activity/result/e;->a:Landroidx/activity/result/b;

    .line 251
    .line 252
    if-nez v3, :cond_3

    .line 253
    .line 254
    goto :goto_2

    .line 255
    :cond_3
    iget-object v1, v1, Landroidx/activity/result/g;->d:Ljava/util/ArrayList;

    .line 256
    .line 257
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 258
    .line 259
    .line 260
    move-result v1

    .line 261
    if-eqz v1, :cond_5

    .line 262
    .line 263
    invoke-interface {v3, v0}, Landroidx/activity/result/b;->a(Ljava/lang/Object;)V

    .line 264
    .line 265
    .line 266
    goto :goto_3

    .line 267
    :cond_4
    :goto_2
    iget-object v3, v1, Landroidx/activity/result/g;->g:Landroid/os/Bundle;

    .line 268
    .line 269
    invoke-virtual {v3, v2}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 270
    .line 271
    .line 272
    iget-object v1, v1, Landroidx/activity/result/g;->f:Ljava/util/HashMap;

    .line 273
    .line 274
    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 275
    .line 276
    .line 277
    :cond_5
    :goto_3
    return-void

    .line 278
    nop

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
