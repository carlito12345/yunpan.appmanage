.class public final Landroidx/activity/g;
.super Landroidx/activity/result/g;
.source "SourceFile"


# instance fields
.field public final synthetic h:Landroidx/fragment/app/j0;


# direct methods
.method public constructor <init>(Landroidx/fragment/app/j0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/activity/g;->h:Landroidx/fragment/app/j0;

    .line 2
    .line 3
    invoke-direct {p0}, Landroidx/activity/result/g;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final b(ILn/a;Ljava/lang/Object;)V
    .locals 8

    .line 1
    iget-object v0, p0, Landroidx/activity/g;->h:Landroidx/fragment/app/j0;

    .line 2
    .line 3
    invoke-virtual {p2, v0, p3}, Ln/a;->b(Landroidx/fragment/app/j0;Ljava/lang/Object;)Lkh/h;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    new-instance p2, Landroid/os/Handler;

    .line 10
    .line 11
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 12
    .line 13
    .line 14
    move-result-object p3

    .line 15
    invoke-direct {p2, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 16
    .line 17
    .line 18
    new-instance p3, Landroidx/activity/f;

    .line 19
    .line 20
    const/4 v0, 0x0

    .line 21
    invoke-direct {p3, p0, p1, v1, v0}, Landroidx/activity/f;-><init>(Ljava/lang/Object;ILjava/lang/Object;I)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p2, p3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 25
    .line 26
    .line 27
    return-void

    .line 28
    :cond_0
    invoke-virtual {p2, v0, p3}, Ln/a;->a(Landroidx/fragment/app/j0;Ljava/lang/Object;)Landroid/content/Intent;

    .line 29
    .line 30
    .line 31
    move-result-object p2

    .line 32
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    .line 33
    .line 34
    .line 35
    move-result-object p3

    .line 36
    if-eqz p3, :cond_1

    .line 37
    .line 38
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    .line 39
    .line 40
    .line 41
    move-result-object p3

    .line 42
    invoke-virtual {p3}, Landroid/os/Bundle;->getClassLoader()Ljava/lang/ClassLoader;

    .line 43
    .line 44
    .line 45
    move-result-object p3

    .line 46
    if-nez p3, :cond_1

    .line 47
    .line 48
    invoke-virtual {v0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    .line 49
    .line 50
    .line 51
    move-result-object p3

    .line 52
    invoke-virtual {p2, p3}, Landroid/content/Intent;->setExtrasClassLoader(Ljava/lang/ClassLoader;)V

    .line 53
    .line 54
    .line 55
    :cond_1
    const-string p3, "androidx.activity.result.contract.extra.ACTIVITY_OPTIONS_BUNDLE"

    .line 56
    .line 57
    invoke-virtual {p2, p3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    .line 58
    .line 59
    .line 60
    move-result v1

    .line 61
    if-eqz v1, :cond_2

    .line 62
    .line 63
    invoke-virtual {p2, p3}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    .line 64
    .line 65
    .line 66
    move-result-object v1

    .line 67
    invoke-virtual {p2, p3}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    move-object v7, v1

    .line 71
    goto :goto_0

    .line 72
    :cond_2
    const/4 p3, 0x0

    .line 73
    move-object v7, p3

    .line 74
    :goto_0
    const-string p3, "androidx.activity.result.contract.action.REQUEST_PERMISSIONS"

    .line 75
    .line 76
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v1

    .line 80
    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 81
    .line 82
    .line 83
    move-result p3

    .line 84
    if-eqz p3, :cond_c

    .line 85
    .line 86
    const-string p3, "androidx.activity.result.contract.extra.PERMISSIONS"

    .line 87
    .line 88
    invoke-virtual {p2, p3}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object p2

    .line 92
    const/4 p3, 0x0

    .line 93
    if-nez p2, :cond_3

    .line 94
    .line 95
    new-array p2, p3, [Ljava/lang/String;

    .line 96
    .line 97
    :cond_3
    new-instance v1, Ljava/util/HashSet;

    .line 98
    .line 99
    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 100
    .line 101
    .line 102
    const/4 v2, 0x0

    .line 103
    :goto_1
    array-length v3, p2

    .line 104
    if-ge v2, v3, :cond_6

    .line 105
    .line 106
    aget-object v3, p2, v2

    .line 107
    .line 108
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 109
    .line 110
    .line 111
    move-result v3

    .line 112
    if-nez v3, :cond_5

    .line 113
    .line 114
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 115
    .line 116
    const/16 v4, 0x21

    .line 117
    .line 118
    if-ge v3, v4, :cond_4

    .line 119
    .line 120
    aget-object v3, p2, v2

    .line 121
    .line 122
    const-string v4, "android.permission.POST_NOTIFICATIONS"

    .line 123
    .line 124
    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 125
    .line 126
    .line 127
    move-result v3

    .line 128
    if-eqz v3, :cond_4

    .line 129
    .line 130
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 131
    .line 132
    .line 133
    move-result-object v3

    .line 134
    invoke-virtual {v1, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 135
    .line 136
    .line 137
    :cond_4
    add-int/lit8 v2, v2, 0x1

    .line 138
    .line 139
    goto :goto_1

    .line 140
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 141
    .line 142
    new-instance p3, Ljava/lang/StringBuilder;

    .line 143
    .line 144
    const-string v0, "Permission request for permissions "

    .line 145
    .line 146
    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 147
    .line 148
    .line 149
    invoke-static {p2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    .line 150
    .line 151
    .line 152
    move-result-object p2

    .line 153
    const-string v0, " must not contain null or empty values"

    .line 154
    .line 155
    invoke-static {p2, v0, p3}, Lg/b;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 156
    .line 157
    .line 158
    move-result-object p2

    .line 159
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 160
    .line 161
    .line 162
    throw p1

    .line 163
    :cond_6
    invoke-virtual {v1}, Ljava/util/HashSet;->size()I

    .line 164
    .line 165
    .line 166
    move-result v2

    .line 167
    if-lez v2, :cond_7

    .line 168
    .line 169
    array-length v3, p2

    .line 170
    sub-int/2addr v3, v2

    .line 171
    new-array v3, v3, [Ljava/lang/String;

    .line 172
    .line 173
    goto :goto_2

    .line 174
    :cond_7
    move-object v3, p2

    .line 175
    :goto_2
    if-lez v2, :cond_a

    .line 176
    .line 177
    array-length v4, p2

    .line 178
    if-ne v2, v4, :cond_8

    .line 179
    .line 180
    goto/16 :goto_4

    .line 181
    .line 182
    :cond_8
    const/4 v2, 0x0

    .line 183
    :goto_3
    array-length v4, p2

    .line 184
    if-ge p3, v4, :cond_a

    .line 185
    .line 186
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 187
    .line 188
    .line 189
    move-result-object v4

    .line 190
    invoke-virtual {v1, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 191
    .line 192
    .line 193
    move-result v4

    .line 194
    if-nez v4, :cond_9

    .line 195
    .line 196
    add-int/lit8 v4, v2, 0x1

    .line 197
    .line 198
    aget-object v5, p2, p3

    .line 199
    .line 200
    aput-object v5, v3, v2

    .line 201
    .line 202
    move v2, v4

    .line 203
    :cond_9
    add-int/lit8 p3, p3, 0x1

    .line 204
    .line 205
    goto :goto_3

    .line 206
    :cond_a
    sget p3, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 207
    .line 208
    const/16 v1, 0x17

    .line 209
    .line 210
    if-lt p3, v1, :cond_b

    .line 211
    .line 212
    invoke-static {v0, p2, p1}, Lm0/b;->b(Landroid/app/Activity;[Ljava/lang/String;I)V

    .line 213
    .line 214
    .line 215
    goto :goto_4

    .line 216
    :cond_b
    new-instance p2, Landroid/os/Handler;

    .line 217
    .line 218
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 219
    .line 220
    .line 221
    move-result-object p3

    .line 222
    invoke-direct {p2, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 223
    .line 224
    .line 225
    new-instance p3, Landroidx/activity/f;

    .line 226
    .line 227
    const/4 v1, 0x2

    .line 228
    invoke-direct {p3, v3, v0, p1, v1}, Landroidx/activity/f;-><init>(Ljava/lang/Object;Ljava/lang/Object;II)V

    .line 229
    .line 230
    .line 231
    invoke-virtual {p2, p3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 232
    .line 233
    .line 234
    goto :goto_4

    .line 235
    :cond_c
    const-string p3, "androidx.activity.result.contract.action.INTENT_SENDER_REQUEST"

    .line 236
    .line 237
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 238
    .line 239
    .line 240
    move-result-object v1

    .line 241
    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 242
    .line 243
    .line 244
    move-result p3

    .line 245
    if-eqz p3, :cond_d

    .line 246
    .line 247
    const-string p3, "androidx.activity.result.contract.extra.INTENT_SENDER_REQUEST"

    .line 248
    .line 249
    invoke-virtual {p2, p3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 250
    .line 251
    .line 252
    move-result-object p2

    .line 253
    check-cast p2, Landroidx/activity/result/i;

    .line 254
    .line 255
    :try_start_0
    iget-object v1, p2, Landroidx/activity/result/i;->a:Landroid/content/IntentSender;

    .line 256
    .line 257
    iget-object v3, p2, Landroidx/activity/result/i;->b:Landroid/content/Intent;

    .line 258
    .line 259
    iget v4, p2, Landroidx/activity/result/i;->c:I

    .line 260
    .line 261
    iget v5, p2, Landroidx/activity/result/i;->d:I

    .line 262
    .line 263
    const/4 v6, 0x0

    .line 264
    move v2, p1

    .line 265
    invoke-static/range {v0 .. v7}, Lm0/a;->c(Landroid/app/Activity;Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 266
    .line 267
    .line 268
    goto :goto_4

    .line 269
    :catch_0
    move-exception p2

    .line 270
    new-instance p3, Landroid/os/Handler;

    .line 271
    .line 272
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 273
    .line 274
    .line 275
    move-result-object v0

    .line 276
    invoke-direct {p3, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 277
    .line 278
    .line 279
    new-instance v0, Landroidx/activity/f;

    .line 280
    .line 281
    const/4 v1, 0x1

    .line 282
    invoke-direct {v0, p0, p1, p2, v1}, Landroidx/activity/f;-><init>(Ljava/lang/Object;ILjava/lang/Object;I)V

    .line 283
    .line 284
    .line 285
    invoke-virtual {p3, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 286
    .line 287
    .line 288
    goto :goto_4

    .line 289
    :cond_d
    invoke-static {v0, p2, p1, v7}, Lm0/a;->b(Landroid/app/Activity;Landroid/content/Intent;ILandroid/os/Bundle;)V

    .line 290
    .line 291
    .line 292
    :goto_4
    return-void
.end method
