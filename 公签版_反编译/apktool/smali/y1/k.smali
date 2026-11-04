.class public final Ly1/k;
.super Lr1/g0;
.source "SourceFile"


# instance fields
.field public final c:I

.field public final d:Ljava/lang/String;

.field public final e:I

.field public final f:Lr1/p;

.field public final g:I

.field public final h:Lf2/c0;

.field public final i:Z


# direct methods
.method public constructor <init>(ILjava/lang/Exception;I)V
    .locals 10

    const/4 v6, 0x0

    const/4 v7, 0x4

    const/4 v4, 0x0

    const/4 v5, -0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    .line 1
    invoke-direct/range {v0 .. v9}, Ly1/k;-><init>(ILjava/lang/Exception;ILjava/lang/String;ILr1/p;ILf2/c0;Z)V

    return-void
.end method

.method public constructor <init>(ILjava/lang/Exception;ILjava/lang/String;ILr1/p;ILf2/c0;Z)V
    .locals 13

    move v4, p1

    move/from16 v8, p7

    if-eqz v4, :cond_7

    const/4 v0, 0x3

    const/4 v1, 0x1

    if-eq v4, v1, :cond_1

    if-eq v4, v0, :cond_0

    .line 12
    const-string v0, "Unexpected runtime error"

    :goto_0
    move-object/from16 v5, p4

    move/from16 v6, p5

    move-object/from16 v7, p6

    goto :goto_2

    .line 13
    :cond_0
    const-string v0, "Remote error"

    goto :goto_0

    .line 14
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v5, p4

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " error, index="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v6, p5

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", format="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v7, p6

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", format_supported="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    sget-object v3, Lu1/f0;->a:Ljava/lang/String;

    if-eqz v8, :cond_6

    if-eq v8, v1, :cond_5

    const/4 v1, 0x2

    if-eq v8, v1, :cond_4

    if-eq v8, v0, :cond_3

    const/4 v0, 0x4

    if-ne v8, v0, :cond_2

    .line 16
    const-string v0, "YES"

    goto :goto_1

    .line 17
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 18
    :cond_3
    const-string v0, "NO_EXCEEDS_CAPABILITIES"

    goto :goto_1

    .line 19
    :cond_4
    const-string v0, "NO_UNSUPPORTED_DRM"

    goto :goto_1

    .line 20
    :cond_5
    const-string v0, "NO_UNSUPPORTED_SUBTYPE"

    goto :goto_1

    .line 21
    :cond_6
    const-string v0, "NO"

    .line 22
    :goto_1
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_7
    move-object/from16 v5, p4

    move/from16 v6, p5

    move-object/from16 v7, p6

    .line 23
    const-string v0, "Source error"

    :goto_2
    const/4 v1, 0x0

    .line 24
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_8

    .line 25
    const-string v1, ": null"

    .line 26
    invoke-static {v0, v1}, Lg/b;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_8
    move-object v1, v0

    .line 27
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    move-object v0, p0

    move-object v2, p2

    move/from16 v3, p3

    move v4, p1

    move-object/from16 v5, p4

    move/from16 v6, p5

    move-object/from16 v7, p6

    move/from16 v8, p7

    move-object/from16 v9, p8

    move/from16 v12, p9

    .line 28
    invoke-direct/range {v0 .. v12}, Ly1/k;-><init>(Ljava/lang/String;Ljava/lang/Throwable;IILjava/lang/String;ILr1/p;ILf2/c0;JZ)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;IILjava/lang/String;ILr1/p;ILf2/c0;JZ)V
    .locals 9

    move-object v6, p0

    move v7, p4

    move/from16 v8, p12

    .line 2
    sget-object v0, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-wide/from16 v4, p10

    invoke-direct/range {v0 .. v5}, Lr1/g0;-><init>(Ljava/lang/String;Ljava/lang/Throwable;IJ)V

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz v8, :cond_1

    if-ne v7, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v2, 0x1

    .line 3
    :goto_1
    invoke-static {v2}, La9/o;->k(Z)V

    if-nez p2, :cond_2

    const/4 v2, 0x3

    if-ne v7, v2, :cond_3

    :cond_2
    const/4 v0, 0x1

    .line 4
    :cond_3
    invoke-static {v0}, La9/o;->k(Z)V

    .line 5
    iput v7, v6, Ly1/k;->c:I

    move-object v0, p5

    .line 6
    iput-object v0, v6, Ly1/k;->d:Ljava/lang/String;

    move v0, p6

    .line 7
    iput v0, v6, Ly1/k;->e:I

    move-object/from16 v0, p7

    .line 8
    iput-object v0, v6, Ly1/k;->f:Lr1/p;

    move/from16 v0, p8

    .line 9
    iput v0, v6, Ly1/k;->g:I

    move-object/from16 v0, p9

    .line 10
    iput-object v0, v6, Ly1/k;->h:Lf2/c0;

    .line 11
    iput-boolean v8, v6, Ly1/k;->i:Z

    return-void
.end method


# virtual methods
.method public final a(Lf2/c0;)Ly1/k;
    .locals 14

    .line 1
    new-instance v13, Ly1/k;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    sget-object v0, Lu1/f0;->a:Ljava/lang/String;

    .line 8
    .line 9
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    iget-object v7, p0, Ly1/k;->f:Lr1/p;

    .line 14
    .line 15
    iget v8, p0, Ly1/k;->g:I

    .line 16
    .line 17
    iget v3, p0, Lr1/g0;->a:I

    .line 18
    .line 19
    iget v4, p0, Ly1/k;->c:I

    .line 20
    .line 21
    iget-object v5, p0, Ly1/k;->d:Ljava/lang/String;

    .line 22
    .line 23
    iget v6, p0, Ly1/k;->e:I

    .line 24
    .line 25
    iget-wide v10, p0, Lr1/g0;->b:J

    .line 26
    .line 27
    iget-boolean v12, p0, Ly1/k;->i:Z

    .line 28
    .line 29
    move-object v0, v13

    .line 30
    move-object v9, p1

    .line 31
    invoke-direct/range {v0 .. v12}, Ly1/k;-><init>(Ljava/lang/String;Ljava/lang/Throwable;IILjava/lang/String;ILr1/p;ILf2/c0;JZ)V

    .line 32
    .line 33
    .line 34
    return-object v13
.end method
