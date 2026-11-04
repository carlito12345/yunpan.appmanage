.class public final Leb/c;
.super Landroid/graphics/Paint;
.source "SourceFile"


# instance fields
.field public a:F

.field public b:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/graphics/Paint;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-boolean p1, p0, Leb/c;->b:Z

    .line 5
    .line 6
    const-string p1, " "

    .line 7
    .line 8
    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    iput p1, p0, Leb/c;->a:F

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final a(Landroid/text/GetChars;IIIIZF)I
    .locals 13

    .line 1
    move/from16 v0, p4

    .line 2
    .line 3
    move/from16 v1, p5

    .line 4
    .line 5
    sub-int v5, v1, v0

    .line 6
    .line 7
    invoke-static {v5}, Lsb/h;->e(I)[C

    .line 8
    .line 9
    .line 10
    move-result-object v12

    .line 11
    const/4 v2, 0x0

    .line 12
    move-object v3, p1

    .line 13
    invoke-interface {p1, v0, v1, v12, v2}, Landroid/text/GetChars;->getChars(II[CI)V

    .line 14
    .line 15
    .line 16
    :try_start_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 17
    .line 18
    const/16 v2, 0x17

    .line 19
    .line 20
    if-lt v1, v2, :cond_0

    .line 21
    .line 22
    sub-int v3, p2, v0

    .line 23
    .line 24
    sub-int v4, p3, v0

    .line 25
    .line 26
    move-object v1, p0

    .line 27
    move-object v2, v12

    .line 28
    move/from16 v6, p6

    .line 29
    .line 30
    move/from16 v7, p7

    .line 31
    .line 32
    invoke-static/range {v1 .. v7}, Ld2/c;->e(Leb/c;[CIIIZF)I

    .line 33
    .line 34
    .line 35
    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 36
    add-int/2addr v0, v1

    .line 37
    :goto_0
    invoke-static {v12}, Lsb/h;->h([C)V

    .line 38
    .line 39
    .line 40
    return v0

    .line 41
    :catchall_0
    move-exception v0

    .line 42
    goto :goto_1

    .line 43
    :cond_0
    sub-int v8, p2, v0

    .line 44
    .line 45
    sub-int v9, p3, p2

    .line 46
    .line 47
    const/4 v11, 0x0

    .line 48
    move-object v6, p0

    .line 49
    move-object v7, v12

    .line 50
    move/from16 v10, p7

    .line 51
    .line 52
    :try_start_1
    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Paint;->breakText([CIIF[F)I

    .line 53
    .line 54
    .line 55
    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 56
    add-int/2addr v0, p2

    .line 57
    goto :goto_0

    .line 58
    :goto_1
    invoke-static {v12}, Lsb/h;->h([C)V

    .line 59
    .line 60
    .line 61
    goto :goto_3

    .line 62
    :goto_2
    throw v0

    .line 63
    :goto_3
    goto :goto_2
.end method

.method public final b(Landroid/text/GetChars;IIIIZ[FI)F
    .locals 12

    .line 1
    move-object v8, p0

    .line 2
    move-object v9, p1

    .line 3
    move/from16 v0, p4

    .line 4
    .line 5
    invoke-static/range {p5 .. p5}, Lsb/h;->e(I)[C

    .line 6
    .line 7
    .line 8
    move-result-object v10

    .line 9
    add-int v1, v0, p5

    .line 10
    .line 11
    const/4 v11, 0x0

    .line 12
    invoke-interface {p1, v0, v1, v10, v11}, Landroid/text/GetChars;->getChars(II[CI)V

    .line 13
    .line 14
    .line 15
    sub-int v2, p2, v0

    .line 16
    .line 17
    move-object v0, p0

    .line 18
    move-object v1, v10

    .line 19
    move v3, p3

    .line 20
    move/from16 v4, p5

    .line 21
    .line 22
    move/from16 v5, p6

    .line 23
    .line 24
    move-object/from16 v6, p7

    .line 25
    .line 26
    move/from16 v7, p8

    .line 27
    .line 28
    invoke-static/range {v0 .. v7}, La2/c;->a(Leb/c;[CIIIZ[FI)F

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    iget-boolean v1, v8, Leb/c;->b:Z

    .line 33
    .line 34
    if-eqz v1, :cond_2

    .line 35
    .line 36
    move v1, p3

    .line 37
    :goto_0
    if-ge v11, v1, :cond_2

    .line 38
    .line 39
    add-int v2, p2, v11

    .line 40
    .line 41
    invoke-interface {p1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    .line 42
    .line 43
    .line 44
    move-result v2

    .line 45
    invoke-static {v2}, Lmb/k;->f(C)Z

    .line 46
    .line 47
    .line 48
    move-result v3

    .line 49
    if-eqz v3, :cond_1

    .line 50
    .line 51
    invoke-static {v2}, Lmb/k;->d(C)Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v3

    .line 55
    invoke-virtual {p0, v3}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    .line 56
    .line 57
    .line 58
    move-result v3

    .line 59
    if-eqz p7, :cond_0

    .line 60
    .line 61
    add-int v2, p8, v11

    .line 62
    .line 63
    aget v4, p7, v2

    .line 64
    .line 65
    sub-float/2addr v0, v4

    .line 66
    aput v3, p7, v2

    .line 67
    .line 68
    goto :goto_1

    .line 69
    :cond_0
    invoke-static {v2}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v2

    .line 73
    invoke-virtual {p0, v2}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    .line 74
    .line 75
    .line 76
    move-result v2

    .line 77
    sub-float/2addr v0, v2

    .line 78
    :goto_1
    add-float/2addr v0, v3

    .line 79
    :cond_1
    add-int/lit8 v11, v11, 0x1

    .line 80
    .line 81
    goto :goto_0

    .line 82
    :cond_2
    invoke-static {v10}, Lsb/h;->h([C)V

    .line 83
    .line 84
    .line 85
    return v0
.end method

.method public final c()V
    .locals 1

    .line 1
    const-string v0, " "

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    iput v0, p0, Leb/c;->a:F

    .line 8
    .line 9
    return-void
.end method

.method public final d(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setFontFeatureSettings(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Leb/c;->c()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public final setLetterSpacing(F)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/graphics/Paint;->setLetterSpacing(F)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Leb/c;->c()V

    .line 5
    .line 6
    .line 7
    return-void
.end method
