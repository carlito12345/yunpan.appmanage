.class public final Lg3/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkf/e;
.implements Ls3/y;


# instance fields
.field public a:I

.field public final b:Ljava/lang/Object;

.field public c:Ljava/lang/Object;

.field public d:Ljava/lang/Object;

.field public e:Ljava/lang/Object;


# direct methods
.method public constructor <init>(La2/w0;)V
    .locals 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-object p1, p0, Lg3/j;->b:Ljava/lang/Object;

    const/4 p1, 0x0

    .line 10
    iput-object p1, p0, Lg3/j;->c:Ljava/lang/Object;

    .line 11
    iput-object p1, p0, Lg3/j;->d:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 12
    iput v0, p0, Lg3/j;->a:I

    .line 13
    iput-object p1, p0, Lg3/j;->e:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 19

    move-object/from16 v0, p0

    .line 194
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 195
    invoke-static {}, Landroid/opengl/GLES20;->glCreateProgram()I

    move-result v1

    iput v1, v0, Lg3/j;->a:I

    .line 196
    invoke-static {}, Lu1/a;->b()V

    const v2, 0x8b31

    move-object/from16 v3, p1

    .line 197
    invoke-static {v1, v2, v3}, Lg3/j;->b(IILjava/lang/String;)V

    const v2, 0x8b30

    move-object/from16 v3, p2

    .line 198
    invoke-static {v1, v2, v3}, Lg3/j;->b(IILjava/lang/String;)V

    .line 199
    invoke-static {v1}, Landroid/opengl/GLES20;->glLinkProgram(I)V

    const/4 v2, 0x0

    .line 200
    filled-new-array {v2}, [I

    move-result-object v3

    const v4, 0x8b82

    .line 201
    invoke-static {v1, v4, v3, v2}, Landroid/opengl/GLES20;->glGetProgramiv(II[II)V

    .line 202
    aget v3, v3, v2

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Unable to link shader program: \n"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 203
    invoke-static {v1}, Landroid/opengl/GLES20;->glGetProgramInfoLog(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 204
    invoke-static {v5, v3}, Lu1/a;->c(Ljava/lang/String;Z)V

    .line 205
    invoke-static {v1}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 206
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, v0, Lg3/j;->d:Ljava/lang/Object;

    .line 207
    new-array v3, v4, [I

    const v5, 0x8b89

    .line 208
    invoke-static {v1, v5, v3, v2}, Landroid/opengl/GLES20;->glGetProgramiv(II[II)V

    .line 209
    aget v1, v3, v2

    new-array v1, v1, [Ls5/c;

    iput-object v1, v0, Lg3/j;->b:Ljava/lang/Object;

    const/4 v1, 0x0

    .line 210
    :goto_1
    aget v5, v3, v2

    if-ge v1, v5, :cond_3

    .line 211
    iget v15, v0, Lg3/j;->a:I

    .line 212
    new-array v5, v4, [I

    const v6, 0x8b8a

    .line 213
    invoke-static {v15, v6, v5, v2}, Landroid/opengl/GLES20;->glGetProgramiv(II[II)V

    .line 214
    aget v14, v5, v2

    new-array v13, v14, [B

    .line 215
    new-array v8, v4, [I

    new-array v10, v4, [I

    new-array v12, v4, [I

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/4 v9, 0x0

    const/4 v11, 0x0

    move v5, v15

    move v6, v1

    move v7, v14

    move-object/from16 p1, v13

    move/from16 v13, v16

    move v4, v14

    move-object/from16 v14, p1

    move/from16 v18, v15

    move/from16 v15, v17

    invoke-static/range {v5 .. v15}, Landroid/opengl/GLES20;->glGetActiveAttrib(III[II[II[II[BI)V

    .line 216
    new-instance v5, Ljava/lang/String;

    const/4 v14, 0x0

    :goto_2
    if-ge v14, v4, :cond_2

    move-object/from16 v6, p1

    .line 217
    aget-byte v7, v6, v14

    if-nez v7, :cond_1

    goto :goto_3

    :cond_1
    add-int/lit8 v14, v14, 0x1

    move-object/from16 p1, v6

    goto :goto_2

    :cond_2
    move-object/from16 v6, p1

    move v14, v4

    .line 218
    :goto_3
    invoke-direct {v5, v6, v2, v14}, Ljava/lang/String;-><init>([BII)V

    move/from16 v4, v18

    .line 219
    invoke-static {v4, v5}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    .line 220
    new-instance v4, Ls5/c;

    invoke-direct {v4, v5}, Ls5/c;-><init>(Ljava/lang/String;)V

    .line 221
    iget-object v6, v0, Lg3/j;->b:Ljava/lang/Object;

    check-cast v6, [Ls5/c;

    aput-object v4, v6, v1

    .line 222
    iget-object v6, v0, Lg3/j;->d:Ljava/lang/Object;

    check-cast v6, Ljava/util/HashMap;

    invoke-virtual {v6, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    const/4 v4, 0x1

    goto :goto_1

    .line 223
    :cond_3
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, v0, Lg3/j;->e:Ljava/lang/Object;

    const/4 v1, 0x1

    .line 224
    new-array v3, v1, [I

    .line 225
    iget v1, v0, Lg3/j;->a:I

    const v4, 0x8b86

    invoke-static {v1, v4, v3, v2}, Landroid/opengl/GLES20;->glGetProgramiv(II[II)V

    .line 226
    aget v1, v3, v2

    new-array v1, v1, [Ls9/a;

    iput-object v1, v0, Lg3/j;->c:Ljava/lang/Object;

    const/4 v1, 0x0

    .line 227
    :goto_4
    aget v4, v3, v2

    if-ge v1, v4, :cond_6

    .line 228
    iget v15, v0, Lg3/j;->a:I

    const/4 v14, 0x1

    .line 229
    new-array v4, v14, [I

    const v5, 0x8b87

    .line 230
    invoke-static {v15, v5, v4, v2}, Landroid/opengl/GLES20;->glGetProgramiv(II[II)V

    .line 231
    new-array v11, v14, [I

    .line 232
    aget v13, v4, v2

    new-array v12, v13, [B

    .line 233
    new-array v7, v14, [I

    new-array v9, v14, [I

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    move v4, v15

    move v5, v1

    move v6, v13

    move-object/from16 p1, v12

    move/from16 v12, v16

    move v2, v13

    move-object/from16 v13, p1

    const/16 v16, 0x1

    move/from16 v14, v17

    invoke-static/range {v4 .. v14}, Landroid/opengl/GLES20;->glGetActiveUniform(III[II[II[II[BI)V

    .line 234
    new-instance v4, Ljava/lang/String;

    const/4 v13, 0x0

    :goto_5
    if-ge v13, v2, :cond_5

    move-object/from16 v5, p1

    .line 235
    aget-byte v6, v5, v13

    if-nez v6, :cond_4

    :goto_6
    const/4 v2, 0x0

    goto :goto_7

    :cond_4
    add-int/lit8 v13, v13, 0x1

    move-object/from16 p1, v5

    goto :goto_5

    :cond_5
    move-object/from16 v5, p1

    move v13, v2

    goto :goto_6

    .line 236
    :goto_7
    invoke-direct {v4, v5, v2, v13}, Ljava/lang/String;-><init>([BII)V

    .line 237
    invoke-static {v15, v4}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    .line 238
    new-instance v5, Ls9/a;

    invoke-direct {v5, v4}, Ls9/a;-><init>(Ljava/lang/String;)V

    .line 239
    iget-object v6, v0, Lg3/j;->c:Ljava/lang/Object;

    check-cast v6, [Ls9/a;

    aput-object v5, v6, v1

    .line 240
    iget-object v6, v0, Lg3/j;->e:Ljava/lang/Object;

    check-cast v6, Ljava/util/HashMap;

    invoke-virtual {v6, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 241
    :cond_6
    invoke-static {}, Lu1/a;->b()V

    return-void
.end method

.method public constructor <init>(Ll2/a0;Ll2/l0;[B[Lag/h;I)V
    .locals 0

    .line 242
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 243
    iput-object p1, p0, Lg3/j;->b:Ljava/lang/Object;

    .line 244
    iput-object p2, p0, Lg3/j;->c:Ljava/lang/Object;

    .line 245
    iput-object p3, p0, Lg3/j;->d:Ljava/lang/Object;

    .line 246
    iput-object p4, p0, Lg3/j;->e:Ljava/lang/Object;

    .line 247
    iput p5, p0, Lg3/j;->a:I

    return-void
.end method

.method public constructor <init>(Lm0/q;)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 14
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 15
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v0, Lg3/j;->d:Ljava/lang/Object;

    .line 16
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    iput-object v2, v0, Lg3/j;->e:Ljava/lang/Object;

    .line 17
    iput-object v1, v0, Lg3/j;->c:Ljava/lang/Object;

    .line 18
    iget-object v2, v1, Lm0/q;->a:Landroid/app/Service;

    .line 19
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    iget-object v4, v1, Lm0/q;->k:Ljava/lang/String;

    const/16 v5, 0x1a

    if-lt v3, v5, :cond_0

    .line 20
    invoke-static {v2, v4}, Lm0/y;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object v2

    iput-object v2, v0, Lg3/j;->b:Ljava/lang/Object;

    goto :goto_0

    .line 21
    :cond_0
    new-instance v2, Landroid/app/Notification$Builder;

    iget-object v6, v1, Lm0/q;->a:Landroid/app/Service;

    invoke-direct {v2, v6}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    iput-object v2, v0, Lg3/j;->b:Ljava/lang/Object;

    .line 22
    :goto_0
    iget-object v2, v1, Lm0/q;->m:Landroid/app/Notification;

    .line 23
    iget-object v6, v0, Lg3/j;->b:Ljava/lang/Object;

    check-cast v6, Landroid/app/Notification$Builder;

    iget-wide v7, v2, Landroid/app/Notification;->when:J

    invoke-virtual {v6, v7, v8}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v6

    iget v7, v2, Landroid/app/Notification;->icon:I

    iget v8, v2, Landroid/app/Notification;->iconLevel:I

    .line 24
    invoke-virtual {v6, v7, v8}, Landroid/app/Notification$Builder;->setSmallIcon(II)Landroid/app/Notification$Builder;

    move-result-object v6

    iget-object v7, v2, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 25
    invoke-virtual {v6, v7}, Landroid/app/Notification$Builder;->setContent(Landroid/widget/RemoteViews;)Landroid/app/Notification$Builder;

    move-result-object v6

    iget-object v7, v2, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    const/4 v8, 0x0

    .line 26
    invoke-virtual {v6, v7, v8}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;Landroid/widget/RemoteViews;)Landroid/app/Notification$Builder;

    move-result-object v6

    iget-object v7, v2, Landroid/app/Notification;->vibrate:[J

    .line 27
    invoke-virtual {v6, v7}, Landroid/app/Notification$Builder;->setVibrate([J)Landroid/app/Notification$Builder;

    move-result-object v6

    iget v7, v2, Landroid/app/Notification;->ledARGB:I

    iget v9, v2, Landroid/app/Notification;->ledOnMS:I

    iget v10, v2, Landroid/app/Notification;->ledOffMS:I

    .line 28
    invoke-virtual {v6, v7, v9, v10}, Landroid/app/Notification$Builder;->setLights(III)Landroid/app/Notification$Builder;

    move-result-object v6

    iget v7, v2, Landroid/app/Notification;->flags:I

    and-int/lit8 v7, v7, 0x2

    const/4 v9, 0x0

    if-eqz v7, :cond_1

    const/4 v7, 0x1

    goto :goto_1

    :cond_1
    const/4 v7, 0x0

    .line 29
    :goto_1
    invoke-virtual {v6, v7}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v6

    iget v7, v2, Landroid/app/Notification;->flags:I

    and-int/lit8 v7, v7, 0x8

    if-eqz v7, :cond_2

    const/4 v7, 0x1

    goto :goto_2

    :cond_2
    const/4 v7, 0x0

    .line 30
    :goto_2
    invoke-virtual {v6, v7}, Landroid/app/Notification$Builder;->setOnlyAlertOnce(Z)Landroid/app/Notification$Builder;

    move-result-object v6

    iget v7, v2, Landroid/app/Notification;->flags:I

    and-int/lit8 v7, v7, 0x10

    if-eqz v7, :cond_3

    const/4 v7, 0x1

    goto :goto_3

    :cond_3
    const/4 v7, 0x0

    .line 31
    :goto_3
    invoke-virtual {v6, v7}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v6

    iget v7, v2, Landroid/app/Notification;->defaults:I

    .line 32
    invoke-virtual {v6, v7}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    move-result-object v6

    iget-object v7, v1, Lm0/q;->e:Ljava/lang/CharSequence;

    .line 33
    invoke-virtual {v6, v7}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v6

    iget-object v7, v1, Lm0/q;->f:Ljava/lang/CharSequence;

    .line 34
    invoke-virtual {v6, v7}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v6

    .line 35
    invoke-virtual {v6, v8}, Landroid/app/Notification$Builder;->setContentInfo(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v6

    .line 36
    invoke-virtual {v6, v8}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v6

    iget-object v7, v2, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;

    .line 37
    invoke-virtual {v6, v7}, Landroid/app/Notification$Builder;->setDeleteIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v6

    iget v7, v2, Landroid/app/Notification;->flags:I

    and-int/lit16 v7, v7, 0x80

    if-eqz v7, :cond_4

    const/4 v7, 0x1

    goto :goto_4

    :cond_4
    const/4 v7, 0x0

    .line 38
    :goto_4
    invoke-virtual {v6, v8, v7}, Landroid/app/Notification$Builder;->setFullScreenIntent(Landroid/app/PendingIntent;Z)Landroid/app/Notification$Builder;

    move-result-object v6

    .line 39
    invoke-virtual {v6, v9}, Landroid/app/Notification$Builder;->setNumber(I)Landroid/app/Notification$Builder;

    move-result-object v6

    .line 40
    invoke-virtual {v6, v9, v9, v9}, Landroid/app/Notification$Builder;->setProgress(IIZ)Landroid/app/Notification$Builder;

    const/16 v6, 0x17

    if-ge v3, v6, :cond_5

    .line 41
    iget-object v7, v0, Lg3/j;->b:Ljava/lang/Object;

    check-cast v7, Landroid/app/Notification$Builder;

    invoke-virtual {v7, v8}, Landroid/app/Notification$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$Builder;

    goto :goto_5

    .line 42
    :cond_5
    iget-object v7, v0, Lg3/j;->b:Ljava/lang/Object;

    check-cast v7, Landroid/app/Notification$Builder;

    invoke-static {v7, v8}, Lm0/w;->b(Landroid/app/Notification$Builder;Landroid/graphics/drawable/Icon;)Landroid/app/Notification$Builder;

    :goto_5
    const/16 v7, 0x15

    if-ge v3, v7, :cond_6

    .line 43
    iget-object v3, v0, Lg3/j;->b:Ljava/lang/Object;

    check-cast v3, Landroid/app/Notification$Builder;

    iget-object v11, v2, Landroid/app/Notification;->sound:Landroid/net/Uri;

    iget v12, v2, Landroid/app/Notification;->audioStreamType:I

    invoke-virtual {v3, v11, v12}, Landroid/app/Notification$Builder;->setSound(Landroid/net/Uri;I)Landroid/app/Notification$Builder;

    .line 44
    :cond_6
    iget-object v3, v0, Lg3/j;->b:Ljava/lang/Object;

    check-cast v3, Landroid/app/Notification$Builder;

    .line 45
    invoke-static {v3, v8}, Lm0/r;->c(Landroid/app/Notification$Builder;Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v3

    invoke-static {v3, v9}, Lm0/r;->d(Landroid/app/Notification$Builder;Z)Landroid/app/Notification$Builder;

    move-result-object v3

    iget v11, v1, Lm0/q;->g:I

    .line 46
    invoke-static {v3, v11}, Lm0/r;->b(Landroid/app/Notification$Builder;I)Landroid/app/Notification$Builder;

    .line 47
    iget-object v3, v1, Lm0/q;->b:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_6
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    const/16 v14, 0x18

    const-string v15, "android.support.allowGeneratedReplies"

    const/16 v10, 0x14

    if-eqz v11, :cond_16

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lm0/n;

    .line 48
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    iget-object v7, v0, Lg3/j;->b:Ljava/lang/Object;

    check-cast v7, Landroid/app/Notification$Builder;

    if-lt v5, v10, :cond_12

    .line 49
    invoke-virtual {v11}, Lm0/n;->a()Landroidx/core/graphics/drawable/IconCompat;

    move-result-object v10

    .line 50
    iget-object v12, v11, Lm0/n;->i:Landroid/app/PendingIntent;

    iget-object v13, v11, Lm0/n;->h:Ljava/lang/CharSequence;

    if-lt v5, v6, :cond_9

    if-eqz v10, :cond_8

    if-lt v5, v6, :cond_7

    .line 51
    invoke-static {v10, v8}, Lq0/d;->c(Landroidx/core/graphics/drawable/IconCompat;Landroid/content/Context;)Landroid/graphics/drawable/Icon;

    move-result-object v5

    goto :goto_7

    .line 52
    :cond_7
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    const-string v2, "This method is only supported on API level 23+"

    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_8
    move-object v5, v8

    .line 53
    :goto_7
    invoke-static {v5, v13, v12}, Lm0/w;->a(Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/app/Notification$Action$Builder;

    move-result-object v5

    goto :goto_9

    :cond_9
    if-eqz v10, :cond_a

    .line 54
    invoke-virtual {v10}, Landroidx/core/graphics/drawable/IconCompat;->c()I

    move-result v5

    goto :goto_8

    :cond_a
    const/4 v5, 0x0

    .line 55
    :goto_8
    invoke-static {v5, v13, v12}, Lm0/u;->e(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/app/Notification$Action$Builder;

    move-result-object v5

    .line 56
    :goto_9
    iget-object v10, v11, Lm0/n;->c:[Lm0/q0;

    if-eqz v10, :cond_c

    .line 57
    array-length v12, v10

    new-array v13, v12, [Landroid/app/RemoteInput;

    const/4 v6, 0x0

    .line 58
    :goto_a
    array-length v8, v10

    if-ge v6, v8, :cond_b

    .line 59
    aget-object v8, v10, v6

    .line 60
    invoke-static {v8}, Lm0/n0;->b(Lm0/q0;)Landroid/app/RemoteInput;

    move-result-object v8

    .line 61
    aput-object v8, v13, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_a

    :cond_b
    const/4 v6, 0x0

    :goto_b
    if-ge v6, v12, :cond_c

    .line 62
    aget-object v8, v13, v6

    .line 63
    invoke-static {v5, v8}, Lm0/u;->c(Landroid/app/Notification$Action$Builder;Landroid/app/RemoteInput;)Landroid/app/Notification$Action$Builder;

    add-int/lit8 v6, v6, 0x1

    goto :goto_b

    .line 64
    :cond_c
    iget-object v6, v11, Lm0/n;->a:Landroid/os/Bundle;

    if-eqz v6, :cond_d

    .line 65
    new-instance v8, Landroid/os/Bundle;

    invoke-direct {v8, v6}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    goto :goto_c

    .line 66
    :cond_d
    new-instance v8, Landroid/os/Bundle;

    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V

    .line 67
    :goto_c
    iget-boolean v6, v11, Lm0/n;->e:Z

    invoke-virtual {v8, v15, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 68
    sget v10, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v10, v14, :cond_e

    .line 69
    invoke-static {v5, v6}, Lm0/x;->a(Landroid/app/Notification$Action$Builder;Z)Landroid/app/Notification$Action$Builder;

    .line 70
    :cond_e
    const-string v6, "android.support.action.semanticAction"

    invoke-virtual {v8, v6, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const/16 v6, 0x1c

    if-lt v10, v6, :cond_f

    .line 71
    invoke-static {v5, v9}, Lm0/z;->b(Landroid/app/Notification$Action$Builder;I)Landroid/app/Notification$Action$Builder;

    :cond_f
    const/16 v6, 0x1d

    if-lt v10, v6, :cond_10

    .line 72
    invoke-static {v5, v9}, Lm0/a0;->c(Landroid/app/Notification$Action$Builder;Z)Landroid/app/Notification$Action$Builder;

    :cond_10
    const/16 v6, 0x1f

    if-lt v10, v6, :cond_11

    .line 73
    invoke-static {v5, v9}, Lm0/b0;->a(Landroid/app/Notification$Action$Builder;Z)Landroid/app/Notification$Action$Builder;

    .line 74
    :cond_11
    const-string v6, "android.support.action.showsUserInterface"

    iget-boolean v10, v11, Lm0/n;->f:Z

    invoke-virtual {v8, v6, v10}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 75
    invoke-static {v5, v8}, Lm0/u;->b(Landroid/app/Notification$Action$Builder;Landroid/os/Bundle;)Landroid/app/Notification$Action$Builder;

    .line 76
    invoke-static {v5}, Lm0/u;->d(Landroid/app/Notification$Action$Builder;)Landroid/app/Notification$Action;

    move-result-object v5

    invoke-static {v7, v5}, Lm0/u;->a(Landroid/app/Notification$Builder;Landroid/app/Notification$Action;)Landroid/app/Notification$Builder;

    goto :goto_e

    .line 77
    :cond_12
    invoke-virtual {v11}, Lm0/n;->a()Landroidx/core/graphics/drawable/IconCompat;

    move-result-object v5

    if-eqz v5, :cond_13

    .line 78
    invoke-virtual {v5}, Landroidx/core/graphics/drawable/IconCompat;->c()I

    move-result v5

    goto :goto_d

    :cond_13
    const/4 v5, 0x0

    .line 79
    :goto_d
    iget-object v6, v11, Lm0/n;->h:Ljava/lang/CharSequence;

    iget-object v8, v11, Lm0/n;->i:Landroid/app/PendingIntent;

    invoke-virtual {v7, v5, v6, v8}, Landroid/app/Notification$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 80
    new-instance v5, Landroid/os/Bundle;

    iget-object v6, v11, Lm0/n;->a:Landroid/os/Bundle;

    invoke-direct {v5, v6}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 81
    iget-object v6, v11, Lm0/n;->c:[Lm0/q0;

    if-eqz v6, :cond_14

    .line 82
    invoke-static {v6}, Lm0/c0;->f([Lm0/q0;)[Landroid/os/Bundle;

    move-result-object v6

    .line 83
    const-string v7, "android.support.remoteInputs"

    invoke-virtual {v5, v7, v6}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    .line 84
    :cond_14
    iget-object v6, v11, Lm0/n;->d:[Lm0/q0;

    if-eqz v6, :cond_15

    .line 85
    invoke-static {v6}, Lm0/c0;->f([Lm0/q0;)[Landroid/os/Bundle;

    move-result-object v6

    .line 86
    const-string v7, "android.support.dataRemoteInputs"

    invoke-virtual {v5, v7, v6}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    .line 87
    :cond_15
    iget-boolean v6, v11, Lm0/n;->e:Z

    invoke-virtual {v5, v15, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 88
    iget-object v6, v0, Lg3/j;->d:Ljava/lang/Object;

    check-cast v6, Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_e
    const/16 v5, 0x1a

    const/16 v6, 0x17

    const/16 v7, 0x15

    const/4 v8, 0x0

    goto/16 :goto_6

    .line 89
    :cond_16
    iget-object v3, v1, Lm0/q;->j:Landroid/os/Bundle;

    if-eqz v3, :cond_17

    .line 90
    iget-object v5, v0, Lg3/j;->e:Ljava/lang/Object;

    check-cast v5, Landroid/os/Bundle;

    invoke-virtual {v5, v3}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 91
    :cond_17
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 92
    iget-object v5, v0, Lg3/j;->b:Ljava/lang/Object;

    check-cast v5, Landroid/app/Notification$Builder;

    iget-boolean v6, v1, Lm0/q;->h:Z

    invoke-static {v5, v6}, Lm0/s;->a(Landroid/app/Notification$Builder;Z)Landroid/app/Notification$Builder;

    .line 93
    iget-object v5, v1, Lm0/q;->o:Ljava/util/ArrayList;

    iget-object v6, v1, Lm0/q;->c:Ljava/util/ArrayList;

    const/16 v7, 0x13

    if-lt v3, v7, :cond_1a

    const/16 v7, 0x15

    if-ge v3, v7, :cond_1a

    if-nez v6, :cond_18

    const/4 v7, 0x0

    goto :goto_f

    .line 94
    :cond_18
    new-instance v7, Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v8

    invoke-direct {v7, v8}, Ljava/util/ArrayList;-><init>(I)V

    .line 95
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-nez v11, :cond_19

    .line 96
    :goto_f
    invoke-static {v7, v5}, Lg3/j;->d(Ljava/util/ArrayList;Ljava/util/ArrayList;)Ljava/util/List;

    move-result-object v7

    if-eqz v7, :cond_1a

    .line 97
    check-cast v7, Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_1a

    .line 98
    iget-object v8, v0, Lg3/j;->e:Ljava/lang/Object;

    check-cast v8, Landroid/os/Bundle;

    .line 99
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v11

    new-array v11, v11, [Ljava/lang/String;

    invoke-virtual {v7, v11}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Ljava/lang/String;

    .line 100
    const-string v11, "android.people"

    invoke-virtual {v8, v11, v7}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_10

    .line 101
    :cond_19
    invoke-static {v8}, Ll2/z;->d(Ljava/util/Iterator;)Ljava/lang/ClassCastException;

    move-result-object v1

    .line 102
    throw v1

    :cond_1a
    :goto_10
    if-lt v3, v10, :cond_1b

    .line 103
    iget-object v7, v0, Lg3/j;->b:Ljava/lang/Object;

    check-cast v7, Landroid/app/Notification$Builder;

    invoke-static {v7, v9}, Lm0/u;->i(Landroid/app/Notification$Builder;Z)Landroid/app/Notification$Builder;

    .line 104
    iget-object v7, v0, Lg3/j;->b:Ljava/lang/Object;

    check-cast v7, Landroid/app/Notification$Builder;

    const/4 v8, 0x0

    invoke-static {v7, v8}, Lm0/u;->g(Landroid/app/Notification$Builder;Ljava/lang/String;)Landroid/app/Notification$Builder;

    .line 105
    iget-object v7, v0, Lg3/j;->b:Ljava/lang/Object;

    check-cast v7, Landroid/app/Notification$Builder;

    invoke-static {v7, v8}, Lm0/u;->j(Landroid/app/Notification$Builder;Ljava/lang/String;)Landroid/app/Notification$Builder;

    .line 106
    iget-object v7, v0, Lg3/j;->b:Ljava/lang/Object;

    check-cast v7, Landroid/app/Notification$Builder;

    invoke-static {v7, v9}, Lm0/u;->h(Landroid/app/Notification$Builder;Z)Landroid/app/Notification$Builder;

    .line 107
    iput v9, v0, Lg3/j;->a:I

    :cond_1b
    const/16 v7, 0x15

    if-lt v3, v7, :cond_26

    .line 108
    iget-object v7, v0, Lg3/j;->b:Ljava/lang/Object;

    check-cast v7, Landroid/app/Notification$Builder;

    iget-object v8, v1, Lm0/q;->i:Ljava/lang/String;

    invoke-static {v7, v8}, Lm0/v;->b(Landroid/app/Notification$Builder;Ljava/lang/String;)Landroid/app/Notification$Builder;

    .line 109
    iget-object v7, v0, Lg3/j;->b:Ljava/lang/Object;

    check-cast v7, Landroid/app/Notification$Builder;

    invoke-static {v7, v9}, Lm0/v;->c(Landroid/app/Notification$Builder;I)Landroid/app/Notification$Builder;

    .line 110
    iget-object v7, v0, Lg3/j;->b:Ljava/lang/Object;

    check-cast v7, Landroid/app/Notification$Builder;

    invoke-static {v7, v9}, Lm0/v;->f(Landroid/app/Notification$Builder;I)Landroid/app/Notification$Builder;

    .line 111
    iget-object v7, v0, Lg3/j;->b:Ljava/lang/Object;

    check-cast v7, Landroid/app/Notification$Builder;

    const/4 v8, 0x0

    invoke-static {v7, v8}, Lm0/v;->d(Landroid/app/Notification$Builder;Landroid/app/Notification;)Landroid/app/Notification$Builder;

    .line 112
    iget-object v7, v0, Lg3/j;->b:Ljava/lang/Object;

    check-cast v7, Landroid/app/Notification$Builder;

    iget-object v8, v2, Landroid/app/Notification;->sound:Landroid/net/Uri;

    invoke-static {v2}, Lm0/o;->g(Landroid/app/Notification;)Landroid/media/AudioAttributes;

    move-result-object v10

    invoke-static {v7, v8, v10}, Lm0/v;->e(Landroid/app/Notification$Builder;Landroid/net/Uri;Ljava/lang/Object;)Landroid/app/Notification$Builder;

    const/16 v7, 0x1c

    if-ge v3, v7, :cond_1e

    if-nez v6, :cond_1c

    const/4 v3, 0x0

    goto :goto_11

    .line 113
    :cond_1c
    new-instance v3, Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-direct {v3, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 114
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-nez v8, :cond_1d

    .line 115
    :goto_11
    invoke-static {v3, v5}, Lg3/j;->d(Ljava/util/ArrayList;Ljava/util/ArrayList;)Ljava/util/List;

    move-result-object v5

    goto :goto_12

    .line 116
    :cond_1d
    invoke-static {v7}, Ll2/z;->d(Ljava/util/Iterator;)Ljava/lang/ClassCastException;

    move-result-object v1

    .line 117
    throw v1

    :cond_1e
    :goto_12
    if-eqz v5, :cond_1f

    .line 118
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1f

    .line 119
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_13
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1f

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 120
    iget-object v7, v0, Lg3/j;->b:Ljava/lang/Object;

    check-cast v7, Landroid/app/Notification$Builder;

    invoke-static {v7, v5}, Lm0/v;->a(Landroid/app/Notification$Builder;Ljava/lang/String;)Landroid/app/Notification$Builder;

    goto :goto_13

    .line 121
    :cond_1f
    iget-object v3, v1, Lm0/q;->d:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_26

    .line 122
    iget-object v5, v1, Lm0/q;->j:Landroid/os/Bundle;

    if-nez v5, :cond_20

    .line 123
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    iput-object v5, v1, Lm0/q;->j:Landroid/os/Bundle;

    .line 124
    :cond_20
    iget-object v5, v1, Lm0/q;->j:Landroid/os/Bundle;

    .line 125
    const-string v7, "android.car.EXTENSIONS"

    invoke-virtual {v5, v7}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v5

    if-nez v5, :cond_21

    .line 126
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 127
    :cond_21
    new-instance v8, Landroid/os/Bundle;

    invoke-direct {v8, v5}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 128
    new-instance v10, Landroid/os/Bundle;

    invoke-direct {v10}, Landroid/os/Bundle;-><init>()V

    const/4 v11, 0x0

    .line 129
    :goto_14
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-ge v11, v12, :cond_24

    .line 130
    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v12

    .line 131
    invoke-virtual {v3, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lm0/n;

    .line 132
    new-instance v14, Landroid/os/Bundle;

    invoke-direct {v14}, Landroid/os/Bundle;-><init>()V

    .line 133
    invoke-virtual {v13}, Lm0/n;->a()Landroidx/core/graphics/drawable/IconCompat;

    move-result-object v16

    if-eqz v16, :cond_22

    .line 134
    invoke-virtual/range {v16 .. v16}, Landroidx/core/graphics/drawable/IconCompat;->c()I

    move-result v16

    move-object/from16 v17, v3

    move/from16 v9, v16

    goto :goto_15

    :cond_22
    move-object/from16 v17, v3

    :goto_15
    const-string v3, "icon"

    invoke-virtual {v14, v3, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 135
    const-string v3, "title"

    iget-object v9, v13, Lm0/n;->h:Ljava/lang/CharSequence;

    invoke-virtual {v14, v3, v9}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 136
    const-string v3, "actionIntent"

    iget-object v9, v13, Lm0/n;->i:Landroid/app/PendingIntent;

    invoke-virtual {v14, v3, v9}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 137
    iget-object v3, v13, Lm0/n;->a:Landroid/os/Bundle;

    if-eqz v3, :cond_23

    .line 138
    new-instance v9, Landroid/os/Bundle;

    invoke-direct {v9, v3}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    goto :goto_16

    .line 139
    :cond_23
    new-instance v9, Landroid/os/Bundle;

    invoke-direct {v9}, Landroid/os/Bundle;-><init>()V

    .line 140
    :goto_16
    iget-boolean v3, v13, Lm0/n;->e:Z

    invoke-virtual {v9, v15, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 141
    const-string v3, "extras"

    invoke-virtual {v14, v3, v9}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 142
    iget-object v3, v13, Lm0/n;->c:[Lm0/q0;

    invoke-static {v3}, Lm0/c0;->f([Lm0/q0;)[Landroid/os/Bundle;

    move-result-object v3

    const-string v9, "remoteInputs"

    invoke-virtual {v14, v9, v3}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    .line 143
    const-string v3, "showsUserInterface"

    iget-boolean v9, v13, Lm0/n;->f:Z

    invoke-virtual {v14, v3, v9}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 144
    const-string v3, "semanticAction"

    const/4 v9, 0x0

    invoke-virtual {v14, v3, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 145
    invoke-virtual {v10, v12, v14}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    add-int/lit8 v11, v11, 0x1

    move-object/from16 v3, v17

    const/4 v9, 0x0

    const/16 v14, 0x18

    goto :goto_14

    .line 146
    :cond_24
    const-string v3, "invisible_actions"

    invoke-virtual {v5, v3, v10}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 147
    invoke-virtual {v8, v3, v10}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 148
    iget-object v3, v1, Lm0/q;->j:Landroid/os/Bundle;

    if-nez v3, :cond_25

    .line 149
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    iput-object v3, v1, Lm0/q;->j:Landroid/os/Bundle;

    .line 150
    :cond_25
    iget-object v3, v1, Lm0/q;->j:Landroid/os/Bundle;

    .line 151
    invoke-virtual {v3, v7, v5}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 152
    iget-object v3, v0, Lg3/j;->e:Ljava/lang/Object;

    check-cast v3, Landroid/os/Bundle;

    invoke-virtual {v3, v7, v8}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 153
    :cond_26
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x18

    if-lt v3, v5, :cond_27

    .line 154
    iget-object v5, v0, Lg3/j;->b:Ljava/lang/Object;

    check-cast v5, Landroid/app/Notification$Builder;

    iget-object v7, v1, Lm0/q;->j:Landroid/os/Bundle;

    invoke-static {v5, v7}, Lm0/t;->a(Landroid/app/Notification$Builder;Landroid/os/Bundle;)Landroid/app/Notification$Builder;

    .line 155
    iget-object v5, v0, Lg3/j;->b:Ljava/lang/Object;

    check-cast v5, Landroid/app/Notification$Builder;

    const/4 v7, 0x0

    invoke-static {v5, v7}, Lm0/x;->e(Landroid/app/Notification$Builder;[Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    :goto_17
    const/16 v5, 0x1a

    goto :goto_18

    :cond_27
    const/4 v7, 0x0

    goto :goto_17

    :goto_18
    if-lt v3, v5, :cond_28

    .line 156
    iget-object v5, v0, Lg3/j;->b:Ljava/lang/Object;

    check-cast v5, Landroid/app/Notification$Builder;

    const/4 v8, 0x0

    invoke-static {v5, v8}, Lm0/y;->b(Landroid/app/Notification$Builder;I)Landroid/app/Notification$Builder;

    .line 157
    iget-object v5, v0, Lg3/j;->b:Ljava/lang/Object;

    check-cast v5, Landroid/app/Notification$Builder;

    invoke-static {v5, v7}, Lm0/y;->e(Landroid/app/Notification$Builder;Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 158
    iget-object v5, v0, Lg3/j;->b:Ljava/lang/Object;

    check-cast v5, Landroid/app/Notification$Builder;

    invoke-static {v5, v7}, Lm0/y;->f(Landroid/app/Notification$Builder;Ljava/lang/String;)Landroid/app/Notification$Builder;

    .line 159
    iget-object v5, v0, Lg3/j;->b:Ljava/lang/Object;

    check-cast v5, Landroid/app/Notification$Builder;

    const-wide/16 v7, 0x0

    invoke-static {v5, v7, v8}, Lm0/y;->g(Landroid/app/Notification$Builder;J)Landroid/app/Notification$Builder;

    .line 160
    iget-object v5, v0, Lg3/j;->b:Ljava/lang/Object;

    check-cast v5, Landroid/app/Notification$Builder;

    const/4 v7, 0x0

    invoke-static {v5, v7}, Lm0/y;->d(Landroid/app/Notification$Builder;I)Landroid/app/Notification$Builder;

    .line 161
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_28

    .line 162
    iget-object v4, v0, Lg3/j;->b:Ljava/lang/Object;

    check-cast v4, Landroid/app/Notification$Builder;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setSound(Landroid/net/Uri;)Landroid/app/Notification$Builder;

    move-result-object v4

    .line 163
    invoke-virtual {v4, v7}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    move-result-object v4

    .line 164
    invoke-virtual {v4, v7, v7, v7}, Landroid/app/Notification$Builder;->setLights(III)Landroid/app/Notification$Builder;

    move-result-object v4

    .line 165
    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setVibrate([J)Landroid/app/Notification$Builder;

    :cond_28
    const/16 v4, 0x1c

    if-lt v3, v4, :cond_29

    .line 166
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_2a

    :cond_29
    const/16 v4, 0x1d

    goto :goto_19

    .line 167
    :cond_2a
    invoke-static {v4}, Ll2/z;->d(Ljava/util/Iterator;)Ljava/lang/ClassCastException;

    move-result-object v1

    .line 168
    throw v1

    :goto_19
    if-lt v3, v4, :cond_2b

    .line 169
    iget-object v4, v0, Lg3/j;->b:Ljava/lang/Object;

    check-cast v4, Landroid/app/Notification$Builder;

    iget-boolean v5, v1, Lm0/q;->l:Z

    invoke-static {v4, v5}, Lm0/a0;->a(Landroid/app/Notification$Builder;Z)Landroid/app/Notification$Builder;

    .line 170
    iget-object v4, v0, Lg3/j;->b:Ljava/lang/Object;

    check-cast v4, Landroid/app/Notification$Builder;

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lm0/a0;->b(Landroid/app/Notification$Builder;Landroid/app/Notification$BubbleMetadata;)Landroid/app/Notification$Builder;

    .line 171
    :cond_2b
    iget-boolean v1, v1, Lm0/q;->n:Z

    if-eqz v1, :cond_2d

    .line 172
    iget-object v1, v0, Lg3/j;->c:Ljava/lang/Object;

    check-cast v1, Lm0/q;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x1

    .line 173
    iput v1, v0, Lg3/j;->a:I

    .line 174
    iget-object v1, v0, Lg3/j;->b:Ljava/lang/Object;

    check-cast v1, Landroid/app/Notification$Builder;

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Landroid/app/Notification$Builder;->setVibrate([J)Landroid/app/Notification$Builder;

    .line 175
    iget-object v1, v0, Lg3/j;->b:Ljava/lang/Object;

    check-cast v1, Landroid/app/Notification$Builder;

    invoke-virtual {v1, v4}, Landroid/app/Notification$Builder;->setSound(Landroid/net/Uri;)Landroid/app/Notification$Builder;

    .line 176
    iget v1, v2, Landroid/app/Notification;->defaults:I

    and-int/lit8 v1, v1, -0x4

    .line 177
    iput v1, v2, Landroid/app/Notification;->defaults:I

    .line 178
    iget-object v2, v0, Lg3/j;->b:Ljava/lang/Object;

    check-cast v2, Landroid/app/Notification$Builder;

    invoke-virtual {v2, v1}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    const/16 v1, 0x1a

    if-lt v3, v1, :cond_2d

    .line 179
    iget-object v1, v0, Lg3/j;->c:Ljava/lang/Object;

    check-cast v1, Lm0/q;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2c

    .line 180
    iget-object v1, v0, Lg3/j;->b:Ljava/lang/Object;

    check-cast v1, Landroid/app/Notification$Builder;

    const-string v2, "silent"

    invoke-static {v1, v2}, Lm0/u;->g(Landroid/app/Notification$Builder;Ljava/lang/String;)Landroid/app/Notification$Builder;

    .line 181
    :cond_2c
    iget-object v1, v0, Lg3/j;->b:Ljava/lang/Object;

    check-cast v1, Landroid/app/Notification$Builder;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lm0/y;->d(Landroid/app/Notification$Builder;I)Landroid/app/Notification$Builder;

    :cond_2d
    return-void
.end method

.method public constructor <init>(Lmf/h;)V
    .locals 2

    sget-object v0, Lef/b;->l:Ljava/util/Locale;

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x64

    .line 2
    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lg3/j;->b:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lg3/j;->a:I

    .line 4
    new-instance v1, Lff/b;

    invoke-direct {v1, v0}, Lff/b;-><init>(I)V

    .line 5
    iput-object v1, p0, Lg3/j;->c:Ljava/lang/Object;

    .line 6
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lg3/j;->d:Ljava/lang/Object;

    .line 7
    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lg3/j;->e:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ls3/b0;I)V
    .locals 2

    .line 248
    iput-object p1, p0, Lg3/j;->e:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 249
    new-instance p1, Lj3/f;

    const/4 v0, 0x5

    new-array v1, v0, [B

    .line 250
    invoke-direct {p1, v1, v0}, Lj3/f;-><init>([BI)V

    .line 251
    iput-object p1, p0, Lg3/j;->b:Ljava/lang/Object;

    .line 252
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lg3/j;->c:Ljava/lang/Object;

    .line 253
    new-instance p1, Landroid/util/SparseIntArray;

    invoke-direct {p1}, Landroid/util/SparseIntArray;-><init>()V

    iput-object p1, p0, Lg3/j;->d:Ljava/lang/Object;

    .line 254
    iput p2, p0, Lg3/j;->a:I

    return-void
.end method

.method public static b(IILjava/lang/String;)V
    .locals 3

    .line 1
    invoke-static {p1}, Landroid/opengl/GLES20;->glCreateShader(I)I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    invoke-static {p1, p2}, Landroid/opengl/GLES20;->glShaderSource(ILjava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-static {p1}, Landroid/opengl/GLES20;->glCompileShader(I)V

    .line 9
    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    filled-new-array {v0}, [I

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    const v2, 0x8b81

    .line 17
    .line 18
    .line 19
    invoke-static {p1, v2, v1, v0}, Landroid/opengl/GLES20;->glGetShaderiv(II[II)V

    .line 20
    .line 21
    .line 22
    aget v1, v1, v0

    .line 23
    .line 24
    const/4 v2, 0x1

    .line 25
    if-ne v1, v2, :cond_0

    .line 26
    .line 27
    const/4 v0, 0x1

    .line 28
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 29
    .line 30
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 31
    .line 32
    .line 33
    invoke-static {p1}, Landroid/opengl/GLES20;->glGetShaderInfoLog(I)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    const-string v2, ", source: \n"

    .line 41
    .line 42
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object p2

    .line 52
    invoke-static {p2, v0}, Lu1/a;->c(Ljava/lang/String;Z)V

    .line 53
    .line 54
    .line 55
    invoke-static {p0, p1}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 56
    .line 57
    .line 58
    invoke-static {p1}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    .line 59
    .line 60
    .line 61
    invoke-static {}, Lu1/a;->b()V

    .line 62
    .line 63
    .line 64
    return-void
.end method

.method public static d(Ljava/util/ArrayList;Ljava/util/ArrayList;)Ljava/util/List;
    .locals 3

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    return-object p1

    .line 4
    :cond_0
    if-nez p1, :cond_1

    .line 5
    .line 6
    return-object p0

    .line 7
    :cond_1
    new-instance v0, La0/f;

    .line 8
    .line 9
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    add-int/2addr v2, v1

    .line 18
    invoke-direct {v0, v2}, La0/f;-><init>(I)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, p0}, La0/f;->addAll(Ljava/util/Collection;)Z

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, p1}, La0/f;->addAll(Ljava/util/Collection;)Z

    .line 25
    .line 26
    .line 27
    new-instance p0, Ljava/util/ArrayList;

    .line 28
    .line 29
    invoke-direct {p0, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 30
    .line 31
    .line 32
    return-object p0
.end method

.method public static j(Landroid/app/Notification;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Landroid/app/Notification;->sound:Landroid/net/Uri;

    .line 3
    .line 4
    iput-object v0, p0, Landroid/app/Notification;->vibrate:[J

    .line 5
    .line 6
    iget v0, p0, Landroid/app/Notification;->defaults:I

    .line 7
    .line 8
    and-int/lit8 v0, v0, -0x4

    .line 9
    .line 10
    iput v0, p0, Landroid/app/Notification;->defaults:I

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public a(Lu1/q;)V
    .locals 31

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    invoke-virtual/range {p1 .. p1}, Lu1/q;->B()I

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    const/4 v3, 0x2

    .line 10
    if-eq v2, v3, :cond_0

    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    iget-object v2, v0, Lg3/j;->e:Ljava/lang/Object;

    .line 14
    .line 15
    check-cast v2, Ls3/b0;

    .line 16
    .line 17
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    .line 19
    .line 20
    iget-object v4, v2, Ls3/b0;->b:Ljava/util/List;

    .line 21
    .line 22
    const/4 v5, 0x0

    .line 23
    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v4

    .line 27
    check-cast v4, Lu1/d0;

    .line 28
    .line 29
    invoke-virtual/range {p1 .. p1}, Lu1/q;->B()I

    .line 30
    .line 31
    .line 32
    move-result v6

    .line 33
    and-int/lit16 v6, v6, 0x80

    .line 34
    .line 35
    if-nez v6, :cond_1

    .line 36
    .line 37
    return-void

    .line 38
    :cond_1
    const/4 v6, 0x1

    .line 39
    invoke-virtual {v1, v6}, Lu1/q;->P(I)V

    .line 40
    .line 41
    .line 42
    invoke-virtual/range {p1 .. p1}, Lu1/q;->I()I

    .line 43
    .line 44
    .line 45
    move-result v7

    .line 46
    const/4 v8, 0x3

    .line 47
    invoke-virtual {v1, v8}, Lu1/q;->P(I)V

    .line 48
    .line 49
    .line 50
    iget-object v9, v0, Lg3/j;->b:Ljava/lang/Object;

    .line 51
    .line 52
    check-cast v9, Lj3/f;

    .line 53
    .line 54
    iget-object v10, v9, Lj3/f;->b:[B

    .line 55
    .line 56
    invoke-virtual {v1, v5, v3, v10}, Lu1/q;->l(II[B)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {v9, v5}, Lj3/f;->m(I)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {v9, v8}, Lj3/f;->o(I)V

    .line 63
    .line 64
    .line 65
    const/16 v10, 0xd

    .line 66
    .line 67
    invoke-virtual {v9, v10}, Lj3/f;->g(I)I

    .line 68
    .line 69
    .line 70
    move-result v11

    .line 71
    iput v11, v2, Ls3/b0;->q:I

    .line 72
    .line 73
    iget-object v11, v9, Lj3/f;->b:[B

    .line 74
    .line 75
    invoke-virtual {v1, v5, v3, v11}, Lu1/q;->l(II[B)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {v9, v5}, Lj3/f;->m(I)V

    .line 79
    .line 80
    .line 81
    const/4 v11, 0x4

    .line 82
    invoke-virtual {v9, v11}, Lj3/f;->o(I)V

    .line 83
    .line 84
    .line 85
    const/16 v12, 0xc

    .line 86
    .line 87
    invoke-virtual {v9, v12}, Lj3/f;->g(I)I

    .line 88
    .line 89
    .line 90
    move-result v13

    .line 91
    invoke-virtual {v1, v13}, Lu1/q;->P(I)V

    .line 92
    .line 93
    .line 94
    iget-object v13, v0, Lg3/j;->c:Ljava/lang/Object;

    .line 95
    .line 96
    check-cast v13, Landroid/util/SparseArray;

    .line 97
    .line 98
    invoke-virtual {v13}, Landroid/util/SparseArray;->clear()V

    .line 99
    .line 100
    .line 101
    iget-object v14, v0, Lg3/j;->d:Ljava/lang/Object;

    .line 102
    .line 103
    check-cast v14, Landroid/util/SparseIntArray;

    .line 104
    .line 105
    invoke-virtual {v14}, Landroid/util/SparseIntArray;->clear()V

    .line 106
    .line 107
    .line 108
    invoke-virtual/range {p1 .. p1}, Lu1/q;->a()I

    .line 109
    .line 110
    .line 111
    move-result v15

    .line 112
    :goto_0
    iget-object v6, v2, Ls3/b0;->h:Landroid/util/SparseBooleanArray;

    .line 113
    .line 114
    if-lez v15, :cond_22

    .line 115
    .line 116
    iget-object v3, v9, Lj3/f;->b:[B

    .line 117
    .line 118
    const/4 v12, 0x5

    .line 119
    invoke-virtual {v1, v5, v12, v3}, Lu1/q;->l(II[B)V

    .line 120
    .line 121
    .line 122
    invoke-virtual {v9, v5}, Lj3/f;->m(I)V

    .line 123
    .line 124
    .line 125
    const/16 v3, 0x8

    .line 126
    .line 127
    invoke-virtual {v9, v3}, Lj3/f;->g(I)I

    .line 128
    .line 129
    .line 130
    move-result v3

    .line 131
    invoke-virtual {v9, v8}, Lj3/f;->o(I)V

    .line 132
    .line 133
    .line 134
    invoke-virtual {v9, v10}, Lj3/f;->g(I)I

    .line 135
    .line 136
    .line 137
    move-result v5

    .line 138
    invoke-virtual {v9, v11}, Lj3/f;->o(I)V

    .line 139
    .line 140
    .line 141
    const/16 v10, 0xc

    .line 142
    .line 143
    invoke-virtual {v9, v10}, Lj3/f;->g(I)I

    .line 144
    .line 145
    .line 146
    move-result v16

    .line 147
    iget v10, v1, Lu1/q;->b:I

    .line 148
    .line 149
    add-int v11, v10, v16

    .line 150
    .line 151
    const/16 v17, 0x0

    .line 152
    .line 153
    const/16 v18, -0x1

    .line 154
    .line 155
    move-object/from16 v23, v17

    .line 156
    .line 157
    move-object/from16 v25, v23

    .line 158
    .line 159
    const/16 v22, 0x0

    .line 160
    .line 161
    :goto_1
    iget v8, v1, Lu1/q;->b:I

    .line 162
    .line 163
    if-ge v8, v11, :cond_2

    .line 164
    .line 165
    invoke-virtual/range {p1 .. p1}, Lu1/q;->B()I

    .line 166
    .line 167
    .line 168
    move-result v8

    .line 169
    invoke-virtual/range {p1 .. p1}, Lu1/q;->B()I

    .line 170
    .line 171
    .line 172
    move-result v19

    .line 173
    iget v12, v1, Lu1/q;->b:I

    .line 174
    .line 175
    add-int v12, v12, v19

    .line 176
    .line 177
    if-le v12, v11, :cond_3

    .line 178
    .line 179
    :cond_2
    move-object/from16 v29, v4

    .line 180
    .line 181
    move/from16 v30, v7

    .line 182
    .line 183
    move-object/from16 v28, v9

    .line 184
    .line 185
    goto/16 :goto_6

    .line 186
    .line 187
    :cond_3
    const/16 v19, 0x87

    .line 188
    .line 189
    const/16 v20, 0x81

    .line 190
    .line 191
    move-object/from16 v28, v9

    .line 192
    .line 193
    const/4 v9, 0x5

    .line 194
    if-ne v8, v9, :cond_8

    .line 195
    .line 196
    invoke-virtual/range {p1 .. p1}, Lu1/q;->D()J

    .line 197
    .line 198
    .line 199
    move-result-wide v8

    .line 200
    const-wide/32 v26, 0x41432d33

    .line 201
    .line 202
    .line 203
    cmp-long v21, v8, v26

    .line 204
    .line 205
    if-nez v21, :cond_4

    .line 206
    .line 207
    const/16 v18, 0x81

    .line 208
    .line 209
    goto :goto_3

    .line 210
    :cond_4
    const-wide/32 v20, 0x45414333

    .line 211
    .line 212
    .line 213
    cmp-long v24, v8, v20

    .line 214
    .line 215
    if-nez v24, :cond_5

    .line 216
    .line 217
    const/16 v18, 0x87

    .line 218
    .line 219
    goto :goto_3

    .line 220
    :cond_5
    const-wide/32 v19, 0x41432d34

    .line 221
    .line 222
    .line 223
    cmp-long v21, v8, v19

    .line 224
    .line 225
    if-nez v21, :cond_6

    .line 226
    .line 227
    :goto_2
    const/16 v18, 0xac

    .line 228
    .line 229
    goto :goto_3

    .line 230
    :cond_6
    const-wide/32 v19, 0x48455643

    .line 231
    .line 232
    .line 233
    cmp-long v21, v8, v19

    .line 234
    .line 235
    if-nez v21, :cond_7

    .line 236
    .line 237
    const/16 v18, 0x24

    .line 238
    .line 239
    :cond_7
    :goto_3
    move-object/from16 v29, v4

    .line 240
    .line 241
    move/from16 v30, v7

    .line 242
    .line 243
    goto/16 :goto_5

    .line 244
    .line 245
    :cond_8
    const/16 v9, 0x6a

    .line 246
    .line 247
    if-ne v8, v9, :cond_9

    .line 248
    .line 249
    move-object/from16 v29, v4

    .line 250
    .line 251
    move/from16 v30, v7

    .line 252
    .line 253
    const/16 v18, 0x81

    .line 254
    .line 255
    goto/16 :goto_5

    .line 256
    .line 257
    :cond_9
    const/16 v9, 0x7a

    .line 258
    .line 259
    if-ne v8, v9, :cond_a

    .line 260
    .line 261
    move-object/from16 v29, v4

    .line 262
    .line 263
    move/from16 v30, v7

    .line 264
    .line 265
    const/16 v18, 0x87

    .line 266
    .line 267
    goto/16 :goto_5

    .line 268
    .line 269
    :cond_a
    const/16 v9, 0x7f

    .line 270
    .line 271
    if-ne v8, v9, :cond_d

    .line 272
    .line 273
    invoke-virtual/range {p1 .. p1}, Lu1/q;->B()I

    .line 274
    .line 275
    .line 276
    move-result v8

    .line 277
    const/16 v9, 0x15

    .line 278
    .line 279
    if-ne v8, v9, :cond_b

    .line 280
    .line 281
    goto :goto_2

    .line 282
    :cond_b
    const/16 v9, 0xe

    .line 283
    .line 284
    if-ne v8, v9, :cond_c

    .line 285
    .line 286
    const/16 v18, 0x88

    .line 287
    .line 288
    goto :goto_3

    .line 289
    :cond_c
    const/16 v9, 0x21

    .line 290
    .line 291
    if-ne v8, v9, :cond_7

    .line 292
    .line 293
    const/16 v18, 0x8b

    .line 294
    .line 295
    goto :goto_3

    .line 296
    :cond_d
    const/16 v9, 0x7b

    .line 297
    .line 298
    if-ne v8, v9, :cond_e

    .line 299
    .line 300
    move-object/from16 v29, v4

    .line 301
    .line 302
    move/from16 v30, v7

    .line 303
    .line 304
    const/16 v18, 0x8a

    .line 305
    .line 306
    goto :goto_5

    .line 307
    :cond_e
    const/16 v9, 0xa

    .line 308
    .line 309
    if-ne v8, v9, :cond_f

    .line 310
    .line 311
    sget-object v8, Lj$/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 312
    .line 313
    const/4 v9, 0x3

    .line 314
    invoke-virtual {v1, v8, v9}, Lu1/q;->z(Ljava/nio/charset/Charset;I)Ljava/lang/String;

    .line 315
    .line 316
    .line 317
    move-result-object v8

    .line 318
    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 319
    .line 320
    .line 321
    move-result-object v25

    .line 322
    invoke-virtual/range {p1 .. p1}, Lu1/q;->B()I

    .line 323
    .line 324
    .line 325
    move-result v8

    .line 326
    move-object/from16 v29, v4

    .line 327
    .line 328
    move/from16 v30, v7

    .line 329
    .line 330
    move/from16 v22, v8

    .line 331
    .line 332
    goto :goto_5

    .line 333
    :cond_f
    const/16 v9, 0x59

    .line 334
    .line 335
    if-ne v8, v9, :cond_11

    .line 336
    .line 337
    new-instance v8, Ljava/util/ArrayList;

    .line 338
    .line 339
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 340
    .line 341
    .line 342
    :goto_4
    iget v9, v1, Lu1/q;->b:I

    .line 343
    .line 344
    if-ge v9, v12, :cond_10

    .line 345
    .line 346
    sget-object v9, Lj$/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 347
    .line 348
    const/4 v0, 0x3

    .line 349
    invoke-virtual {v1, v9, v0}, Lu1/q;->z(Ljava/nio/charset/Charset;I)Ljava/lang/String;

    .line 350
    .line 351
    .line 352
    move-result-object v9

    .line 353
    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 354
    .line 355
    .line 356
    move-result-object v0

    .line 357
    invoke-virtual/range {p1 .. p1}, Lu1/q;->B()I

    .line 358
    .line 359
    .line 360
    move-object/from16 v29, v4

    .line 361
    .line 362
    const/4 v9, 0x4

    .line 363
    new-array v4, v9, [B

    .line 364
    .line 365
    move/from16 v30, v7

    .line 366
    .line 367
    const/4 v7, 0x0

    .line 368
    invoke-virtual {v1, v7, v9, v4}, Lu1/q;->l(II[B)V

    .line 369
    .line 370
    .line 371
    new-instance v7, Ls3/c0;

    .line 372
    .line 373
    invoke-direct {v7, v0, v4}, Ls3/c0;-><init>(Ljava/lang/String;[B)V

    .line 374
    .line 375
    .line 376
    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 377
    .line 378
    .line 379
    move-object/from16 v0, p0

    .line 380
    .line 381
    move-object/from16 v4, v29

    .line 382
    .line 383
    move/from16 v7, v30

    .line 384
    .line 385
    goto :goto_4

    .line 386
    :cond_10
    move-object/from16 v29, v4

    .line 387
    .line 388
    move/from16 v30, v7

    .line 389
    .line 390
    move-object/from16 v23, v8

    .line 391
    .line 392
    const/16 v18, 0x59

    .line 393
    .line 394
    goto :goto_5

    .line 395
    :cond_11
    move-object/from16 v29, v4

    .line 396
    .line 397
    move/from16 v30, v7

    .line 398
    .line 399
    const/16 v0, 0x6f

    .line 400
    .line 401
    if-ne v8, v0, :cond_12

    .line 402
    .line 403
    const/16 v18, 0x101

    .line 404
    .line 405
    :cond_12
    :goto_5
    iget v0, v1, Lu1/q;->b:I

    .line 406
    .line 407
    sub-int/2addr v12, v0

    .line 408
    invoke-virtual {v1, v12}, Lu1/q;->P(I)V

    .line 409
    .line 410
    .line 411
    move-object/from16 v0, p0

    .line 412
    .line 413
    move-object/from16 v9, v28

    .line 414
    .line 415
    move-object/from16 v4, v29

    .line 416
    .line 417
    move/from16 v7, v30

    .line 418
    .line 419
    const/4 v12, 0x5

    .line 420
    goto/16 :goto_1

    .line 421
    .line 422
    :goto_6
    invoke-virtual {v1, v11}, Lu1/q;->O(I)V

    .line 423
    .line 424
    .line 425
    new-instance v0, Landroidx/room/s;

    .line 426
    .line 427
    iget-object v4, v1, Lu1/q;->a:[B

    .line 428
    .line 429
    invoke-static {v4, v10, v11}, Ljava/util/Arrays;->copyOfRange([BII)[B

    .line 430
    .line 431
    .line 432
    move-result-object v24

    .line 433
    move-object/from16 v19, v0

    .line 434
    .line 435
    move/from16 v20, v18

    .line 436
    .line 437
    move-object/from16 v21, v25

    .line 438
    .line 439
    invoke-direct/range {v19 .. v24}, Landroidx/room/s;-><init>(ILjava/lang/String;ILjava/util/ArrayList;[B)V

    .line 440
    .line 441
    .line 442
    const/4 v4, 0x6

    .line 443
    if-eq v3, v4, :cond_13

    .line 444
    .line 445
    const/4 v4, 0x5

    .line 446
    if-ne v3, v4, :cond_14

    .line 447
    .line 448
    :cond_13
    move/from16 v3, v18

    .line 449
    .line 450
    :cond_14
    add-int/lit8 v16, v16, 0x5

    .line 451
    .line 452
    sub-int v15, v15, v16

    .line 453
    .line 454
    invoke-virtual {v6, v5}, Landroid/util/SparseBooleanArray;->get(I)Z

    .line 455
    .line 456
    .line 457
    move-result v4

    .line 458
    if-eqz v4, :cond_15

    .line 459
    .line 460
    const/4 v7, 0x2

    .line 461
    const/4 v8, 0x3

    .line 462
    const/4 v9, 0x4

    .line 463
    goto/16 :goto_b

    .line 464
    .line 465
    :cond_15
    iget-object v4, v2, Ls3/b0;->e:Ll5/y;

    .line 466
    .line 467
    const-string v6, "video/mp2t"

    .line 468
    .line 469
    const/4 v7, 0x2

    .line 470
    const/4 v8, 0x3

    .line 471
    if-eq v3, v7, :cond_21

    .line 472
    .line 473
    if-eq v3, v8, :cond_20

    .line 474
    .line 475
    const/4 v9, 0x4

    .line 476
    if-eq v3, v9, :cond_1f

    .line 477
    .line 478
    const/16 v10, 0x15

    .line 479
    .line 480
    if-eq v3, v10, :cond_1e

    .line 481
    .line 482
    const/16 v10, 0x1b

    .line 483
    .line 484
    if-eq v3, v10, :cond_1d

    .line 485
    .line 486
    const/16 v10, 0x24

    .line 487
    .line 488
    if-eq v3, v10, :cond_1c

    .line 489
    .line 490
    const/16 v10, 0x2d

    .line 491
    .line 492
    if-eq v3, v10, :cond_1b

    .line 493
    .line 494
    const/16 v10, 0x59

    .line 495
    .line 496
    if-eq v3, v10, :cond_1a

    .line 497
    .line 498
    const/16 v10, 0xac

    .line 499
    .line 500
    if-eq v3, v10, :cond_19

    .line 501
    .line 502
    const/16 v10, 0x101

    .line 503
    .line 504
    if-eq v3, v10, :cond_18

    .line 505
    .line 506
    const/16 v10, 0x8a

    .line 507
    .line 508
    if-eq v3, v10, :cond_16

    .line 509
    .line 510
    const/16 v10, 0x8b

    .line 511
    .line 512
    if-eq v3, v10, :cond_17

    .line 513
    .line 514
    packed-switch v3, :pswitch_data_0

    .line 515
    .line 516
    .line 517
    packed-switch v3, :pswitch_data_1

    .line 518
    .line 519
    .line 520
    packed-switch v3, :pswitch_data_2

    .line 521
    .line 522
    .line 523
    :pswitch_0
    move-object/from16 v3, v17

    .line 524
    .line 525
    goto/16 :goto_a

    .line 526
    .line 527
    :cond_16
    :pswitch_1
    move-object/from16 v11, v25

    .line 528
    .line 529
    goto/16 :goto_8

    .line 530
    .line 531
    :pswitch_2
    new-instance v0, Ls3/z;

    .line 532
    .line 533
    new-instance v3, Lv3/f;

    .line 534
    .line 535
    const-string v4, "application/x-scte35"

    .line 536
    .line 537
    invoke-direct {v3, v4}, Lv3/f;-><init>(Ljava/lang/String;)V

    .line 538
    .line 539
    .line 540
    invoke-direct {v0, v3}, Ls3/z;-><init>(Ls3/y;)V

    .line 541
    .line 542
    .line 543
    :goto_7
    move-object v3, v0

    .line 544
    goto/16 :goto_a

    .line 545
    .line 546
    :pswitch_3
    new-instance v3, Ls3/u;

    .line 547
    .line 548
    new-instance v4, Ls3/a;

    .line 549
    .line 550
    invoke-virtual {v0}, Landroidx/room/s;->l()I

    .line 551
    .line 552
    .line 553
    move-result v0

    .line 554
    const/4 v10, 0x0

    .line 555
    move-object/from16 v11, v25

    .line 556
    .line 557
    invoke-direct {v4, v11, v0, v6, v10}, Ls3/a;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    .line 558
    .line 559
    .line 560
    invoke-direct {v3, v4}, Ls3/u;-><init>(Ls3/f;)V

    .line 561
    .line 562
    .line 563
    goto/16 :goto_a

    .line 564
    .line 565
    :pswitch_4
    move-object/from16 v11, v25

    .line 566
    .line 567
    new-instance v3, Ls3/u;

    .line 568
    .line 569
    new-instance v4, Ls3/q;

    .line 570
    .line 571
    invoke-virtual {v0}, Landroidx/room/s;->l()I

    .line 572
    .line 573
    .line 574
    move-result v0

    .line 575
    invoke-direct {v4, v11, v0}, Ls3/q;-><init>(Ljava/lang/String;I)V

    .line 576
    .line 577
    .line 578
    invoke-direct {v3, v4}, Ls3/u;-><init>(Ls3/f;)V

    .line 579
    .line 580
    .line 581
    goto/16 :goto_a

    .line 582
    .line 583
    :pswitch_5
    new-instance v3, Ls3/u;

    .line 584
    .line 585
    new-instance v6, Ls3/k;

    .line 586
    .line 587
    new-instance v10, Ls3/a0;

    .line 588
    .line 589
    invoke-virtual {v4, v0}, Ll5/y;->B(Landroidx/room/s;)Ljava/util/List;

    .line 590
    .line 591
    .line 592
    move-result-object v0

    .line 593
    const/4 v4, 0x1

    .line 594
    invoke-direct {v10, v0, v4}, Ls3/a0;-><init>(Ljava/util/List;I)V

    .line 595
    .line 596
    .line 597
    invoke-direct {v6, v10}, Ls3/k;-><init>(Ls3/a0;)V

    .line 598
    .line 599
    .line 600
    invoke-direct {v3, v6}, Ls3/u;-><init>(Ls3/f;)V

    .line 601
    .line 602
    .line 603
    goto/16 :goto_a

    .line 604
    .line 605
    :pswitch_6
    move-object/from16 v11, v25

    .line 606
    .line 607
    new-instance v3, Ls3/u;

    .line 608
    .line 609
    new-instance v4, Ls3/c;

    .line 610
    .line 611
    invoke-virtual {v0}, Landroidx/room/s;->l()I

    .line 612
    .line 613
    .line 614
    move-result v0

    .line 615
    const/4 v10, 0x0

    .line 616
    invoke-direct {v4, v11, v0, v6, v10}, Ls3/c;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    .line 617
    .line 618
    .line 619
    invoke-direct {v3, v4}, Ls3/u;-><init>(Ls3/f;)V

    .line 620
    .line 621
    .line 622
    goto/16 :goto_a

    .line 623
    .line 624
    :cond_17
    move-object/from16 v11, v25

    .line 625
    .line 626
    new-instance v3, Ls3/u;

    .line 627
    .line 628
    new-instance v4, Ls3/d;

    .line 629
    .line 630
    invoke-virtual {v0}, Landroidx/room/s;->l()I

    .line 631
    .line 632
    .line 633
    move-result v0

    .line 634
    const/16 v6, 0x1520

    .line 635
    .line 636
    invoke-direct {v4, v11, v0, v6}, Ls3/d;-><init>(Ljava/lang/String;II)V

    .line 637
    .line 638
    .line 639
    invoke-direct {v3, v4}, Ls3/u;-><init>(Ls3/f;)V

    .line 640
    .line 641
    .line 642
    goto/16 :goto_a

    .line 643
    .line 644
    :goto_8
    new-instance v3, Ls3/u;

    .line 645
    .line 646
    new-instance v4, Ls3/d;

    .line 647
    .line 648
    invoke-virtual {v0}, Landroidx/room/s;->l()I

    .line 649
    .line 650
    .line 651
    move-result v0

    .line 652
    const/16 v6, 0x1000

    .line 653
    .line 654
    invoke-direct {v4, v11, v0, v6}, Ls3/d;-><init>(Ljava/lang/String;II)V

    .line 655
    .line 656
    .line 657
    invoke-direct {v3, v4}, Ls3/u;-><init>(Ls3/f;)V

    .line 658
    .line 659
    .line 660
    goto/16 :goto_a

    .line 661
    .line 662
    :cond_18
    new-instance v0, Ls3/z;

    .line 663
    .line 664
    new-instance v3, Lv3/f;

    .line 665
    .line 666
    const-string v4, "application/vnd.dvb.ait"

    .line 667
    .line 668
    invoke-direct {v3, v4}, Lv3/f;-><init>(Ljava/lang/String;)V

    .line 669
    .line 670
    .line 671
    invoke-direct {v0, v3}, Ls3/z;-><init>(Ls3/y;)V

    .line 672
    .line 673
    .line 674
    goto/16 :goto_7

    .line 675
    .line 676
    :cond_19
    move-object/from16 v11, v25

    .line 677
    .line 678
    new-instance v3, Ls3/u;

    .line 679
    .line 680
    new-instance v4, Ls3/a;

    .line 681
    .line 682
    invoke-virtual {v0}, Landroidx/room/s;->l()I

    .line 683
    .line 684
    .line 685
    move-result v0

    .line 686
    const/4 v10, 0x1

    .line 687
    invoke-direct {v4, v11, v0, v6, v10}, Ls3/a;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    .line 688
    .line 689
    .line 690
    invoke-direct {v3, v4}, Ls3/u;-><init>(Ls3/f;)V

    .line 691
    .line 692
    .line 693
    goto/16 :goto_a

    .line 694
    .line 695
    :cond_1a
    new-instance v3, Ls3/u;

    .line 696
    .line 697
    new-instance v4, Ls3/e;

    .line 698
    .line 699
    iget-object v0, v0, Landroidx/room/s;->c:Ljava/lang/Object;

    .line 700
    .line 701
    check-cast v0, Ljava/util/List;

    .line 702
    .line 703
    invoke-direct {v4, v0}, Ls3/e;-><init>(Ljava/util/List;)V

    .line 704
    .line 705
    .line 706
    invoke-direct {v3, v4}, Ls3/u;-><init>(Ls3/f;)V

    .line 707
    .line 708
    .line 709
    goto :goto_a

    .line 710
    :cond_1b
    new-instance v0, Ls3/u;

    .line 711
    .line 712
    new-instance v3, Ls3/s;

    .line 713
    .line 714
    invoke-direct {v3}, Ls3/s;-><init>()V

    .line 715
    .line 716
    .line 717
    invoke-direct {v0, v3}, Ls3/u;-><init>(Ls3/f;)V

    .line 718
    .line 719
    .line 720
    goto/16 :goto_7

    .line 721
    .line 722
    :cond_1c
    new-instance v3, Ls3/u;

    .line 723
    .line 724
    new-instance v6, Ls3/p;

    .line 725
    .line 726
    new-instance v10, Ls3/a0;

    .line 727
    .line 728
    invoke-virtual {v4, v0}, Ll5/y;->B(Landroidx/room/s;)Ljava/util/List;

    .line 729
    .line 730
    .line 731
    move-result-object v0

    .line 732
    const/4 v4, 0x0

    .line 733
    invoke-direct {v10, v0, v4}, Ls3/a0;-><init>(Ljava/util/List;I)V

    .line 734
    .line 735
    .line 736
    invoke-direct {v6, v10}, Ls3/p;-><init>(Ls3/a0;)V

    .line 737
    .line 738
    .line 739
    invoke-direct {v3, v6}, Ls3/u;-><init>(Ls3/f;)V

    .line 740
    .line 741
    .line 742
    goto :goto_a

    .line 743
    :cond_1d
    new-instance v3, Ls3/u;

    .line 744
    .line 745
    new-instance v6, Ls3/n;

    .line 746
    .line 747
    new-instance v10, Ls3/a0;

    .line 748
    .line 749
    invoke-virtual {v4, v0}, Ll5/y;->B(Landroidx/room/s;)Ljava/util/List;

    .line 750
    .line 751
    .line 752
    move-result-object v0

    .line 753
    const/4 v4, 0x0

    .line 754
    invoke-direct {v10, v0, v4}, Ls3/a0;-><init>(Ljava/util/List;I)V

    .line 755
    .line 756
    .line 757
    const/4 v0, 0x0

    .line 758
    invoke-direct {v6, v10, v0, v0}, Ls3/n;-><init>(Ls3/a0;ZZ)V

    .line 759
    .line 760
    .line 761
    invoke-direct {v3, v6}, Ls3/u;-><init>(Ls3/f;)V

    .line 762
    .line 763
    .line 764
    goto :goto_a

    .line 765
    :cond_1e
    new-instance v0, Ls3/u;

    .line 766
    .line 767
    new-instance v3, Ls3/e;

    .line 768
    .line 769
    invoke-direct {v3}, Ls3/e;-><init>()V

    .line 770
    .line 771
    .line 772
    invoke-direct {v0, v3}, Ls3/u;-><init>(Ls3/f;)V

    .line 773
    .line 774
    .line 775
    goto/16 :goto_7

    .line 776
    .line 777
    :cond_1f
    move-object/from16 v11, v25

    .line 778
    .line 779
    goto :goto_9

    .line 780
    :cond_20
    move-object/from16 v11, v25

    .line 781
    .line 782
    const/4 v9, 0x4

    .line 783
    :goto_9
    new-instance v3, Ls3/u;

    .line 784
    .line 785
    new-instance v4, Ls3/r;

    .line 786
    .line 787
    invoke-virtual {v0}, Landroidx/room/s;->l()I

    .line 788
    .line 789
    .line 790
    move-result v0

    .line 791
    invoke-direct {v4, v11, v0, v6}, Ls3/r;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 792
    .line 793
    .line 794
    invoke-direct {v3, v4}, Ls3/u;-><init>(Ls3/f;)V

    .line 795
    .line 796
    .line 797
    goto :goto_a

    .line 798
    :cond_21
    const/4 v9, 0x4

    .line 799
    :pswitch_7
    new-instance v3, Ls3/u;

    .line 800
    .line 801
    new-instance v10, Ls3/h;

    .line 802
    .line 803
    new-instance v11, Ls3/a0;

    .line 804
    .line 805
    invoke-virtual {v4, v0}, Ll5/y;->B(Landroidx/room/s;)Ljava/util/List;

    .line 806
    .line 807
    .line 808
    move-result-object v0

    .line 809
    const/4 v4, 0x1

    .line 810
    invoke-direct {v11, v0, v4}, Ls3/a0;-><init>(Ljava/util/List;I)V

    .line 811
    .line 812
    .line 813
    invoke-direct {v10, v11, v6}, Ls3/h;-><init>(Ls3/a0;Ljava/lang/String;)V

    .line 814
    .line 815
    .line 816
    invoke-direct {v3, v10}, Ls3/u;-><init>(Ls3/f;)V

    .line 817
    .line 818
    .line 819
    :goto_a
    invoke-virtual {v14, v5, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 820
    .line 821
    .line 822
    invoke-virtual {v13, v5, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 823
    .line 824
    .line 825
    :goto_b
    move-object/from16 v0, p0

    .line 826
    .line 827
    move-object/from16 v9, v28

    .line 828
    .line 829
    move-object/from16 v4, v29

    .line 830
    .line 831
    move/from16 v7, v30

    .line 832
    .line 833
    const/4 v3, 0x2

    .line 834
    const/4 v5, 0x0

    .line 835
    const/16 v10, 0xd

    .line 836
    .line 837
    const/4 v11, 0x4

    .line 838
    const/16 v12, 0xc

    .line 839
    .line 840
    goto/16 :goto_0

    .line 841
    .line 842
    :cond_22
    move-object/from16 v29, v4

    .line 843
    .line 844
    move/from16 v30, v7

    .line 845
    .line 846
    invoke-virtual {v14}, Landroid/util/SparseIntArray;->size()I

    .line 847
    .line 848
    .line 849
    move-result v0

    .line 850
    const/4 v7, 0x0

    .line 851
    :goto_c
    iget-object v1, v2, Ls3/b0;->g:Landroid/util/SparseArray;

    .line 852
    .line 853
    if-ge v7, v0, :cond_24

    .line 854
    .line 855
    invoke-virtual {v14, v7}, Landroid/util/SparseIntArray;->keyAt(I)I

    .line 856
    .line 857
    .line 858
    move-result v3

    .line 859
    invoke-virtual {v14, v7}, Landroid/util/SparseIntArray;->valueAt(I)I

    .line 860
    .line 861
    .line 862
    move-result v4

    .line 863
    const/4 v5, 0x1

    .line 864
    invoke-virtual {v6, v3, v5}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 865
    .line 866
    .line 867
    iget-object v8, v2, Ls3/b0;->i:Landroid/util/SparseBooleanArray;

    .line 868
    .line 869
    invoke-virtual {v8, v4, v5}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 870
    .line 871
    .line 872
    invoke-virtual {v13, v7}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 873
    .line 874
    .line 875
    move-result-object v5

    .line 876
    check-cast v5, Ls3/e0;

    .line 877
    .line 878
    if-eqz v5, :cond_23

    .line 879
    .line 880
    iget-object v8, v2, Ls3/b0;->l:Ll2/q;

    .line 881
    .line 882
    new-instance v9, Ls3/d0;

    .line 883
    .line 884
    const/16 v10, 0x2000

    .line 885
    .line 886
    move/from16 v11, v30

    .line 887
    .line 888
    invoke-direct {v9, v11, v3, v10}, Ls3/d0;-><init>(III)V

    .line 889
    .line 890
    .line 891
    move-object/from16 v3, v29

    .line 892
    .line 893
    invoke-interface {v5, v3, v8, v9}, Ls3/e0;->c(Lu1/d0;Ll2/q;Ls3/d0;)V

    .line 894
    .line 895
    .line 896
    invoke-virtual {v1, v4, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 897
    .line 898
    .line 899
    goto :goto_d

    .line 900
    :cond_23
    move-object/from16 v3, v29

    .line 901
    .line 902
    move/from16 v11, v30

    .line 903
    .line 904
    :goto_d
    add-int/lit8 v7, v7, 0x1

    .line 905
    .line 906
    move-object/from16 v29, v3

    .line 907
    .line 908
    move/from16 v30, v11

    .line 909
    .line 910
    goto :goto_c

    .line 911
    :cond_24
    move-object/from16 v4, p0

    .line 912
    .line 913
    iget v0, v4, Lg3/j;->a:I

    .line 914
    .line 915
    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->remove(I)V

    .line 916
    .line 917
    .line 918
    const/4 v0, 0x0

    .line 919
    iput v0, v2, Ls3/b0;->m:I

    .line 920
    .line 921
    iget-object v0, v2, Ls3/b0;->l:Ll2/q;

    .line 922
    .line 923
    invoke-interface {v0}, Ll2/q;->q()V

    .line 924
    .line 925
    .line 926
    const/4 v0, 0x1

    .line 927
    iput-boolean v0, v2, Ls3/b0;->n:Z

    .line 928
    .line 929
    return-void

    .line 930
    nop

    .line 931
    :pswitch_data_0
    .packed-switch 0xf
        :pswitch_6
        :pswitch_5
        :pswitch_4
    .end packed-switch

    .line 932
    .line 933
    .line 934
    .line 935
    .line 936
    .line 937
    .line 938
    .line 939
    .line 940
    .line 941
    :pswitch_data_1
    .packed-switch 0x80
        :pswitch_7
        :pswitch_3
        :pswitch_0
    .end packed-switch

    .line 942
    .line 943
    .line 944
    .line 945
    .line 946
    .line 947
    .line 948
    .line 949
    .line 950
    .line 951
    :pswitch_data_2
    .packed-switch 0x86
        :pswitch_2
        :pswitch_3
        :pswitch_1
    .end packed-switch
.end method

.method public c(Lu1/d0;Ll2/q;Ls3/d0;)V
    .locals 0

    .line 1
    return-void
.end method

.method public e()V
    .locals 1

    .line 1
    iget-object v0, p0, Lg3/j;->c:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Ls4/e;

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lg3/j;->b:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast v0, La2/w0;

    .line 10
    .line 11
    invoke-virtual {v0}, La2/w0;->E()V

    .line 12
    .line 13
    .line 14
    iget-object v0, v0, La2/w0;->d:Ljava/lang/Object;

    .line 15
    .line 16
    check-cast v0, Ls4/e;

    .line 17
    .line 18
    iput-object v0, p0, Lg3/j;->c:Ljava/lang/Object;

    .line 19
    .line 20
    :cond_0
    return-void
.end method

.method public f(Lba/h;)V
    .locals 0

    .line 1
    iget p1, p0, Lg3/j;->a:I

    .line 2
    .line 3
    add-int/lit8 p1, p1, -0x1

    .line 4
    .line 5
    iput p1, p0, Lg3/j;->a:I

    .line 6
    .line 7
    return-void
.end method

.method public g(Lba/h;)V
    .locals 0

    .line 1
    return-void
.end method

.method public h(Ljava/lang/String;)I
    .locals 1

    .line 1
    iget v0, p0, Lg3/j;->a:I

    .line 2
    .line 3
    invoke-static {v0, p1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    invoke-static {p1}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 8
    .line 9
    .line 10
    invoke-static {}, Lu1/a;->b()V

    .line 11
    .line 12
    .line 13
    return p1
.end method

.method public i(Lba/h;)V
    .locals 0

    .line 1
    return-void
.end method

.method public m(Lv3/f;)V
    .locals 14

    .line 1
    const/4 v0, 0x2

    .line 2
    const/4 v1, 0x0

    .line 3
    const/4 v2, 0x1

    .line 4
    iget-object v3, p1, Lv3/f;->d:Ljava/lang/Object;

    .line 5
    .line 6
    check-cast v3, Ll5/y;

    .line 7
    .line 8
    iget-object v4, p1, Lv3/f;->c:Ljava/lang/Object;

    .line 9
    .line 10
    check-cast v4, Ljava/lang/String;

    .line 11
    .line 12
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    iget-object v5, p0, Lg3/j;->c:Ljava/lang/Object;

    .line 16
    .line 17
    check-cast v5, Lff/b;

    .line 18
    .line 19
    const-wide v6, 0xffffffffL

    .line 20
    .line 21
    .line 22
    .line 23
    .line 24
    const/4 v8, 0x0

    .line 25
    const-string v9, "icon"

    .line 26
    .line 27
    const-string v10, "label"

    .line 28
    .line 29
    const-string v11, "name"

    .line 30
    .line 31
    const/4 v12, -0x1

    .line 32
    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    .line 33
    .line 34
    .line 35
    move-result v13

    .line 36
    sparse-switch v13, :sswitch_data_0

    .line 37
    .line 38
    .line 39
    goto :goto_0

    .line 40
    :sswitch_0
    const-string v13, "uses-feature"

    .line 41
    .line 42
    invoke-virtual {v4, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 43
    .line 44
    .line 45
    move-result v4

    .line 46
    if-nez v4, :cond_0

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_0
    const/4 v12, 0x6

    .line 50
    goto :goto_0

    .line 51
    :sswitch_1
    const-string v13, "application"

    .line 52
    .line 53
    invoke-virtual {v4, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 54
    .line 55
    .line 56
    move-result v4

    .line 57
    if-nez v4, :cond_1

    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_1
    const/4 v12, 0x5

    .line 61
    goto :goto_0

    .line 62
    :sswitch_2
    const-string v13, "supports-screens"

    .line 63
    .line 64
    invoke-virtual {v4, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 65
    .line 66
    .line 67
    move-result v4

    .line 68
    if-nez v4, :cond_2

    .line 69
    .line 70
    goto :goto_0

    .line 71
    :cond_2
    const/4 v12, 0x4

    .line 72
    goto :goto_0

    .line 73
    :sswitch_3
    const-string v13, "uses-permission"

    .line 74
    .line 75
    invoke-virtual {v4, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 76
    .line 77
    .line 78
    move-result v4

    .line 79
    if-nez v4, :cond_3

    .line 80
    .line 81
    goto :goto_0

    .line 82
    :cond_3
    const/4 v12, 0x3

    .line 83
    goto :goto_0

    .line 84
    :sswitch_4
    const-string v13, "manifest"

    .line 85
    .line 86
    invoke-virtual {v4, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 87
    .line 88
    .line 89
    move-result v4

    .line 90
    if-nez v4, :cond_4

    .line 91
    .line 92
    goto :goto_0

    .line 93
    :cond_4
    const/4 v12, 0x2

    .line 94
    goto :goto_0

    .line 95
    :sswitch_5
    const-string v13, "uses-sdk"

    .line 96
    .line 97
    invoke-virtual {v4, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 98
    .line 99
    .line 100
    move-result v4

    .line 101
    if-nez v4, :cond_5

    .line 102
    .line 103
    goto :goto_0

    .line 104
    :cond_5
    const/4 v12, 0x1

    .line 105
    goto :goto_0

    .line 106
    :sswitch_6
    const-string v13, "permission"

    .line 107
    .line 108
    invoke-virtual {v4, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 109
    .line 110
    .line 111
    move-result v4

    .line 112
    if-nez v4, :cond_6

    .line 113
    .line 114
    goto :goto_0

    .line 115
    :cond_6
    const/4 v12, 0x0

    .line 116
    :goto_0
    packed-switch v12, :pswitch_data_0

    .line 117
    .line 118
    .line 119
    goto/16 :goto_5

    .line 120
    .line 121
    :pswitch_0
    invoke-virtual {v3, v11}, Ll5/y;->F(Ljava/lang/String;)Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object v1

    .line 125
    const-string v4, "required"

    .line 126
    .line 127
    invoke-virtual {v3, v4}, Ll5/y;->A(Ljava/lang/String;)Z

    .line 128
    .line 129
    .line 130
    if-eqz v1, :cond_7

    .line 131
    .line 132
    new-instance v0, Lbd/c;

    .line 133
    .line 134
    invoke-direct {v0, v1, v2}, Lbd/c;-><init>(Ljava/lang/String;I)V

    .line 135
    .line 136
    .line 137
    iget-object v1, v5, Lff/b;->k:Ljava/lang/Object;

    .line 138
    .line 139
    check-cast v1, Ljava/util/ArrayList;

    .line 140
    .line 141
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 142
    .line 143
    .line 144
    goto/16 :goto_5

    .line 145
    .line 146
    :cond_7
    const-string v1, "glEsVersion"

    .line 147
    .line 148
    invoke-virtual {v3, v1}, Ll5/y;->F(Ljava/lang/String;)Ljava/lang/String;

    .line 149
    .line 150
    .line 151
    move-result-object v1

    .line 152
    if-nez v1, :cond_8

    .line 153
    .line 154
    goto :goto_1

    .line 155
    :cond_8
    const-string v3, "0x"

    .line 156
    .line 157
    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 158
    .line 159
    .line 160
    move-result v3

    .line 161
    if-eqz v3, :cond_9

    .line 162
    .line 163
    invoke-virtual {v1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 164
    .line 165
    .line 166
    move-result-object v0

    .line 167
    const/16 v1, 0x10

    .line 168
    .line 169
    invoke-static {v0, v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;I)Ljava/lang/Integer;

    .line 170
    .line 171
    .line 172
    move-result-object v8

    .line 173
    goto :goto_1

    .line 174
    :cond_9
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    .line 175
    .line 176
    .line 177
    move-result-object v8

    .line 178
    :goto_1
    if-eqz v8, :cond_15

    .line 179
    .line 180
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 181
    .line 182
    .line 183
    goto/16 :goto_5

    .line 184
    .line 185
    :pswitch_1
    invoke-virtual {v3, v10}, Ll5/y;->F(Ljava/lang/String;)Ljava/lang/String;

    .line 186
    .line 187
    .line 188
    move-result-object v0

    .line 189
    if-eqz v0, :cond_a

    .line 190
    .line 191
    iput-object v0, v5, Lff/b;->b:Ljava/lang/Object;

    .line 192
    .line 193
    :cond_a
    iget-object v0, v3, Ll5/y;->b:Ljava/lang/Object;

    .line 194
    .line 195
    check-cast v0, [Lkf/b;

    .line 196
    .line 197
    array-length v3, v0

    .line 198
    const/4 v4, 0x0

    .line 199
    :goto_2
    if-ge v4, v3, :cond_c

    .line 200
    .line 201
    aget-object v10, v0, v4

    .line 202
    .line 203
    iget-object v11, v10, Lkf/b;->c:Ljava/lang/Object;

    .line 204
    .line 205
    check-cast v11, Ljava/lang/String;

    .line 206
    .line 207
    invoke-virtual {v11, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 208
    .line 209
    .line 210
    move-result v11

    .line 211
    if-eqz v11, :cond_b

    .line 212
    .line 213
    move-object v8, v10

    .line 214
    goto :goto_3

    .line 215
    :cond_b
    add-int/2addr v4, v2

    .line 216
    goto :goto_2

    .line 217
    :cond_c
    :goto_3
    if-eqz v8, :cond_15

    .line 218
    .line 219
    iget-object v0, v8, Lkf/b;->e:Ljava/lang/Object;

    .line 220
    .line 221
    check-cast v0, Lab/a;

    .line 222
    .line 223
    instance-of v3, v0, Llf/e;

    .line 224
    .line 225
    if-eqz v3, :cond_10

    .line 226
    .line 227
    check-cast v0, Llf/e;

    .line 228
    .line 229
    iget v0, v0, Lab/a;->b:I

    .line 230
    .line 231
    int-to-long v3, v0

    .line 232
    and-long/2addr v3, v6

    .line 233
    iget-object v0, p0, Lg3/j;->e:Ljava/lang/Object;

    .line 234
    .line 235
    check-cast v0, Lmf/h;

    .line 236
    .line 237
    invoke-virtual {v0, v3, v4}, Lmf/h;->a(J)Ljava/util/List;

    .line 238
    .line 239
    .line 240
    move-result-object v3

    .line 241
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    .line 242
    .line 243
    .line 244
    move-result v4

    .line 245
    if-nez v4, :cond_15

    .line 246
    .line 247
    new-instance v4, Ljava/util/ArrayList;

    .line 248
    .line 249
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 250
    .line 251
    .line 252
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 253
    .line 254
    .line 255
    move-result-object v3

    .line 256
    const/4 v6, 0x0

    .line 257
    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 258
    .line 259
    .line 260
    move-result v7

    .line 261
    if-eqz v7, :cond_e

    .line 262
    .line 263
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 264
    .line 265
    .line 266
    move-result-object v7

    .line 267
    check-cast v7, Lmf/g;

    .line 268
    .line 269
    iget-object v8, v7, Lmf/g;->b:Lmf/j;

    .line 270
    .line 271
    sget-object v9, Lef/b;->l:Ljava/util/Locale;

    .line 272
    .line 273
    iget-object v7, v7, Lmf/g;->c:La9/a;

    .line 274
    .line 275
    invoke-virtual {v7, v0, v9}, La9/a;->s(Lmf/h;Ljava/util/Locale;)Ljava/lang/String;

    .line 276
    .line 277
    .line 278
    move-result-object v7

    .line 279
    iget v8, v8, Lmf/j;->h:I

    .line 280
    .line 281
    if-nez v8, :cond_d

    .line 282
    .line 283
    iput-object v7, v5, Lff/b;->c:Ljava/lang/Object;

    .line 284
    .line 285
    const/4 v6, 0x1

    .line 286
    :cond_d
    new-instance v9, Lff/h;

    .line 287
    .line 288
    invoke-direct {v9, v7, v8}, Lff/h;-><init>(Ljava/lang/String;I)V

    .line 289
    .line 290
    .line 291
    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 292
    .line 293
    .line 294
    goto :goto_4

    .line 295
    :cond_e
    if-nez v6, :cond_f

    .line 296
    .line 297
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 298
    .line 299
    .line 300
    move-result-object v0

    .line 301
    check-cast v0, Lff/h;

    .line 302
    .line 303
    iget-object v0, v0, Lff/h;->a:Ljava/lang/String;

    .line 304
    .line 305
    iput-object v0, v5, Lff/b;->c:Ljava/lang/Object;

    .line 306
    .line 307
    :cond_f
    iput-object v4, p0, Lg3/j;->d:Ljava/lang/Object;

    .line 308
    .line 309
    goto/16 :goto_5

    .line 310
    .line 311
    :cond_10
    iget-object v0, v8, Lkf/b;->f:Ljava/lang/Object;

    .line 312
    .line 313
    check-cast v0, Ljava/lang/String;

    .line 314
    .line 315
    if-eqz v0, :cond_15

    .line 316
    .line 317
    iput-object v0, v5, Lff/b;->c:Ljava/lang/Object;

    .line 318
    .line 319
    new-instance v3, Lff/h;

    .line 320
    .line 321
    invoke-direct {v3, v0, v1}, Lff/h;-><init>(Ljava/lang/String;I)V

    .line 322
    .line 323
    .line 324
    invoke-static {v3}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 325
    .line 326
    .line 327
    move-result-object v0

    .line 328
    iput-object v0, p0, Lg3/j;->d:Ljava/lang/Object;

    .line 329
    .line 330
    goto/16 :goto_5

    .line 331
    .line 332
    :pswitch_2
    const-string v0, "anyDensity"

    .line 333
    .line 334
    invoke-virtual {v3, v0}, Ll5/y;->A(Ljava/lang/String;)Z

    .line 335
    .line 336
    .line 337
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 338
    .line 339
    .line 340
    const-string v0, "smallScreens"

    .line 341
    .line 342
    invoke-virtual {v3, v0}, Ll5/y;->A(Ljava/lang/String;)Z

    .line 343
    .line 344
    .line 345
    const-string v0, "normalScreens"

    .line 346
    .line 347
    invoke-virtual {v3, v0}, Ll5/y;->A(Ljava/lang/String;)Z

    .line 348
    .line 349
    .line 350
    const-string v0, "largeScreens"

    .line 351
    .line 352
    invoke-virtual {v3, v0}, Ll5/y;->A(Ljava/lang/String;)Z

    .line 353
    .line 354
    .line 355
    goto/16 :goto_5

    .line 356
    .line 357
    :pswitch_3
    invoke-virtual {v3, v11}, Ll5/y;->F(Ljava/lang/String;)Ljava/lang/String;

    .line 358
    .line 359
    .line 360
    move-result-object v0

    .line 361
    iget-object v1, v5, Lff/b;->j:Ljava/lang/Object;

    .line 362
    .line 363
    check-cast v1, Ljava/util/ArrayList;

    .line 364
    .line 365
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 366
    .line 367
    .line 368
    goto/16 :goto_5

    .line 369
    .line 370
    :pswitch_4
    const-string v0, "package"

    .line 371
    .line 372
    invoke-virtual {v3, v0}, Ll5/y;->F(Ljava/lang/String;)Ljava/lang/String;

    .line 373
    .line 374
    .line 375
    move-result-object v0

    .line 376
    iput-object v0, v5, Lff/b;->a:Ljava/lang/Object;

    .line 377
    .line 378
    const-string v0, "versionName"

    .line 379
    .line 380
    invoke-virtual {v3, v0}, Ll5/y;->F(Ljava/lang/String;)Ljava/lang/String;

    .line 381
    .line 382
    .line 383
    move-result-object v0

    .line 384
    iput-object v0, v5, Lff/b;->d:Ljava/lang/Object;

    .line 385
    .line 386
    const-string v0, "revisionCode"

    .line 387
    .line 388
    invoke-virtual {v3, v0}, Ll5/y;->E(Ljava/lang/String;)Ljava/lang/Long;

    .line 389
    .line 390
    .line 391
    const-string v0, "sharedUserId"

    .line 392
    .line 393
    invoke-virtual {v3, v0}, Ll5/y;->F(Ljava/lang/String;)Ljava/lang/String;

    .line 394
    .line 395
    .line 396
    move-result-object v0

    .line 397
    iput-object v0, v5, Lff/b;->e:Ljava/lang/Object;

    .line 398
    .line 399
    const-string v0, "sharedUserLabel"

    .line 400
    .line 401
    invoke-virtual {v3, v0}, Ll5/y;->F(Ljava/lang/String;)Ljava/lang/String;

    .line 402
    .line 403
    .line 404
    const-string v0, "split"

    .line 405
    .line 406
    invoke-virtual {v3, v0}, Ll5/y;->F(Ljava/lang/String;)Ljava/lang/String;

    .line 407
    .line 408
    .line 409
    const-string v0, "configForSplit"

    .line 410
    .line 411
    invoke-virtual {v3, v0}, Ll5/y;->F(Ljava/lang/String;)Ljava/lang/String;

    .line 412
    .line 413
    .line 414
    const-string v0, "isFeatureSplit"

    .line 415
    .line 416
    invoke-virtual {v3, v0}, Ll5/y;->A(Ljava/lang/String;)Z

    .line 417
    .line 418
    .line 419
    const-string v0, "isSplitRequired"

    .line 420
    .line 421
    invoke-virtual {v3, v0}, Ll5/y;->A(Ljava/lang/String;)Z

    .line 422
    .line 423
    .line 424
    const-string v0, "isolatedSplits"

    .line 425
    .line 426
    invoke-virtual {v3, v0}, Ll5/y;->A(Ljava/lang/String;)Z

    .line 427
    .line 428
    .line 429
    const-string v0, "versionCodeMajor"

    .line 430
    .line 431
    invoke-virtual {v3, v0}, Ll5/y;->E(Ljava/lang/String;)Ljava/lang/Long;

    .line 432
    .line 433
    .line 434
    move-result-object v0

    .line 435
    const-string v1, "versionCode"

    .line 436
    .line 437
    invoke-virtual {v3, v1}, Ll5/y;->E(Ljava/lang/String;)Ljava/lang/Long;

    .line 438
    .line 439
    .line 440
    move-result-object v1

    .line 441
    if-eqz v0, :cond_12

    .line 442
    .line 443
    if-nez v1, :cond_11

    .line 444
    .line 445
    const-wide/16 v8, 0x0

    .line 446
    .line 447
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 448
    .line 449
    .line 450
    move-result-object v1

    .line 451
    :cond_11
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 452
    .line 453
    .line 454
    move-result-wide v8

    .line 455
    const/16 v0, 0x20

    .line 456
    .line 457
    shl-long/2addr v8, v0

    .line 458
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    .line 459
    .line 460
    .line 461
    move-result-wide v0

    .line 462
    and-long/2addr v0, v6

    .line 463
    or-long/2addr v0, v8

    .line 464
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 465
    .line 466
    .line 467
    move-result-object v1

    .line 468
    :cond_12
    iput-object v1, v5, Lff/b;->i:Ljava/lang/Object;

    .line 469
    .line 470
    const-string v0, "installLocation"

    .line 471
    .line 472
    invoke-virtual {v3, v0}, Ll5/y;->F(Ljava/lang/String;)Ljava/lang/String;

    .line 473
    .line 474
    .line 475
    const-string v0, "compileSdkVersion"

    .line 476
    .line 477
    invoke-virtual {v3, v0}, Ll5/y;->F(Ljava/lang/String;)Ljava/lang/String;

    .line 478
    .line 479
    .line 480
    const-string v0, "compileSdkVersionCodename"

    .line 481
    .line 482
    invoke-virtual {v3, v0}, Ll5/y;->F(Ljava/lang/String;)Ljava/lang/String;

    .line 483
    .line 484
    .line 485
    const-string v0, "platformBuildVersionCode"

    .line 486
    .line 487
    invoke-virtual {v3, v0}, Ll5/y;->F(Ljava/lang/String;)Ljava/lang/String;

    .line 488
    .line 489
    .line 490
    const-string v0, "platformBuildVersionName"

    .line 491
    .line 492
    invoke-virtual {v3, v0}, Ll5/y;->F(Ljava/lang/String;)Ljava/lang/String;

    .line 493
    .line 494
    .line 495
    goto :goto_5

    .line 496
    :pswitch_5
    const-string v0, "minSdkVersion"

    .line 497
    .line 498
    invoke-virtual {v3, v0}, Ll5/y;->F(Ljava/lang/String;)Ljava/lang/String;

    .line 499
    .line 500
    .line 501
    move-result-object v0

    .line 502
    if-eqz v0, :cond_13

    .line 503
    .line 504
    iput-object v0, v5, Lff/b;->f:Ljava/lang/Object;

    .line 505
    .line 506
    :cond_13
    const-string v0, "targetSdkVersion"

    .line 507
    .line 508
    invoke-virtual {v3, v0}, Ll5/y;->F(Ljava/lang/String;)Ljava/lang/String;

    .line 509
    .line 510
    .line 511
    move-result-object v0

    .line 512
    if-eqz v0, :cond_14

    .line 513
    .line 514
    iput-object v0, v5, Lff/b;->g:Ljava/lang/Object;

    .line 515
    .line 516
    :cond_14
    const-string v0, "maxSdkVersion"

    .line 517
    .line 518
    invoke-virtual {v3, v0}, Ll5/y;->F(Ljava/lang/String;)Ljava/lang/String;

    .line 519
    .line 520
    .line 521
    move-result-object v0

    .line 522
    if-eqz v0, :cond_15

    .line 523
    .line 524
    iput-object v0, v5, Lff/b;->h:Ljava/lang/Object;

    .line 525
    .line 526
    goto :goto_5

    .line 527
    :pswitch_6
    new-instance v0, Lm7/e;

    .line 528
    .line 529
    invoke-virtual {v3, v11}, Ll5/y;->F(Ljava/lang/String;)Ljava/lang/String;

    .line 530
    .line 531
    .line 532
    invoke-virtual {v3, v10}, Ll5/y;->F(Ljava/lang/String;)Ljava/lang/String;

    .line 533
    .line 534
    .line 535
    invoke-virtual {v3, v9}, Ll5/y;->F(Ljava/lang/String;)Ljava/lang/String;

    .line 536
    .line 537
    .line 538
    const-string v1, "description"

    .line 539
    .line 540
    invoke-virtual {v3, v1}, Ll5/y;->F(Ljava/lang/String;)Ljava/lang/String;

    .line 541
    .line 542
    .line 543
    const-string v1, "group"

    .line 544
    .line 545
    invoke-virtual {v3, v1}, Ll5/y;->F(Ljava/lang/String;)Ljava/lang/String;

    .line 546
    .line 547
    .line 548
    const-string v1, "android:protectionLevel"

    .line 549
    .line 550
    invoke-virtual {v3, v1}, Ll5/y;->F(Ljava/lang/String;)Ljava/lang/String;

    .line 551
    .line 552
    .line 553
    const/16 v1, 0x17

    .line 554
    .line 555
    invoke-direct {v0, v1}, Lm7/e;-><init>(I)V

    .line 556
    .line 557
    .line 558
    iget-object v1, v5, Lff/b;->l:Ljava/lang/Object;

    .line 559
    .line 560
    check-cast v1, Ljava/util/ArrayList;

    .line 561
    .line 562
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 563
    .line 564
    .line 565
    :cond_15
    :goto_5
    iget v0, p0, Lg3/j;->a:I

    .line 566
    .line 567
    add-int/2addr v2, v0

    .line 568
    iput v2, p0, Lg3/j;->a:I

    .line 569
    .line 570
    iget-object p1, p1, Lv3/f;->c:Ljava/lang/Object;

    .line 571
    .line 572
    check-cast p1, Ljava/lang/String;

    .line 573
    .line 574
    iget-object v1, p0, Lg3/j;->b:Ljava/lang/Object;

    .line 575
    .line 576
    check-cast v1, [Ljava/lang/String;

    .line 577
    .line 578
    aput-object p1, v1, v0

    .line 579
    .line 580
    return-void

    .line 581
    :sswitch_data_0
    .sparse-switch
        -0x1eda3a31 -> :sswitch_6
        -0xfe5a947 -> :sswitch_5
        0x7c92e2f -> :sswitch_4
        0x23c12e70 -> :sswitch_3
        0x3573e73e -> :sswitch_2
        0x5ca40550 -> :sswitch_1
        0x6adbbdf5 -> :sswitch_0
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
    .line 596
    .line 597
    .line 598
    .line 599
    .line 600
    .line 601
    .line 602
    .line 603
    .line 604
    .line 605
    .line 606
    .line 607
    .line 608
    .line 609
    .line 610
    .line 611
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
