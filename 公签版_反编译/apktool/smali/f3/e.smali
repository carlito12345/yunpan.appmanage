.class public abstract Lf3/e;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:[B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    sget-object v0, Lu1/f0;->a:Ljava/lang/String;

    .line 2
    .line 3
    sget-object v0, Lj$/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 4
    .line 5
    const-string v1, "OpusHead"

    .line 6
    .line 7
    invoke-virtual {v1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    sput-object v0, Lf3/e;->a:[B

    .line 12
    .line 13
    return-void
.end method

.method public static a(Lu1/q;)V
    .locals 3

    .line 1
    iget v0, p0, Lu1/q;->b:I

    .line 2
    .line 3
    const/4 v1, 0x4

    .line 4
    invoke-virtual {p0, v1}, Lu1/q;->P(I)V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Lu1/q;->o()I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    const v2, 0x68646c72    # 4.3148E24f

    .line 12
    .line 13
    .line 14
    if-eq v1, v2, :cond_0

    .line 15
    .line 16
    add-int/lit8 v0, v0, 0x4

    .line 17
    .line 18
    :cond_0
    invoke-virtual {p0, v0}, Lu1/q;->O(I)V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public static b(Lu1/q;IIIILjava/lang/String;ZLr1/l;La9/a;I)V
    .locals 46

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move-object/from16 v4, p5

    move-object/from16 v5, p7

    move-object/from16 v6, p8

    const/4 v13, 0x2

    const/4 v15, 0x1

    const/16 v14, 0x10

    add-int/lit8 v7, v2, 0x10

    .line 1
    invoke-virtual {v0, v7}, Lu1/q;->O(I)V

    const/4 v7, 0x6

    const/16 v11, 0x8

    if-eqz p6, :cond_0

    .line 2
    invoke-virtual/range {p0 .. p0}, Lu1/q;->I()I

    move-result v18

    .line 3
    invoke-virtual {v0, v7}, Lu1/q;->P(I)V

    move/from16 v9, v18

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {v0, v11}, Lu1/q;->P(I)V

    const/4 v9, 0x0

    :goto_0
    const/4 v10, 0x4

    const/16 v19, 0x15

    const/high16 v20, 0x10000000

    const/16 v12, 0x18

    if-eqz v9, :cond_d

    if-ne v9, v15, :cond_1

    goto/16 :goto_4

    :cond_1
    if-ne v9, v13, :cond_c

    .line 5
    invoke-virtual {v0, v14}, Lu1/q;->P(I)V

    .line 6
    invoke-virtual/range {p0 .. p0}, Lu1/q;->v()J

    move-result-wide v22

    invoke-static/range {v22 .. v23}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v22

    .line 7
    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->round(D)J

    move-result-wide v7

    long-to-int v8, v7

    .line 8
    invoke-virtual/range {p0 .. p0}, Lu1/q;->F()I

    move-result v7

    .line 9
    invoke-virtual {v0, v10}, Lu1/q;->P(I)V

    .line 10
    invoke-virtual/range {p0 .. p0}, Lu1/q;->F()I

    move-result v9

    .line 11
    invoke-virtual/range {p0 .. p0}, Lu1/q;->F()I

    move-result v22

    and-int/lit8 v23, v22, 0x1

    if-eqz v23, :cond_2

    const/16 v23, 0x1

    goto :goto_1

    :cond_2
    const/16 v23, 0x0

    :goto_1
    and-int/lit8 v22, v22, 0x2

    if-eqz v22, :cond_3

    const/16 v22, 0x1

    goto :goto_2

    :cond_3
    const/16 v22, 0x0

    :goto_2
    if-nez v23, :cond_a

    if-ne v9, v11, :cond_4

    const/4 v9, 0x3

    goto :goto_3

    :cond_4
    if-ne v9, v14, :cond_6

    if-eqz v22, :cond_5

    const/high16 v9, 0x10000000

    goto :goto_3

    :cond_5
    const/4 v9, 0x2

    goto :goto_3

    :cond_6
    if-ne v9, v12, :cond_8

    if-eqz v22, :cond_7

    const/high16 v9, 0x50000000

    goto :goto_3

    :cond_7
    const/16 v9, 0x15

    goto :goto_3

    :cond_8
    const/16 v12, 0x20

    if-ne v9, v12, :cond_b

    if-eqz v22, :cond_9

    const/high16 v9, 0x60000000

    goto :goto_3

    :cond_9
    const/16 v9, 0x16

    goto :goto_3

    :cond_a
    const/16 v12, 0x20

    if-nez v22, :cond_b

    if-ne v9, v12, :cond_b

    const/4 v9, 0x4

    goto :goto_3

    :cond_b
    const/4 v9, -0x1

    .line 12
    :goto_3
    invoke-virtual {v0, v11}, Lu1/q;->P(I)V

    const/4 v12, 0x0

    goto :goto_5

    :cond_c
    return-void

    .line 13
    :cond_d
    :goto_4
    invoke-virtual/range {p0 .. p0}, Lu1/q;->I()I

    move-result v7

    const/4 v8, 0x6

    .line 14
    invoke-virtual {v0, v8}, Lu1/q;->P(I)V

    .line 15
    invoke-virtual/range {p0 .. p0}, Lu1/q;->C()I

    move-result v8

    .line 16
    iget v12, v0, Lu1/q;->b:I

    sub-int/2addr v12, v10

    .line 17
    invoke-virtual {v0, v12}, Lu1/q;->O(I)V

    .line 18
    invoke-virtual/range {p0 .. p0}, Lu1/q;->o()I

    move-result v12

    if-ne v9, v15, :cond_e

    .line 19
    invoke-virtual {v0, v14}, Lu1/q;->P(I)V

    :cond_e
    const/4 v9, -0x1

    :goto_5
    const v14, 0x73617762

    const v13, 0x73616d72

    const v10, 0x69616d66

    if-ne v1, v10, :cond_f

    const/4 v7, -0x1

    const/4 v8, -0x1

    goto :goto_6

    :cond_f
    if-ne v1, v13, :cond_10

    const/16 v7, 0x1f40

    const/4 v7, 0x1

    const/16 v8, 0x1f40

    goto :goto_6

    :cond_10
    if-ne v1, v14, :cond_11

    const/16 v7, 0x3e80

    const/4 v7, 0x1

    const/16 v8, 0x3e80

    .line 20
    :cond_11
    :goto_6
    iget v15, v0, Lu1/q;->b:I

    const v11, 0x656e6361

    if-ne v1, v11, :cond_14

    .line 21
    invoke-static {v0, v2, v3}, Lf3/e;->h(Lu1/q;II)Landroid/util/Pair;

    move-result-object v11

    if-eqz v11, :cond_13

    .line 22
    iget-object v1, v11, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-nez v5, :cond_12

    const/4 v10, 0x0

    goto :goto_7

    .line 23
    :cond_12
    iget-object v10, v11, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v10, Lf3/t;

    iget-object v10, v10, Lf3/t;->b:Ljava/lang/String;

    invoke-virtual {v5, v10}, Lr1/l;->a(Ljava/lang/String;)Lr1/l;

    move-result-object v5

    move-object v10, v5

    .line 24
    :goto_7
    iget-object v5, v6, La9/a;->d:Ljava/lang/Object;

    check-cast v5, [Lf3/t;

    iget-object v11, v11, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v11, Lf3/t;

    aput-object v11, v5, p9

    goto :goto_8

    :cond_13
    move-object v10, v5

    .line 25
    :goto_8
    invoke-virtual {v0, v15}, Lu1/q;->O(I)V

    goto :goto_9

    :cond_14
    move-object v10, v5

    .line 26
    :goto_9
    const-string v11, "audio/mhm1"

    const-string v27, "audio/ac4"

    const-string v28, "audio/eac3"

    const-string v29, "audio/ac3"

    const v5, 0x61632d33

    const-string v30, "audio/raw"

    if-ne v1, v5, :cond_15

    move/from16 v20, v9

    move-object/from16 v5, v29

    goto/16 :goto_f

    :cond_15
    const v5, 0x65632d33

    if-ne v1, v5, :cond_16

    move/from16 v20, v9

    move-object/from16 v5, v28

    goto/16 :goto_f

    :cond_16
    const v5, 0x61632d34

    if-ne v1, v5, :cond_17

    move/from16 v20, v9

    move-object/from16 v5, v27

    goto/16 :goto_f

    :cond_17
    const v5, 0x64747363

    if-ne v1, v5, :cond_18

    .line 27
    const-string v5, "audio/vnd.dts"

    :goto_a
    move/from16 v20, v9

    goto/16 :goto_f

    :cond_18
    const v5, 0x64747368

    if-eq v1, v5, :cond_2d

    const v5, 0x6474736c

    if-ne v1, v5, :cond_19

    goto/16 :goto_e

    :cond_19
    const v5, 0x64747365

    if-ne v1, v5, :cond_1a

    .line 28
    const-string v5, "audio/vnd.dts.hd;profile=lbr"

    goto :goto_a

    :cond_1a
    const v5, 0x64747378

    if-ne v1, v5, :cond_1b

    .line 29
    const-string v5, "audio/vnd.dts.uhd;profile=p2"

    goto :goto_a

    :cond_1b
    if-ne v1, v13, :cond_1c

    .line 30
    const-string v5, "audio/3gpp"

    goto :goto_a

    :cond_1c
    if-ne v1, v14, :cond_1d

    .line 31
    const-string v5, "audio/amr-wb"

    goto :goto_a

    :cond_1d
    const v5, 0x736f7774

    if-ne v1, v5, :cond_1e

    :goto_b
    move-object/from16 v5, v30

    const/16 v20, 0x2

    goto/16 :goto_f

    :cond_1e
    const v5, 0x74776f73

    if-ne v1, v5, :cond_1f

    :goto_c
    move-object/from16 v5, v30

    goto/16 :goto_f

    :cond_1f
    const v5, 0x6c70636d

    if-ne v1, v5, :cond_21

    const/4 v5, -0x1

    if-ne v9, v5, :cond_20

    goto :goto_b

    :cond_20
    move/from16 v20, v9

    goto :goto_c

    :cond_21
    const v5, 0x2e6d7032

    if-eq v1, v5, :cond_2c

    const v5, 0x2e6d7033

    if-ne v1, v5, :cond_22

    goto :goto_d

    :cond_22
    const v5, 0x6d686131

    if-ne v1, v5, :cond_23

    .line 32
    const-string v5, "audio/mha1"

    goto :goto_a

    :cond_23
    const v5, 0x6d686d31

    if-ne v1, v5, :cond_24

    move/from16 v20, v9

    move-object v5, v11

    goto :goto_f

    :cond_24
    const v5, 0x616c6163

    if-ne v1, v5, :cond_25

    .line 33
    const-string v5, "audio/alac"

    goto :goto_a

    :cond_25
    const v5, 0x616c6177

    if-ne v1, v5, :cond_26

    .line 34
    const-string v5, "audio/g711-alaw"

    goto :goto_a

    :cond_26
    const v5, 0x756c6177

    if-ne v1, v5, :cond_27

    .line 35
    const-string v5, "audio/g711-mlaw"

    goto :goto_a

    :cond_27
    const v5, 0x4f707573

    if-ne v1, v5, :cond_28

    .line 36
    const-string v5, "audio/opus"

    goto/16 :goto_a

    :cond_28
    const v5, 0x664c6143

    if-ne v1, v5, :cond_29

    .line 37
    const-string v5, "audio/flac"

    goto/16 :goto_a

    :cond_29
    const v5, 0x6d6c7061

    if-ne v1, v5, :cond_2a

    .line 38
    const-string v5, "audio/true-hd"

    goto/16 :goto_a

    :cond_2a
    const v5, 0x69616d66

    if-ne v1, v5, :cond_2b

    .line 39
    const-string v5, "audio/iamf"

    goto/16 :goto_a

    :cond_2b
    move/from16 v20, v9

    const/4 v5, 0x0

    goto :goto_f

    .line 40
    :cond_2c
    :goto_d
    const-string v5, "audio/mpeg"

    goto/16 :goto_a

    .line 41
    :cond_2d
    :goto_e
    const-string v5, "audio/vnd.dts.hd"

    goto/16 :goto_a

    :goto_f
    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    :goto_10
    sub-int v9, v15, v2

    if-ge v9, v3, :cond_a6

    .line 42
    invoke-virtual {v0, v15}, Lu1/q;->O(I)V

    .line 43
    invoke-virtual/range {p0 .. p0}, Lu1/q;->o()I

    move-result v9

    if-lez v9, :cond_2e

    const/4 v2, 0x1

    goto :goto_11

    :cond_2e
    const/4 v2, 0x0

    .line 44
    :goto_11
    const-string v3, "childAtomSize must be positive"

    invoke-static {v3, v2}, Ll2/b;->b(Ljava/lang/String;Z)V

    .line 45
    invoke-virtual/range {p0 .. p0}, Lu1/q;->o()I

    move-result v2

    move-object/from16 v26, v13

    const v13, 0x6d686143

    if-ne v2, v13, :cond_31

    const/16 v13, 0x8

    add-int/lit8 v2, v15, 0x8

    .line 46
    invoke-virtual {v0, v2}, Lu1/q;->O(I)V

    const/4 v2, 0x1

    .line 47
    invoke-virtual {v0, v2}, Lu1/q;->P(I)V

    .line 48
    invoke-virtual/range {p0 .. p0}, Lu1/q;->B()I

    move-result v3

    .line 49
    invoke-virtual {v0, v2}, Lu1/q;->P(I)V

    .line 50
    invoke-static {v5, v11}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_2f

    .line 51
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-array v13, v2, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v3, v13, v2

    const-string v3, "mhm1.%02X"

    invoke-static {v3, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    move-object v13, v3

    move-object/from16 p7, v11

    goto :goto_12

    :cond_2f
    const/4 v2, 0x0

    .line 52
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 p7, v11

    const/4 v13, 0x1

    new-array v11, v13, [Ljava/lang/Object;

    aput-object v3, v11, v2

    const-string v3, "mha1.%02X"

    invoke-static {v3, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    move-object v13, v3

    .line 53
    :goto_12
    invoke-virtual/range {p0 .. p0}, Lu1/q;->I()I

    move-result v3

    .line 54
    new-array v11, v3, [B

    .line 55
    invoke-virtual {v0, v2, v3, v11}, Lu1/q;->l(II[B)V

    if-nez v14, :cond_30

    .line 56
    invoke-static {v11}, Lu7/g0;->r(Ljava/lang/Object;)Lu7/y0;

    move-result-object v3

    move-object v14, v3

    goto :goto_13

    .line 57
    :cond_30
    invoke-interface {v14, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    invoke-static {v11, v3}, Lu7/g0;->s(Ljava/lang/Object;Ljava/lang/Object;)Lu7/y0;

    move-result-object v2

    move-object v14, v2

    :goto_13
    move-object/from16 v38, v5

    move/from16 v36, v7

    move v5, v9

    :goto_14
    const/4 v2, 0x0

    const/16 v17, 0x3

    move v9, v1

    move-object v7, v6

    move v1, v15

    move-object v6, v4

    goto/16 :goto_61

    :cond_31
    move-object/from16 p7, v11

    const v11, 0x6d686150

    if-ne v2, v11, :cond_34

    const/16 v11, 0x8

    add-int/lit8 v2, v15, 0x8

    .line 58
    invoke-virtual {v0, v2}, Lu1/q;->O(I)V

    .line 59
    invoke-virtual/range {p0 .. p0}, Lu1/q;->B()I

    move-result v2

    if-lez v2, :cond_33

    .line 60
    new-array v3, v2, [B

    const/4 v11, 0x0

    .line 61
    invoke-virtual {v0, v11, v2, v3}, Lu1/q;->l(II[B)V

    if-nez v14, :cond_32

    .line 62
    invoke-static {v3}, Lu7/g0;->r(Ljava/lang/Object;)Lu7/y0;

    move-result-object v14

    goto :goto_15

    .line 63
    :cond_32
    invoke-interface {v14, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    invoke-static {v2, v3}, Lu7/g0;->s(Ljava/lang/Object;Ljava/lang/Object;)Lu7/y0;

    move-result-object v14

    :cond_33
    :goto_15
    move-object/from16 v38, v5

    move/from16 v36, v7

    move v5, v9

    move-object/from16 v13, v26

    goto :goto_14

    :cond_34
    const v11, 0x65736473

    if-eq v2, v11, :cond_35

    if-eqz p6, :cond_36

    const v13, 0x77617665

    if-ne v2, v13, :cond_36

    :cond_35
    move-object/from16 v38, v5

    move/from16 v42, v9

    move-object/from16 p9, v14

    move/from16 v40, v15

    const/4 v5, 0x6

    const/16 v13, 0x9

    const/4 v15, 0x4

    const/16 v17, 0x3

    move v9, v1

    move v14, v7

    const/16 v1, 0xc

    move-object v7, v6

    move-object v6, v4

    const/16 v4, 0x20

    move/from16 v45, v8

    move-object v8, v0

    move/from16 v0, v45

    goto/16 :goto_55

    :cond_36
    const v3, 0x62747274

    if-ne v2, v3, :cond_37

    const/16 v3, 0x8

    add-int/lit8 v11, v15, 0x8

    .line 64
    invoke-virtual {v0, v11}, Lu1/q;->O(I)V

    const/4 v2, 0x4

    .line 65
    invoke-virtual {v0, v2}, Lu1/q;->P(I)V

    .line 66
    invoke-virtual/range {p0 .. p0}, Lu1/q;->D()J

    move-result-wide v35

    .line 67
    invoke-virtual/range {p0 .. p0}, Lu1/q;->D()J

    move-result-wide v33

    .line 68
    new-instance v2, Landroidx/media3/exoplayer/video/y;

    const/16 v37, 0x1

    move-object/from16 v32, v2

    invoke-direct/range {v32 .. v37}, Landroidx/media3/exoplayer/video/y;-><init>(JJI)V

    move-object/from16 v32, v2

    goto :goto_15

    .line 69
    :cond_37
    sget-object v3, Ll2/b;->f:[I

    sget-object v11, Ll2/b;->d:[I

    const v13, 0x64616333

    move-object/from16 p9, v14

    if-ne v2, v13, :cond_39

    const/16 v13, 0x8

    add-int/lit8 v2, v15, 0x8

    .line 70
    invoke-virtual {v0, v2}, Lu1/q;->O(I)V

    .line 71
    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    .line 72
    new-instance v14, Lj3/f;

    invoke-direct {v14}, Lj3/f;-><init>()V

    .line 73
    invoke-virtual {v14, v0}, Lj3/f;->l(Lu1/q;)V

    const/4 v13, 0x2

    .line 74
    invoke-virtual {v14, v13}, Lj3/f;->g(I)I

    move-result v34

    .line 75
    aget v11, v11, v34

    const/16 v13, 0x8

    .line 76
    invoke-virtual {v14, v13}, Lj3/f;->o(I)V

    const/4 v13, 0x3

    .line 77
    invoke-virtual {v14, v13}, Lj3/f;->g(I)I

    move-result v34

    aget v3, v3, v34

    const/4 v13, 0x1

    .line 78
    invoke-virtual {v14, v13}, Lj3/f;->g(I)I

    move-result v24

    if-eqz v24, :cond_38

    add-int/2addr v3, v13

    :cond_38
    const/4 v13, 0x5

    .line 79
    invoke-virtual {v14, v13}, Lj3/f;->g(I)I

    move-result v13

    .line 80
    sget-object v33, Ll2/b;->g:[I

    aget v13, v33, v13

    mul-int/lit16 v13, v13, 0x3e8

    .line 81
    invoke-virtual {v14}, Lj3/f;->c()V

    .line 82
    invoke-virtual {v14}, Lj3/f;->d()I

    move-result v14

    invoke-virtual {v0, v14}, Lu1/q;->O(I)V

    .line 83
    new-instance v14, Lr1/o;

    invoke-direct {v14}, Lr1/o;-><init>()V

    .line 84
    iput-object v2, v14, Lr1/o;->a:Ljava/lang/String;

    .line 85
    invoke-static/range {v29 .. v29}, Lr1/e0;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v14, Lr1/o;->n:Ljava/lang/String;

    .line 86
    iput v3, v14, Lr1/o;->F:I

    .line 87
    iput v11, v14, Lr1/o;->G:I

    .line 88
    iput-object v10, v14, Lr1/o;->r:Lr1/l;

    .line 89
    iput-object v4, v14, Lr1/o;->d:Ljava/lang/String;

    .line 90
    iput v13, v14, Lr1/o;->h:I

    .line 91
    iput v13, v14, Lr1/o;->i:I

    .line 92
    new-instance v2, Lr1/p;

    invoke-direct {v2, v14}, Lr1/p;-><init>(Lr1/o;)V

    .line 93
    iput-object v2, v6, La9/a;->e:Ljava/lang/Object;

    move-object/from16 v38, v5

    move v14, v7

    move v3, v8

    move/from16 v42, v9

    move/from16 v40, v15

    const/4 v5, 0x6

    const/16 v13, 0x9

    const/4 v15, 0x4

    const/16 v17, 0x3

    move-object v8, v0

    move v9, v1

    move-object v7, v6

    const/4 v0, 0x2

    const/16 v1, 0xc

    move-object v6, v4

    :goto_16
    const/16 v4, 0x20

    goto/16 :goto_54

    :cond_39
    const v13, 0x64656333

    const/16 v14, 0xd

    if-ne v2, v13, :cond_3e

    const/16 v13, 0x8

    add-int/lit8 v2, v15, 0x8

    .line 94
    invoke-virtual {v0, v2}, Lu1/q;->O(I)V

    .line 95
    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    .line 96
    new-instance v13, Lj3/f;

    invoke-direct {v13}, Lj3/f;-><init>()V

    .line 97
    invoke-virtual {v13, v0}, Lj3/f;->l(Lu1/q;)V

    .line 98
    invoke-virtual {v13, v14}, Lj3/f;->g(I)I

    move-result v14

    mul-int/lit16 v14, v14, 0x3e8

    move/from16 v35, v8

    const/4 v8, 0x3

    .line 99
    invoke-virtual {v13, v8}, Lj3/f;->o(I)V

    const/4 v8, 0x2

    .line 100
    invoke-virtual {v13, v8}, Lj3/f;->g(I)I

    move-result v33

    .line 101
    aget v8, v11, v33

    const/16 v11, 0xa

    .line 102
    invoke-virtual {v13, v11}, Lj3/f;->o(I)V

    const/4 v11, 0x3

    .line 103
    invoke-virtual {v13, v11}, Lj3/f;->g(I)I

    move-result v21

    aget v3, v3, v21

    const/4 v11, 0x1

    .line 104
    invoke-virtual {v13, v11}, Lj3/f;->g(I)I

    move-result v24

    if-eqz v24, :cond_3a

    add-int/2addr v3, v11

    :cond_3a
    const/4 v11, 0x3

    .line 105
    invoke-virtual {v13, v11}, Lj3/f;->o(I)V

    const/4 v11, 0x4

    .line 106
    invoke-virtual {v13, v11}, Lj3/f;->g(I)I

    move-result v33

    const/4 v11, 0x1

    .line 107
    invoke-virtual {v13, v11}, Lj3/f;->o(I)V

    move/from16 v36, v7

    if-lez v33, :cond_3c

    const/4 v7, 0x6

    .line 108
    invoke-virtual {v13, v7}, Lj3/f;->o(I)V

    .line 109
    invoke-virtual {v13, v11}, Lj3/f;->g(I)I

    move-result v7

    if-eqz v7, :cond_3b

    const/4 v7, 0x2

    add-int/2addr v3, v7

    .line 110
    :cond_3b
    invoke-virtual {v13, v11}, Lj3/f;->o(I)V

    .line 111
    :cond_3c
    invoke-virtual {v13}, Lj3/f;->b()I

    move-result v7

    const/4 v11, 0x7

    if-le v7, v11, :cond_3d

    .line 112
    invoke-virtual {v13, v11}, Lj3/f;->o(I)V

    const/4 v7, 0x1

    .line 113
    invoke-virtual {v13, v7}, Lj3/f;->g(I)I

    move-result v11

    if-eqz v11, :cond_3d

    .line 114
    const-string v7, "audio/eac3-joc"

    goto :goto_17

    :cond_3d
    move-object/from16 v7, v28

    .line 115
    :goto_17
    invoke-virtual {v13}, Lj3/f;->c()V

    .line 116
    invoke-virtual {v13}, Lj3/f;->d()I

    move-result v11

    invoke-virtual {v0, v11}, Lu1/q;->O(I)V

    .line 117
    new-instance v11, Lr1/o;

    invoke-direct {v11}, Lr1/o;-><init>()V

    .line 118
    iput-object v2, v11, Lr1/o;->a:Ljava/lang/String;

    .line 119
    invoke-static {v7}, Lr1/e0;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v11, Lr1/o;->n:Ljava/lang/String;

    .line 120
    iput v3, v11, Lr1/o;->F:I

    .line 121
    iput v8, v11, Lr1/o;->G:I

    .line 122
    iput-object v10, v11, Lr1/o;->r:Lr1/l;

    .line 123
    iput-object v4, v11, Lr1/o;->d:Ljava/lang/String;

    .line 124
    iput v14, v11, Lr1/o;->i:I

    .line 125
    new-instance v2, Lr1/p;

    invoke-direct {v2, v11}, Lr1/p;-><init>(Lr1/o;)V

    .line 126
    iput-object v2, v6, La9/a;->e:Ljava/lang/Object;

    move-object v8, v0

    move-object/from16 v38, v5

    move-object v7, v6

    move/from16 v42, v9

    move/from16 v40, v15

    move/from16 v3, v35

    move/from16 v14, v36

    const/4 v0, 0x2

    const/4 v5, 0x6

    const/16 v13, 0x9

    const/4 v15, 0x4

    const/16 v17, 0x3

    move v9, v1

    move-object v6, v4

    const/16 v1, 0xc

    goto/16 :goto_16

    :cond_3e
    move/from16 v36, v7

    move/from16 v35, v8

    const v7, 0x64616334

    if-ne v2, v7, :cond_7d

    const/16 v7, 0x8

    add-int/lit8 v11, v15, 0x8

    .line 127
    invoke-virtual {v0, v11}, Lu1/q;->O(I)V

    .line 128
    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    .line 129
    new-instance v7, Lj3/f;

    invoke-direct {v7}, Lj3/f;-><init>()V

    .line 130
    invoke-virtual {v7, v0}, Lj3/f;->l(Lu1/q;)V

    .line 131
    invoke-virtual {v7}, Lj3/f;->b()I

    move-result v8

    const/4 v11, 0x3

    .line 132
    invoke-virtual {v7, v11}, Lj3/f;->g(I)I

    move-result v13

    const/4 v11, 0x1

    if-gt v13, v11, :cond_7c

    const/4 v14, 0x7

    .line 133
    invoke-virtual {v7, v14}, Lj3/f;->g(I)I

    move-result v3

    .line 134
    invoke-virtual {v7}, Lj3/f;->f()Z

    move-result v14

    if-eqz v14, :cond_3f

    const v14, 0xbb80

    :goto_18
    const/4 v11, 0x4

    goto :goto_19

    :cond_3f
    const v14, 0xac44

    goto :goto_18

    .line 135
    :goto_19
    invoke-virtual {v7, v11}, Lj3/f;->o(I)V

    move-object/from16 v38, v5

    const/16 v11, 0x9

    .line 136
    invoke-virtual {v7, v11}, Lj3/f;->g(I)I

    move-result v5

    const/4 v11, 0x1

    if-le v3, v11, :cond_42

    if-eqz v13, :cond_41

    .line 137
    invoke-virtual {v7}, Lj3/f;->f()Z

    move-result v11

    if-eqz v11, :cond_40

    const/16 v11, 0x10

    .line 138
    invoke-virtual {v7, v11}, Lj3/f;->o(I)V

    .line 139
    invoke-virtual {v7}, Lj3/f;->f()Z

    move-result v11

    if-eqz v11, :cond_40

    const/16 v11, 0x80

    .line 140
    invoke-virtual {v7, v11}, Lj3/f;->o(I)V

    :cond_40
    const/4 v11, 0x1

    goto :goto_1a

    .line 141
    :cond_41
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Invalid AC-4 DSI version: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lr1/f0;->b(Ljava/lang/String;)Lr1/f0;

    move-result-object v0

    throw v0

    :cond_42
    :goto_1a
    if-ne v13, v11, :cond_44

    .line 142
    invoke-virtual {v7}, Lj3/f;->b()I

    move-result v11

    move/from16 v39, v1

    const/16 v1, 0x42

    if-lt v11, v1, :cond_43

    .line 143
    invoke-virtual {v7, v1}, Lj3/f;->o(I)V

    .line 144
    invoke-virtual {v7}, Lj3/f;->c()V

    goto :goto_1b

    .line 145
    :cond_43
    const-string v0, "Invalid AC-4 DSI bitrate."

    invoke-static {v0}, Lr1/f0;->b(Ljava/lang/String;)Lr1/f0;

    move-result-object v0

    throw v0

    :cond_44
    move/from16 v39, v1

    .line 146
    :goto_1b
    new-instance v1, Ll2/c;

    invoke-direct {v1}, Ll2/c;-><init>()V

    const/4 v11, 0x0

    :goto_1c
    if-ge v11, v5, :cond_6c

    if-nez v13, :cond_45

    .line 147
    invoke-virtual {v7}, Lj3/f;->f()Z

    move-result v5

    const/4 v0, 0x5

    .line 148
    invoke-virtual {v7, v0}, Lj3/f;->g(I)I

    move-result v40

    .line 149
    invoke-virtual {v7, v0}, Lj3/f;->g(I)I

    move-result v41

    move/from16 v42, v9

    move/from16 v43, v12

    move/from16 v9, v40

    move/from16 v12, v41

    const/4 v0, 0x0

    const/16 v41, 0x0

    move/from16 v40, v15

    const/4 v15, 0x0

    goto :goto_20

    :cond_45
    move/from16 v25, v5

    const/16 v0, 0x8

    .line 150
    invoke-virtual {v7, v0}, Lj3/f;->g(I)I

    move-result v5

    move/from16 v40, v15

    .line 151
    invoke-virtual {v7, v0}, Lj3/f;->g(I)I

    move-result v15

    const/16 v0, 0xff

    if-ne v15, v0, :cond_46

    const/16 v0, 0x10

    .line 152
    invoke-virtual {v7, v0}, Lj3/f;->g(I)I

    move-result v42

    add-int v42, v42, v15

    :goto_1d
    const/4 v0, 0x2

    goto :goto_1e

    :cond_46
    move/from16 v42, v15

    goto :goto_1d

    :goto_1e
    if-le v5, v0, :cond_47

    const/16 v0, 0x8

    mul-int/lit8 v5, v42, 0x8

    .line 153
    invoke-virtual {v7, v5}, Lj3/f;->o(I)V

    const/4 v5, 0x1

    add-int/2addr v11, v5

    move/from16 v5, v25

    move/from16 v15, v40

    goto :goto_1c

    :cond_47
    const/16 v0, 0x8

    .line 154
    invoke-virtual {v7}, Lj3/f;->b()I

    move-result v15

    sub-int v15, v8, v15

    div-int/2addr v15, v0

    move/from16 v41, v5

    const/4 v0, 0x5

    .line 155
    invoke-virtual {v7, v0}, Lj3/f;->g(I)I

    move-result v5

    const/16 v0, 0x1f

    if-ne v5, v0, :cond_48

    const/4 v0, 0x1

    goto :goto_1f

    :cond_48
    const/4 v0, 0x0

    :goto_1f
    move/from16 v43, v12

    move/from16 v12, v41

    move/from16 v41, v15

    move/from16 v15, v42

    move/from16 v42, v9

    move v9, v5

    const/4 v5, 0x0

    .line 156
    :goto_20
    iput v12, v1, Ll2/c;->f:I

    if-nez v5, :cond_49

    if-nez v0, :cond_49

    const/4 v6, 0x6

    if-ne v9, v6, :cond_49

    move-object/from16 v44, v10

    const/4 v0, 0x1

    goto/16 :goto_33

    :cond_49
    const/4 v6, 0x3

    .line 157
    invoke-virtual {v7, v6}, Lj3/f;->g(I)I

    move-result v4

    iput v4, v1, Ll2/c;->g:I

    .line 158
    invoke-virtual {v7}, Lj3/f;->f()Z

    move-result v4

    if-eqz v4, :cond_4a

    const/4 v4, 0x5

    .line 159
    invoke-virtual {v7, v4}, Lj3/f;->o(I)V

    :cond_4a
    const/4 v4, 0x2

    .line 160
    invoke-virtual {v7, v4}, Lj3/f;->o(I)V

    const/4 v6, 0x1

    if-ne v13, v6, :cond_4b

    if-eq v12, v6, :cond_4c

    if-ne v12, v4, :cond_4b

    goto :goto_22

    :cond_4b
    :goto_21
    const/4 v4, 0x5

    goto :goto_23

    .line 161
    :cond_4c
    :goto_22
    invoke-virtual {v7, v4}, Lj3/f;->o(I)V

    goto :goto_21

    .line 162
    :goto_23
    invoke-virtual {v7, v4}, Lj3/f;->o(I)V

    const/16 v4, 0xa

    .line 163
    invoke-virtual {v7, v4}, Lj3/f;->o(I)V

    if-ne v13, v6, :cond_53

    if-lez v12, :cond_4d

    .line 164
    invoke-virtual {v7}, Lj3/f;->f()Z

    move-result v4

    iput-boolean v4, v1, Ll2/c;->a:Z

    .line 165
    :cond_4d
    iget-boolean v4, v1, Ll2/c;->a:Z

    if-eqz v4, :cond_52

    if-eq v12, v6, :cond_4e

    const/4 v4, 0x2

    if-ne v12, v4, :cond_4f

    :cond_4e
    const/4 v4, 0x5

    goto :goto_25

    :cond_4f
    :goto_24
    const/16 v6, 0x18

    goto :goto_26

    .line 166
    :goto_25
    invoke-virtual {v7, v4}, Lj3/f;->g(I)I

    move-result v6

    if-ltz v6, :cond_50

    const/16 v4, 0xf

    if-gt v6, v4, :cond_50

    .line 167
    iput v6, v1, Ll2/c;->b:I

    :cond_50
    const/16 v4, 0xb

    if-lt v6, v4, :cond_51

    const/16 v4, 0xe

    if-gt v6, v4, :cond_51

    .line 168
    invoke-virtual {v7}, Lj3/f;->f()Z

    move-result v4

    iput-boolean v4, v1, Ll2/c;->d:Z

    const/4 v4, 0x2

    .line 169
    invoke-virtual {v7, v4}, Lj3/f;->g(I)I

    move-result v6

    iput v6, v1, Ll2/c;->e:I

    goto :goto_24

    :cond_51
    const/4 v4, 0x2

    goto :goto_24

    .line 170
    :goto_26
    invoke-virtual {v7, v6}, Lj3/f;->o(I)V

    const/4 v6, 0x1

    goto :goto_27

    :cond_52
    const/4 v4, 0x2

    :goto_27
    if-eq v12, v6, :cond_55

    if-ne v12, v4, :cond_53

    goto :goto_28

    :cond_53
    move-object/from16 v44, v10

    :cond_54
    const/4 v4, 0x1

    goto :goto_2a

    .line 171
    :cond_55
    :goto_28
    invoke-virtual {v7}, Lj3/f;->f()Z

    move-result v6

    if-eqz v6, :cond_56

    .line 172
    invoke-virtual {v7}, Lj3/f;->f()Z

    move-result v6

    if-eqz v6, :cond_56

    .line 173
    invoke-virtual {v7, v4}, Lj3/f;->o(I)V

    .line 174
    :cond_56
    invoke-virtual {v7}, Lj3/f;->f()Z

    move-result v4

    if-eqz v4, :cond_53

    .line 175
    invoke-virtual {v7}, Lj3/f;->n()V

    const/16 v4, 0x8

    .line 176
    invoke-virtual {v7, v4}, Lj3/f;->g(I)I

    move-result v6

    move-object/from16 v44, v10

    const/4 v10, 0x0

    :goto_29
    if-ge v10, v6, :cond_54

    .line 177
    invoke-virtual {v7, v4}, Lj3/f;->o(I)V

    const/4 v4, 0x1

    add-int/2addr v10, v4

    const/16 v4, 0x8

    goto :goto_29

    :goto_2a
    if-nez v5, :cond_5e

    if-eqz v0, :cond_57

    goto/16 :goto_31

    .line 178
    :cond_57
    invoke-virtual {v7}, Lj3/f;->n()V

    if-eqz v9, :cond_5c

    if-eq v9, v4, :cond_5c

    const/4 v0, 0x2

    if-eq v9, v0, :cond_5c

    const/4 v0, 0x3

    if-eq v9, v0, :cond_5a

    const/4 v0, 0x4

    if-eq v9, v0, :cond_5a

    const/4 v0, 0x5

    if-eq v9, v0, :cond_58

    const/4 v0, 0x7

    .line 179
    invoke-virtual {v7, v0}, Lj3/f;->g(I)I

    move-result v5

    const/4 v0, 0x0

    :goto_2b
    if-ge v0, v5, :cond_60

    const/16 v6, 0x8

    .line 180
    invoke-virtual {v7, v6}, Lj3/f;->o(I)V

    add-int/2addr v0, v4

    goto :goto_2b

    :cond_58
    if-nez v12, :cond_59

    .line 181
    invoke-static {v7, v1}, Ll2/b;->p(Lj3/f;Ll2/c;)V

    goto :goto_32

    :cond_59
    const/4 v0, 0x3

    .line 182
    invoke-virtual {v7, v0}, Lj3/f;->g(I)I

    move-result v5

    const/4 v0, 0x0

    :goto_2c
    const/4 v6, 0x2

    add-int/lit8 v9, v5, 0x2

    if-ge v0, v9, :cond_60

    .line 183
    invoke-static {v7, v1}, Ll2/b;->q(Lj3/f;Ll2/c;)V

    add-int/2addr v0, v4

    goto :goto_2c

    :cond_5a
    if-nez v12, :cond_5b

    const/4 v0, 0x0

    const/4 v5, 0x3

    :goto_2d
    if-ge v0, v5, :cond_60

    .line 184
    invoke-static {v7, v1}, Ll2/b;->p(Lj3/f;Ll2/c;)V

    add-int/2addr v0, v4

    goto :goto_2d

    :cond_5b
    const/4 v5, 0x3

    const/4 v0, 0x0

    :goto_2e
    if-ge v0, v5, :cond_60

    .line 185
    invoke-static {v7, v1}, Ll2/b;->q(Lj3/f;Ll2/c;)V

    add-int/2addr v0, v4

    const/4 v5, 0x3

    goto :goto_2e

    :cond_5c
    if-nez v12, :cond_5d

    const/4 v0, 0x0

    const/4 v5, 0x2

    :goto_2f
    if-ge v0, v5, :cond_60

    .line 186
    invoke-static {v7, v1}, Ll2/b;->p(Lj3/f;Ll2/c;)V

    add-int/2addr v0, v4

    goto :goto_2f

    :cond_5d
    const/4 v5, 0x2

    const/4 v0, 0x0

    :goto_30
    if-ge v0, v5, :cond_60

    .line 187
    invoke-static {v7, v1}, Ll2/b;->q(Lj3/f;Ll2/c;)V

    add-int/2addr v0, v4

    const/4 v5, 0x2

    goto :goto_30

    :cond_5e
    :goto_31
    if-nez v12, :cond_5f

    .line 188
    invoke-static {v7, v1}, Ll2/b;->p(Lj3/f;Ll2/c;)V

    goto :goto_32

    .line 189
    :cond_5f
    invoke-static {v7, v1}, Ll2/b;->q(Lj3/f;Ll2/c;)V

    .line 190
    :cond_60
    :goto_32
    invoke-virtual {v7}, Lj3/f;->n()V

    .line 191
    invoke-virtual {v7}, Lj3/f;->f()Z

    move-result v0

    :goto_33
    if-eqz v0, :cond_61

    const/4 v0, 0x7

    .line 192
    invoke-virtual {v7, v0}, Lj3/f;->g(I)I

    move-result v4

    const/4 v5, 0x0

    :goto_34
    if-ge v5, v4, :cond_62

    const/16 v6, 0xf

    .line 193
    invoke-virtual {v7, v6}, Lj3/f;->o(I)V

    const/4 v9, 0x1

    add-int/2addr v5, v9

    goto :goto_34

    :cond_61
    const/4 v0, 0x7

    :cond_62
    if-lez v12, :cond_68

    .line 194
    invoke-virtual {v7}, Lj3/f;->f()Z

    move-result v4

    if-eqz v4, :cond_65

    .line 195
    invoke-virtual {v7}, Lj3/f;->b()I

    move-result v4

    const/16 v5, 0x42

    if-ge v4, v5, :cond_63

    const/4 v4, 0x0

    goto :goto_35

    .line 196
    :cond_63
    invoke-virtual {v7, v5}, Lj3/f;->o(I)V

    const/4 v4, 0x1

    :goto_35
    if-eqz v4, :cond_64

    goto :goto_36

    .line 197
    :cond_64
    const-string v0, "Can\'t parse bitrate DSI."

    invoke-static {v0}, Lr1/f0;->b(Ljava/lang/String;)Lr1/f0;

    move-result-object v0

    throw v0

    :cond_65
    const/16 v5, 0x42

    .line 198
    :goto_36
    invoke-virtual {v7}, Lj3/f;->f()Z

    move-result v4

    if-eqz v4, :cond_67

    .line 199
    invoke-virtual {v7}, Lj3/f;->c()V

    const/16 v4, 0x10

    .line 200
    invoke-virtual {v7, v4}, Lj3/f;->g(I)I

    move-result v6

    .line 201
    invoke-virtual {v7, v6}, Lj3/f;->p(I)V

    const/4 v6, 0x5

    .line 202
    invoke-virtual {v7, v6}, Lj3/f;->g(I)I

    move-result v9

    const/4 v6, 0x0

    :goto_37
    if-ge v6, v9, :cond_66

    const/4 v10, 0x3

    .line 203
    invoke-virtual {v7, v10}, Lj3/f;->o(I)V

    const/16 v10, 0x8

    .line 204
    invoke-virtual {v7, v10}, Lj3/f;->o(I)V

    const/4 v12, 0x1

    add-int/2addr v6, v12

    goto :goto_37

    :cond_66
    :goto_38
    const/16 v10, 0x8

    const/4 v12, 0x1

    goto :goto_39

    :cond_67
    const/16 v4, 0x10

    goto :goto_38

    :cond_68
    const/16 v4, 0x10

    const/16 v5, 0x42

    goto :goto_38

    .line 205
    :goto_39
    invoke-virtual {v7}, Lj3/f;->c()V

    if-ne v13, v12, :cond_6a

    .line 206
    invoke-virtual {v7}, Lj3/f;->b()I

    move-result v6

    sub-int/2addr v8, v6

    div-int/2addr v8, v10

    sub-int v8, v8, v41

    if-lt v15, v8, :cond_69

    sub-int/2addr v15, v8

    .line 207
    invoke-virtual {v7, v15}, Lj3/f;->p(I)V

    goto :goto_3a

    .line 208
    :cond_69
    const-string v0, "pres_bytes is smaller than presentation bytes read."

    invoke-static {v0}, Lr1/f0;->b(Ljava/lang/String;)Lr1/f0;

    move-result-object v0

    throw v0

    .line 209
    :cond_6a
    :goto_3a
    iget-boolean v6, v1, Ll2/c;->a:Z

    if-eqz v6, :cond_6d

    iget v6, v1, Ll2/c;->b:I

    const/4 v7, -0x1

    if-eq v6, v7, :cond_6b

    goto :goto_3b

    .line 210
    :cond_6b
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Can\'t determine channel mode of presentation "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lr1/f0;->b(Ljava/lang/String;)Lr1/f0;

    move-result-object v0

    throw v0

    :cond_6c
    move/from16 v42, v9

    move-object/from16 v44, v10

    move/from16 v43, v12

    move/from16 v40, v15

    const/4 v0, 0x7

    const/16 v4, 0x10

    const/16 v5, 0x42

    .line 211
    :cond_6d
    :goto_3b
    iget-boolean v6, v1, Ll2/c;->a:Z

    if-eqz v6, :cond_73

    .line 212
    iget v6, v1, Ll2/c;->b:I

    iget-boolean v7, v1, Ll2/c;->d:Z

    iget v8, v1, Ll2/c;->e:I

    packed-switch v6, :pswitch_data_0

    const/16 v9, 0xb

    const/16 v33, -0x1

    goto :goto_3c

    :pswitch_0
    const/16 v9, 0xb

    const/16 v33, 0x18

    goto :goto_3c

    :pswitch_1
    const/16 v9, 0xb

    const/16 v33, 0xe

    goto :goto_3c

    :pswitch_2
    const/16 v9, 0xb

    const/16 v33, 0xd

    goto :goto_3c

    :pswitch_3
    const/16 v9, 0xb

    const/16 v33, 0xc

    goto :goto_3c

    :pswitch_4
    const/16 v9, 0xb

    const/16 v33, 0xb

    goto :goto_3c

    :pswitch_5
    const/16 v9, 0xb

    const/16 v33, 0x8

    goto :goto_3c

    :pswitch_6
    const/16 v9, 0xb

    const/16 v33, 0x7

    goto :goto_3c

    :pswitch_7
    const/16 v9, 0xb

    const/16 v33, 0x6

    goto :goto_3c

    :pswitch_8
    const/16 v9, 0xb

    const/16 v33, 0x5

    goto :goto_3c

    :pswitch_9
    const/16 v9, 0xb

    const/16 v33, 0x3

    goto :goto_3c

    :pswitch_a
    const/16 v9, 0xb

    const/16 v33, 0x2

    goto :goto_3c

    :pswitch_b
    const/16 v9, 0xb

    const/16 v33, 0x1

    :goto_3c
    if-eq v6, v9, :cond_6f

    const/16 v9, 0xc

    if-eq v6, v9, :cond_6f

    const/16 v9, 0xd

    if-eq v6, v9, :cond_6f

    const/16 v9, 0xe

    if-ne v6, v9, :cond_6e

    goto :goto_3d

    :cond_6e
    const/4 v6, 0x1

    goto :goto_3e

    :cond_6f
    :goto_3d
    if-nez v7, :cond_70

    add-int/lit8 v33, v33, -0x2

    :cond_70
    if-eqz v8, :cond_72

    const/4 v6, 0x1

    if-eq v8, v6, :cond_71

    goto :goto_3e

    :cond_71
    add-int/lit8 v33, v33, -0x2

    goto :goto_3e

    :cond_72
    const/4 v6, 0x1

    add-int/lit8 v33, v33, -0x4

    :goto_3e
    move/from16 v7, v33

    goto :goto_3f

    :cond_73
    const/4 v6, 0x1

    .line 213
    iget v7, v1, Ll2/c;->c:I

    if-lez v7, :cond_74

    add-int/2addr v7, v6

    .line 214
    iget v6, v1, Ll2/c;->g:I

    const/4 v8, 0x4

    if-ne v6, v8, :cond_7a

    const/16 v6, 0x11

    if-ne v7, v6, :cond_7a

    const/16 v7, 0x15

    goto :goto_3f

    .line 215
    :cond_74
    iget v6, v1, Ll2/c;->g:I

    if-eqz v6, :cond_75

    const/4 v7, 0x1

    if-eq v6, v7, :cond_79

    const/4 v7, 0x2

    if-eq v6, v7, :cond_78

    const/4 v7, 0x3

    if-eq v6, v7, :cond_77

    const/4 v7, 0x4

    if-eq v6, v7, :cond_76

    .line 216
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "AC-4 level "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v7, v1, Ll2/c;->g:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " has not been defined."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lu1/a;->p(Ljava/lang/String;)V

    :cond_75
    const/4 v7, 0x2

    goto :goto_3f

    :cond_76
    const/16 v7, 0xc

    goto :goto_3f

    :cond_77
    const/16 v7, 0xa

    goto :goto_3f

    :cond_78
    const/16 v7, 0x8

    goto :goto_3f

    :cond_79
    const/4 v7, 0x6

    :cond_7a
    :goto_3f
    if-lez v7, :cond_7b

    .line 217
    iget v6, v1, Ll2/c;->f:I

    iget v1, v1, Ll2/c;->g:I

    .line 218
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v8, 0x3

    new-array v9, v8, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v3, v9, v8

    const/4 v3, 0x1

    aput-object v6, v9, v3

    const/4 v3, 0x2

    aput-object v1, v9, v3

    .line 219
    sget-object v1, Lu1/f0;->a:Ljava/lang/String;

    .line 220
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v3, "ac-4.%02d.%02d.%02d"

    invoke-static {v1, v3, v9}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 221
    new-instance v3, Lr1/o;

    invoke-direct {v3}, Lr1/o;-><init>()V

    .line 222
    iput-object v2, v3, Lr1/o;->a:Ljava/lang/String;

    .line 223
    invoke-static/range {v27 .. v27}, Lr1/e0;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v3, Lr1/o;->n:Ljava/lang/String;

    .line 224
    iput v7, v3, Lr1/o;->F:I

    .line 225
    iput v14, v3, Lr1/o;->G:I

    move-object/from16 v10, v44

    .line 226
    iput-object v10, v3, Lr1/o;->r:Lr1/l;

    move-object/from16 v6, p5

    .line 227
    iput-object v6, v3, Lr1/o;->d:Ljava/lang/String;

    .line 228
    iput-object v1, v3, Lr1/o;->j:Ljava/lang/String;

    .line 229
    new-instance v1, Lr1/p;

    invoke-direct {v1, v3}, Lr1/p;-><init>(Lr1/o;)V

    move-object/from16 v7, p8

    .line 230
    iput-object v1, v7, La9/a;->e:Ljava/lang/Object;

    move/from16 v3, v35

    move/from16 v14, v36

    move/from16 v9, v39

    move/from16 v12, v43

    const/4 v0, 0x2

    const/16 v1, 0xc

    const/16 v4, 0x20

    const/4 v5, 0x6

    const/16 v13, 0x9

    const/4 v15, 0x4

    const/16 v17, 0x3

    move-object/from16 v8, p0

    goto/16 :goto_54

    .line 231
    :cond_7b
    const-string v0, "Cannot determine channel count of presentation."

    invoke-static {v0}, Lr1/f0;->b(Ljava/lang/String;)Lr1/f0;

    move-result-object v0

    throw v0

    .line 232
    :cond_7c
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unsupported AC-4 DSI version: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lr1/f0;->b(Ljava/lang/String;)Lr1/f0;

    move-result-object v0

    throw v0

    :cond_7d
    move/from16 v39, v1

    move-object/from16 v38, v5

    move-object v7, v6

    move/from16 v42, v9

    move/from16 v43, v12

    move/from16 v40, v15

    const/4 v0, 0x7

    const/16 v5, 0x42

    move-object v6, v4

    const/16 v4, 0x10

    const v1, 0x646d6c70

    if-ne v2, v1, :cond_7f

    if-lez v43, :cond_7e

    move-object/from16 v14, p9

    move-object/from16 v13, v26

    move/from16 v9, v39

    move/from16 v1, v40

    move/from16 v5, v42

    move/from16 v8, v43

    move v12, v8

    const/4 v2, 0x0

    const/16 v17, 0x3

    const/16 v36, 0x2

    goto/16 :goto_61

    .line 233
    :cond_7e
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Invalid sample rate for Dolby TrueHD MLP stream: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v12, v43

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v1, v0}, Lr1/f0;->a(Ljava/lang/RuntimeException;Ljava/lang/String;)Lr1/f0;

    move-result-object v0

    throw v0

    :cond_7f
    move/from16 v12, v43

    const v1, 0x64647473

    if-eq v2, v1, :cond_80

    const v1, 0x75647473

    if-ne v2, v1, :cond_81

    :cond_80
    move/from16 v9, v39

    const/4 v0, 0x2

    const/16 v1, 0xc

    const/16 v4, 0x20

    const/4 v5, 0x6

    const/16 v13, 0x9

    const/4 v15, 0x4

    const/16 v17, 0x3

    move-object/from16 v8, p0

    goto/16 :goto_53

    :cond_81
    const v1, 0x644f7073

    if-ne v2, v1, :cond_82

    const/16 v1, 0x8

    add-int/lit8 v9, v42, -0x8

    .line 234
    sget-object v2, Lf3/e;->a:[B

    array-length v3, v2

    add-int/2addr v3, v9

    invoke-static {v2, v3}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v3

    add-int/lit8 v15, v40, 0x8

    move-object/from16 v8, p0

    .line 235
    invoke-virtual {v8, v15}, Lu1/q;->O(I)V

    .line 236
    array-length v2, v2

    invoke-virtual {v8, v2, v9, v3}, Lu1/q;->l(II[B)V

    .line 237
    invoke-static {v3}, Lv1/o;->a([B)Ljava/util/ArrayList;

    move-result-object v14

    :goto_40
    move-object/from16 v13, v26

    move/from16 v8, v35

    move/from16 v9, v39

    move/from16 v1, v40

    move/from16 v5, v42

    const/4 v2, 0x0

    const/16 v17, 0x3

    goto/16 :goto_61

    :cond_82
    const/16 v1, 0x8

    move-object/from16 v8, p0

    const v3, 0x64664c61

    if-ne v2, v3, :cond_83

    const/16 v3, 0xc

    add-int/lit8 v9, v42, -0xc

    add-int/lit8 v2, v42, -0x8

    .line 238
    new-array v2, v2, [B

    const/16 v11, 0x66

    const/4 v13, 0x0

    .line 239
    aput-byte v11, v2, v13

    const/16 v11, 0x4c

    const/4 v13, 0x1

    .line 240
    aput-byte v11, v2, v13

    const/16 v11, 0x61

    const/4 v13, 0x2

    .line 241
    aput-byte v11, v2, v13

    const/16 v11, 0x43

    const/4 v13, 0x3

    .line 242
    aput-byte v11, v2, v13

    add-int/lit8 v15, v40, 0xc

    .line 243
    invoke-virtual {v8, v15}, Lu1/q;->O(I)V

    const/4 v11, 0x4

    .line 244
    invoke-virtual {v8, v11, v9, v2}, Lu1/q;->l(II[B)V

    .line 245
    invoke-static {v2}, Lu7/g0;->r(Ljava/lang/Object;)Lu7/y0;

    move-result-object v14

    goto :goto_40

    :cond_83
    const/16 v3, 0xc

    const v9, 0x616c6163

    if-ne v2, v9, :cond_84

    add-int/lit8 v2, v42, -0xc

    .line 246
    new-array v11, v2, [B

    add-int/lit8 v15, v40, 0xc

    .line 247
    invoke-virtual {v8, v15}, Lu1/q;->O(I)V

    const/4 v3, 0x0

    .line 248
    invoke-virtual {v8, v3, v2, v11}, Lu1/q;->l(II[B)V

    .line 249
    sget-object v2, Lu1/c;->a:[B

    .line 250
    new-instance v2, Lu1/q;

    invoke-direct {v2, v11}, Lu1/q;-><init>([B)V

    const/4 v3, 0x5

    .line 251
    invoke-virtual {v2, v3}, Lu1/q;->O(I)V

    .line 252
    invoke-virtual {v2}, Lu1/q;->B()I

    move-result v3

    const/16 v13, 0x9

    .line 253
    invoke-virtual {v2, v13}, Lu1/q;->O(I)V

    .line 254
    invoke-virtual {v2}, Lu1/q;->B()I

    move-result v13

    const/16 v14, 0x14

    .line 255
    invoke-virtual {v2, v14}, Lu1/q;->O(I)V

    .line 256
    invoke-virtual {v2}, Lu1/q;->F()I

    move-result v2

    .line 257
    filled-new-array {v2, v13, v3}, [I

    move-result-object v2

    const/4 v3, 0x0

    .line 258
    aget v13, v2, v3

    const/4 v3, 0x1

    .line 259
    aget v14, v2, v3

    const/4 v3, 0x2

    .line 260
    aget v2, v2, v3

    .line 261
    sget-object v3, Lu1/f0;->a:Ljava/lang/String;

    .line 262
    sget-object v3, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-static {v2, v3}, Lu1/f0;->t(ILjava/nio/ByteOrder;)I

    move-result v2

    .line 263
    invoke-static {v11}, Lu7/g0;->r(Ljava/lang/Object;)Lu7/y0;

    move-result-object v3

    move/from16 v20, v2

    move v8, v13

    move/from16 v36, v14

    move-object/from16 v13, v26

    move/from16 v9, v39

    move/from16 v1, v40

    move/from16 v5, v42

    const/4 v2, 0x0

    const/16 v17, 0x3

    move-object v14, v3

    goto/16 :goto_61

    :cond_84
    const v3, 0x69616362

    if-ne v2, v3, :cond_93

    const/16 v13, 0x9

    add-int/lit8 v15, v40, 0x9

    .line 264
    invoke-virtual {v8, v15}, Lu1/q;->O(I)V

    .line 265
    invoke-virtual/range {p0 .. p0}, Lu1/q;->G()I

    move-result v2

    .line 266
    new-array v3, v2, [B

    const/4 v11, 0x0

    .line 267
    invoke-virtual {v8, v11, v2, v3}, Lu1/q;->l(II[B)V

    .line 268
    sget-object v2, Lu1/c;->a:[B

    .line 269
    new-instance v2, Lu1/q;

    invoke-direct {v2, v3}, Lu1/q;-><init>([B)V

    const/4 v11, 0x0

    const/4 v14, 0x0

    .line 270
    :goto_41
    invoke-virtual {v2}, Lu1/q;->a()I

    move-result v15

    if-lez v15, :cond_85

    if-eqz v11, :cond_86

    if-nez v14, :cond_85

    goto :goto_42

    :cond_85
    const/4 v0, 0x2

    const/4 v5, 0x6

    const/4 v15, 0x4

    const/16 v17, 0x3

    goto/16 :goto_4d

    .line 271
    :cond_86
    :goto_42
    invoke-virtual {v2}, Lu1/q;->B()I

    move-result v15

    const/16 v17, 0x3

    shr-int/lit8 v0, v15, 0x3

    const/16 v18, 0x2

    and-int/lit8 v21, v15, 0x2

    if-eqz v21, :cond_87

    const/16 v18, 0x1

    :goto_43
    const/16 v21, 0x1

    goto :goto_44

    :cond_87
    const/16 v18, 0x0

    goto :goto_43

    :goto_44
    and-int/lit8 v15, v15, 0x1

    if-eqz v15, :cond_88

    const/4 v15, 0x1

    goto :goto_45

    :cond_88
    const/4 v15, 0x0

    .line 272
    :goto_45
    invoke-virtual {v2}, Lu1/q;->G()I

    move-result v21

    const/4 v1, 0x4

    if-le v0, v1, :cond_8a

    const/16 v1, 0x18

    if-ge v0, v1, :cond_8a

    if-eqz v18, :cond_8a

    .line 273
    :goto_46
    invoke-virtual {v2}, Lu1/q;->B()I

    move-result v1

    const/16 v4, 0x80

    and-int/2addr v1, v4

    if-eqz v1, :cond_89

    const/16 v4, 0x10

    goto :goto_46

    .line 274
    :cond_89
    :goto_47
    invoke-virtual {v2}, Lu1/q;->B()I

    move-result v1

    and-int/2addr v1, v4

    if-eqz v1, :cond_8a

    const/16 v4, 0x80

    goto :goto_47

    :cond_8a
    if-eqz v15, :cond_8b

    .line 275
    invoke-virtual {v2}, Lu1/q;->G()I

    move-result v1

    .line 276
    invoke-virtual {v2, v1}, Lu1/q;->P(I)V

    .line 277
    :cond_8b
    iget v1, v2, Lu1/q;->b:I

    add-int v1, v1, v21

    const/16 v4, 0x1f

    if-ne v0, v4, :cond_8d

    const/4 v4, 0x4

    .line 278
    invoke-virtual {v2, v4}, Lu1/q;->P(I)V

    .line 279
    invoke-virtual {v2}, Lu1/q;->B()I

    move-result v0

    .line 280
    invoke-virtual {v2}, Lu1/q;->B()I

    move-result v4

    .line 281
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v11, 0x2

    new-array v15, v11, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v0, v15, v11

    const/4 v0, 0x1

    aput-object v4, v15, v0

    sget-object v0, Lu1/f0;->a:Ljava/lang/String;

    .line 282
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v4, "iamf.%03X.%03X"

    invoke-static {v0, v4, v15}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    move-object v11, v0

    :cond_8c
    const/4 v0, 0x2

    const/4 v5, 0x6

    const/4 v15, 0x4

    goto :goto_4c

    :cond_8d
    if-nez v0, :cond_8c

    .line 283
    :goto_48
    invoke-virtual {v2}, Lu1/q;->B()I

    move-result v0

    const/16 v4, 0x80

    and-int/2addr v0, v4

    if-eqz v0, :cond_8e

    goto :goto_48

    .line 284
    :cond_8e
    sget-object v0, Lj$/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    const/4 v15, 0x4

    invoke-virtual {v2, v0, v15}, Lu1/q;->z(Ljava/nio/charset/Charset;I)Ljava/lang/String;

    move-result-object v0

    .line 285
    const-string v14, "mp4a"

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_91

    .line 286
    :goto_49
    invoke-virtual {v2}, Lu1/q;->B()I

    move-result v14

    and-int/2addr v14, v4

    if-eqz v14, :cond_8f

    goto :goto_49

    :cond_8f
    const/4 v14, 0x2

    .line 287
    invoke-virtual {v2, v14}, Lu1/q;->P(I)V

    .line 288
    new-instance v4, Lj3/f;

    invoke-direct {v4}, Lj3/f;-><init>()V

    .line 289
    invoke-virtual {v4, v2}, Lj3/f;->l(Lu1/q;)V

    const/4 v5, 0x5

    .line 290
    invoke-virtual {v4, v5}, Lj3/f;->g(I)I

    move-result v9

    const/16 v5, 0x1f

    if-ne v9, v5, :cond_90

    const/4 v5, 0x6

    .line 291
    invoke-virtual {v4, v5}, Lj3/f;->g(I)I

    move-result v4

    const/16 v9, 0x20

    add-int/2addr v4, v9

    move v9, v4

    goto :goto_4a

    :cond_90
    const/4 v5, 0x6

    .line 292
    :goto_4a
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ".40."

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_4b
    move-object v14, v0

    const/4 v0, 0x2

    goto :goto_4c

    :cond_91
    const/4 v5, 0x6

    goto :goto_4b

    .line 293
    :goto_4c
    invoke-virtual {v2, v1}, Lu1/q;->O(I)V

    const/4 v0, 0x7

    const/16 v1, 0x8

    const/16 v4, 0x10

    const/16 v5, 0x42

    const v9, 0x616c6163

    goto/16 :goto_41

    :goto_4d
    if-eqz v11, :cond_92

    if-eqz v14, :cond_92

    .line 294
    const-string v1, "."

    .line 295
    invoke-static {v11, v1, v14}, Lg/b;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_4e

    :cond_92
    const/4 v1, 0x0

    .line 296
    :goto_4e
    invoke-static {v3}, Lu7/g0;->r(Ljava/lang/Object;)Lu7/y0;

    move-result-object v14

    move-object v13, v1

    move/from16 v8, v35

    move/from16 v9, v39

    :goto_4f
    move/from16 v1, v40

    move/from16 v5, v42

    const/4 v2, 0x0

    goto/16 :goto_61

    :cond_93
    const/4 v0, 0x2

    const/4 v5, 0x6

    const/16 v13, 0x9

    const/4 v15, 0x4

    const/16 v17, 0x3

    const v1, 0x70636d43

    if-ne v2, v1, :cond_99

    const/16 v1, 0xc

    add-int/lit8 v2, v40, 0xc

    .line 297
    invoke-virtual {v8, v2}, Lu1/q;->O(I)V

    .line 298
    invoke-virtual/range {p0 .. p0}, Lu1/q;->B()I

    move-result v2

    const/4 v3, 0x1

    and-int/2addr v2, v3

    if-eqz v2, :cond_94

    .line 299
    sget-object v2, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    goto :goto_50

    :cond_94
    sget-object v2, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    .line 300
    :goto_50
    invoke-virtual/range {p0 .. p0}, Lu1/q;->B()I

    move-result v3

    const v4, 0x6970636d

    move/from16 v9, v39

    if-ne v9, v4, :cond_95

    .line 301
    invoke-static {v3, v2}, Lu1/f0;->t(ILjava/nio/ByteOrder;)I

    move-result v2

    const/4 v3, -0x1

    const/16 v4, 0x20

    goto :goto_52

    :cond_95
    const v4, 0x6670636d

    if-ne v9, v4, :cond_96

    const/16 v4, 0x20

    if-ne v3, v4, :cond_97

    .line 302
    sget-object v3, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    .line 303
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_97

    const/4 v2, 0x4

    :goto_51
    const/4 v3, -0x1

    goto :goto_52

    :cond_96
    const/16 v4, 0x20

    :cond_97
    move/from16 v2, v20

    goto :goto_51

    :goto_52
    move-object/from16 v14, p9

    move/from16 v20, v2

    move-object/from16 v13, v26

    if-eq v2, v3, :cond_98

    move-object/from16 v38, v30

    :cond_98
    move/from16 v8, v35

    goto :goto_4f

    :cond_99
    move/from16 v9, v39

    const/16 v1, 0xc

    const/16 v4, 0x20

    move/from16 v3, v35

    move/from16 v14, v36

    goto :goto_54

    .line 304
    :goto_53
    new-instance v2, Lr1/o;

    invoke-direct {v2}, Lr1/o;-><init>()V

    .line 305
    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lr1/o;->a:Ljava/lang/String;

    .line 306
    invoke-static/range {v38 .. v38}, Lr1/e0;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lr1/o;->n:Ljava/lang/String;

    move/from16 v14, v36

    .line 307
    iput v14, v2, Lr1/o;->F:I

    move/from16 v3, v35

    .line 308
    iput v3, v2, Lr1/o;->G:I

    .line 309
    iput-object v10, v2, Lr1/o;->r:Lr1/l;

    .line 310
    iput-object v6, v2, Lr1/o;->d:Ljava/lang/String;

    .line 311
    new-instance v11, Lr1/p;

    invoke-direct {v11, v2}, Lr1/p;-><init>(Lr1/o;)V

    .line 312
    iput-object v11, v7, La9/a;->e:Ljava/lang/Object;

    :goto_54
    move v8, v3

    move/from16 v36, v14

    move-object/from16 v13, v26

    move/from16 v1, v40

    move/from16 v5, v42

    const/4 v2, 0x0

    move-object/from16 v14, p9

    goto/16 :goto_61

    :goto_55
    if-ne v2, v11, :cond_9a

    move/from16 v1, v40

    move v2, v1

    move/from16 v5, v42

    :goto_56
    const/4 v3, -0x1

    goto :goto_5b

    .line 313
    :cond_9a
    iget v2, v8, Lu1/q;->b:I

    move/from16 v1, v40

    if-lt v2, v1, :cond_9b

    const/4 v4, 0x1

    :goto_57
    const/4 v5, 0x0

    goto :goto_58

    :cond_9b
    const/4 v4, 0x0

    goto :goto_57

    .line 314
    :goto_58
    invoke-static {v5, v4}, Ll2/b;->b(Ljava/lang/String;Z)V

    :goto_59
    sub-int v4, v2, v1

    move/from16 v5, v42

    if-ge v4, v5, :cond_9e

    .line 315
    invoke-virtual {v8, v2}, Lu1/q;->O(I)V

    .line 316
    invoke-virtual/range {p0 .. p0}, Lu1/q;->o()I

    move-result v4

    if-lez v4, :cond_9c

    const/4 v13, 0x1

    goto :goto_5a

    :cond_9c
    const/4 v13, 0x0

    .line 317
    :goto_5a
    invoke-static {v3, v13}, Ll2/b;->b(Ljava/lang/String;Z)V

    .line 318
    invoke-virtual/range {p0 .. p0}, Lu1/q;->o()I

    move-result v13

    if-ne v13, v11, :cond_9d

    goto :goto_56

    :cond_9d
    add-int/2addr v2, v4

    move/from16 v42, v5

    const/4 v5, 0x0

    const/16 v13, 0x9

    goto :goto_59

    :cond_9e
    const/4 v2, -0x1

    goto :goto_56

    :goto_5b
    if-eq v2, v3, :cond_a5

    .line 319
    invoke-static {v2, v8}, Lf3/e;->c(ILu1/q;)Lf2/y0;

    move-result-object v2

    .line 320
    iget-object v4, v2, Lf2/y0;->c:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    iget-object v11, v2, Lf2/y0;->d:Ljava/lang/Object;

    check-cast v11, [B

    if-eqz v11, :cond_a4

    .line 321
    const-string v13, "audio/vorbis"

    invoke-virtual {v13, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_a2

    .line 322
    new-instance v13, Lu1/q;

    invoke-direct {v13, v11}, Lu1/q;-><init>([B)V

    const/4 v3, 0x1

    .line 323
    invoke-virtual {v13, v3}, Lu1/q;->P(I)V

    const/4 v15, 0x0

    .line 324
    :goto_5c
    invoke-virtual {v13}, Lu1/q;->a()I

    move-result v24

    if-lez v24, :cond_9f

    invoke-virtual {v13}, Lu1/q;->k()I

    move-result v3

    move-object/from16 v31, v2

    const/16 v2, 0xff

    if-ne v3, v2, :cond_a0

    add-int/2addr v15, v2

    const/4 v3, 0x1

    .line 325
    invoke-virtual {v13, v3}, Lu1/q;->P(I)V

    move-object/from16 v2, v31

    goto :goto_5c

    :cond_9f
    move-object/from16 v31, v2

    const/16 v2, 0xff

    .line 326
    :cond_a0
    invoke-virtual {v13}, Lu1/q;->B()I

    move-result v3

    add-int/2addr v3, v15

    const/4 v15, 0x0

    .line 327
    :goto_5d
    invoke-virtual {v13}, Lu1/q;->a()I

    move-result v16

    if-lez v16, :cond_a1

    invoke-virtual {v13}, Lu1/q;->k()I

    move-result v8

    if-ne v8, v2, :cond_a1

    add-int/2addr v15, v2

    const/4 v8, 0x1

    .line 328
    invoke-virtual {v13, v8}, Lu1/q;->P(I)V

    move-object/from16 v8, p0

    goto :goto_5d

    :cond_a1
    const/4 v8, 0x1

    .line 329
    invoke-virtual {v13}, Lu1/q;->B()I

    move-result v16

    add-int v16, v16, v15

    .line 330
    new-array v15, v3, [B

    .line 331
    iget v13, v13, Lu1/q;->b:I

    const/4 v2, 0x0

    .line 332
    invoke-static {v11, v13, v15, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v13, v3

    add-int v13, v13, v16

    .line 333
    array-length v3, v11

    sub-int/2addr v3, v13

    .line 334
    new-array v8, v3, [B

    .line 335
    invoke-static {v11, v13, v8, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 336
    invoke-static {v15, v8}, Lu7/g0;->s(Ljava/lang/Object;Ljava/lang/Object;)Lu7/y0;

    move-result-object v2

    move v8, v0

    move-object v0, v2

    move-object/from16 v13, v26

    const/4 v2, 0x0

    goto :goto_60

    :cond_a2
    move-object/from16 v31, v2

    .line 337
    const-string v2, "audio/mp4a-latm"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a3

    .line 338
    new-instance v0, Lj3/f;

    .line 339
    array-length v2, v11

    invoke-direct {v0, v11, v2}, Lj3/f;-><init>([BI)V

    const/4 v2, 0x0

    .line 340
    invoke-static {v0, v2}, Ll2/b;->o(Lj3/f;Z)Ll2/a;

    move-result-object v0

    .line 341
    iget v8, v0, Ll2/a;->b:I

    iget v3, v0, Ll2/a;->c:I

    iget-object v13, v0, Ll2/a;->a:Ljava/lang/String;

    move v14, v3

    goto :goto_5e

    :cond_a3
    const/4 v2, 0x0

    move v8, v0

    move-object/from16 v13, v26

    .line 342
    :goto_5e
    invoke-static {v11}, Lu7/g0;->r(Ljava/lang/Object;)Lu7/y0;

    move-result-object v0

    goto :goto_60

    :cond_a4
    move-object/from16 v31, v2

    const/4 v2, 0x0

    move v8, v0

    move-object/from16 v13, v26

    :goto_5f
    move-object/from16 v0, p9

    goto :goto_60

    :cond_a5
    const/4 v2, 0x0

    move v8, v0

    move-object/from16 v13, v26

    move-object/from16 v4, v38

    goto :goto_5f

    :goto_60
    move-object/from16 v38, v4

    move/from16 v36, v14

    move-object v14, v0

    :goto_61
    add-int v15, v1, v5

    move-object/from16 v0, p0

    move/from16 v2, p2

    move/from16 v3, p3

    move-object/from16 v11, p7

    move-object v4, v6

    move-object v6, v7

    move v1, v9

    move/from16 v7, v36

    move-object/from16 v5, v38

    goto/16 :goto_10

    :cond_a6
    move-object/from16 v38, v5

    move v0, v8

    move-object/from16 v26, v13

    move-object/from16 p9, v14

    move v14, v7

    move-object v7, v6

    move-object v6, v4

    .line 343
    iget-object v1, v7, La9/a;->e:Ljava/lang/Object;

    check-cast v1, Lr1/p;

    if-nez v1, :cond_a9

    if-eqz v38, :cond_a9

    .line 344
    new-instance v1, Lr1/o;

    invoke-direct {v1}, Lr1/o;-><init>()V

    .line 345
    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lr1/o;->a:Ljava/lang/String;

    .line 346
    invoke-static/range {v38 .. v38}, Lr1/e0;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lr1/o;->n:Ljava/lang/String;

    move-object/from16 v13, v26

    .line 347
    iput-object v13, v1, Lr1/o;->j:Ljava/lang/String;

    .line 348
    iput v14, v1, Lr1/o;->F:I

    .line 349
    iput v0, v1, Lr1/o;->G:I

    move/from16 v0, v20

    .line 350
    iput v0, v1, Lr1/o;->H:I

    move-object/from16 v14, p9

    .line 351
    iput-object v14, v1, Lr1/o;->q:Ljava/util/List;

    .line 352
    iput-object v10, v1, Lr1/o;->r:Lr1/l;

    .line 353
    iput-object v6, v1, Lr1/o;->d:Ljava/lang/String;

    move-object/from16 v0, v31

    if-eqz v0, :cond_a7

    .line 354
    iget-wide v2, v0, Lf2/y0;->a:J

    invoke-static {v2, v3}, Ld/b;->i0(J)I

    move-result v2

    .line 355
    iput v2, v1, Lr1/o;->h:I

    .line 356
    iget-wide v2, v0, Lf2/y0;->b:J

    invoke-static {v2, v3}, Ld/b;->i0(J)I

    move-result v0

    .line 357
    iput v0, v1, Lr1/o;->i:I

    goto :goto_62

    :cond_a7
    move-object/from16 v0, v32

    if-eqz v0, :cond_a8

    .line 358
    iget-wide v2, v0, Landroidx/media3/exoplayer/video/y;->b:J

    invoke-static {v2, v3}, Ld/b;->i0(J)I

    move-result v2

    .line 359
    iput v2, v1, Lr1/o;->h:I

    .line 360
    iget-wide v2, v0, Landroidx/media3/exoplayer/video/y;->c:J

    invoke-static {v2, v3}, Ld/b;->i0(J)I

    move-result v0

    .line 361
    iput v0, v1, Lr1/o;->i:I

    .line 362
    :cond_a8
    :goto_62
    new-instance v0, Lr1/p;

    invoke-direct {v0, v1}, Lr1/p;-><init>(Lr1/o;)V

    .line 363
    iput-object v0, v7, La9/a;->e:Ljava/lang/Object;

    :cond_a9
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_6
        :pswitch_5
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static c(ILu1/q;)Lf2/y0;
    .locals 12

    .line 1
    add-int/lit8 p0, p0, 0xc

    .line 2
    .line 3
    invoke-virtual {p1, p0}, Lu1/q;->O(I)V

    .line 4
    .line 5
    .line 6
    const/4 p0, 0x1

    .line 7
    invoke-virtual {p1, p0}, Lu1/q;->P(I)V

    .line 8
    .line 9
    .line 10
    invoke-static {p1}, Lf3/e;->d(Lu1/q;)I

    .line 11
    .line 12
    .line 13
    const/4 v0, 0x2

    .line 14
    invoke-virtual {p1, v0}, Lu1/q;->P(I)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1}, Lu1/q;->B()I

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    and-int/lit16 v2, v1, 0x80

    .line 22
    .line 23
    if-eqz v2, :cond_0

    .line 24
    .line 25
    invoke-virtual {p1, v0}, Lu1/q;->P(I)V

    .line 26
    .line 27
    .line 28
    :cond_0
    and-int/lit8 v2, v1, 0x40

    .line 29
    .line 30
    if-eqz v2, :cond_1

    .line 31
    .line 32
    invoke-virtual {p1}, Lu1/q;->B()I

    .line 33
    .line 34
    .line 35
    move-result v2

    .line 36
    invoke-virtual {p1, v2}, Lu1/q;->P(I)V

    .line 37
    .line 38
    .line 39
    :cond_1
    and-int/lit8 v1, v1, 0x20

    .line 40
    .line 41
    if-eqz v1, :cond_2

    .line 42
    .line 43
    invoke-virtual {p1, v0}, Lu1/q;->P(I)V

    .line 44
    .line 45
    .line 46
    :cond_2
    invoke-virtual {p1, p0}, Lu1/q;->P(I)V

    .line 47
    .line 48
    .line 49
    invoke-static {p1}, Lf3/e;->d(Lu1/q;)I

    .line 50
    .line 51
    .line 52
    invoke-virtual {p1}, Lu1/q;->B()I

    .line 53
    .line 54
    .line 55
    move-result v0

    .line 56
    invoke-static {v0}, Lr1/e0;->d(I)Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v2

    .line 60
    const-string v0, "audio/mpeg"

    .line 61
    .line 62
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 63
    .line 64
    .line 65
    move-result v0

    .line 66
    if-nez v0, :cond_6

    .line 67
    .line 68
    const-string v0, "audio/vnd.dts"

    .line 69
    .line 70
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 71
    .line 72
    .line 73
    move-result v0

    .line 74
    if-nez v0, :cond_6

    .line 75
    .line 76
    const-string v0, "audio/vnd.dts.hd"

    .line 77
    .line 78
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 79
    .line 80
    .line 81
    move-result v0

    .line 82
    if-eqz v0, :cond_3

    .line 83
    .line 84
    goto :goto_1

    .line 85
    :cond_3
    const/4 v0, 0x4

    .line 86
    invoke-virtual {p1, v0}, Lu1/q;->P(I)V

    .line 87
    .line 88
    .line 89
    invoke-virtual {p1}, Lu1/q;->D()J

    .line 90
    .line 91
    .line 92
    move-result-wide v0

    .line 93
    invoke-virtual {p1}, Lu1/q;->D()J

    .line 94
    .line 95
    .line 96
    move-result-wide v3

    .line 97
    invoke-virtual {p1, p0}, Lu1/q;->P(I)V

    .line 98
    .line 99
    .line 100
    invoke-static {p1}, Lf3/e;->d(Lu1/q;)I

    .line 101
    .line 102
    .line 103
    move-result p0

    .line 104
    new-array v5, p0, [B

    .line 105
    .line 106
    const/4 v6, 0x0

    .line 107
    invoke-virtual {p1, v6, p0, v5}, Lu1/q;->l(II[B)V

    .line 108
    .line 109
    .line 110
    new-instance p0, Lf2/y0;

    .line 111
    .line 112
    const-wide/16 v6, -0x1

    .line 113
    .line 114
    const-wide/16 v8, 0x0

    .line 115
    .line 116
    cmp-long p1, v3, v8

    .line 117
    .line 118
    if-lez p1, :cond_4

    .line 119
    .line 120
    move-wide v10, v3

    .line 121
    goto :goto_0

    .line 122
    :cond_4
    move-wide v10, v6

    .line 123
    :goto_0
    cmp-long p1, v0, v8

    .line 124
    .line 125
    if-lez p1, :cond_5

    .line 126
    .line 127
    move-wide v6, v0

    .line 128
    :cond_5
    move-object v1, p0

    .line 129
    move-object v3, v5

    .line 130
    move-wide v4, v10

    .line 131
    invoke-direct/range {v1 .. v7}, Lf2/y0;-><init>(Ljava/lang/String;[BJJ)V

    .line 132
    .line 133
    .line 134
    return-object p0

    .line 135
    :cond_6
    :goto_1
    new-instance p0, Lf2/y0;

    .line 136
    .line 137
    const-wide/16 v4, -0x1

    .line 138
    .line 139
    const-wide/16 v6, -0x1

    .line 140
    .line 141
    const/4 v3, 0x0

    .line 142
    move-object v1, p0

    .line 143
    invoke-direct/range {v1 .. v7}, Lf2/y0;-><init>(Ljava/lang/String;[BJJ)V

    .line 144
    .line 145
    .line 146
    return-object p0
.end method

.method public static d(Lu1/q;)I
    .locals 3

    .line 1
    invoke-virtual {p0}, Lu1/q;->B()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    and-int/lit8 v1, v0, 0x7f

    .line 6
    .line 7
    :goto_0
    const/16 v2, 0x80

    .line 8
    .line 9
    and-int/2addr v0, v2

    .line 10
    if-ne v0, v2, :cond_0

    .line 11
    .line 12
    invoke-virtual {p0}, Lu1/q;->B()I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    shl-int/lit8 v1, v1, 0x7

    .line 17
    .line 18
    and-int/lit8 v2, v0, 0x7f

    .line 19
    .line 20
    or-int/2addr v1, v2

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    return v1
.end method

.method public static e(I)I
    .locals 0

    .line 1
    shr-int/lit8 p0, p0, 0x18

    .line 2
    .line 3
    and-int/lit16 p0, p0, 0xff

    .line 4
    .line 5
    return p0
.end method

.method public static f(Lv1/c;)Lr1/d0;
    .locals 14

    .line 1
    const v0, 0x68646c72    # 4.3148E24f

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, v0}, Lv1/c;->i(I)Lv1/d;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    const v1, 0x6b657973

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0, v1}, Lv1/c;->i(I)Lv1/d;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    const v2, 0x696c7374

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0, v2}, Lv1/c;->i(I)Lv1/d;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    const/4 v2, 0x0

    .line 23
    if-eqz v0, :cond_8

    .line 24
    .line 25
    if-eqz v1, :cond_8

    .line 26
    .line 27
    if-eqz p0, :cond_8

    .line 28
    .line 29
    iget-object v0, v0, Lv1/d;->c:Lu1/q;

    .line 30
    .line 31
    const/16 v3, 0x10

    .line 32
    .line 33
    invoke-virtual {v0, v3}, Lu1/q;->O(I)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0}, Lu1/q;->o()I

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    const v3, 0x6d647461

    .line 41
    .line 42
    .line 43
    if-eq v0, v3, :cond_0

    .line 44
    .line 45
    goto/16 :goto_6

    .line 46
    .line 47
    :cond_0
    iget-object v0, v1, Lv1/d;->c:Lu1/q;

    .line 48
    .line 49
    const/16 v1, 0xc

    .line 50
    .line 51
    invoke-virtual {v0, v1}, Lu1/q;->O(I)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v0}, Lu1/q;->o()I

    .line 55
    .line 56
    .line 57
    move-result v1

    .line 58
    new-array v3, v1, [Ljava/lang/String;

    .line 59
    .line 60
    const/4 v4, 0x0

    .line 61
    const/4 v5, 0x0

    .line 62
    :goto_0
    const/16 v6, 0x8

    .line 63
    .line 64
    if-ge v5, v1, :cond_1

    .line 65
    .line 66
    invoke-virtual {v0}, Lu1/q;->o()I

    .line 67
    .line 68
    .line 69
    move-result v7

    .line 70
    const/4 v8, 0x4

    .line 71
    invoke-virtual {v0, v8}, Lu1/q;->P(I)V

    .line 72
    .line 73
    .line 74
    sub-int/2addr v7, v6

    .line 75
    sget-object v6, Lj$/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 76
    .line 77
    invoke-virtual {v0, v6, v7}, Lu1/q;->z(Ljava/nio/charset/Charset;I)Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v6

    .line 81
    aput-object v6, v3, v5

    .line 82
    .line 83
    add-int/lit8 v5, v5, 0x1

    .line 84
    .line 85
    goto :goto_0

    .line 86
    :cond_1
    iget-object p0, p0, Lv1/d;->c:Lu1/q;

    .line 87
    .line 88
    invoke-virtual {p0, v6}, Lu1/q;->O(I)V

    .line 89
    .line 90
    .line 91
    new-instance v0, Ljava/util/ArrayList;

    .line 92
    .line 93
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 94
    .line 95
    .line 96
    :goto_1
    invoke-virtual {p0}, Lu1/q;->a()I

    .line 97
    .line 98
    .line 99
    move-result v5

    .line 100
    if-le v5, v6, :cond_6

    .line 101
    .line 102
    iget v5, p0, Lu1/q;->b:I

    .line 103
    .line 104
    invoke-virtual {p0}, Lu1/q;->o()I

    .line 105
    .line 106
    .line 107
    move-result v7

    .line 108
    invoke-virtual {p0}, Lu1/q;->o()I

    .line 109
    .line 110
    .line 111
    move-result v8

    .line 112
    add-int/lit8 v8, v8, -0x1

    .line 113
    .line 114
    if-ltz v8, :cond_4

    .line 115
    .line 116
    if-ge v8, v1, :cond_4

    .line 117
    .line 118
    aget-object v8, v3, v8

    .line 119
    .line 120
    add-int v9, v5, v7

    .line 121
    .line 122
    :goto_2
    iget v10, p0, Lu1/q;->b:I

    .line 123
    .line 124
    if-ge v10, v9, :cond_3

    .line 125
    .line 126
    invoke-virtual {p0}, Lu1/q;->o()I

    .line 127
    .line 128
    .line 129
    move-result v11

    .line 130
    invoke-virtual {p0}, Lu1/q;->o()I

    .line 131
    .line 132
    .line 133
    move-result v12

    .line 134
    const v13, 0x64617461

    .line 135
    .line 136
    .line 137
    if-ne v12, v13, :cond_2

    .line 138
    .line 139
    invoke-virtual {p0}, Lu1/q;->o()I

    .line 140
    .line 141
    .line 142
    move-result v9

    .line 143
    invoke-virtual {p0}, Lu1/q;->o()I

    .line 144
    .line 145
    .line 146
    move-result v10

    .line 147
    add-int/lit8 v11, v11, -0x10

    .line 148
    .line 149
    new-array v12, v11, [B

    .line 150
    .line 151
    invoke-virtual {p0, v4, v11, v12}, Lu1/q;->l(II[B)V

    .line 152
    .line 153
    .line 154
    :try_start_0
    new-instance v11, Lv1/a;

    .line 155
    .line 156
    invoke-direct {v11, v8, v12, v10, v9}, Lv1/a;-><init>(Ljava/lang/String;[BII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 157
    .line 158
    .line 159
    goto :goto_4

    .line 160
    :catch_0
    const-string v9, "Failed to parse metadata entry with key: "

    .line 161
    .line 162
    invoke-static {v9, v8}, Lta/q;->t(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    .line 164
    .line 165
    goto :goto_3

    .line 166
    :cond_2
    add-int/2addr v10, v11

    .line 167
    invoke-virtual {p0, v10}, Lu1/q;->O(I)V

    .line 168
    .line 169
    .line 170
    goto :goto_2

    .line 171
    :cond_3
    :goto_3
    move-object v11, v2

    .line 172
    :goto_4
    if-eqz v11, :cond_5

    .line 173
    .line 174
    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 175
    .line 176
    .line 177
    goto :goto_5

    .line 178
    :cond_4
    const-string v9, "Skipped metadata with unknown key index: "

    .line 179
    .line 180
    invoke-static {v8, v9}, Lorg/bouncycastle/jcajce/provider/digest/a;->o(ILjava/lang/String;)V

    .line 181
    .line 182
    .line 183
    :cond_5
    :goto_5
    add-int/2addr v5, v7

    .line 184
    invoke-virtual {p0, v5}, Lu1/q;->O(I)V

    .line 185
    .line 186
    .line 187
    goto :goto_1

    .line 188
    :cond_6
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 189
    .line 190
    .line 191
    move-result p0

    .line 192
    if-eqz p0, :cond_7

    .line 193
    .line 194
    goto :goto_6

    .line 195
    :cond_7
    new-instance v2, Lr1/d0;

    .line 196
    .line 197
    invoke-direct {v2, v0}, Lr1/d0;-><init>(Ljava/util/List;)V

    .line 198
    .line 199
    .line 200
    :cond_8
    :goto_6
    return-object v2
.end method

.method public static g(Lu1/q;)Lv1/f;
    .locals 11

    .line 1
    const/16 v0, 0x8

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lu1/q;->O(I)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lu1/q;->o()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    invoke-static {v0}, Lf3/e;->e(I)I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-nez v0, :cond_0

    .line 15
    .line 16
    invoke-virtual {p0}, Lu1/q;->D()J

    .line 17
    .line 18
    .line 19
    move-result-wide v0

    .line 20
    invoke-virtual {p0}, Lu1/q;->D()J

    .line 21
    .line 22
    .line 23
    move-result-wide v2

    .line 24
    :goto_0
    move-wide v5, v0

    .line 25
    move-wide v7, v2

    .line 26
    goto :goto_1

    .line 27
    :cond_0
    invoke-virtual {p0}, Lu1/q;->v()J

    .line 28
    .line 29
    .line 30
    move-result-wide v0

    .line 31
    invoke-virtual {p0}, Lu1/q;->v()J

    .line 32
    .line 33
    .line 34
    move-result-wide v2

    .line 35
    goto :goto_0

    .line 36
    :goto_1
    invoke-virtual {p0}, Lu1/q;->D()J

    .line 37
    .line 38
    .line 39
    move-result-wide v9

    .line 40
    new-instance p0, Lv1/f;

    .line 41
    .line 42
    move-object v4, p0

    .line 43
    invoke-direct/range {v4 .. v10}, Lv1/f;-><init>(JJJ)V

    .line 44
    .line 45
    .line 46
    return-object p0
.end method

.method public static h(Lu1/q;II)Landroid/util/Pair;
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Lu1/q;->b:I

    .line 4
    .line 5
    :goto_0
    sub-int v2, v1, p1

    .line 6
    .line 7
    move/from16 v4, p2

    .line 8
    .line 9
    if-ge v2, v4, :cond_10

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Lu1/q;->O(I)V

    .line 12
    .line 13
    .line 14
    invoke-virtual/range {p0 .. p0}, Lu1/q;->o()I

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    const/4 v5, 0x0

    .line 19
    const/4 v6, 0x1

    .line 20
    if-lez v2, :cond_0

    .line 21
    .line 22
    const/4 v7, 0x1

    .line 23
    goto :goto_1

    .line 24
    :cond_0
    const/4 v7, 0x0

    .line 25
    :goto_1
    const-string v8, "childAtomSize must be positive"

    .line 26
    .line 27
    invoke-static {v8, v7}, Ll2/b;->b(Ljava/lang/String;Z)V

    .line 28
    .line 29
    .line 30
    invoke-virtual/range {p0 .. p0}, Lu1/q;->o()I

    .line 31
    .line 32
    .line 33
    move-result v7

    .line 34
    const v8, 0x73696e66

    .line 35
    .line 36
    .line 37
    if-ne v7, v8, :cond_f

    .line 38
    .line 39
    add-int/lit8 v7, v1, 0x8

    .line 40
    .line 41
    const/4 v8, -0x1

    .line 42
    const/4 v9, -0x1

    .line 43
    const/4 v10, 0x0

    .line 44
    const/4 v11, 0x0

    .line 45
    const/4 v15, 0x0

    .line 46
    :goto_2
    sub-int v12, v7, v1

    .line 47
    .line 48
    const/4 v13, 0x4

    .line 49
    if-ge v12, v2, :cond_4

    .line 50
    .line 51
    invoke-virtual {v0, v7}, Lu1/q;->O(I)V

    .line 52
    .line 53
    .line 54
    invoke-virtual/range {p0 .. p0}, Lu1/q;->o()I

    .line 55
    .line 56
    .line 57
    move-result v12

    .line 58
    invoke-virtual/range {p0 .. p0}, Lu1/q;->o()I

    .line 59
    .line 60
    .line 61
    move-result v14

    .line 62
    const v3, 0x66726d61

    .line 63
    .line 64
    .line 65
    if-ne v14, v3, :cond_1

    .line 66
    .line 67
    invoke-virtual/range {p0 .. p0}, Lu1/q;->o()I

    .line 68
    .line 69
    .line 70
    move-result v3

    .line 71
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 72
    .line 73
    .line 74
    move-result-object v15

    .line 75
    goto :goto_3

    .line 76
    :cond_1
    const v3, 0x7363686d

    .line 77
    .line 78
    .line 79
    if-ne v14, v3, :cond_2

    .line 80
    .line 81
    invoke-virtual {v0, v13}, Lu1/q;->P(I)V

    .line 82
    .line 83
    .line 84
    sget-object v3, Lj$/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 85
    .line 86
    invoke-virtual {v0, v3, v13}, Lu1/q;->z(Ljava/nio/charset/Charset;I)Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v11

    .line 90
    goto :goto_3

    .line 91
    :cond_2
    const v3, 0x73636869

    .line 92
    .line 93
    .line 94
    if-ne v14, v3, :cond_3

    .line 95
    .line 96
    move v9, v7

    .line 97
    move v10, v12

    .line 98
    :cond_3
    :goto_3
    add-int/2addr v7, v12

    .line 99
    goto :goto_2

    .line 100
    :cond_4
    const-string v3, "cenc"

    .line 101
    .line 102
    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 103
    .line 104
    .line 105
    move-result v3

    .line 106
    if-nez v3, :cond_6

    .line 107
    .line 108
    const-string v3, "cbc1"

    .line 109
    .line 110
    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 111
    .line 112
    .line 113
    move-result v3

    .line 114
    if-nez v3, :cond_6

    .line 115
    .line 116
    const-string v3, "cens"

    .line 117
    .line 118
    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 119
    .line 120
    .line 121
    move-result v3

    .line 122
    if-nez v3, :cond_6

    .line 123
    .line 124
    const-string v3, "cbcs"

    .line 125
    .line 126
    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 127
    .line 128
    .line 129
    move-result v3

    .line 130
    if-eqz v3, :cond_5

    .line 131
    .line 132
    goto :goto_4

    .line 133
    :cond_5
    const/4 v3, 0x0

    .line 134
    goto/16 :goto_c

    .line 135
    .line 136
    :cond_6
    :goto_4
    if-eqz v15, :cond_7

    .line 137
    .line 138
    const/4 v3, 0x1

    .line 139
    goto :goto_5

    .line 140
    :cond_7
    const/4 v3, 0x0

    .line 141
    :goto_5
    const-string v7, "frma atom is mandatory"

    .line 142
    .line 143
    invoke-static {v7, v3}, Ll2/b;->b(Ljava/lang/String;Z)V

    .line 144
    .line 145
    .line 146
    if-eq v9, v8, :cond_8

    .line 147
    .line 148
    const/4 v3, 0x1

    .line 149
    goto :goto_6

    .line 150
    :cond_8
    const/4 v3, 0x0

    .line 151
    :goto_6
    const-string v7, "schi atom is mandatory"

    .line 152
    .line 153
    invoke-static {v7, v3}, Ll2/b;->b(Ljava/lang/String;Z)V

    .line 154
    .line 155
    .line 156
    add-int/lit8 v3, v9, 0x8

    .line 157
    .line 158
    :goto_7
    sub-int v7, v3, v9

    .line 159
    .line 160
    if-ge v7, v10, :cond_d

    .line 161
    .line 162
    invoke-virtual {v0, v3}, Lu1/q;->O(I)V

    .line 163
    .line 164
    .line 165
    invoke-virtual/range {p0 .. p0}, Lu1/q;->o()I

    .line 166
    .line 167
    .line 168
    move-result v7

    .line 169
    invoke-virtual/range {p0 .. p0}, Lu1/q;->o()I

    .line 170
    .line 171
    .line 172
    move-result v8

    .line 173
    const v12, 0x74656e63

    .line 174
    .line 175
    .line 176
    if-ne v8, v12, :cond_c

    .line 177
    .line 178
    invoke-virtual/range {p0 .. p0}, Lu1/q;->o()I

    .line 179
    .line 180
    .line 181
    move-result v3

    .line 182
    invoke-static {v3}, Lf3/e;->e(I)I

    .line 183
    .line 184
    .line 185
    move-result v3

    .line 186
    invoke-virtual {v0, v6}, Lu1/q;->P(I)V

    .line 187
    .line 188
    .line 189
    if-nez v3, :cond_9

    .line 190
    .line 191
    invoke-virtual {v0, v6}, Lu1/q;->P(I)V

    .line 192
    .line 193
    .line 194
    const/4 v3, 0x0

    .line 195
    const/4 v14, 0x0

    .line 196
    goto :goto_8

    .line 197
    :cond_9
    invoke-virtual/range {p0 .. p0}, Lu1/q;->B()I

    .line 198
    .line 199
    .line 200
    move-result v3

    .line 201
    and-int/lit16 v7, v3, 0xf0

    .line 202
    .line 203
    shr-int/2addr v7, v13

    .line 204
    and-int/lit8 v3, v3, 0xf

    .line 205
    .line 206
    move v14, v7

    .line 207
    :goto_8
    invoke-virtual/range {p0 .. p0}, Lu1/q;->B()I

    .line 208
    .line 209
    .line 210
    move-result v7

    .line 211
    if-ne v7, v6, :cond_a

    .line 212
    .line 213
    const/4 v10, 0x1

    .line 214
    goto :goto_9

    .line 215
    :cond_a
    const/4 v10, 0x0

    .line 216
    :goto_9
    invoke-virtual/range {p0 .. p0}, Lu1/q;->B()I

    .line 217
    .line 218
    .line 219
    move-result v12

    .line 220
    const/16 v7, 0x10

    .line 221
    .line 222
    new-array v13, v7, [B

    .line 223
    .line 224
    invoke-virtual {v0, v5, v7, v13}, Lu1/q;->l(II[B)V

    .line 225
    .line 226
    .line 227
    if-eqz v10, :cond_b

    .line 228
    .line 229
    if-nez v12, :cond_b

    .line 230
    .line 231
    invoke-virtual/range {p0 .. p0}, Lu1/q;->B()I

    .line 232
    .line 233
    .line 234
    move-result v7

    .line 235
    new-array v8, v7, [B

    .line 236
    .line 237
    invoke-virtual {v0, v5, v7, v8}, Lu1/q;->l(II[B)V

    .line 238
    .line 239
    .line 240
    move-object/from16 v16, v8

    .line 241
    .line 242
    goto :goto_a

    .line 243
    :cond_b
    const/16 v16, 0x0

    .line 244
    .line 245
    :goto_a
    new-instance v7, Lf3/t;

    .line 246
    .line 247
    move-object v9, v7

    .line 248
    move-object v8, v15

    .line 249
    move v15, v3

    .line 250
    invoke-direct/range {v9 .. v16}, Lf3/t;-><init>(ZLjava/lang/String;I[BII[B)V

    .line 251
    .line 252
    .line 253
    move-object v3, v7

    .line 254
    goto :goto_b

    .line 255
    :cond_c
    move-object v8, v15

    .line 256
    add-int/2addr v3, v7

    .line 257
    goto :goto_7

    .line 258
    :cond_d
    move-object v8, v15

    .line 259
    const/4 v3, 0x0

    .line 260
    :goto_b
    if-eqz v3, :cond_e

    .line 261
    .line 262
    const/4 v5, 0x1

    .line 263
    :cond_e
    const-string v6, "tenc atom is mandatory"

    .line 264
    .line 265
    invoke-static {v6, v5}, Ll2/b;->b(Ljava/lang/String;Z)V

    .line 266
    .line 267
    .line 268
    sget-object v5, Lu1/f0;->a:Ljava/lang/String;

    .line 269
    .line 270
    invoke-static {v8, v3}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    .line 271
    .line 272
    .line 273
    move-result-object v3

    .line 274
    :goto_c
    if-eqz v3, :cond_f

    .line 275
    .line 276
    return-object v3

    .line 277
    :cond_f
    add-int/2addr v1, v2

    .line 278
    goto/16 :goto_0

    .line 279
    .line 280
    :cond_10
    const/4 v1, 0x0

    .line 281
    return-object v1
.end method

.method public static i(Lv1/c;Ll2/v;JLr1/l;ZZLt7/d;Z)Ljava/util/ArrayList;
    .locals 56

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/16 v3, 0x8

    const/4 v4, 0x4

    const/16 v8, 0x10

    const/4 v9, -0x1

    .line 1
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    const/4 v13, 0x0

    .line 2
    :goto_0
    iget-object v14, v0, Lv1/c;->e:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v15

    if-ge v13, v15, :cond_95

    .line 3
    invoke-virtual {v14, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lv1/c;

    .line 4
    iget v15, v14, Lab/a;->b:I

    const v12, 0x7472616b

    if-eq v15, v12, :cond_0

    move-object v0, v11

    move/from16 v45, v13

    const/4 v1, 0x1

    const/16 v17, 0x3

    goto/16 :goto_73

    :cond_0
    const v12, 0x6d766864

    .line 5
    invoke-virtual {v0, v12}, Lv1/c;->i(I)Lv1/d;

    move-result-object v12

    .line 6
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v15, 0x6d646961

    .line 7
    invoke-virtual {v14, v15}, Lv1/c;->g(I)Lv1/c;

    move-result-object v6

    .line 8
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v15, 0x68646c72    # 4.3148E24f

    .line 9
    invoke-virtual {v6, v15}, Lv1/c;->i(I)Lv1/d;

    move-result-object v15

    .line 10
    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    iget-object v15, v15, Lv1/d;->c:Lu1/q;

    invoke-virtual {v15, v8}, Lu1/q;->O(I)V

    .line 12
    invoke-virtual {v15}, Lu1/q;->o()I

    move-result v15

    const v5, 0x736f756e

    if-ne v15, v5, :cond_1

    const/4 v5, 0x1

    goto :goto_2

    :cond_1
    const v5, 0x76696465

    if-ne v15, v5, :cond_2

    const/4 v5, 0x2

    goto :goto_2

    :cond_2
    const v5, 0x74657874

    if-eq v15, v5, :cond_5

    const v5, 0x7362746c

    if-eq v15, v5, :cond_5

    const v5, 0x73756274

    if-eq v15, v5, :cond_5

    const v5, 0x636c6370

    if-eq v15, v5, :cond_5

    const v5, 0x73756270

    if-ne v15, v5, :cond_3

    goto :goto_1

    :cond_3
    const v5, 0x6d657461

    if-ne v15, v5, :cond_4

    const/4 v5, 0x5

    goto :goto_2

    :cond_4
    const/4 v5, -0x1

    goto :goto_2

    :cond_5
    :goto_1
    const/4 v5, 0x3

    :goto_2
    if-ne v5, v9, :cond_6

    move-object/from16 v0, p7

    move-object/from16 v46, v11

    move/from16 v45, v13

    :goto_3
    const/16 v1, 0x8

    const/4 v5, 0x0

    const/16 v17, 0x3

    goto/16 :goto_30

    :cond_6
    const v15, 0x746b6864

    .line 13
    invoke-virtual {v14, v15}, Lv1/c;->i(I)Lv1/d;

    move-result-object v15

    .line 14
    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    iget-object v15, v15, Lv1/d;->c:Lu1/q;

    invoke-virtual {v15, v3}, Lu1/q;->O(I)V

    .line 16
    invoke-virtual {v15}, Lu1/q;->o()I

    move-result v20

    .line 17
    invoke-static/range {v20 .. v20}, Lf3/e;->e(I)I

    move-result v20

    if-nez v20, :cond_7

    goto :goto_4

    :cond_7
    const/16 v3, 0x10

    .line 18
    :goto_4
    invoke-virtual {v15, v3}, Lu1/q;->P(I)V

    .line 19
    invoke-virtual {v15}, Lu1/q;->o()I

    move-result v3

    .line 20
    invoke-virtual {v15, v4}, Lu1/q;->P(I)V

    .line 21
    iget v4, v15, Lu1/q;->b:I

    if-nez v20, :cond_8

    const/4 v2, 0x4

    goto :goto_5

    :cond_8
    const/16 v2, 0x8

    :goto_5
    const/4 v10, 0x0

    :goto_6
    const-wide v21, -0x7fffffffffffffffL    # -4.9E-324

    if-ge v10, v2, :cond_c

    .line 22
    iget-object v7, v15, Lu1/q;->a:[B

    add-int v8, v4, v10

    .line 23
    aget-byte v7, v7, v8

    if-eq v7, v9, :cond_b

    if-nez v20, :cond_9

    .line 24
    invoke-virtual {v15}, Lu1/q;->D()J

    move-result-wide v7

    :goto_7
    const-wide/16 v23, 0x0

    goto :goto_8

    :cond_9
    invoke-virtual {v15}, Lu1/q;->H()J

    move-result-wide v7

    goto :goto_7

    :goto_8
    cmp-long v2, v7, v23

    if-nez v2, :cond_a

    :goto_9
    move-wide/from16 v7, v21

    :cond_a
    const/16 v2, 0xa

    goto :goto_a

    :cond_b
    const/4 v7, 0x1

    add-int/2addr v10, v7

    goto :goto_6

    .line 25
    :cond_c
    invoke-virtual {v15, v2}, Lu1/q;->P(I)V

    goto :goto_9

    .line 26
    :goto_a
    invoke-virtual {v15, v2}, Lu1/q;->P(I)V

    .line 27
    invoke-virtual {v15}, Lu1/q;->I()I

    move-result v2

    const/4 v4, 0x4

    .line 28
    invoke-virtual {v15, v4}, Lu1/q;->P(I)V

    .line 29
    invoke-virtual {v15}, Lu1/q;->o()I

    move-result v10

    .line 30
    invoke-virtual {v15}, Lu1/q;->o()I

    move-result v9

    .line 31
    invoke-virtual {v15, v4}, Lu1/q;->P(I)V

    .line 32
    invoke-virtual {v15}, Lu1/q;->o()I

    move-result v4

    .line 33
    invoke-virtual {v15}, Lu1/q;->o()I

    move-result v0

    move-wide/from16 v23, v7

    const/high16 v7, -0x10000

    const/high16 v8, 0x10000

    if-nez v10, :cond_e

    if-ne v9, v8, :cond_e

    if-eq v4, v7, :cond_d

    if-ne v4, v8, :cond_e

    :cond_d
    if-nez v0, :cond_e

    const/16 v0, 0x5a

    :goto_b
    const/16 v4, 0x10

    goto :goto_c

    :cond_e
    if-nez v10, :cond_10

    if-ne v9, v7, :cond_10

    if-eq v4, v8, :cond_f

    if-ne v4, v7, :cond_10

    :cond_f
    if-nez v0, :cond_10

    const/16 v0, 0x10e

    goto :goto_b

    :cond_10
    if-eq v10, v7, :cond_11

    if-ne v10, v8, :cond_12

    :cond_11
    if-nez v9, :cond_12

    if-nez v4, :cond_12

    if-ne v0, v7, :cond_12

    const/16 v0, 0xb4

    goto :goto_b

    :cond_12
    const/4 v0, 0x0

    goto :goto_b

    .line 34
    :goto_c
    invoke-virtual {v15, v4}, Lu1/q;->P(I)V

    .line 35
    invoke-virtual {v15}, Lu1/q;->y()S

    move-result v4

    const/4 v7, 0x2

    .line 36
    invoke-virtual {v15, v7}, Lu1/q;->P(I)V

    .line 37
    invoke-virtual {v15}, Lu1/q;->y()S

    move-result v7

    cmp-long v8, p2, v21

    if-nez v8, :cond_13

    move-wide/from16 v25, v23

    goto :goto_d

    :cond_13
    move-wide/from16 v25, p2

    .line 38
    :goto_d
    iget-object v8, v12, Lv1/d;->c:Lu1/q;

    invoke-static {v8}, Lf3/e;->g(Lu1/q;)Lv1/f;

    move-result-object v8

    .line 39
    iget-wide v8, v8, Lv1/f;->c:J

    cmp-long v10, v25, v21

    if-nez v10, :cond_14

    move-wide/from16 v35, v21

    :goto_e
    const v10, 0x6d696e66

    goto :goto_f

    .line 40
    :cond_14
    sget-object v10, Lu1/f0;->a:Ljava/lang/String;

    .line 41
    sget-object v31, Ljava/math/RoundingMode;->DOWN:Ljava/math/RoundingMode;

    const-wide/32 v27, 0xf4240

    move-wide/from16 v29, v8

    invoke-static/range {v25 .. v31}, Lu1/f0;->M(JJJLjava/math/RoundingMode;)J

    move-result-wide v23

    move-wide/from16 v35, v23

    goto :goto_e

    .line 42
    :goto_f
    invoke-virtual {v6, v10}, Lv1/c;->g(I)Lv1/c;

    move-result-object v12

    .line 43
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v10, 0x7374626c

    .line 44
    invoke-virtual {v12, v10}, Lv1/c;->g(I)Lv1/c;

    move-result-object v12

    .line 45
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v10, 0x6d646864

    .line 46
    invoke-virtual {v6, v10}, Lv1/c;->i(I)Lv1/d;

    move-result-object v6

    .line 47
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 48
    iget-object v6, v6, Lv1/d;->c:Lu1/q;

    const/16 v10, 0x8

    invoke-virtual {v6, v10}, Lu1/q;->O(I)V

    .line 49
    invoke-virtual {v6}, Lu1/q;->o()I

    move-result v10

    .line 50
    invoke-static {v10}, Lf3/e;->e(I)I

    move-result v10

    if-nez v10, :cond_15

    const/16 v15, 0x8

    goto :goto_10

    :cond_15
    const/16 v15, 0x10

    .line 51
    :goto_10
    invoke-virtual {v6, v15}, Lu1/q;->P(I)V

    .line 52
    invoke-virtual {v6}, Lu1/q;->D()J

    move-result-wide v43

    .line 53
    iget v15, v6, Lu1/q;->b:I

    move/from16 v45, v13

    if-nez v10, :cond_16

    const/4 v13, 0x4

    goto :goto_11

    :cond_16
    const/16 v13, 0x8

    :goto_11
    move-object/from16 v46, v11

    const/4 v11, 0x0

    :goto_12
    if-ge v11, v13, :cond_1a

    .line 54
    iget-object v1, v6, Lu1/q;->a:[B

    add-int v20, v15, v11

    .line 55
    aget-byte v1, v1, v20

    move/from16 v20, v15

    const/4 v15, -0x1

    if-eq v1, v15, :cond_19

    if-nez v10, :cond_17

    .line 56
    invoke-virtual {v6}, Lu1/q;->D()J

    move-result-wide v10

    :goto_13
    move-wide/from16 v23, v10

    const-wide/16 v10, 0x0

    goto :goto_14

    :cond_17
    invoke-virtual {v6}, Lu1/q;->H()J

    move-result-wide v10

    goto :goto_13

    :goto_14
    cmp-long v1, v23, v10

    if-nez v1, :cond_18

    :goto_15
    move-wide/from16 v10, v21

    goto :goto_16

    .line 57
    :cond_18
    sget-object v1, Lu1/f0;->a:Ljava/lang/String;

    .line 58
    sget-object v29, Ljava/math/RoundingMode;->DOWN:Ljava/math/RoundingMode;

    const-wide/32 v25, 0xf4240

    move-wide/from16 v27, v43

    invoke-static/range {v23 .. v29}, Lu1/f0;->M(JJJLjava/math/RoundingMode;)J

    move-result-wide v10

    goto :goto_16

    :cond_19
    const/4 v1, 0x1

    add-int/2addr v11, v1

    move-object/from16 v1, p1

    move/from16 v15, v20

    goto :goto_12

    .line 59
    :cond_1a
    invoke-virtual {v6, v13}, Lu1/q;->P(I)V

    goto :goto_15

    .line 60
    :goto_16
    invoke-virtual {v6}, Lu1/q;->I()I

    move-result v1

    const/16 v6, 0xa

    shr-int/lit8 v13, v1, 0xa

    and-int/lit8 v13, v13, 0x1f

    add-int/lit8 v13, v13, 0x60

    int-to-char v13, v13

    const/4 v15, 0x5

    shr-int/lit8 v19, v1, 0x5

    and-int/lit8 v19, v19, 0x1f

    add-int/lit8 v6, v19, 0x60

    int-to-char v6, v6

    and-int/lit8 v1, v1, 0x1f

    add-int/lit8 v1, v1, 0x60

    int-to-char v1, v1

    move-wide/from16 v47, v10

    const/4 v15, 0x3

    .line 61
    new-array v10, v15, [C

    const/4 v11, 0x0

    aput-char v13, v10, v11

    const/4 v11, 0x1

    aput-char v6, v10, v11

    const/4 v6, 0x2

    aput-char v1, v10, v6

    const/4 v1, 0x0

    :goto_17
    if-ge v1, v15, :cond_1d

    .line 62
    aget-char v6, v10, v1

    const/16 v13, 0x61

    if-lt v6, v13, :cond_1c

    const/16 v13, 0x7a

    if-le v6, v13, :cond_1b

    goto :goto_18

    :cond_1b
    add-int/2addr v1, v11

    const/4 v15, 0x3

    goto :goto_17

    :cond_1c
    :goto_18
    const/4 v1, 0x0

    goto :goto_19

    .line 63
    :cond_1d
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v10}, Ljava/lang/String;-><init>([C)V

    :goto_19
    const v6, 0x73747364

    .line 64
    invoke-virtual {v12, v6}, Lv1/c;->i(I)Lv1/d;

    move-result-object v6

    if-nez v6, :cond_1e

    .line 65
    const-string v0, "Ignoring track where sample table (stbl) box is missing a sample description (stsd)."

    invoke-static {v0}, Lu1/a;->p(Ljava/lang/String;)V

    move-object/from16 v0, p7

    goto/16 :goto_3

    .line 66
    :cond_1e
    iget-object v6, v6, Lv1/d;->c:Lu1/q;

    const/16 v10, 0xc

    invoke-virtual {v6, v10}, Lu1/q;->O(I)V

    .line 67
    invoke-virtual {v6}, Lu1/q;->o()I

    move-result v10

    .line 68
    new-instance v11, La9/a;

    const/4 v12, 0x1

    invoke-direct {v11, v10, v12}, La9/a;-><init>(II)V

    const/4 v12, 0x0

    :goto_1a
    if-ge v12, v10, :cond_34

    .line 69
    iget v13, v6, Lu1/q;->b:I

    .line 70
    invoke-virtual {v6}, Lu1/q;->o()I

    move-result v15

    move-wide/from16 v49, v8

    move/from16 v20, v10

    if-lez v15, :cond_1f

    const/4 v10, 0x1

    goto :goto_1b

    :cond_1f
    const/4 v10, 0x0

    .line 71
    :goto_1b
    const-string v8, "childAtomSize must be positive"

    invoke-static {v8, v10}, Ll2/b;->b(Ljava/lang/String;Z)V

    .line 72
    invoke-virtual {v6}, Lu1/q;->o()I

    move-result v8

    const v9, 0x61766331

    if-eq v8, v9, :cond_20

    const v9, 0x61766333

    if-eq v8, v9, :cond_20

    const v9, 0x656e6376

    if-eq v8, v9, :cond_20

    const v9, 0x6d317620

    if-eq v8, v9, :cond_20

    const v9, 0x6d703476

    if-eq v8, v9, :cond_20

    const v9, 0x68766331

    if-eq v8, v9, :cond_20

    const v9, 0x68657631

    if-eq v8, v9, :cond_20

    const v9, 0x76766331

    if-eq v8, v9, :cond_20

    const v9, 0x76766931

    if-eq v8, v9, :cond_20

    const v9, 0x73323633

    if-eq v8, v9, :cond_20

    const v9, 0x48323633

    if-eq v8, v9, :cond_20

    const v9, 0x68323633

    if-eq v8, v9, :cond_20

    const v9, 0x76703038

    if-eq v8, v9, :cond_20

    const v9, 0x76703039

    if-eq v8, v9, :cond_20

    const v9, 0x61763031

    if-eq v8, v9, :cond_20

    const v9, 0x64766176

    if-eq v8, v9, :cond_20

    const v9, 0x64766131

    if-eq v8, v9, :cond_20

    const v9, 0x64766865

    if-eq v8, v9, :cond_20

    const v9, 0x64766831

    if-eq v8, v9, :cond_20

    const v9, 0x61707631

    if-eq v8, v9, :cond_20

    const v9, 0x64617631

    if-ne v8, v9, :cond_21

    :cond_20
    move/from16 v33, v0

    move/from16 v32, v2

    move/from16 v31, v5

    move/from16 v34, v12

    move-object/from16 v51, v14

    move v0, v15

    const/16 v17, 0x3

    goto/16 :goto_26

    :cond_21
    const v9, 0x6d703461

    if-eq v8, v9, :cond_22

    const v9, 0x656e6361

    if-eq v8, v9, :cond_22

    const v9, 0x61632d33

    if-eq v8, v9, :cond_22

    const v9, 0x65632d33

    if-eq v8, v9, :cond_22

    const v9, 0x61632d34

    if-eq v8, v9, :cond_22

    const v9, 0x6d6c7061

    if-eq v8, v9, :cond_22

    const v9, 0x64747363

    if-eq v8, v9, :cond_22

    const v9, 0x64747365

    if-eq v8, v9, :cond_22

    const v9, 0x64747368

    if-eq v8, v9, :cond_22

    const v9, 0x6474736c

    if-eq v8, v9, :cond_22

    const v9, 0x64747378

    if-eq v8, v9, :cond_22

    const v9, 0x73616d72

    if-eq v8, v9, :cond_22

    const v9, 0x73617762

    if-eq v8, v9, :cond_22

    const v9, 0x6c70636d

    if-eq v8, v9, :cond_22

    const v9, 0x736f7774

    if-eq v8, v9, :cond_22

    const v9, 0x74776f73

    if-eq v8, v9, :cond_22

    const v9, 0x2e6d7032

    if-eq v8, v9, :cond_22

    const v9, 0x2e6d7033

    if-eq v8, v9, :cond_22

    const v9, 0x6d686131

    if-eq v8, v9, :cond_22

    const v9, 0x6d686d31

    if-eq v8, v9, :cond_22

    const v9, 0x616c6163

    if-eq v8, v9, :cond_22

    const v9, 0x616c6177

    if-eq v8, v9, :cond_22

    const v9, 0x756c6177

    if-eq v8, v9, :cond_22

    const v9, 0x4f707573

    if-eq v8, v9, :cond_22

    const v9, 0x664c6143

    if-eq v8, v9, :cond_22

    const v9, 0x69616d66

    if-eq v8, v9, :cond_22

    const v9, 0x6970636d

    if-eq v8, v9, :cond_22

    const v9, 0x6670636d

    if-ne v8, v9, :cond_23

    :cond_22
    move/from16 v33, v0

    move/from16 v32, v2

    move/from16 v31, v5

    move/from16 v34, v12

    move-object/from16 v51, v14

    move v0, v15

    const/16 v17, 0x3

    goto/16 :goto_25

    :cond_23
    const v9, 0x74783367

    const v10, 0x54544d4c

    if-eq v8, v10, :cond_24

    if-eq v8, v9, :cond_24

    const v9, 0x77767474

    if-eq v8, v9, :cond_24

    const v9, 0x73747070

    if-eq v8, v9, :cond_24

    const v9, 0x63363038

    if-eq v8, v9, :cond_24

    const v9, 0x6d703473

    if-ne v8, v9, :cond_25

    :cond_24
    move/from16 v31, v5

    const/16 v5, 0x10

    goto :goto_1d

    :cond_25
    const v9, 0x6d657474

    if-ne v8, v9, :cond_27

    move/from16 v31, v5

    const/16 v10, 0x10

    add-int/lit8 v5, v13, 0x10

    .line 73
    invoke-virtual {v6, v5}, Lu1/q;->O(I)V

    if-ne v8, v9, :cond_26

    .line 74
    invoke-virtual {v6}, Lu1/q;->w()Ljava/lang/String;

    .line 75
    invoke-virtual {v6}, Lu1/q;->w()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_26

    .line 76
    new-instance v8, Lr1/o;

    invoke-direct {v8}, Lr1/o;-><init>()V

    .line 77
    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v8, Lr1/o;->a:Ljava/lang/String;

    .line 78
    invoke-static {v5}, Lr1/e0;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v8, Lr1/o;->n:Ljava/lang/String;

    .line 79
    new-instance v5, Lr1/p;

    invoke-direct {v5, v8}, Lr1/p;-><init>(Lr1/o;)V

    .line 80
    iput-object v5, v11, La9/a;->e:Ljava/lang/Object;

    :cond_26
    :goto_1c
    move/from16 v33, v0

    move/from16 v32, v2

    move/from16 v34, v12

    move-object/from16 v51, v14

    move v0, v15

    const/16 v17, 0x3

    goto/16 :goto_27

    :cond_27
    move/from16 v31, v5

    const v5, 0x63616d6d

    if-ne v8, v5, :cond_26

    .line 81
    new-instance v5, Lr1/o;

    invoke-direct {v5}, Lr1/o;-><init>()V

    .line 82
    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v5, Lr1/o;->a:Ljava/lang/String;

    .line 83
    const-string v8, "application/x-camera-motion"

    invoke-static {v8}, Lr1/e0;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v5, Lr1/o;->n:Ljava/lang/String;

    .line 84
    new-instance v8, Lr1/p;

    invoke-direct {v8, v5}, Lr1/p;-><init>(Lr1/o;)V

    .line 85
    iput-object v8, v11, La9/a;->e:Ljava/lang/Object;

    goto :goto_1c

    :goto_1d
    add-int/lit8 v9, v13, 0x10

    .line 86
    invoke-virtual {v6, v9}, Lu1/q;->O(I)V

    .line 87
    const-string v9, "application/ttml+xml"

    const-wide v26, 0x7fffffffffffffffL

    if-ne v8, v10, :cond_28

    :goto_1e
    move/from16 v33, v0

    move/from16 v32, v2

    move/from16 v34, v12

    move-object/from16 v51, v14

    move v0, v15

    move-wide/from16 v14, v26

    const/4 v5, 0x0

    :goto_1f
    const/16 v17, 0x3

    goto/16 :goto_24

    :cond_28
    const v10, 0x74783367

    if-ne v8, v10, :cond_29

    add-int/lit8 v8, v15, -0x10

    .line 88
    new-array v5, v8, [B

    const/4 v9, 0x0

    .line 89
    invoke-virtual {v6, v9, v8, v5}, Lu1/q;->l(II[B)V

    .line 90
    invoke-static {v5}, Lu7/g0;->r(Ljava/lang/Object;)Lu7/y0;

    move-result-object v5

    .line 91
    const-string v9, "application/x-quicktime-tx3g"

    move/from16 v33, v0

    move/from16 v32, v2

    move/from16 v34, v12

    move-object/from16 v51, v14

    move v0, v15

    move-wide/from16 v14, v26

    goto :goto_1f

    :cond_29
    const v5, 0x77767474

    if-ne v8, v5, :cond_2a

    .line 92
    const-string v9, "application/x-mp4-vtt"

    goto :goto_1e

    :cond_2a
    const v5, 0x73747070

    if-ne v8, v5, :cond_2b

    move/from16 v33, v0

    move/from16 v32, v2

    move/from16 v34, v12

    move-object/from16 v51, v14

    move v0, v15

    const/4 v5, 0x0

    const-wide/16 v14, 0x0

    goto :goto_1f

    :cond_2b
    const v5, 0x63363038

    if-ne v8, v5, :cond_2c

    const/4 v5, 0x1

    .line 93
    iput v5, v11, La9/a;->c:I

    const-string v9, "application/x-mp4-cea-608"

    goto :goto_1e

    :cond_2c
    const v5, 0x6d703473

    if-ne v8, v5, :cond_32

    .line 94
    iget v5, v6, Lu1/q;->b:I

    const/4 v8, 0x4

    .line 95
    invoke-virtual {v6, v8}, Lu1/q;->P(I)V

    .line 96
    invoke-virtual {v6}, Lu1/q;->o()I

    move-result v8

    const v9, 0x65736473

    if-ne v8, v9, :cond_31

    .line 97
    invoke-static {v5, v6}, Lf3/e;->c(ILu1/q;)Lf2/y0;

    move-result-object v5

    .line 98
    iget-object v5, v5, Lf2/y0;->d:Ljava/lang/Object;

    check-cast v5, [B

    if-eqz v5, :cond_2d

    array-length v8, v5

    const/16 v9, 0x40

    if-eq v8, v9, :cond_2e

    :cond_2d
    move/from16 v33, v0

    move/from16 v32, v2

    move/from16 v34, v12

    move-object/from16 v51, v14

    const/16 v14, 0x10

    const/16 v17, 0x3

    goto/16 :goto_22

    .line 99
    :cond_2e
    array-length v8, v5

    if-ne v8, v9, :cond_2f

    const/4 v8, 0x1

    goto :goto_20

    :cond_2f
    const/4 v8, 0x0

    :goto_20
    invoke-static {v8}, La9/o;->t(Z)V

    .line 100
    new-instance v8, Ljava/util/ArrayList;

    const/16 v9, 0x10

    invoke-direct {v8, v9}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v9, 0x0

    .line 101
    :goto_21
    array-length v10, v5

    const/16 v17, 0x3

    add-int/lit8 v10, v10, -0x3

    if-ge v9, v10, :cond_30

    .line 102
    aget-byte v10, v5, v9

    const/16 v21, 0x1

    add-int/lit8 v22, v9, 0x1

    move/from16 v32, v2

    aget-byte v2, v5, v22

    const/16 v21, 0x2

    add-int/lit8 v22, v9, 0x2

    move-object/from16 v51, v14

    aget-byte v14, v5, v22

    add-int/lit8 v21, v9, 0x3

    move/from16 v33, v0

    aget-byte v0, v5, v21

    invoke-static {v10, v2, v14, v0}, Ld/b;->t(BBBB)I

    move-result v0

    const/16 v2, 0x10

    shr-int/lit8 v10, v0, 0x10

    const/16 v2, 0xff

    and-int/2addr v10, v2

    move-object/from16 v21, v5

    const/16 v14, 0x8

    shr-int/lit8 v5, v0, 0x8

    and-int/2addr v5, v2

    and-int/2addr v0, v2

    add-int/lit8 v5, v5, -0x80

    const/16 v14, 0x36fb

    const/16 v2, 0x2710

    .line 103
    invoke-static {v5, v14, v2, v10}, Ll2/z;->a(IIII)I

    move-result v14

    add-int/lit8 v0, v0, -0x80

    move/from16 v34, v12

    mul-int/lit16 v12, v0, 0xd7f

    .line 104
    div-int/2addr v12, v2

    sub-int v12, v10, v12

    mul-int/lit16 v5, v5, 0x1c01

    div-int/2addr v5, v2

    sub-int/2addr v12, v5

    const/16 v5, 0x457e

    .line 105
    invoke-static {v0, v5, v2, v10}, Ll2/z;->a(IIII)I

    move-result v0

    const/4 v2, 0x0

    const/16 v5, 0xff

    .line 106
    invoke-static {v14, v2, v5}, Lu1/f0;->g(III)I

    move-result v10

    const/16 v14, 0x10

    shl-int/2addr v10, v14

    .line 107
    invoke-static {v12, v2, v5}, Lu1/f0;->g(III)I

    move-result v12

    const/16 v16, 0x8

    shl-int/lit8 v12, v12, 0x8

    or-int/2addr v10, v12

    .line 108
    invoke-static {v0, v2, v5}, Lu1/f0;->g(III)I

    move-result v0

    or-int/2addr v0, v10

    .line 109
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v5, 0x1

    new-array v10, v5, [Ljava/lang/Object;

    aput-object v0, v10, v2

    const-string v0, "%06x"

    invoke-static {v0, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x4

    add-int/2addr v9, v0

    move-object/from16 v5, v21

    move/from16 v2, v32

    move/from16 v0, v33

    move/from16 v12, v34

    move-object/from16 v14, v51

    goto/16 :goto_21

    :cond_30
    move/from16 v33, v0

    move/from16 v32, v2

    move/from16 v34, v12

    move-object/from16 v51, v14

    const/16 v14, 0x10

    .line 110
    const-string v0, "size: "

    const-string v2, "x"

    const-string v5, "\npalette: "

    .line 111
    invoke-static {v4, v7, v0, v2, v5}, Lta/q;->o(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 112
    new-instance v2, Lbd/c;

    const-string v5, ", "

    invoke-direct {v2, v5}, Lbd/c;-><init>(Ljava/lang/String;)V

    .line 113
    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 114
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v8, v5}, Lbd/c;->d(Ljava/lang/StringBuilder;Ljava/util/Iterator;)V

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 115
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 116
    sget-object v2, Lu1/f0;->a:Ljava/lang/String;

    .line 117
    sget-object v2, Lj$/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    .line 118
    invoke-static {v0}, Lu7/g0;->r(Ljava/lang/Object;)Lu7/y0;

    move-result-object v0

    const-string v2, "application/vobsub"

    move-object v5, v0

    move-object v9, v2

    goto :goto_23

    :goto_22
    move v0, v15

    goto/16 :goto_27

    :cond_31
    move/from16 v33, v0

    move/from16 v32, v2

    move/from16 v34, v12

    move-object/from16 v51, v14

    const/16 v14, 0x10

    const/16 v17, 0x3

    const/4 v5, 0x0

    const/4 v9, 0x0

    :goto_23
    move v0, v15

    move-wide/from16 v14, v26

    :goto_24
    if-eqz v9, :cond_33

    .line 119
    new-instance v2, Lr1/o;

    invoke-direct {v2}, Lr1/o;-><init>()V

    .line 120
    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v2, Lr1/o;->a:Ljava/lang/String;

    .line 121
    invoke-static {v9}, Lr1/e0;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v2, Lr1/o;->n:Ljava/lang/String;

    .line 122
    iput-object v1, v2, Lr1/o;->d:Ljava/lang/String;

    .line 123
    iput-wide v14, v2, Lr1/o;->s:J

    .line 124
    iput-object v5, v2, Lr1/o;->q:Ljava/util/List;

    .line 125
    new-instance v5, Lr1/p;

    invoke-direct {v5, v2}, Lr1/p;-><init>(Lr1/o;)V

    .line 126
    iput-object v5, v11, La9/a;->e:Ljava/lang/Object;

    goto :goto_27

    .line 127
    :cond_32
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :goto_25
    move-object/from16 v21, v6

    move/from16 v22, v8

    move/from16 v23, v13

    move/from16 v24, v0

    move/from16 v25, v3

    move-object/from16 v26, v1

    move/from16 v27, p6

    move-object/from16 v28, p4

    move-object/from16 v29, v11

    move/from16 v30, v34

    .line 128
    invoke-static/range {v21 .. v30}, Lf3/e;->b(Lu1/q;IIIILjava/lang/String;ZLr1/l;La9/a;I)V

    goto :goto_27

    :goto_26
    move-object/from16 v21, v6

    move/from16 v22, v8

    move/from16 v23, v13

    move/from16 v24, v0

    move/from16 v25, v3

    move-object/from16 v26, v1

    move/from16 v27, v33

    move-object/from16 v28, p4

    move-object/from16 v29, v11

    move/from16 v30, v34

    .line 129
    invoke-static/range {v21 .. v30}, Lf3/e;->k(Lu1/q;IIIILjava/lang/String;ILr1/l;La9/a;I)V

    :cond_33
    :goto_27
    add-int/2addr v13, v0

    .line 130
    invoke-virtual {v6, v13}, Lu1/q;->O(I)V

    const/4 v0, 0x1

    add-int/lit8 v12, v34, 0x1

    move/from16 v10, v20

    move/from16 v5, v31

    move/from16 v2, v32

    move/from16 v0, v33

    move-wide/from16 v8, v49

    move-object/from16 v14, v51

    goto/16 :goto_1a

    :cond_34
    move/from16 v32, v2

    move/from16 v31, v5

    move-wide/from16 v49, v8

    move-object/from16 v51, v14

    const/16 v17, 0x3

    if-nez p5, :cond_3b

    const v0, 0x65647473

    move-object/from16 v14, v51

    .line 131
    invoke-virtual {v14, v0}, Lv1/c;->g(I)Lv1/c;

    move-result-object v0

    if-eqz v0, :cond_3a

    const v1, 0x656c7374

    .line 132
    invoke-virtual {v0, v1}, Lv1/c;->i(I)Lv1/d;

    move-result-object v0

    if-nez v0, :cond_35

    const/4 v0, 0x0

    const/16 v1, 0x8

    goto :goto_2b

    .line 133
    :cond_35
    iget-object v0, v0, Lv1/d;->c:Lu1/q;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lu1/q;->O(I)V

    .line 134
    invoke-virtual {v0}, Lu1/q;->o()I

    move-result v2

    .line 135
    invoke-static {v2}, Lf3/e;->e(I)I

    move-result v2

    .line 136
    invoke-virtual {v0}, Lu1/q;->F()I

    move-result v4

    .line 137
    new-array v5, v4, [J

    .line 138
    new-array v6, v4, [J

    const/4 v7, 0x0

    :goto_28
    if-ge v7, v4, :cond_39

    const/4 v8, 0x1

    if-ne v2, v8, :cond_36

    .line 139
    invoke-virtual {v0}, Lu1/q;->H()J

    move-result-wide v9

    goto :goto_29

    :cond_36
    invoke-virtual {v0}, Lu1/q;->D()J

    move-result-wide v9

    :goto_29
    aput-wide v9, v5, v7

    if-ne v2, v8, :cond_37

    .line 140
    invoke-virtual {v0}, Lu1/q;->v()J

    move-result-wide v9

    goto :goto_2a

    :cond_37
    invoke-virtual {v0}, Lu1/q;->o()I

    move-result v9

    int-to-long v9, v9

    :goto_2a
    aput-wide v9, v6, v7

    .line 141
    invoke-virtual {v0}, Lu1/q;->y()S

    move-result v9

    if-ne v9, v8, :cond_38

    const/4 v9, 0x2

    .line 142
    invoke-virtual {v0, v9}, Lu1/q;->P(I)V

    add-int/2addr v7, v8

    goto :goto_28

    .line 143
    :cond_38
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unsupported media rate."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 144
    :cond_39
    invoke-static {v5, v6}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    :goto_2b
    if-eqz v0, :cond_3c

    .line 145
    iget-object v2, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, [J

    .line 146
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, [J

    goto :goto_2e

    :cond_3a
    :goto_2c
    const/16 v1, 0x8

    goto :goto_2d

    :cond_3b
    move-object/from16 v14, v51

    goto :goto_2c

    :cond_3c
    :goto_2d
    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 147
    :goto_2e
    iget-object v4, v11, La9/a;->e:Ljava/lang/Object;

    check-cast v4, Lr1/p;

    if-nez v4, :cond_3d

    move-object/from16 v0, p7

    const/4 v5, 0x0

    goto :goto_30

    :cond_3d
    if-eqz v32, :cond_3f

    .line 148
    new-instance v5, Lv1/b;

    move/from16 v6, v32

    .line 149
    invoke-direct {v5, v6}, Lv1/b;-><init>(I)V

    .line 150
    new-instance v6, Lr1/o;

    invoke-direct {v6, v4}, Lr1/o;-><init>(Lr1/p;)V

    .line 151
    iget-object v4, v11, La9/a;->e:Ljava/lang/Object;

    check-cast v4, Lr1/p;

    iget-object v4, v4, Lr1/p;->l:Lr1/d0;

    if-eqz v4, :cond_3e

    const/4 v7, 0x1

    .line 152
    new-array v8, v7, [Lr1/c0;

    const/4 v9, 0x0

    aput-object v5, v8, v9

    invoke-virtual {v4, v8}, Lr1/d0;->a([Lr1/c0;)Lr1/d0;

    move-result-object v4

    goto :goto_2f

    :cond_3e
    const/4 v7, 0x1

    const/4 v9, 0x0

    .line 153
    new-instance v4, Lr1/d0;

    new-array v8, v7, [Lr1/c0;

    aput-object v5, v8, v9

    invoke-direct {v4, v8}, Lr1/d0;-><init>([Lr1/c0;)V

    .line 154
    :goto_2f
    iput-object v4, v6, Lr1/o;->k:Lr1/d0;

    .line 155
    new-instance v4, Lr1/p;

    invoke-direct {v4, v6}, Lr1/p;-><init>(Lr1/o;)V

    .line 156
    :cond_3f
    new-instance v5, Lf3/s;

    .line 157
    iget v6, v11, La9/a;->c:I

    move/from16 v32, v6

    iget-object v6, v11, La9/a;->d:Ljava/lang/Object;

    move-object/from16 v33, v6

    check-cast v33, [Lf3/t;

    iget v6, v11, La9/a;->b:I

    move/from16 v34, v6

    move-object/from16 v20, v5

    move/from16 v21, v3

    move/from16 v22, v31

    move-wide/from16 v23, v43

    move-wide/from16 v25, v49

    move-wide/from16 v27, v35

    move-wide/from16 v29, v47

    move-object/from16 v31, v4

    move-object/from16 v35, v2

    move-object/from16 v36, v0

    invoke-direct/range {v20 .. v36}, Lf3/s;-><init>(IIJJJJLr1/p;I[Lf3/t;I[J[J)V

    move-object/from16 v0, p7

    .line 158
    :goto_30
    invoke-interface {v0, v5}, Lt7/d;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lf3/s;

    if-nez v2, :cond_40

    move-object/from16 v0, v46

    :goto_31
    const/4 v1, 0x1

    goto/16 :goto_73

    :cond_40
    const v3, 0x6d646961

    .line 159
    invoke-virtual {v14, v3}, Lv1/c;->g(I)Lv1/c;

    move-result-object v3

    .line 160
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v4, 0x6d696e66

    .line 161
    invoke-virtual {v3, v4}, Lv1/c;->g(I)Lv1/c;

    move-result-object v3

    .line 162
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v4, 0x7374626c

    .line 163
    invoke-virtual {v3, v4}, Lv1/c;->g(I)Lv1/c;

    move-result-object v3

    .line 164
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v4, 0x7374737a

    .line 165
    invoke-virtual {v3, v4}, Lv1/c;->i(I)Lv1/d;

    move-result-object v4

    .line 166
    iget-object v5, v2, Lf3/s;->g:Lr1/p;

    if-eqz v4, :cond_41

    .line 167
    new-instance v6, La0/h;

    invoke-direct {v6, v4, v5}, La0/h;-><init>(Lv1/d;Lr1/p;)V

    goto :goto_32

    :cond_41
    const v4, 0x73747a32

    .line 168
    invoke-virtual {v3, v4}, Lv1/c;->i(I)Lv1/d;

    move-result-object v4

    if-eqz v4, :cond_94

    .line 169
    new-instance v6, Lf3/d;

    invoke-direct {v6, v4}, Lf3/d;-><init>(Lv1/d;)V

    .line 170
    :goto_32
    invoke-interface {v6}, Lf3/c;->c()I

    move-result v4

    if-nez v4, :cond_42

    .line 171
    new-instance v3, Lf3/v;

    const/4 v4, 0x0

    new-array v5, v4, [J

    new-array v6, v4, [I

    new-array v7, v4, [J

    new-array v8, v4, [I

    new-array v9, v4, [I

    const-wide/16 v29, 0x0

    const/16 v31, 0x0

    const/16 v24, 0x0

    const/16 v28, 0x0

    move-object/from16 v20, v3

    move-object/from16 v21, v2

    move-object/from16 v22, v5

    move-object/from16 v23, v6

    move-object/from16 v25, v7

    move-object/from16 v26, v8

    move-object/from16 v27, v9

    invoke-direct/range {v20 .. v31}, Lf3/v;-><init>(Lf3/s;[J[II[J[I[IZJI)V

    :goto_33
    move-object/from16 v0, v46

    goto/16 :goto_72

    .line 172
    :cond_42
    iget v7, v2, Lf3/s;->b:I

    const/4 v8, 0x2

    if-ne v7, v8, :cond_43

    iget-wide v7, v2, Lf3/s;->f:J

    const-wide/16 v9, 0x0

    cmp-long v11, v7, v9

    if-lez v11, :cond_43

    int-to-float v9, v4

    long-to-float v7, v7

    const v8, 0x49742400    # 1000000.0f

    div-float/2addr v7, v8

    div-float/2addr v9, v7

    .line 173
    invoke-virtual {v5}, Lr1/p;->a()Lr1/o;

    move-result-object v5

    .line 174
    iput v9, v5, Lr1/o;->y:F

    .line 175
    invoke-virtual {v5}, Lr1/o;->a()Lr1/p;

    move-result-object v5

    .line 176
    invoke-virtual {v2, v5}, Lf3/s;->a(Lr1/p;)Lf3/s;

    move-result-object v2

    :cond_43
    const v5, 0x7374636f

    .line 177
    invoke-virtual {v3, v5}, Lv1/c;->i(I)Lv1/d;

    move-result-object v5

    if-nez v5, :cond_44

    const v5, 0x636f3634

    .line 178
    invoke-virtual {v3, v5}, Lv1/c;->i(I)Lv1/d;

    move-result-object v5

    .line 179
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v7, 0x1

    goto :goto_34

    :cond_44
    const/4 v7, 0x0

    :goto_34
    const v8, 0x73747363

    .line 180
    invoke-virtual {v3, v8}, Lv1/c;->i(I)Lv1/d;

    move-result-object v8

    .line 181
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v9, 0x73747473

    .line 182
    invoke-virtual {v3, v9}, Lv1/c;->i(I)Lv1/d;

    move-result-object v9

    .line 183
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v10, 0x73747373

    .line 184
    invoke-virtual {v3, v10}, Lv1/c;->i(I)Lv1/d;

    move-result-object v10

    if-eqz v10, :cond_45

    .line 185
    iget-object v10, v10, Lv1/d;->c:Lu1/q;

    goto :goto_35

    :cond_45
    const/4 v10, 0x0

    :goto_35
    const v11, 0x63747473

    .line 186
    invoke-virtual {v3, v11}, Lv1/c;->i(I)Lv1/d;

    move-result-object v3

    if-eqz v3, :cond_46

    .line 187
    iget-object v3, v3, Lv1/d;->c:Lu1/q;

    goto :goto_36

    :cond_46
    const/4 v3, 0x0

    .line 188
    :goto_36
    new-instance v11, Lf3/b;

    iget-object v8, v8, Lv1/d;->c:Lu1/q;

    iget-object v5, v5, Lv1/d;->c:Lu1/q;

    invoke-direct {v11, v8, v5, v7}, Lf3/b;-><init>(Lu1/q;Lu1/q;Z)V

    .line 189
    iget-object v5, v9, Lv1/d;->c:Lu1/q;

    const/16 v7, 0xc

    invoke-virtual {v5, v7}, Lu1/q;->O(I)V

    .line 190
    invoke-virtual {v5}, Lu1/q;->F()I

    move-result v8

    const/4 v9, 0x1

    sub-int/2addr v8, v9

    .line 191
    invoke-virtual {v5}, Lu1/q;->F()I

    move-result v9

    .line 192
    invoke-virtual {v5}, Lu1/q;->F()I

    move-result v12

    if-eqz v3, :cond_47

    .line 193
    invoke-virtual {v3, v7}, Lu1/q;->O(I)V

    .line 194
    invoke-virtual {v3}, Lu1/q;->F()I

    move-result v13

    goto :goto_37

    :cond_47
    const/4 v13, 0x0

    :goto_37
    if-eqz v10, :cond_49

    .line 195
    invoke-virtual {v10, v7}, Lu1/q;->O(I)V

    .line 196
    invoke-virtual {v10}, Lu1/q;->F()I

    move-result v7

    if-lez v7, :cond_48

    .line 197
    invoke-virtual {v10}, Lu1/q;->F()I

    move-result v14

    const/4 v15, 0x1

    sub-int/2addr v14, v15

    move-object v15, v10

    goto :goto_38

    :cond_48
    const/4 v14, -0x1

    const/4 v15, 0x0

    goto :goto_38

    :cond_49
    move-object v15, v10

    const/4 v7, 0x0

    const/4 v14, -0x1

    .line 198
    :goto_38
    invoke-interface {v6}, Lf3/c;->b()I

    move-result v10

    .line 199
    iget-object v1, v2, Lf3/s;->g:Lr1/p;

    iget-object v0, v1, Lr1/p;->o:Ljava/lang/String;

    move/from16 v18, v9

    const/4 v9, -0x1

    if-eq v10, v9, :cond_4b

    .line 200
    const-string v9, "audio/raw"

    .line 201
    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_4a

    const-string v9, "audio/g711-mlaw"

    .line 202
    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_4a

    const-string v9, "audio/g711-alaw"

    .line 203
    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4b

    :cond_4a
    if-nez v8, :cond_4b

    if-nez v13, :cond_4b

    if-nez v7, :cond_4b

    const/4 v0, 0x1

    goto :goto_39

    :cond_4b
    const/4 v0, 0x0

    .line 204
    :goto_39
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    if-nez v15, :cond_4c

    const/16 v28, 0x1

    goto :goto_3a

    :cond_4c
    const/16 v28, 0x0

    :goto_3a
    if-eqz v0, :cond_55

    .line 205
    iget v0, v11, Lf3/b;->a:I

    new-array v3, v0, [J

    .line 206
    new-array v4, v0, [I

    .line 207
    :goto_3b
    invoke-virtual {v11}, Lf3/b;->a()Z

    move-result v5

    if-eqz v5, :cond_4d

    .line 208
    iget v5, v11, Lf3/b;->b:I

    iget-wide v6, v11, Lf3/b;->d:J

    aput-wide v6, v3, v5

    .line 209
    iget v6, v11, Lf3/b;->c:I

    aput v6, v4, v5

    goto :goto_3b

    :cond_4d
    int-to-long v5, v12

    const/16 v7, 0x2000

    .line 210
    div-int/2addr v7, v10

    const/4 v8, 0x0

    const/4 v11, 0x0

    :goto_3c
    if-ge v8, v0, :cond_4e

    .line 211
    aget v12, v4, v8

    .line 212
    invoke-static {v12, v7}, Lu1/f0;->e(II)I

    move-result v12

    add-int/2addr v11, v12

    const/4 v12, 0x1

    add-int/2addr v8, v12

    goto :goto_3c

    .line 213
    :cond_4e
    new-array v8, v11, [J

    .line 214
    new-array v12, v11, [I

    .line 215
    new-array v13, v11, [J

    .line 216
    new-array v14, v11, [I

    move-object/from16 v21, v1

    move/from16 v18, v11

    const/4 v1, 0x0

    const/4 v11, 0x0

    const/4 v15, 0x0

    const/16 v20, 0x0

    const/16 v22, 0x0

    :goto_3d
    if-ge v15, v0, :cond_50

    .line 217
    aget v23, v4, v15

    .line 218
    aget-wide v24, v3, v15

    move/from16 v54, v22

    move/from16 v22, v0

    move/from16 v0, v20

    move/from16 v20, v54

    move/from16 v55, v23

    move-object/from16 v23, v3

    move/from16 v3, v55

    :goto_3e
    if-lez v3, :cond_4f

    .line 219
    invoke-static {v7, v3}, Ljava/lang/Math;->min(II)I

    move-result v26

    .line 220
    aput-wide v24, v8, v20

    move-object/from16 v27, v4

    mul-int v4, v10, v26

    .line 221
    aput v4, v12, v20

    add-int/2addr v1, v4

    .line 222
    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    move-result v0

    move/from16 v29, v0

    move v4, v1

    int-to-long v0, v11

    mul-long v0, v0, v5

    .line 223
    aput-wide v0, v13, v20

    const/16 v30, 0x1

    .line 224
    aput v30, v14, v20

    .line 225
    aget v0, v12, v20

    int-to-long v0, v0

    add-long v24, v24, v0

    add-int v11, v11, v26

    sub-int v3, v3, v26

    add-int/lit8 v20, v20, 0x1

    move v1, v4

    move-object/from16 v4, v27

    move/from16 v0, v29

    goto :goto_3e

    :cond_4f
    move-object/from16 v27, v4

    const/16 v30, 0x1

    add-int/lit8 v15, v15, 0x1

    move-object/from16 v3, v23

    move/from16 v54, v20

    move/from16 v20, v0

    move/from16 v0, v22

    move/from16 v22, v54

    goto :goto_3d

    :cond_50
    int-to-long v3, v11

    mul-long v5, v5, v3

    int-to-long v0, v1

    const/4 v10, 0x0

    if-eqz p8, :cond_51

    .line 226
    new-array v8, v10, [J

    :cond_51
    if-eqz p8, :cond_52

    .line 227
    new-array v12, v10, [I

    :cond_52
    if-eqz p8, :cond_53

    .line 228
    new-array v13, v10, [J

    :cond_53
    if-eqz p8, :cond_54

    .line 229
    new-array v14, v10, [I

    :cond_54
    move-object v15, v2

    move-wide v10, v5

    move/from16 v6, v18

    move/from16 v24, v20

    move-object/from16 v54, v12

    move-object v12, v8

    move-object v8, v14

    move-object v14, v13

    move-object/from16 v13, v54

    goto/16 :goto_52

    :cond_55
    move-object/from16 v21, v1

    const/4 v10, 0x0

    if-eqz p8, :cond_56

    .line 230
    new-array v0, v10, [J

    goto :goto_3f

    :cond_56
    new-array v0, v4, [J

    :goto_3f
    if-eqz p8, :cond_57

    .line 231
    new-array v1, v10, [I

    goto :goto_40

    :cond_57
    new-array v1, v4, [I

    :goto_40
    move/from16 v20, v7

    if-eqz p8, :cond_58

    .line 232
    new-array v7, v10, [J

    goto :goto_41

    :cond_58
    new-array v7, v4, [J

    :goto_41
    move/from16 v22, v8

    if-eqz p8, :cond_59

    .line 233
    new-array v8, v10, [I

    goto :goto_42

    :cond_59
    new-array v8, v4, [I

    :goto_42
    move/from16 v10, v20

    move/from16 v24, v22

    const/16 v23, 0x0

    const-wide/16 v25, 0x0

    const-wide/16 v29, 0x0

    const-wide/16 v31, 0x0

    const/16 v52, 0x0

    const/16 v53, 0x0

    move-object/from16 v20, v2

    move-object/from16 v22, v5

    move v2, v14

    const/4 v5, 0x0

    move v14, v12

    const/4 v12, 0x0

    move/from16 v54, v18

    move/from16 v18, v13

    move/from16 v13, v54

    :goto_43
    if-ge v5, v4, :cond_66

    const/16 v27, 0x1

    :goto_44
    if-nez v23, :cond_5a

    .line 234
    invoke-virtual {v11}, Lf3/b;->a()Z

    move-result v27

    if-eqz v27, :cond_5a

    move/from16 v33, v13

    move/from16 v34, v14

    .line 235
    iget-wide v13, v11, Lf3/b;->d:J

    move/from16 v35, v4

    .line 236
    iget v4, v11, Lf3/b;->c:I

    move/from16 v23, v4

    move-wide/from16 v31, v13

    move/from16 v13, v33

    move/from16 v14, v34

    move/from16 v4, v35

    goto :goto_44

    :cond_5a
    move/from16 v35, v4

    move/from16 v33, v13

    move/from16 v34, v14

    if-nez v27, :cond_5c

    .line 237
    const-string v2, "Unexpected end of chunk data"

    invoke-static {v2}, Lu1/a;->p(Ljava/lang/String;)V

    if-nez p8, :cond_5b

    .line 238
    invoke-static {v0, v5}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v0

    .line 239
    invoke-static {v1, v5}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v1

    .line 240
    invoke-static {v7, v5}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v7

    .line 241
    invoke-static {v8, v5}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v8

    :cond_5b
    move v4, v5

    move v14, v10

    :goto_45
    move/from16 v2, v23

    move/from16 v5, v52

    goto/16 :goto_4c

    :cond_5c
    if-eqz v3, :cond_5e

    :goto_46
    if-nez v53, :cond_5d

    if-lez v18, :cond_5d

    .line 242
    invoke-virtual {v3}, Lu1/q;->F()I

    move-result v53

    .line 243
    invoke-virtual {v3}, Lu1/q;->o()I

    move-result v52

    const/4 v4, -0x1

    add-int/lit8 v18, v18, -0x1

    goto :goto_46

    :cond_5d
    const/4 v4, -0x1

    add-int/lit8 v53, v53, -0x1

    :cond_5e
    move/from16 v4, v52

    .line 244
    invoke-interface {v6}, Lf3/c;->e()I

    move-result v13

    move v14, v10

    move-object/from16 v27, v11

    int-to-long v10, v13

    add-long v29, v29, v10

    if-le v13, v12, :cond_5f

    move v12, v13

    :cond_5f
    if-nez p8, :cond_61

    .line 245
    aput-wide v31, v0, v5

    .line 246
    aput v13, v1, v5

    move-object v13, v0

    move-object/from16 v36, v1

    int-to-long v0, v4

    add-long v0, v25, v0

    .line 247
    aput-wide v0, v7, v5

    if-nez v15, :cond_60

    const/4 v0, 0x1

    goto :goto_47

    :cond_60
    const/4 v0, 0x0

    .line 248
    :goto_47
    aput v0, v8, v5

    const/4 v0, 0x1

    if-ne v5, v2, :cond_62

    .line 249
    aput v0, v8, v5

    .line 250
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_48

    :cond_61
    move-object v13, v0

    move-object/from16 v36, v1

    const/4 v0, 0x1

    :cond_62
    :goto_48
    if-eqz v15, :cond_64

    if-ne v5, v2, :cond_64

    const/4 v1, -0x1

    add-int/2addr v14, v1

    if-lez v14, :cond_63

    .line 251
    invoke-virtual {v15}, Lu1/q;->F()I

    move-result v2

    sub-int/2addr v2, v0

    :cond_63
    :goto_49
    move-object/from16 v37, v7

    move/from16 v0, v34

    move-object/from16 v34, v6

    goto :goto_4a

    :cond_64
    const/4 v1, -0x1

    goto :goto_49

    :goto_4a
    int-to-long v6, v0

    add-long v25, v25, v6

    add-int/lit8 v6, v33, -0x1

    if-nez v6, :cond_65

    if-lez v24, :cond_65

    .line 252
    invoke-virtual/range {v22 .. v22}, Lu1/q;->F()I

    move-result v0

    .line 253
    invoke-virtual/range {v22 .. v22}, Lu1/q;->o()I

    move-result v6

    add-int/lit8 v24, v24, -0x1

    goto :goto_4b

    :cond_65
    move/from16 v54, v6

    move v6, v0

    move/from16 v0, v54

    :goto_4b
    add-long v31, v31, v10

    add-int/lit8 v23, v23, -0x1

    const/4 v1, 0x1

    add-int/2addr v5, v1

    move/from16 v52, v4

    move v10, v14

    move-object/from16 v11, v27

    move/from16 v4, v35

    move-object/from16 v1, v36

    move-object/from16 v7, v37

    move v14, v6

    move-object/from16 v6, v34

    move-object/from16 v54, v13

    move v13, v0

    move-object/from16 v0, v54

    goto/16 :goto_43

    :cond_66
    move-object/from16 v36, v1

    move/from16 v35, v4

    move-object/from16 v37, v7

    move v14, v10

    move/from16 v33, v13

    move-object v13, v0

    goto/16 :goto_45

    :goto_4c
    int-to-long v5, v5

    add-long v5, v25, v5

    if-eqz v3, :cond_68

    :goto_4d
    if-lez v18, :cond_68

    .line 254
    invoke-virtual {v3}, Lu1/q;->F()I

    move-result v10

    if-eqz v10, :cond_67

    const/4 v3, 0x0

    const/4 v10, -0x1

    goto :goto_4e

    .line 255
    :cond_67
    invoke-virtual {v3}, Lu1/q;->o()I

    const/4 v10, -0x1

    add-int/lit8 v18, v18, -0x1

    goto :goto_4d

    :cond_68
    const/4 v10, -0x1

    const/4 v3, 0x1

    :goto_4e
    if-nez v14, :cond_6a

    if-nez v33, :cond_6a

    if-nez v2, :cond_6a

    if-nez v24, :cond_6a

    move/from16 v11, v53

    if-nez v11, :cond_6b

    if-nez v3, :cond_69

    goto :goto_4f

    :cond_69
    move-object/from16 v15, v20

    goto :goto_51

    :cond_6a
    move/from16 v11, v53

    .line 256
    :cond_6b
    :goto_4f
    new-instance v13, Ljava/lang/StringBuilder;

    const-string v15, "Inconsistent stbl box for track "

    invoke-direct {v13, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v15, v20

    iget v10, v15, Lf3/s;->a:I

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ": remainingSynchronizationSamples "

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ", remainingSamplesAtTimestampDelta "

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v10, v33

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ", remainingSamplesInChunk "

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", remainingTimestampDeltaChanges "

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v2, v24

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", remainingSamplesAtTimestampOffset "

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    if-nez v3, :cond_6c

    .line 257
    const-string v2, ", ctts invalid"

    goto :goto_50

    :cond_6c
    const-string v2, ""

    :goto_50
    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 258
    invoke-static {v2}, Lu1/a;->p(Ljava/lang/String;)V

    :goto_51
    move-object v13, v1

    move-wide v10, v5

    move-object v14, v7

    move/from16 v24, v12

    move-object v12, v0

    move v6, v4

    move-wide/from16 v0, v29

    :goto_52
    const-wide/32 v22, 0x7fffffff

    .line 259
    iget-wide v2, v15, Lf3/s;->f:J

    const-wide/16 v4, 0x0

    cmp-long v7, v2, v4

    if-lez v7, :cond_6d

    const-wide/16 v25, 0x8

    mul-long v29, v0, v25

    const-wide/32 v31, 0xf4240

    .line 260
    sget-object v35, Ljava/math/RoundingMode;->HALF_DOWN:Ljava/math/RoundingMode;

    move-wide/from16 v33, v2

    .line 261
    invoke-static/range {v29 .. v35}, Lu1/f0;->M(JJJLjava/math/RoundingMode;)J

    move-result-wide v0

    cmp-long v2, v0, v4

    if-lez v2, :cond_6d

    cmp-long v2, v0, v22

    if-gez v2, :cond_6d

    .line 262
    invoke-virtual/range {v21 .. v21}, Lr1/p;->a()Lr1/o;

    move-result-object v2

    long-to-int v1, v0

    .line 263
    iput v1, v2, Lr1/o;->h:I

    .line 264
    invoke-virtual {v2}, Lr1/o;->a()Lr1/p;

    move-result-object v0

    .line 265
    invoke-virtual {v15, v0}, Lf3/s;->a(Lr1/p;)Lf3/s;

    move-result-object v2

    move-object v15, v2

    .line 266
    :cond_6d
    sget-object v0, Ljava/math/RoundingMode;->DOWN:Ljava/math/RoundingMode;

    const-wide/32 v4, 0xf4240

    iget-wide v1, v15, Lf3/s;->c:J

    move-wide/from16 v20, v1

    move-wide v2, v10

    move v1, v6

    move-wide/from16 v6, v20

    move-object/from16 v18, v8

    move-object v8, v0

    invoke-static/range {v2 .. v8}, Lu1/f0;->M(JJJLjava/math/RoundingMode;)J

    move-result-wide v29

    .line 267
    invoke-static {v9}, Ld/b;->r0(Ljava/util/Collection;)[I

    move-result-object v27

    .line 268
    iget-wide v2, v15, Lf3/s;->c:J

    iget-object v4, v15, Lf3/s;->i:[J

    if-nez v4, :cond_6f

    if-nez p8, :cond_6e

    .line 269
    invoke-static {v14, v2, v3}, Lu1/f0;->L([JJ)V

    .line 270
    :cond_6e
    new-instance v3, Lf3/v;

    move-object/from16 v20, v3

    move-object/from16 v21, v15

    move-object/from16 v22, v12

    move-object/from16 v23, v13

    move-object/from16 v25, v14

    move-object/from16 v26, v18

    move/from16 v31, v1

    invoke-direct/range {v20 .. v31}, Lf3/v;-><init>(Lf3/s;[J[II[J[I[IZJI)V

    goto/16 :goto_33

    :cond_6f
    const-wide/16 v5, -0x1

    .line 271
    iget-object v7, v15, Lf3/s;->j:[J

    if-eqz p8, :cond_73

    .line 272
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 273
    array-length v2, v4

    const/4 v3, 0x1

    if-ne v2, v3, :cond_70

    const/4 v2, 0x0

    aget-wide v8, v4, v2

    const-wide/16 v20, 0x0

    cmp-long v3, v8, v20

    if-nez v3, :cond_70

    .line 274
    aget-wide v3, v7, v2

    sub-long v29, v10, v3

    const-wide/32 v31, 0xf4240

    .line 275
    iget-wide v2, v15, Lf3/s;->c:J

    move-wide/from16 v33, v2

    move-object/from16 v35, v0

    invoke-static/range {v29 .. v35}, Lu1/f0;->M(JJJLjava/math/RoundingMode;)J

    move-result-wide v2

    :goto_53
    move-wide/from16 v29, v2

    goto :goto_55

    :cond_70
    const/4 v0, 0x0

    const-wide/16 v41, 0x0

    .line 276
    :goto_54
    array-length v2, v4

    if-ge v0, v2, :cond_72

    .line 277
    aget-wide v2, v7, v0

    cmp-long v8, v2, v5

    if-eqz v8, :cond_71

    .line 278
    aget-wide v2, v4, v0

    add-long v41, v41, v2

    :cond_71
    const/4 v2, 0x1

    add-int/2addr v0, v2

    goto :goto_54

    .line 279
    :cond_72
    sget-object v10, Ljava/math/RoundingMode;->DOWN:Ljava/math/RoundingMode;

    const-wide/32 v6, 0xf4240

    iget-wide v8, v15, Lf3/s;->d:J

    move-wide/from16 v4, v41

    invoke-static/range {v4 .. v10}, Lu1/f0;->M(JJJLjava/math/RoundingMode;)J

    move-result-wide v2

    goto :goto_53

    .line 280
    :goto_55
    new-instance v3, Lf3/v;

    move-object/from16 v20, v3

    move-object/from16 v21, v15

    move-object/from16 v22, v12

    move-object/from16 v23, v13

    move-object/from16 v25, v14

    move-object/from16 v26, v18

    move/from16 v31, v1

    invoke-direct/range {v20 .. v31}, Lf3/v;-><init>(Lf3/s;[J[II[J[I[IZJI)V

    goto/16 :goto_33

    .line 281
    :cond_73
    array-length v8, v4

    iget v5, v15, Lf3/s;->b:I

    iget-object v6, v15, Lf3/s;->g:Lr1/p;

    move-object/from16 v25, v9

    const/4 v9, 0x1

    if-ne v8, v9, :cond_78

    if-ne v5, v9, :cond_78

    array-length v8, v14

    const/4 v9, 0x2

    if-lt v8, v9, :cond_78

    .line 282
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v8, 0x0

    .line 283
    aget-wide v36, v7, v8

    .line 284
    aget-wide v29, v4, v8

    move-wide/from16 v38, v10

    .line 285
    iget-wide v9, v15, Lf3/s;->c:J

    move-object v11, v7

    iget-wide v7, v15, Lf3/s;->d:J

    move-wide/from16 v31, v9

    move-wide/from16 v33, v7

    move-object/from16 v35, v0

    invoke-static/range {v29 .. v35}, Lu1/f0;->M(JJJLjava/math/RoundingMode;)J

    move-result-wide v7

    add-long v7, v36, v7

    .line 286
    array-length v9, v14

    const/4 v10, 0x1

    sub-int/2addr v9, v10

    move/from16 v26, v5

    const/4 v5, 0x4

    const/4 v10, 0x0

    .line 287
    invoke-static {v5, v10, v9}, Lu1/f0;->g(III)I

    move-result v29

    move-object/from16 v40, v11

    .line 288
    array-length v11, v14

    sub-int/2addr v11, v5

    .line 289
    invoke-static {v11, v10, v9}, Lu1/f0;->g(III)I

    move-result v9

    .line 290
    aget-wide v30, v14, v10

    cmp-long v10, v30, v36

    if-gtz v10, :cond_74

    aget-wide v10, v14, v29

    cmp-long v29, v36, v10

    if-gez v29, :cond_74

    aget-wide v9, v14, v9

    cmp-long v11, v9, v7

    if-gez v11, :cond_74

    const-wide/16 v9, 0x2

    add-long v9, v38, v9

    cmp-long v11, v7, v9

    if-gtz v11, :cond_74

    const/4 v9, 0x1

    goto :goto_56

    :cond_74
    const/4 v9, 0x0

    :goto_56
    if-eqz v9, :cond_77

    sub-long v10, v38, v7

    const-wide/16 v7, 0x0

    .line 291
    invoke-static {v7, v8, v10, v11}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v9

    const/4 v7, 0x0

    .line 292
    aget-wide v29, v14, v7

    sub-long v29, v36, v29

    iget v7, v6, Lr1/p;->H:I

    int-to-long v7, v7

    move-object v11, v6

    .line 293
    iget-wide v5, v15, Lf3/s;->c:J

    move-wide/from16 v31, v7

    move-wide/from16 v33, v5

    move-object/from16 v35, v0

    invoke-static/range {v29 .. v35}, Lu1/f0;->M(JJJLjava/math/RoundingMode;)J

    move-result-wide v5

    move-object v7, v11

    .line 294
    iget v8, v7, Lr1/p;->H:I

    move-object v11, v7

    int-to-long v7, v8

    move-object/from16 v37, v11

    move-object/from16 v36, v12

    .line 295
    iget-wide v11, v15, Lf3/s;->c:J

    move-wide/from16 v29, v9

    move-wide/from16 v31, v7

    move-wide/from16 v33, v11

    move-object/from16 v35, v0

    invoke-static/range {v29 .. v35}, Lu1/f0;->M(JJJLjava/math/RoundingMode;)J

    move-result-wide v7

    const-wide/16 v9, 0x0

    cmp-long v11, v5, v9

    if-nez v11, :cond_76

    cmp-long v11, v7, v9

    if-eqz v11, :cond_75

    goto :goto_58

    :cond_75
    :goto_57
    move-object/from16 v5, p1

    goto :goto_59

    :cond_76
    :goto_58
    cmp-long v9, v5, v22

    if-gtz v9, :cond_75

    cmp-long v9, v7, v22

    if-gtz v9, :cond_75

    long-to-int v6, v5

    move-object/from16 v5, p1

    .line 296
    iput v6, v5, Ll2/v;->a:I

    long-to-int v6, v7

    .line 297
    iput v6, v5, Ll2/v;->b:I

    .line 298
    invoke-static {v14, v2, v3}, Lu1/f0;->L([JJ)V

    const/4 v2, 0x0

    .line 299
    aget-wide v29, v4, v2

    const-wide/32 v31, 0xf4240

    .line 300
    iget-wide v2, v15, Lf3/s;->d:J

    move-wide/from16 v33, v2

    move-object/from16 v35, v0

    invoke-static/range {v29 .. v35}, Lu1/f0;->M(JJJLjava/math/RoundingMode;)J

    move-result-wide v29

    .line 301
    new-instance v3, Lf3/v;

    move-object/from16 v20, v3

    move-object/from16 v21, v15

    move-object/from16 v22, v36

    move-object/from16 v23, v13

    move-object/from16 v25, v14

    move-object/from16 v26, v18

    move/from16 v31, v1

    invoke-direct/range {v20 .. v31}, Lf3/v;-><init>(Lf3/s;[J[II[J[I[IZJI)V

    goto/16 :goto_33

    :cond_77
    move-object/from16 v5, p1

    move-object/from16 v37, v6

    move-object/from16 v36, v12

    goto :goto_59

    :cond_78
    move/from16 v26, v5

    move-object/from16 v37, v6

    move-object/from16 v40, v7

    move-wide/from16 v38, v10

    move-object/from16 v36, v12

    goto :goto_57

    .line 302
    :goto_59
    array-length v0, v4

    const/4 v2, 0x1

    if-ne v0, v2, :cond_7b

    const/4 v0, 0x0

    aget-wide v2, v4, v0

    const-wide/16 v6, 0x0

    cmp-long v8, v2, v6

    if-nez v8, :cond_7a

    .line 303
    invoke-virtual/range {v40 .. v40}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 304
    aget-wide v2, v40, v0

    const/4 v11, 0x0

    .line 305
    :goto_5a
    array-length v0, v14

    if-ge v11, v0, :cond_79

    .line 306
    aget-wide v6, v14, v11

    sub-long v29, v6, v2

    .line 307
    sget-object v35, Ljava/math/RoundingMode;->DOWN:Ljava/math/RoundingMode;

    const-wide/32 v31, 0xf4240

    iget-wide v6, v15, Lf3/s;->c:J

    move-wide/from16 v33, v6

    invoke-static/range {v29 .. v35}, Lu1/f0;->M(JJJLjava/math/RoundingMode;)J

    move-result-wide v6

    .line 308
    aput-wide v6, v14, v11

    const/4 v0, 0x1

    add-int/2addr v11, v0

    goto :goto_5a

    :cond_79
    sub-long v29, v38, v2

    .line 309
    sget-object v35, Ljava/math/RoundingMode;->DOWN:Ljava/math/RoundingMode;

    const-wide/32 v31, 0xf4240

    iget-wide v2, v15, Lf3/s;->c:J

    move-wide/from16 v33, v2

    invoke-static/range {v29 .. v35}, Lu1/f0;->M(JJJLjava/math/RoundingMode;)J

    move-result-wide v29

    .line 310
    new-instance v3, Lf3/v;

    move-object/from16 v20, v3

    move-object/from16 v21, v15

    move-object/from16 v22, v36

    move-object/from16 v23, v13

    move-object/from16 v25, v14

    move-object/from16 v26, v18

    move/from16 v31, v1

    invoke-direct/range {v20 .. v31}, Lf3/v;-><init>(Lf3/s;[J[II[J[I[IZJI)V

    goto/16 :goto_33

    :cond_7a
    move/from16 v0, v26

    const/4 v2, 0x1

    goto :goto_5b

    :cond_7b
    move/from16 v0, v26

    :goto_5b
    if-ne v0, v2, :cond_7c

    const/4 v0, 0x1

    goto :goto_5c

    :cond_7c
    const/4 v0, 0x0

    .line 311
    :goto_5c
    array-length v2, v4

    new-array v2, v2, [I

    .line 312
    array-length v3, v4

    new-array v3, v3, [I

    .line 313
    invoke-virtual/range {v40 .. v40}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v11, 0x0

    .line 314
    :goto_5d
    array-length v9, v4

    if-ge v11, v9, :cond_85

    .line 315
    aget-wide v9, v40, v11

    const-wide/16 v20, -0x1

    cmp-long v12, v9, v20

    if-eqz v12, :cond_84

    .line 316
    aget-wide v29, v4, v11

    .line 317
    sget-object v35, Ljava/math/RoundingMode;->DOWN:Ljava/math/RoundingMode;

    move-object/from16 v22, v13

    iget-wide v12, v15, Lf3/s;->c:J

    move-object/from16 v23, v4

    iget-wide v4, v15, Lf3/s;->d:J

    move-wide/from16 v31, v12

    move-wide/from16 v33, v4

    invoke-static/range {v29 .. v35}, Lu1/f0;->M(JJJLjava/math/RoundingMode;)J

    move-result-wide v4

    add-long/2addr v4, v9

    const/4 v12, 0x1

    .line 318
    invoke-static {v14, v9, v10, v12}, Lu1/f0;->d([JJZ)I

    move-result v9

    aput v9, v2, v11

    .line 319
    invoke-static {v14, v4, v5, v0}, Lu1/f0;->a([JJZ)I

    move-result v9

    add-int/lit8 v10, v9, -0x1

    const/4 v13, 0x0

    .line 320
    :goto_5e
    array-length v12, v14

    if-ge v9, v12, :cond_7f

    .line 321
    aget-wide v26, v14, v9

    cmp-long v12, v26, v4

    if-gez v12, :cond_7e

    move/from16 v26, v0

    move v10, v9

    move-object/from16 v12, v37

    :cond_7d
    const/4 v0, 0x1

    goto :goto_60

    :cond_7e
    const/4 v12, 0x1

    add-int/2addr v13, v12

    move/from16 v26, v0

    move-object/from16 v12, v37

    .line 322
    iget v0, v12, Lr1/p;->q:I

    if-le v13, v0, :cond_7d

    :goto_5f
    const/4 v0, 0x1

    goto :goto_61

    :goto_60
    add-int/2addr v9, v0

    move-object/from16 v37, v12

    move/from16 v0, v26

    goto :goto_5e

    :cond_7f
    move/from16 v26, v0

    move-object/from16 v12, v37

    goto :goto_5f

    :goto_61
    add-int/2addr v10, v0

    .line 323
    aput v10, v3, v11

    .line 324
    aget v4, v2, v11

    .line 325
    :goto_62
    aget v5, v2, v11

    move-object/from16 v9, v18

    if-lez v5, :cond_80

    aget v10, v9, v5

    and-int/2addr v10, v0

    if-nez v10, :cond_80

    sub-int/2addr v5, v0

    .line 326
    aput v5, v2, v11

    move-object/from16 v18, v9

    goto :goto_62

    :cond_80
    if-nez v5, :cond_81

    const/4 v5, 0x0

    .line 327
    aget v10, v9, v5

    and-int/2addr v10, v0

    if-nez v10, :cond_82

    .line 328
    aput v4, v2, v11

    .line 329
    :goto_63
    aget v4, v2, v11

    aget v10, v3, v11

    if-ge v4, v10, :cond_82

    aget v10, v9, v4

    and-int/2addr v10, v0

    if-nez v10, :cond_82

    add-int/2addr v4, v0

    .line 330
    aput v4, v2, v11

    const/4 v0, 0x1

    goto :goto_63

    :cond_81
    const/4 v5, 0x0

    .line 331
    :cond_82
    aget v0, v3, v11

    aget v4, v2, v11

    sub-int v10, v0, v4

    add-int/2addr v10, v7

    if-eq v8, v4, :cond_83

    const/4 v4, 0x1

    goto :goto_64

    :cond_83
    const/4 v4, 0x0

    :goto_64
    or-int/2addr v4, v6

    move v8, v0

    move v6, v4

    move v7, v10

    :goto_65
    const/4 v0, 0x1

    goto :goto_66

    :cond_84
    move/from16 v26, v0

    move-object/from16 v23, v4

    move-object/from16 v22, v13

    move-object/from16 v9, v18

    move-object/from16 v12, v37

    const/4 v5, 0x0

    goto :goto_65

    :goto_66
    add-int/2addr v11, v0

    move-object/from16 v5, p1

    move-object/from16 v18, v9

    move-object/from16 v37, v12

    move-object/from16 v13, v22

    move-object/from16 v4, v23

    move/from16 v0, v26

    goto/16 :goto_5d

    :cond_85
    move-object/from16 v23, v4

    move-object/from16 v22, v13

    move-object/from16 v9, v18

    move-object/from16 v12, v37

    const/4 v5, 0x0

    if-eq v7, v1, :cond_86

    const/4 v0, 0x1

    goto :goto_67

    :cond_86
    const/4 v0, 0x0

    :goto_67
    or-int/2addr v0, v6

    if-eqz v0, :cond_87

    .line 332
    new-array v1, v7, [J

    goto :goto_68

    :cond_87
    move-object/from16 v1, v36

    :goto_68
    if-eqz v0, :cond_88

    .line 333
    new-array v4, v7, [I

    goto :goto_69

    :cond_88
    move-object/from16 v4, v22

    :goto_69
    if-eqz v0, :cond_89

    const/4 v11, 0x0

    goto :goto_6a

    :cond_89
    move/from16 v11, v24

    :goto_6a
    if-eqz v0, :cond_8a

    .line 334
    new-array v6, v7, [I

    goto :goto_6b

    :cond_8a
    move-object v6, v9

    :goto_6b
    if-eqz v0, :cond_8b

    .line 335
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    goto :goto_6c

    :cond_8b
    move-object/from16 v8, v25

    .line 336
    :goto_6c
    new-array v7, v7, [J

    move/from16 v24, v11

    move-object/from16 v37, v12

    move-object/from16 v5, v23

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v13, 0x0

    const-wide/16 v20, 0x0

    .line 337
    :goto_6d
    array-length v12, v5

    if-ge v11, v12, :cond_92

    .line 338
    aget-wide v25, v40, v11

    .line 339
    aget v12, v2, v11

    move-object/from16 v18, v2

    .line 340
    aget v2, v3, v11

    move-object/from16 v23, v3

    if-eqz v0, :cond_8c

    sub-int v3, v2, v12

    move/from16 v27, v10

    move-object/from16 v10, v36

    .line 341
    invoke-static {v10, v12, v1, v13, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object/from16 v10, v22

    .line 342
    invoke-static {v10, v12, v4, v13, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 343
    invoke-static {v9, v12, v6, v13, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_6e

    :cond_8c
    move/from16 v27, v10

    move-object/from16 v10, v22

    :goto_6e
    move/from16 v3, v24

    :goto_6f
    if-ge v12, v2, :cond_91

    .line 344
    sget-object v22, Ljava/math/RoundingMode;->DOWN:Ljava/math/RoundingMode;

    const-wide/32 v31, 0xf4240

    move-object/from16 v38, v1

    move/from16 v39, v2

    iget-wide v1, v15, Lf3/s;->d:J

    move-wide/from16 v29, v20

    move-wide/from16 v33, v1

    move-object/from16 v35, v22

    invoke-static/range {v29 .. v35}, Lu1/f0;->M(JJJLjava/math/RoundingMode;)J

    move-result-wide v1

    .line 345
    aget-wide v29, v14, v12

    sub-long v29, v29, v25

    const-wide/32 v31, 0xf4240

    move-object/from16 v44, v8

    move-object/from16 v43, v9

    .line 346
    iget-wide v8, v15, Lf3/s;->c:J

    move-wide/from16 v33, v8

    move-object/from16 v35, v22

    invoke-static/range {v29 .. v35}, Lu1/f0;->M(JJJLjava/math/RoundingMode;)J

    move-result-wide v8

    const-wide/16 v29, 0x0

    cmp-long v22, v8, v29

    if-gez v22, :cond_8d

    const/16 v27, 0x1

    :cond_8d
    add-long/2addr v1, v8

    .line 347
    aput-wide v1, v7, v13

    if-eqz v0, :cond_8e

    .line 348
    aget v1, v4, v13

    if-le v1, v3, :cond_8e

    .line 349
    aget v1, v10, v12

    move v3, v1

    :cond_8e
    if-eqz v0, :cond_90

    if-nez v28, :cond_90

    .line 350
    aget v1, v6, v13

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-eqz v1, :cond_8f

    .line 351
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    move-object/from16 v8, v44

    invoke-interface {v8, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_70

    :cond_8f
    move-object/from16 v8, v44

    goto :goto_70

    :cond_90
    move-object/from16 v8, v44

    const/4 v2, 0x1

    :goto_70
    add-int/2addr v13, v2

    add-int/2addr v12, v2

    move-object/from16 v1, v38

    move/from16 v2, v39

    move-object/from16 v9, v43

    goto :goto_6f

    :cond_91
    move-object/from16 v38, v1

    move-object/from16 v43, v9

    const/4 v2, 0x1

    const-wide/16 v29, 0x0

    .line 352
    aget-wide v24, v5, v11

    add-long v20, v20, v24

    add-int/2addr v11, v2

    move/from16 v24, v3

    move-object/from16 v22, v10

    move-object/from16 v2, v18

    move-object/from16 v3, v23

    move/from16 v10, v27

    goto/16 :goto_6d

    :cond_92
    move-object/from16 v38, v1

    move/from16 v27, v10

    .line 353
    sget-object v35, Ljava/math/RoundingMode;->DOWN:Ljava/math/RoundingMode;

    const-wide/32 v31, 0xf4240

    iget-wide v0, v15, Lf3/s;->d:J

    move-wide/from16 v29, v20

    move-wide/from16 v33, v0

    invoke-static/range {v29 .. v35}, Lu1/f0;->M(JJJLjava/math/RoundingMode;)J

    move-result-wide v29

    if-eqz v27, :cond_93

    .line 354
    invoke-virtual/range {v37 .. v37}, Lr1/p;->a()Lr1/o;

    move-result-object v0

    const/4 v1, 0x1

    .line 355
    iput-boolean v1, v0, Lr1/o;->t:Z

    .line 356
    invoke-virtual {v0}, Lr1/o;->a()Lr1/p;

    move-result-object v0

    .line 357
    invoke-virtual {v15, v0}, Lf3/s;->a(Lr1/p;)Lf3/s;

    move-result-object v0

    move-object/from16 v21, v0

    goto :goto_71

    :cond_93
    move-object/from16 v21, v15

    .line 358
    :goto_71
    new-instance v3, Lf3/v;

    .line 359
    invoke-static {v8}, Ld/b;->r0(Ljava/util/Collection;)[I

    move-result-object v27

    move-object/from16 v1, v38

    array-length v0, v1

    move-object/from16 v20, v3

    move-object/from16 v22, v1

    move-object/from16 v23, v4

    move-object/from16 v25, v7

    move-object/from16 v26, v6

    move/from16 v31, v0

    invoke-direct/range {v20 .. v31}, Lf3/v;-><init>(Lf3/s;[J[II[J[I[IZJI)V

    goto/16 :goto_33

    .line 360
    :goto_72
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_31

    :goto_73
    add-int/lit8 v13, v45, 0x1

    move-object/from16 v1, p1

    move-object v11, v0

    const/16 v3, 0x8

    const/4 v4, 0x4

    const/16 v8, 0x10

    const/4 v9, -0x1

    move-object/from16 v0, p0

    goto/16 :goto_0

    .line 361
    :cond_94
    const-string v0, "Track has no sample table size information"

    const/4 v1, 0x0

    invoke-static {v1, v0}, Lr1/f0;->a(Ljava/lang/RuntimeException;Ljava/lang/String;)Lr1/f0;

    move-result-object v0

    throw v0

    :cond_95
    move-object v0, v11

    return-object v0
.end method

.method public static j(Lv1/d;)Lr1/d0;
    .locals 17

    .line 1
    const/4 v2, 0x1

    .line 2
    move-object/from16 v3, p0

    .line 3
    .line 4
    iget-object v3, v3, Lv1/d;->c:Lu1/q;

    .line 5
    .line 6
    const/16 v4, 0x8

    .line 7
    .line 8
    invoke-virtual {v3, v4}, Lu1/q;->O(I)V

    .line 9
    .line 10
    .line 11
    new-instance v5, Lr1/d0;

    .line 12
    .line 13
    const/4 v6, 0x0

    .line 14
    new-array v7, v6, [Lr1/c0;

    .line 15
    .line 16
    invoke-direct {v5, v7}, Lr1/d0;-><init>([Lr1/c0;)V

    .line 17
    .line 18
    .line 19
    :goto_0
    invoke-virtual {v3}, Lu1/q;->a()I

    .line 20
    .line 21
    .line 22
    move-result v7

    .line 23
    if-lt v7, v4, :cond_3f

    .line 24
    .line 25
    iget v7, v3, Lu1/q;->b:I

    .line 26
    .line 27
    invoke-virtual {v3}, Lu1/q;->o()I

    .line 28
    .line 29
    .line 30
    move-result v8

    .line 31
    invoke-virtual {v3}, Lu1/q;->o()I

    .line 32
    .line 33
    .line 34
    move-result v9

    .line 35
    const/4 v10, 0x0

    .line 36
    const v11, 0x6d657461

    .line 37
    .line 38
    .line 39
    const/4 v12, 0x4

    .line 40
    if-ne v9, v11, :cond_2e

    .line 41
    .line 42
    invoke-virtual {v3, v7}, Lu1/q;->O(I)V

    .line 43
    .line 44
    .line 45
    add-int v9, v7, v8

    .line 46
    .line 47
    invoke-virtual {v3, v4}, Lu1/q;->P(I)V

    .line 48
    .line 49
    .line 50
    invoke-static {v3}, Lf3/e;->a(Lu1/q;)V

    .line 51
    .line 52
    .line 53
    :goto_1
    iget v11, v3, Lu1/q;->b:I

    .line 54
    .line 55
    if-ge v11, v9, :cond_2d

    .line 56
    .line 57
    invoke-virtual {v3}, Lu1/q;->o()I

    .line 58
    .line 59
    .line 60
    move-result v14

    .line 61
    invoke-virtual {v3}, Lu1/q;->o()I

    .line 62
    .line 63
    .line 64
    move-result v15

    .line 65
    const v0, 0x696c7374

    .line 66
    .line 67
    .line 68
    if-ne v15, v0, :cond_2c

    .line 69
    .line 70
    invoke-virtual {v3, v11}, Lu1/q;->O(I)V

    .line 71
    .line 72
    .line 73
    add-int/2addr v11, v14

    .line 74
    invoke-virtual {v3, v4}, Lu1/q;->P(I)V

    .line 75
    .line 76
    .line 77
    new-instance v0, Ljava/util/ArrayList;

    .line 78
    .line 79
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 80
    .line 81
    .line 82
    :goto_2
    iget v9, v3, Lu1/q;->b:I

    .line 83
    .line 84
    if-ge v9, v11, :cond_2a

    .line 85
    .line 86
    const-string v14, "Skipped unknown metadata entry: "

    .line 87
    .line 88
    invoke-virtual {v3}, Lu1/q;->o()I

    .line 89
    .line 90
    .line 91
    move-result v15

    .line 92
    add-int/2addr v15, v9

    .line 93
    invoke-virtual {v3}, Lu1/q;->o()I

    .line 94
    .line 95
    .line 96
    move-result v9

    .line 97
    shr-int/lit8 v4, v9, 0x18

    .line 98
    .line 99
    and-int/lit16 v4, v4, 0xff

    .line 100
    .line 101
    const/16 v13, 0xa9

    .line 102
    .line 103
    const-string v1, "TCON"

    .line 104
    .line 105
    if-eq v4, v13, :cond_0

    .line 106
    .line 107
    const/16 v13, 0xfd

    .line 108
    .line 109
    if-ne v4, v13, :cond_1

    .line 110
    .line 111
    :cond_0
    const/4 v2, -0x1

    .line 112
    goto/16 :goto_8

    .line 113
    .line 114
    :cond_1
    const v4, 0x676e7265

    .line 115
    .line 116
    .line 117
    if-ne v9, v4, :cond_3

    .line 118
    .line 119
    :try_start_0
    invoke-static {v3}, Lf3/r;->e(Lu1/q;)I

    .line 120
    .line 121
    .line 122
    move-result v4

    .line 123
    sub-int/2addr v4, v2

    .line 124
    invoke-static {v4}, Lz2/j;->a(I)Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object v4

    .line 128
    if-eqz v4, :cond_2

    .line 129
    .line 130
    new-instance v9, Lz2/n;

    .line 131
    .line 132
    invoke-static {v4}, Lu7/g0;->r(Ljava/lang/Object;)Lu7/y0;

    .line 133
    .line 134
    .line 135
    move-result-object v4

    .line 136
    invoke-direct {v9, v1, v10, v4}, Lz2/n;-><init>(Ljava/lang/String;Ljava/lang/String;Lu7/y0;)V

    .line 137
    .line 138
    .line 139
    goto :goto_3

    .line 140
    :cond_2
    const-string v1, "Failed to parse standard genre code"

    .line 141
    .line 142
    invoke-static {v1}, Lu1/a;->p(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 143
    .line 144
    .line 145
    move-object v9, v10

    .line 146
    :goto_3
    invoke-virtual {v3, v15}, Lu1/q;->O(I)V

    .line 147
    .line 148
    .line 149
    const/4 v2, -0x1

    .line 150
    goto/16 :goto_c

    .line 151
    .line 152
    :cond_3
    const v1, 0x6469736b

    .line 153
    .line 154
    .line 155
    if-ne v9, v1, :cond_4

    .line 156
    .line 157
    :try_start_1
    const-string v1, "TPOS"

    .line 158
    .line 159
    invoke-static {v9, v1, v3}, Lf3/r;->d(ILjava/lang/String;Lu1/q;)Lz2/n;

    .line 160
    .line 161
    .line 162
    move-result-object v9

    .line 163
    goto :goto_3

    .line 164
    :catchall_0
    move-exception v0

    .line 165
    goto/16 :goto_d

    .line 166
    .line 167
    :cond_4
    const v1, 0x74726b6e

    .line 168
    .line 169
    .line 170
    if-ne v9, v1, :cond_5

    .line 171
    .line 172
    const-string v1, "TRCK"

    .line 173
    .line 174
    invoke-static {v9, v1, v3}, Lf3/r;->d(ILjava/lang/String;Lu1/q;)Lz2/n;

    .line 175
    .line 176
    .line 177
    move-result-object v9

    .line 178
    goto :goto_3

    .line 179
    :cond_5
    const v1, 0x746d706f

    .line 180
    .line 181
    .line 182
    if-ne v9, v1, :cond_6

    .line 183
    .line 184
    const-string v1, "TBPM"

    .line 185
    .line 186
    invoke-static {v9, v1, v3, v2, v6}, Lf3/r;->f(ILjava/lang/String;Lu1/q;ZZ)Lz2/i;

    .line 187
    .line 188
    .line 189
    move-result-object v9

    .line 190
    goto :goto_3

    .line 191
    :cond_6
    const v1, 0x6370696c

    .line 192
    .line 193
    .line 194
    if-ne v9, v1, :cond_7

    .line 195
    .line 196
    const-string v1, "TCMP"

    .line 197
    .line 198
    invoke-static {v9, v1, v3, v2, v2}, Lf3/r;->f(ILjava/lang/String;Lu1/q;ZZ)Lz2/i;

    .line 199
    .line 200
    .line 201
    move-result-object v9

    .line 202
    goto :goto_3

    .line 203
    :cond_7
    const v1, 0x636f7672

    .line 204
    .line 205
    .line 206
    if-ne v9, v1, :cond_8

    .line 207
    .line 208
    invoke-static {v3}, Lf3/r;->c(Lu1/q;)Lz2/a;

    .line 209
    .line 210
    .line 211
    move-result-object v9

    .line 212
    goto :goto_3

    .line 213
    :cond_8
    const v1, 0x61415254

    .line 214
    .line 215
    .line 216
    if-ne v9, v1, :cond_9

    .line 217
    .line 218
    const-string v1, "TPE2"

    .line 219
    .line 220
    invoke-static {v9, v1, v3}, Lf3/r;->g(ILjava/lang/String;Lu1/q;)Lz2/n;

    .line 221
    .line 222
    .line 223
    move-result-object v9

    .line 224
    goto :goto_3

    .line 225
    :cond_9
    const v1, 0x736f6e6d

    .line 226
    .line 227
    .line 228
    if-ne v9, v1, :cond_a

    .line 229
    .line 230
    const-string v1, "TSOT"

    .line 231
    .line 232
    invoke-static {v9, v1, v3}, Lf3/r;->g(ILjava/lang/String;Lu1/q;)Lz2/n;

    .line 233
    .line 234
    .line 235
    move-result-object v9

    .line 236
    goto :goto_3

    .line 237
    :cond_a
    const v1, 0x736f616c

    .line 238
    .line 239
    .line 240
    if-ne v9, v1, :cond_b

    .line 241
    .line 242
    const-string v1, "TSOA"

    .line 243
    .line 244
    invoke-static {v9, v1, v3}, Lf3/r;->g(ILjava/lang/String;Lu1/q;)Lz2/n;

    .line 245
    .line 246
    .line 247
    move-result-object v9

    .line 248
    goto :goto_3

    .line 249
    :cond_b
    const v1, 0x736f6172

    .line 250
    .line 251
    .line 252
    if-ne v9, v1, :cond_c

    .line 253
    .line 254
    const-string v1, "TSOP"

    .line 255
    .line 256
    invoke-static {v9, v1, v3}, Lf3/r;->g(ILjava/lang/String;Lu1/q;)Lz2/n;

    .line 257
    .line 258
    .line 259
    move-result-object v9

    .line 260
    goto :goto_3

    .line 261
    :cond_c
    const v1, 0x736f6161

    .line 262
    .line 263
    .line 264
    if-ne v9, v1, :cond_d

    .line 265
    .line 266
    const-string v1, "TSO2"

    .line 267
    .line 268
    invoke-static {v9, v1, v3}, Lf3/r;->g(ILjava/lang/String;Lu1/q;)Lz2/n;

    .line 269
    .line 270
    .line 271
    move-result-object v9

    .line 272
    goto :goto_3

    .line 273
    :cond_d
    const v1, 0x736f636f

    .line 274
    .line 275
    .line 276
    if-ne v9, v1, :cond_e

    .line 277
    .line 278
    const-string v1, "TSOC"

    .line 279
    .line 280
    invoke-static {v9, v1, v3}, Lf3/r;->g(ILjava/lang/String;Lu1/q;)Lz2/n;

    .line 281
    .line 282
    .line 283
    move-result-object v9

    .line 284
    goto/16 :goto_3

    .line 285
    .line 286
    :cond_e
    const v1, 0x72746e67

    .line 287
    .line 288
    .line 289
    if-ne v9, v1, :cond_f

    .line 290
    .line 291
    const-string v1, "ITUNESADVISORY"

    .line 292
    .line 293
    invoke-static {v9, v1, v3, v6, v6}, Lf3/r;->f(ILjava/lang/String;Lu1/q;ZZ)Lz2/i;

    .line 294
    .line 295
    .line 296
    move-result-object v9

    .line 297
    goto/16 :goto_3

    .line 298
    .line 299
    :cond_f
    const v1, 0x70676170

    .line 300
    .line 301
    .line 302
    if-ne v9, v1, :cond_10

    .line 303
    .line 304
    const-string v1, "ITUNESGAPLESS"

    .line 305
    .line 306
    invoke-static {v9, v1, v3, v6, v2}, Lf3/r;->f(ILjava/lang/String;Lu1/q;ZZ)Lz2/i;

    .line 307
    .line 308
    .line 309
    move-result-object v9

    .line 310
    goto/16 :goto_3

    .line 311
    .line 312
    :cond_10
    const v1, 0x736f736e

    .line 313
    .line 314
    .line 315
    if-ne v9, v1, :cond_11

    .line 316
    .line 317
    const-string v1, "TVSHOWSORT"

    .line 318
    .line 319
    invoke-static {v9, v1, v3}, Lf3/r;->g(ILjava/lang/String;Lu1/q;)Lz2/n;

    .line 320
    .line 321
    .line 322
    move-result-object v9

    .line 323
    goto/16 :goto_3

    .line 324
    .line 325
    :cond_11
    const v1, 0x74767368

    .line 326
    .line 327
    .line 328
    if-ne v9, v1, :cond_12

    .line 329
    .line 330
    const-string v1, "TVSHOW"

    .line 331
    .line 332
    invoke-static {v9, v1, v3}, Lf3/r;->g(ILjava/lang/String;Lu1/q;)Lz2/n;

    .line 333
    .line 334
    .line 335
    move-result-object v9

    .line 336
    goto/16 :goto_3

    .line 337
    .line 338
    :cond_12
    const v1, 0x2d2d2d2d

    .line 339
    .line 340
    .line 341
    if-ne v9, v1, :cond_19

    .line 342
    .line 343
    move-object v1, v10

    .line 344
    move-object v4, v1

    .line 345
    const/4 v9, -0x1

    .line 346
    const/4 v13, -0x1

    .line 347
    :goto_4
    iget v14, v3, Lu1/q;->b:I

    .line 348
    .line 349
    if-ge v14, v15, :cond_16

    .line 350
    .line 351
    invoke-virtual {v3}, Lu1/q;->o()I

    .line 352
    .line 353
    .line 354
    move-result v16

    .line 355
    invoke-virtual {v3}, Lu1/q;->o()I

    .line 356
    .line 357
    .line 358
    move-result v10

    .line 359
    invoke-virtual {v3, v12}, Lu1/q;->P(I)V

    .line 360
    .line 361
    .line 362
    const v12, 0x6d65616e

    .line 363
    .line 364
    .line 365
    if-ne v10, v12, :cond_13

    .line 366
    .line 367
    const/16 v12, 0xc

    .line 368
    .line 369
    add-int/lit8 v1, v16, -0xc

    .line 370
    .line 371
    invoke-virtual {v3, v1}, Lu1/q;->x(I)Ljava/lang/String;

    .line 372
    .line 373
    .line 374
    move-result-object v1

    .line 375
    goto :goto_5

    .line 376
    :cond_13
    const/16 v12, 0xc

    .line 377
    .line 378
    const v2, 0x6e616d65

    .line 379
    .line 380
    .line 381
    if-ne v10, v2, :cond_14

    .line 382
    .line 383
    add-int/lit8 v2, v16, -0xc

    .line 384
    .line 385
    invoke-virtual {v3, v2}, Lu1/q;->x(I)Ljava/lang/String;

    .line 386
    .line 387
    .line 388
    move-result-object v4

    .line 389
    goto :goto_5

    .line 390
    :cond_14
    const v2, 0x64617461

    .line 391
    .line 392
    .line 393
    if-ne v10, v2, :cond_15

    .line 394
    .line 395
    move v9, v14

    .line 396
    move/from16 v13, v16

    .line 397
    .line 398
    :cond_15
    add-int/lit8 v2, v16, -0xc

    .line 399
    .line 400
    invoke-virtual {v3, v2}, Lu1/q;->P(I)V

    .line 401
    .line 402
    .line 403
    :goto_5
    const/4 v2, 0x1

    .line 404
    const/4 v10, 0x0

    .line 405
    const/4 v12, 0x4

    .line 406
    goto :goto_4

    .line 407
    :cond_16
    if-eqz v1, :cond_18

    .line 408
    .line 409
    if-eqz v4, :cond_18

    .line 410
    .line 411
    const/4 v2, -0x1

    .line 412
    if-ne v9, v2, :cond_17

    .line 413
    .line 414
    goto :goto_6

    .line 415
    :cond_17
    invoke-virtual {v3, v9}, Lu1/q;->O(I)V

    .line 416
    .line 417
    .line 418
    const/16 v9, 0x10

    .line 419
    .line 420
    invoke-virtual {v3, v9}, Lu1/q;->P(I)V

    .line 421
    .line 422
    .line 423
    sub-int/2addr v13, v9

    .line 424
    invoke-virtual {v3, v13}, Lu1/q;->x(I)Ljava/lang/String;

    .line 425
    .line 426
    .line 427
    move-result-object v9

    .line 428
    new-instance v10, Lz2/k;

    .line 429
    .line 430
    invoke-direct {v10, v1, v4, v9}, Lz2/k;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 431
    .line 432
    .line 433
    move-object v9, v10

    .line 434
    goto :goto_7

    .line 435
    :cond_18
    const/4 v2, -0x1

    .line 436
    :goto_6
    const/4 v9, 0x0

    .line 437
    :goto_7
    invoke-virtual {v3, v15}, Lu1/q;->O(I)V

    .line 438
    .line 439
    .line 440
    goto/16 :goto_c

    .line 441
    .line 442
    :cond_19
    const/4 v2, -0x1

    .line 443
    goto/16 :goto_9

    .line 444
    .line 445
    :goto_8
    const v4, 0xffffff

    .line 446
    .line 447
    .line 448
    and-int/2addr v4, v9

    .line 449
    const v10, 0x636d74

    .line 450
    .line 451
    .line 452
    if-ne v4, v10, :cond_1b

    .line 453
    .line 454
    :try_start_2
    invoke-virtual {v3}, Lu1/q;->o()I

    .line 455
    .line 456
    .line 457
    move-result v1

    .line 458
    invoke-virtual {v3}, Lu1/q;->o()I

    .line 459
    .line 460
    .line 461
    move-result v4

    .line 462
    const v10, 0x64617461

    .line 463
    .line 464
    .line 465
    if-ne v4, v10, :cond_1a

    .line 466
    .line 467
    const/16 v4, 0x8

    .line 468
    .line 469
    invoke-virtual {v3, v4}, Lu1/q;->P(I)V

    .line 470
    .line 471
    .line 472
    const/16 v4, 0x10

    .line 473
    .line 474
    sub-int/2addr v1, v4

    .line 475
    invoke-virtual {v3, v1}, Lu1/q;->x(I)Ljava/lang/String;

    .line 476
    .line 477
    .line 478
    move-result-object v1

    .line 479
    new-instance v4, Lz2/e;

    .line 480
    .line 481
    const-string v9, "und"

    .line 482
    .line 483
    invoke-direct {v4, v9, v1, v1}, Lz2/e;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 484
    .line 485
    .line 486
    move-object v9, v4

    .line 487
    goto :goto_7

    .line 488
    :cond_1a
    new-instance v1, Ljava/lang/StringBuilder;

    .line 489
    .line 490
    const-string v4, "Failed to parse comment attribute: "

    .line 491
    .line 492
    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 493
    .line 494
    .line 495
    invoke-static {v9}, Lab/a;->b(I)Ljava/lang/String;

    .line 496
    .line 497
    .line 498
    move-result-object v4

    .line 499
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 500
    .line 501
    .line 502
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 503
    .line 504
    .line 505
    move-result-object v1

    .line 506
    invoke-static {v1}, Lu1/a;->p(Ljava/lang/String;)V

    .line 507
    .line 508
    .line 509
    goto :goto_6

    .line 510
    :cond_1b
    const v10, 0x6e616d

    .line 511
    .line 512
    .line 513
    if-eq v4, v10, :cond_28

    .line 514
    .line 515
    const v10, 0x74726b

    .line 516
    .line 517
    .line 518
    if-ne v4, v10, :cond_1c

    .line 519
    .line 520
    goto/16 :goto_b

    .line 521
    .line 522
    :cond_1c
    const v10, 0x636f6d

    .line 523
    .line 524
    .line 525
    if-eq v4, v10, :cond_27

    .line 526
    .line 527
    const v10, 0x777274

    .line 528
    .line 529
    .line 530
    if-ne v4, v10, :cond_1d

    .line 531
    .line 532
    goto/16 :goto_a

    .line 533
    .line 534
    :cond_1d
    const v10, 0x646179

    .line 535
    .line 536
    .line 537
    if-ne v4, v10, :cond_1e

    .line 538
    .line 539
    const-string v1, "TDRC"

    .line 540
    .line 541
    invoke-static {v9, v1, v3}, Lf3/r;->g(ILjava/lang/String;Lu1/q;)Lz2/n;

    .line 542
    .line 543
    .line 544
    move-result-object v9

    .line 545
    goto :goto_7

    .line 546
    :cond_1e
    const v10, 0x415254

    .line 547
    .line 548
    .line 549
    if-ne v4, v10, :cond_1f

    .line 550
    .line 551
    const-string v1, "TPE1"

    .line 552
    .line 553
    invoke-static {v9, v1, v3}, Lf3/r;->g(ILjava/lang/String;Lu1/q;)Lz2/n;

    .line 554
    .line 555
    .line 556
    move-result-object v9

    .line 557
    goto :goto_7

    .line 558
    :cond_1f
    const v10, 0x746f6f

    .line 559
    .line 560
    .line 561
    if-ne v4, v10, :cond_20

    .line 562
    .line 563
    const-string v1, "TSSE"

    .line 564
    .line 565
    invoke-static {v9, v1, v3}, Lf3/r;->g(ILjava/lang/String;Lu1/q;)Lz2/n;

    .line 566
    .line 567
    .line 568
    move-result-object v9

    .line 569
    goto/16 :goto_7

    .line 570
    .line 571
    :cond_20
    const v10, 0x616c62

    .line 572
    .line 573
    .line 574
    if-ne v4, v10, :cond_21

    .line 575
    .line 576
    const-string v1, "TALB"

    .line 577
    .line 578
    invoke-static {v9, v1, v3}, Lf3/r;->g(ILjava/lang/String;Lu1/q;)Lz2/n;

    .line 579
    .line 580
    .line 581
    move-result-object v9

    .line 582
    goto/16 :goto_7

    .line 583
    .line 584
    :cond_21
    const v10, 0x6c7972

    .line 585
    .line 586
    .line 587
    if-ne v4, v10, :cond_22

    .line 588
    .line 589
    const-string v1, "USLT"

    .line 590
    .line 591
    invoke-static {v9, v1, v3}, Lf3/r;->g(ILjava/lang/String;Lu1/q;)Lz2/n;

    .line 592
    .line 593
    .line 594
    move-result-object v9

    .line 595
    goto/16 :goto_7

    .line 596
    .line 597
    :cond_22
    const v10, 0x67656e

    .line 598
    .line 599
    .line 600
    if-ne v4, v10, :cond_23

    .line 601
    .line 602
    invoke-static {v9, v1, v3}, Lf3/r;->g(ILjava/lang/String;Lu1/q;)Lz2/n;

    .line 603
    .line 604
    .line 605
    move-result-object v9

    .line 606
    goto/16 :goto_7

    .line 607
    .line 608
    :cond_23
    const v1, 0x677270

    .line 609
    .line 610
    .line 611
    if-ne v4, v1, :cond_24

    .line 612
    .line 613
    const-string v1, "TIT1"

    .line 614
    .line 615
    invoke-static {v9, v1, v3}, Lf3/r;->g(ILjava/lang/String;Lu1/q;)Lz2/n;

    .line 616
    .line 617
    .line 618
    move-result-object v9

    .line 619
    goto/16 :goto_7

    .line 620
    .line 621
    :cond_24
    const v1, 0x6d766e

    .line 622
    .line 623
    .line 624
    if-ne v4, v1, :cond_25

    .line 625
    .line 626
    const-string v1, "MVNM"

    .line 627
    .line 628
    invoke-static {v9, v1, v3}, Lf3/r;->g(ILjava/lang/String;Lu1/q;)Lz2/n;

    .line 629
    .line 630
    .line 631
    move-result-object v9

    .line 632
    goto/16 :goto_7

    .line 633
    .line 634
    :cond_25
    const v1, 0x6d7669

    .line 635
    .line 636
    .line 637
    if-ne v4, v1, :cond_26

    .line 638
    .line 639
    const-string v1, "MVIN"

    .line 640
    .line 641
    const/4 v4, 0x1

    .line 642
    invoke-static {v9, v1, v3, v4, v6}, Lf3/r;->f(ILjava/lang/String;Lu1/q;ZZ)Lz2/i;

    .line 643
    .line 644
    .line 645
    move-result-object v9

    .line 646
    goto/16 :goto_7

    .line 647
    .line 648
    :cond_26
    :goto_9
    new-instance v1, Ljava/lang/StringBuilder;

    .line 649
    .line 650
    invoke-direct {v1, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 651
    .line 652
    .line 653
    invoke-static {v9}, Lab/a;->b(I)Ljava/lang/String;

    .line 654
    .line 655
    .line 656
    move-result-object v4

    .line 657
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 658
    .line 659
    .line 660
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 661
    .line 662
    .line 663
    move-result-object v1

    .line 664
    invoke-static {v1}, Lu1/a;->e(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 665
    .line 666
    .line 667
    invoke-virtual {v3, v15}, Lu1/q;->O(I)V

    .line 668
    .line 669
    .line 670
    const/4 v9, 0x0

    .line 671
    goto :goto_c

    .line 672
    :cond_27
    :goto_a
    :try_start_3
    const-string v1, "TCOM"

    .line 673
    .line 674
    invoke-static {v9, v1, v3}, Lf3/r;->g(ILjava/lang/String;Lu1/q;)Lz2/n;

    .line 675
    .line 676
    .line 677
    move-result-object v9

    .line 678
    goto/16 :goto_7

    .line 679
    .line 680
    :cond_28
    :goto_b
    const-string v1, "TIT2"

    .line 681
    .line 682
    invoke-static {v9, v1, v3}, Lf3/r;->g(ILjava/lang/String;Lu1/q;)Lz2/n;

    .line 683
    .line 684
    .line 685
    move-result-object v9
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 686
    goto/16 :goto_7

    .line 687
    .line 688
    :goto_c
    if-eqz v9, :cond_29

    .line 689
    .line 690
    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 691
    .line 692
    .line 693
    :cond_29
    const/4 v2, 0x1

    .line 694
    const/16 v4, 0x8

    .line 695
    .line 696
    const/4 v10, 0x0

    .line 697
    const/4 v12, 0x4

    .line 698
    goto/16 :goto_2

    .line 699
    .line 700
    :goto_d
    invoke-virtual {v3, v15}, Lu1/q;->O(I)V

    .line 701
    .line 702
    .line 703
    throw v0

    .line 704
    :cond_2a
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 705
    .line 706
    .line 707
    move-result v1

    .line 708
    if-eqz v1, :cond_2b

    .line 709
    .line 710
    goto :goto_e

    .line 711
    :cond_2b
    new-instance v10, Lr1/d0;

    .line 712
    .line 713
    invoke-direct {v10, v0}, Lr1/d0;-><init>(Ljava/util/List;)V

    .line 714
    .line 715
    .line 716
    goto :goto_f

    .line 717
    :cond_2c
    const/4 v2, -0x1

    .line 718
    add-int/2addr v11, v14

    .line 719
    invoke-virtual {v3, v11}, Lu1/q;->O(I)V

    .line 720
    .line 721
    .line 722
    const/4 v2, 0x1

    .line 723
    const/16 v4, 0x8

    .line 724
    .line 725
    const/4 v10, 0x0

    .line 726
    const/4 v12, 0x4

    .line 727
    goto/16 :goto_1

    .line 728
    .line 729
    :cond_2d
    :goto_e
    const/4 v10, 0x0

    .line 730
    :goto_f
    invoke-virtual {v5, v10}, Lr1/d0;->b(Lr1/d0;)Lr1/d0;

    .line 731
    .line 732
    .line 733
    move-result-object v0

    .line 734
    move-object v5, v0

    .line 735
    const/4 v9, 0x1

    .line 736
    const/16 v10, 0x10

    .line 737
    .line 738
    const/16 v12, 0x8

    .line 739
    .line 740
    const/16 v13, 0xc

    .line 741
    .line 742
    goto/16 :goto_19

    .line 743
    .line 744
    :cond_2e
    const/4 v2, -0x1

    .line 745
    const v0, 0x736d7461

    .line 746
    .line 747
    .line 748
    const/4 v1, 0x2

    .line 749
    if-ne v9, v0, :cond_3e

    .line 750
    .line 751
    invoke-virtual {v3, v7}, Lu1/q;->O(I)V

    .line 752
    .line 753
    .line 754
    add-int v0, v7, v8

    .line 755
    .line 756
    const/16 v4, 0xc

    .line 757
    .line 758
    invoke-virtual {v3, v4}, Lu1/q;->P(I)V

    .line 759
    .line 760
    .line 761
    :goto_10
    iget v4, v3, Lu1/q;->b:I

    .line 762
    .line 763
    if-ge v4, v0, :cond_3c

    .line 764
    .line 765
    invoke-virtual {v3}, Lu1/q;->o()I

    .line 766
    .line 767
    .line 768
    move-result v9

    .line 769
    invoke-virtual {v3}, Lu1/q;->o()I

    .line 770
    .line 771
    .line 772
    move-result v10

    .line 773
    const v11, 0x73617574

    .line 774
    .line 775
    .line 776
    if-ne v10, v11, :cond_3b

    .line 777
    .line 778
    const/16 v10, 0x10

    .line 779
    .line 780
    if-ge v9, v10, :cond_2f

    .line 781
    .line 782
    const/4 v1, 0x0

    .line 783
    const/16 v12, 0x8

    .line 784
    .line 785
    const/16 v13, 0xc

    .line 786
    .line 787
    goto/16 :goto_17

    .line 788
    .line 789
    :cond_2f
    const/4 v11, 0x4

    .line 790
    invoke-virtual {v3, v11}, Lu1/q;->P(I)V

    .line 791
    .line 792
    .line 793
    const/4 v2, 0x0

    .line 794
    const/4 v4, 0x0

    .line 795
    const/4 v13, -0x1

    .line 796
    :goto_11
    if-ge v2, v1, :cond_32

    .line 797
    .line 798
    invoke-virtual {v3}, Lu1/q;->B()I

    .line 799
    .line 800
    .line 801
    move-result v9

    .line 802
    invoke-virtual {v3}, Lu1/q;->B()I

    .line 803
    .line 804
    .line 805
    move-result v11

    .line 806
    if-nez v9, :cond_30

    .line 807
    .line 808
    move v13, v11

    .line 809
    const/4 v12, 0x1

    .line 810
    goto :goto_12

    .line 811
    :cond_30
    const/4 v12, 0x1

    .line 812
    if-ne v9, v12, :cond_31

    .line 813
    .line 814
    move v4, v11

    .line 815
    :cond_31
    :goto_12
    add-int/2addr v2, v12

    .line 816
    goto :goto_11

    .line 817
    :cond_32
    const v1, -0x7fffffff

    .line 818
    .line 819
    .line 820
    const/16 v2, 0xc

    .line 821
    .line 822
    if-ne v13, v2, :cond_33

    .line 823
    .line 824
    const/16 v0, 0xf0

    .line 825
    .line 826
    :goto_13
    const/16 v12, 0x8

    .line 827
    .line 828
    const/16 v13, 0xc

    .line 829
    .line 830
    goto :goto_15

    .line 831
    :cond_33
    const/16 v2, 0xd

    .line 832
    .line 833
    if-ne v13, v2, :cond_34

    .line 834
    .line 835
    const/16 v0, 0x78

    .line 836
    .line 837
    goto :goto_13

    .line 838
    :cond_34
    const/16 v2, 0x15

    .line 839
    .line 840
    if-eq v13, v2, :cond_35

    .line 841
    .line 842
    const v0, -0x7fffffff

    .line 843
    .line 844
    .line 845
    goto :goto_13

    .line 846
    :cond_35
    invoke-virtual {v3}, Lu1/q;->a()I

    .line 847
    .line 848
    .line 849
    move-result v2

    .line 850
    const/16 v12, 0x8

    .line 851
    .line 852
    if-lt v2, v12, :cond_36

    .line 853
    .line 854
    iget v2, v3, Lu1/q;->b:I

    .line 855
    .line 856
    add-int/2addr v2, v12

    .line 857
    if-le v2, v0, :cond_37

    .line 858
    .line 859
    :cond_36
    const/16 v13, 0xc

    .line 860
    .line 861
    goto :goto_14

    .line 862
    :cond_37
    invoke-virtual {v3}, Lu1/q;->o()I

    .line 863
    .line 864
    .line 865
    move-result v0

    .line 866
    invoke-virtual {v3}, Lu1/q;->o()I

    .line 867
    .line 868
    .line 869
    move-result v2

    .line 870
    const/16 v13, 0xc

    .line 871
    .line 872
    if-lt v0, v13, :cond_39

    .line 873
    .line 874
    const v0, 0x73726672

    .line 875
    .line 876
    .line 877
    if-eq v2, v0, :cond_38

    .line 878
    .line 879
    goto :goto_14

    .line 880
    :cond_38
    invoke-virtual {v3}, Lu1/q;->C()I

    .line 881
    .line 882
    .line 883
    move-result v0

    .line 884
    goto :goto_15

    .line 885
    :cond_39
    :goto_14
    const v0, -0x7fffffff

    .line 886
    .line 887
    .line 888
    :goto_15
    if-ne v0, v1, :cond_3a

    .line 889
    .line 890
    :goto_16
    const/4 v1, 0x0

    .line 891
    goto :goto_17

    .line 892
    :cond_3a
    new-instance v1, Lr1/d0;

    .line 893
    .line 894
    new-instance v2, La3/c;

    .line 895
    .line 896
    int-to-float v0, v0

    .line 897
    invoke-direct {v2, v0, v4}, La3/c;-><init>(FI)V

    .line 898
    .line 899
    .line 900
    const/4 v0, 0x1

    .line 901
    new-array v4, v0, [Lr1/c0;

    .line 902
    .line 903
    aput-object v2, v4, v6

    .line 904
    .line 905
    invoke-direct {v1, v4}, Lr1/d0;-><init>([Lr1/c0;)V

    .line 906
    .line 907
    .line 908
    goto :goto_17

    .line 909
    :cond_3b
    const/16 v10, 0x10

    .line 910
    .line 911
    const/4 v11, 0x4

    .line 912
    const/16 v12, 0x8

    .line 913
    .line 914
    const/16 v13, 0xc

    .line 915
    .line 916
    add-int/2addr v4, v9

    .line 917
    invoke-virtual {v3, v4}, Lu1/q;->O(I)V

    .line 918
    .line 919
    .line 920
    goto/16 :goto_10

    .line 921
    .line 922
    :cond_3c
    const/16 v10, 0x10

    .line 923
    .line 924
    const/16 v12, 0x8

    .line 925
    .line 926
    const/16 v13, 0xc

    .line 927
    .line 928
    goto :goto_16

    .line 929
    :goto_17
    invoke-virtual {v5, v1}, Lr1/d0;->b(Lr1/d0;)Lr1/d0;

    .line 930
    .line 931
    .line 932
    move-result-object v0

    .line 933
    move-object v5, v0

    .line 934
    :cond_3d
    const/4 v9, 0x1

    .line 935
    goto :goto_19

    .line 936
    :cond_3e
    const/16 v10, 0x10

    .line 937
    .line 938
    const/16 v12, 0x8

    .line 939
    .line 940
    const/16 v13, 0xc

    .line 941
    .line 942
    const v0, -0x56878686

    .line 943
    .line 944
    .line 945
    if-ne v9, v0, :cond_3d

    .line 946
    .line 947
    invoke-virtual {v3}, Lu1/q;->y()S

    .line 948
    .line 949
    .line 950
    move-result v0

    .line 951
    invoke-virtual {v3, v1}, Lu1/q;->P(I)V

    .line 952
    .line 953
    .line 954
    sget-object v1, Lj$/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 955
    .line 956
    invoke-virtual {v3, v1, v0}, Lu1/q;->z(Ljava/nio/charset/Charset;I)Ljava/lang/String;

    .line 957
    .line 958
    .line 959
    move-result-object v0

    .line 960
    const/16 v1, 0x2b

    .line 961
    .line 962
    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    .line 963
    .line 964
    .line 965
    move-result v1

    .line 966
    const/16 v2, 0x2d

    .line 967
    .line 968
    invoke-virtual {v0, v2}, Ljava/lang/String;->lastIndexOf(I)I

    .line 969
    .line 970
    .line 971
    move-result v2

    .line 972
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    .line 973
    .line 974
    .line 975
    move-result v1

    .line 976
    :try_start_4
    invoke-virtual {v0, v6, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 977
    .line 978
    .line 979
    move-result-object v2

    .line 980
    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 981
    .line 982
    .line 983
    move-result v2

    .line 984
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 985
    .line 986
    .line 987
    move-result v4
    :try_end_4
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_0

    .line 988
    const/4 v9, 0x1

    .line 989
    sub-int/2addr v4, v9

    .line 990
    :try_start_5
    invoke-virtual {v0, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 991
    .line 992
    .line 993
    move-result-object v0

    .line 994
    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 995
    .line 996
    .line 997
    move-result v0

    .line 998
    new-instance v1, Lr1/d0;

    .line 999
    .line 1000
    new-instance v4, Lv1/e;

    .line 1001
    .line 1002
    invoke-direct {v4, v2, v0}, Lv1/e;-><init>(FF)V

    .line 1003
    .line 1004
    .line 1005
    new-array v0, v9, [Lr1/c0;

    .line 1006
    .line 1007
    aput-object v4, v0, v6

    .line 1008
    .line 1009
    invoke-direct {v1, v0}, Lr1/d0;-><init>([Lr1/c0;)V
    :try_end_5
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_5} :catch_1

    .line 1010
    .line 1011
    .line 1012
    goto :goto_18

    .line 1013
    :catch_0
    const/4 v9, 0x1

    .line 1014
    :catch_1
    const/4 v1, 0x0

    .line 1015
    :goto_18
    invoke-virtual {v5, v1}, Lr1/d0;->b(Lr1/d0;)Lr1/d0;

    .line 1016
    .line 1017
    .line 1018
    move-result-object v0

    .line 1019
    move-object v5, v0

    .line 1020
    :goto_19
    add-int/2addr v7, v8

    .line 1021
    invoke-virtual {v3, v7}, Lu1/q;->O(I)V

    .line 1022
    .line 1023
    .line 1024
    const/4 v2, 0x1

    .line 1025
    const/16 v4, 0x8

    .line 1026
    .line 1027
    goto/16 :goto_0

    .line 1028
    .line 1029
    :cond_3f
    return-object v5
.end method

.method public static k(Lu1/q;IIIILjava/lang/String;ILr1/l;La9/a;I)V
    .locals 54

    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p3

    move-object/from16 v3, p7

    move-object/from16 v4, p8

    const/16 v7, 0x10

    add-int/lit8 v14, v1, 0x10

    .line 1
    invoke-virtual {v0, v14}, Lu1/q;->O(I)V

    .line 2
    invoke-virtual {v0, v7}, Lu1/q;->P(I)V

    .line 3
    invoke-virtual/range {p0 .. p0}, Lu1/q;->I()I

    move-result v14

    .line 4
    invoke-virtual/range {p0 .. p0}, Lu1/q;->I()I

    move-result v7

    const/16 v9, 0x32

    .line 5
    invoke-virtual {v0, v9}, Lu1/q;->P(I)V

    .line 6
    iget v9, v0, Lu1/q;->b:I

    const v8, 0x656e6376

    move/from16 v15, p1

    if-ne v15, v8, :cond_2

    .line 7
    invoke-static {v0, v1, v2}, Lf3/e;->h(Lu1/q;II)Landroid/util/Pair;

    move-result-object v8

    if-eqz v8, :cond_1

    .line 8
    iget-object v15, v8, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v15, Ljava/lang/Integer;

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v15

    if-nez v3, :cond_0

    const/4 v3, 0x0

    goto :goto_0

    .line 9
    :cond_0
    iget-object v11, v8, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v11, Lf3/t;

    iget-object v11, v11, Lf3/t;->b:Ljava/lang/String;

    invoke-virtual {v3, v11}, Lr1/l;->a(Ljava/lang/String;)Lr1/l;

    move-result-object v3

    .line 10
    :goto_0
    iget-object v11, v4, La9/a;->d:Ljava/lang/Object;

    check-cast v11, [Lf3/t;

    iget-object v8, v8, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v8, Lf3/t;

    aput-object v8, v11, p9

    .line 11
    :cond_1
    invoke-virtual {v0, v9}, Lu1/q;->O(I)V

    :cond_2
    const v8, 0x6d317620

    .line 12
    const-string v11, "video/3gpp"

    if-ne v15, v8, :cond_3

    .line 13
    const-string v8, "video/mpeg"

    goto :goto_1

    :cond_3
    const v8, 0x48323633

    if-ne v15, v8, :cond_4

    move-object v8, v11

    goto :goto_1

    :cond_4
    const/4 v8, 0x0

    :goto_1
    const/high16 v20, 0x3f800000    # 1.0f

    const/4 v13, 0x0

    const/16 v20, 0x0

    const/high16 v21, 0x3f800000    # 1.0f

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, -0x1

    const/16 v27, -0x1

    const/16 v28, -0x1

    const/16 v29, -0x1

    const/16 v30, -0x1

    const/16 v31, -0x1

    const/16 v32, -0x1

    const/16 v33, -0x1

    const/16 v34, 0x8

    const/16 v35, 0x8

    const/16 v36, 0x0

    const/16 v37, 0x0

    const/16 v38, 0x0

    :goto_2
    sub-int v6, v9, v1

    if-ge v6, v2, :cond_7c

    .line 14
    invoke-virtual {v0, v9}, Lu1/q;->O(I)V

    .line 15
    iget v6, v0, Lu1/q;->b:I

    .line 16
    invoke-virtual/range {p0 .. p0}, Lu1/q;->o()I

    move-result v10

    if-nez v10, :cond_5

    .line 17
    iget v5, v0, Lu1/q;->b:I

    sub-int/2addr v5, v1

    if-ne v5, v2, :cond_5

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    move/from16 v6, v31

    move/from16 v23, v32

    move/from16 v12, v33

    move/from16 v31, v34

    move/from16 v32, v35

    move-object/from16 v33, v3

    move/from16 v34, v7

    move/from16 v35, v14

    move/from16 v3, v26

    goto/16 :goto_5a

    :cond_5
    if-lez v10, :cond_6

    const/4 v5, 0x1

    goto :goto_3

    :cond_6
    const/4 v5, 0x0

    .line 18
    :goto_3
    const-string v12, "childAtomSize must be positive"

    invoke-static {v12, v5}, Ll2/b;->b(Ljava/lang/String;Z)V

    .line 19
    invoke-virtual/range {p0 .. p0}, Lu1/q;->o()I

    move-result v5

    const v1, 0x61766343

    if-ne v5, v1, :cond_9

    if-nez v8, :cond_7

    const/4 v1, 0x1

    :goto_4
    const/4 v5, 0x0

    goto :goto_5

    :cond_7
    const/4 v1, 0x0

    goto :goto_4

    .line 20
    :goto_5
    invoke-static {v5, v1}, Ll2/b;->b(Ljava/lang/String;Z)V

    const/16 v1, 0x8

    add-int/2addr v6, v1

    .line 21
    invoke-virtual {v0, v6}, Lu1/q;->O(I)V

    .line 22
    invoke-static/range {p0 .. p0}, Ll2/d;->a(Lu1/q;)Ll2/d;

    move-result-object v1

    .line 23
    iget v5, v1, Ll2/d;->b:I

    iput v5, v4, La9/a;->b:I

    if-nez v38, :cond_8

    .line 24
    iget v5, v1, Ll2/d;->k:F

    move/from16 v21, v5

    .line 25
    :cond_8
    iget-object v5, v1, Ll2/d;->a:Ljava/util/ArrayList;

    const-string v6, "video/avc"

    iget-object v8, v1, Ll2/d;->l:Ljava/lang/String;

    iget v12, v1, Ll2/d;->j:I

    iget v2, v1, Ll2/d;->g:I

    move/from16 v23, v2

    iget v2, v1, Ll2/d;->h:I

    move/from16 v24, v2

    iget v2, v1, Ll2/d;->i:I

    move/from16 v27, v2

    iget v2, v1, Ll2/d;->e:I

    iget v1, v1, Ll2/d;->f:I

    move-object/from16 v33, v3

    move/from16 v34, v7

    move/from16 v41, v9

    move-object/from16 p7, v11

    move/from16 v35, v14

    move/from16 v31, v23

    move/from16 v32, v24

    move/from16 v3, v26

    move/from16 v40, v27

    const/4 v7, 0x1

    const/4 v9, 0x3

    const/4 v11, 0x5

    const/4 v14, 0x2

    move-object/from16 v23, v5

    move-object/from16 v24, v8

    move/from16 v27, v12

    move/from16 v26, v15

    const/4 v5, -0x1

    move v12, v2

    move-object v8, v6

    :goto_6
    move-object v6, v13

    const/4 v13, 0x7

    goto/16 :goto_59

    :cond_9
    const v1, 0x68766343

    const-string v2, "video/hevc"

    if-ne v5, v1, :cond_d

    if-nez v8, :cond_a

    const/4 v1, 0x1

    :goto_7
    const/4 v5, 0x0

    goto :goto_8

    :cond_a
    const/4 v1, 0x0

    goto :goto_7

    .line 26
    :goto_8
    invoke-static {v5, v1}, Ll2/b;->b(Ljava/lang/String;Z)V

    const/16 v1, 0x8

    add-int/2addr v6, v1

    .line 27
    invoke-virtual {v0, v6}, Lu1/q;->O(I)V

    const/4 v1, 0x0

    .line 28
    invoke-static {v0, v1, v5}, Ll2/w;->a(Lu1/q;ZLa2/w0;)Ll2/w;

    move-result-object v6

    .line 29
    iget v1, v6, Ll2/w;->b:I

    iput v1, v4, La9/a;->b:I

    if-nez v38, :cond_b

    .line 30
    iget v1, v6, Ll2/w;->l:F

    move/from16 v21, v1

    .line 31
    :cond_b
    iget v1, v6, Ll2/w;->k:I

    const/4 v5, -0x1

    if-eq v1, v5, :cond_c

    move/from16 v26, v1

    .line 32
    :cond_c
    iget-object v1, v6, Ll2/w;->a:Ljava/util/List;

    iget v5, v6, Ll2/w;->m:I

    iget v8, v6, Ll2/w;->c:I

    iget-object v12, v6, Ll2/w;->n:Ljava/lang/String;

    iget v13, v6, Ll2/w;->d:I

    move-object/from16 v23, v1

    iget v1, v6, Ll2/w;->e:I

    move/from16 v24, v1

    iget v1, v6, Ll2/w;->h:I

    move/from16 v27, v1

    iget v1, v6, Ll2/w;->i:I

    move/from16 v28, v1

    iget v1, v6, Ll2/w;->j:I

    move/from16 v29, v1

    iget v1, v6, Ll2/w;->f:I

    move/from16 v30, v1

    iget v1, v6, Ll2/w;->g:I

    iget-object v6, v6, Ll2/w;->o:La2/w0;

    move-object/from16 v33, v3

    move/from16 v34, v7

    move/from16 v41, v9

    move-object/from16 p7, v11

    move/from16 v35, v14

    move/from16 v3, v26

    move/from16 v31, v27

    move/from16 v32, v28

    move/from16 v40, v29

    const/4 v7, 0x1

    const/4 v9, 0x3

    const/4 v11, 0x5

    const/4 v14, 0x2

    move/from16 v27, v5

    move/from16 v28, v8

    move/from16 v29, v13

    move/from16 v26, v15

    const/4 v5, -0x1

    const/4 v13, 0x7

    move-object v8, v2

    move/from16 v53, v24

    move-object/from16 v24, v12

    move/from16 v12, v30

    move/from16 v30, v53

    goto/16 :goto_59

    :cond_d
    const v1, 0x6c687643

    if-ne v5, v1, :cond_19

    .line 33
    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "lhvC must follow hvcC atom"

    .line 34
    invoke-static {v2, v1}, Ll2/b;->b(Ljava/lang/String;Z)V

    if-eqz v13, :cond_e

    .line 35
    iget-object v1, v13, La2/w0;->b:Ljava/lang/Object;

    check-cast v1, Lu7/g0;

    .line 36
    invoke-virtual {v1}, Ljava/util/AbstractCollection;->size()I

    move-result v1

    const/4 v2, 0x2

    if-lt v1, v2, :cond_e

    const/4 v1, 0x1

    goto :goto_9

    :cond_e
    const/4 v1, 0x0

    :goto_9
    const-string v2, "must have at least two layers"

    .line 37
    invoke-static {v2, v1}, Ll2/b;->b(Ljava/lang/String;Z)V

    const/16 v1, 0x8

    add-int/2addr v6, v1

    .line 38
    invoke-virtual {v0, v6}, Lu1/q;->O(I)V

    .line 39
    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x1

    .line 40
    invoke-static {v0, v1, v13}, Ll2/w;->a(Lu1/q;ZLa2/w0;)Ll2/w;

    move-result-object v2

    .line 41
    iget v1, v4, La9/a;->b:I

    iget v5, v2, Ll2/w;->b:I

    if-ne v1, v5, :cond_f

    const/4 v1, 0x1

    goto :goto_a

    :cond_f
    const/4 v1, 0x0

    :goto_a
    const-string v5, "nalUnitLengthFieldLength must be same for both hvcC and lhvC atoms"

    invoke-static {v5, v1}, Ll2/b;->b(Ljava/lang/String;Z)V

    .line 42
    iget v1, v2, Ll2/w;->h:I

    const/4 v5, -0x1

    move/from16 v6, v31

    if-eq v1, v5, :cond_11

    if-ne v6, v1, :cond_10

    const/4 v1, 0x1

    goto :goto_b

    :cond_10
    const/4 v1, 0x0

    .line 43
    :goto_b
    const-string v8, "colorSpace must be the same for both views"

    invoke-static {v8, v1}, Ll2/b;->b(Ljava/lang/String;Z)V

    .line 44
    :cond_11
    iget v1, v2, Ll2/w;->i:I

    move/from16 v8, v32

    if-eq v1, v5, :cond_13

    if-ne v8, v1, :cond_12

    const/4 v1, 0x1

    goto :goto_c

    :cond_12
    const/4 v1, 0x0

    .line 45
    :goto_c
    const-string v12, "colorRange must be the same for both views"

    invoke-static {v12, v1}, Ll2/b;->b(Ljava/lang/String;Z)V

    .line 46
    :cond_13
    iget v1, v2, Ll2/w;->j:I

    if-eq v1, v5, :cond_15

    move/from16 v5, v33

    if-ne v5, v1, :cond_14

    const/4 v1, 0x1

    goto :goto_d

    :cond_14
    const/4 v1, 0x0

    .line 47
    :goto_d
    const-string v12, "colorTransfer must be the same for both views"

    invoke-static {v12, v1}, Ll2/b;->b(Ljava/lang/String;Z)V

    goto :goto_e

    :cond_15
    move/from16 v5, v33

    .line 48
    :goto_e
    iget v1, v2, Ll2/w;->f:I

    move/from16 v12, v34

    move/from16 v24, v5

    if-ne v12, v1, :cond_16

    const/4 v1, 0x1

    goto :goto_f

    :cond_16
    const/4 v1, 0x0

    :goto_f
    const-string v5, "bitdepthLuma must be the same for both views"

    invoke-static {v5, v1}, Ll2/b;->b(Ljava/lang/String;Z)V

    .line 49
    iget v1, v2, Ll2/w;->g:I

    move/from16 v5, v35

    move/from16 v31, v5

    if-ne v5, v1, :cond_17

    const/4 v1, 0x1

    goto :goto_10

    :cond_17
    const/4 v1, 0x0

    :goto_10
    const-string v5, "bitdepthChroma must be the same for both views"

    invoke-static {v5, v1}, Ll2/b;->b(Ljava/lang/String;Z)V

    move-object/from16 v1, v23

    if-eqz v1, :cond_18

    .line 50
    sget-object v5, Lu7/g0;->b:Lu7/e0;

    .line 51
    new-instance v5, Lu7/d0;

    invoke-direct {v5}, Lu7/d0;-><init>()V

    .line 52
    invoke-virtual {v5, v1}, Lu7/a0;->d(Ljava/lang/Iterable;)V

    .line 53
    iget-object v1, v2, Ll2/w;->a:Ljava/util/List;

    invoke-virtual {v5, v1}, Lu7/a0;->d(Ljava/lang/Iterable;)V

    .line 54
    invoke-virtual {v5}, Lu7/d0;->g()Lu7/y0;

    move-result-object v23

    .line 55
    const-string v1, "video/mv-hevc"

    iget-object v2, v2, Ll2/w;->n:Ljava/lang/String;

    move-object/from16 v33, v3

    move/from16 v34, v7

    move/from16 v32, v8

    move/from16 v41, v9

    move-object/from16 p7, v11

    move/from16 v35, v14

    move/from16 v40, v24

    move/from16 v3, v26

    const/4 v5, -0x1

    const/4 v7, 0x1

    const/4 v9, 0x3

    const/4 v11, 0x5

    const/4 v14, 0x2

    move-object v8, v1

    move-object/from16 v24, v2

    move/from16 v26, v15

    move/from16 v1, v31

    move/from16 v31, v6

    goto/16 :goto_6

    .line 56
    :cond_18
    const-string v0, "initializationData must be already set from hvcC atom"

    const/4 v2, 0x0

    invoke-static {v2, v0}, Lr1/f0;->a(Ljava/lang/RuntimeException;Ljava/lang/String;)Lr1/f0;

    move-result-object v0

    throw v0

    :cond_19
    move-object/from16 v1, v23

    move/from16 v39, v31

    move/from16 v23, v32

    move/from16 v40, v33

    move/from16 v31, v34

    move/from16 v32, v35

    const v2, 0x76766343

    move-object/from16 p7, v11

    const/16 v11, 0x7f

    if-ne v5, v2, :cond_28

    if-nez v8, :cond_1a

    const/4 v1, 0x1

    :goto_11
    const/4 v2, 0x0

    goto :goto_12

    :cond_1a
    const/4 v1, 0x0

    goto :goto_11

    .line 57
    :goto_12
    invoke-static {v2, v1}, Ll2/b;->b(Ljava/lang/String;Z)V

    const/16 v1, 0x8

    add-int/2addr v6, v1

    .line 58
    invoke-virtual {v0, v6}, Lu1/q;->O(I)V

    .line 59
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lu1/q;->o()I

    move-result v1

    if-nez v1, :cond_27

    .line 60
    invoke-virtual/range {p0 .. p0}, Lu1/q;->B()I

    move-result v1
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x1

    shr-int/lit8 v5, v1, 0x1

    const/4 v6, 0x3

    and-int/2addr v5, v6

    and-int/2addr v1, v2

    if-eqz v1, :cond_1b

    const/16 v19, 0x1

    goto :goto_13

    :cond_1b
    const/16 v19, 0x0

    :goto_13
    add-int/2addr v5, v2

    .line 61
    const-string v1, "L"

    if-eqz v19, :cond_20

    .line 62
    :try_start_1
    invoke-virtual {v0, v2}, Lu1/q;->P(I)V

    .line 63
    invoke-virtual/range {p0 .. p0}, Lu1/q;->B()I

    move-result v2

    const/4 v6, 0x4

    shr-int/2addr v2, v6

    const/4 v6, 0x7

    and-int/2addr v2, v6

    .line 64
    invoke-virtual/range {p0 .. p0}, Lu1/q;->B()I

    move-result v8

    const/4 v12, 0x5

    shr-int/2addr v8, v12

    and-int/2addr v8, v6

    .line 65
    invoke-virtual/range {p0 .. p0}, Lu1/q;->B()I

    move-result v6

    and-int/lit8 v6, v6, 0x3f

    .line 66
    invoke-virtual/range {p0 .. p0}, Lu1/q;->B()I

    move-result v12

    const/16 v19, 0x1

    shr-int/lit8 v24, v12, 0x1

    and-int/lit8 v11, v24, 0x7f

    and-int/lit8 v12, v12, 0x1

    if-eqz v12, :cond_1c

    .line 67
    const-string v1, "H"

    goto :goto_14

    :catch_0
    move-exception v0

    goto/16 :goto_1d

    .line 68
    :cond_1c
    :goto_14
    invoke-virtual/range {p0 .. p0}, Lu1/q;->B()I

    move-result v12

    .line 69
    invoke-virtual {v0, v6}, Lu1/q;->P(I)V

    const/4 v6, 0x1

    if-le v2, v6, :cond_1e

    .line 70
    invoke-virtual/range {p0 .. p0}, Lu1/q;->B()I

    move-result v24

    move-object/from16 v27, v1

    move/from16 v31, v8

    const/4 v1, 0x0

    :goto_15
    add-int/lit8 v8, v2, -0x1

    if-ge v1, v8, :cond_1f

    const/4 v8, 0x7

    rsub-int/lit8 v19, v1, 0x7

    shr-int v8, v24, v19

    and-int/2addr v8, v6

    if-eqz v8, :cond_1d

    .line 71
    invoke-virtual {v0, v6}, Lu1/q;->P(I)V

    :cond_1d
    add-int/2addr v1, v6

    goto :goto_15

    :cond_1e
    move-object/from16 v27, v1

    move/from16 v31, v8

    .line 72
    :cond_1f
    invoke-virtual/range {p0 .. p0}, Lu1/q;->B()I

    move-result v1

    const/4 v2, 0x4

    mul-int/lit8 v1, v1, 0x4

    .line 73
    invoke-virtual {v0, v1}, Lu1/q;->P(I)V

    const/4 v1, 0x6

    .line 74
    invoke-virtual {v0, v1}, Lu1/q;->P(I)V

    move-object/from16 v1, v27

    goto :goto_16

    :cond_20
    const/4 v11, 0x0

    const/4 v12, 0x0

    const/16 v31, 0x0

    .line 75
    :goto_16
    invoke-virtual/range {p0 .. p0}, Lu1/q;->B()I

    move-result v2

    .line 76
    iget v6, v0, Lu1/q;->b:I

    move-object/from16 v33, v3

    const/4 v3, 0x0

    const/4 v8, 0x0

    :goto_17
    if-ge v8, v2, :cond_23

    .line 77
    invoke-virtual/range {p0 .. p0}, Lu1/q;->B()I

    move-result v24

    move/from16 v34, v7

    and-int/lit8 v7, v24, 0x1f

    move/from16 v35, v14

    const/16 v14, 0xd

    if-eq v7, v14, :cond_21

    const/16 v14, 0xc

    if-eq v7, v14, :cond_21

    .line 78
    invoke-virtual/range {p0 .. p0}, Lu1/q;->I()I

    move-result v7

    goto :goto_18

    :cond_21
    const/4 v7, 0x1

    :goto_18
    const/4 v14, 0x0

    :goto_19
    if-ge v14, v7, :cond_22

    move/from16 v24, v7

    .line 79
    invoke-virtual/range {p0 .. p0}, Lu1/q;->I()I

    move-result v7

    const/16 v18, 0x4

    add-int/lit8 v27, v7, 0x4

    add-int v3, v27, v3

    .line 80
    invoke-virtual {v0, v7}, Lu1/q;->P(I)V

    const/4 v7, 0x1

    add-int/2addr v14, v7

    move/from16 v7, v24

    goto :goto_19

    :cond_22
    const/4 v7, 0x1

    add-int/2addr v8, v7

    move/from16 v7, v34

    move/from16 v14, v35

    goto :goto_17

    :cond_23
    move/from16 v34, v7

    move/from16 v35, v14

    .line 81
    invoke-virtual {v0, v6}, Lu1/q;->O(I)V

    .line 82
    new-array v3, v3, [B

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_1a
    if-ge v6, v2, :cond_26

    .line 83
    invoke-virtual/range {p0 .. p0}, Lu1/q;->B()I

    move-result v8

    and-int/lit8 v8, v8, 0x1f

    const/16 v14, 0xd

    if-eq v8, v14, :cond_24

    const/16 v14, 0xc

    if-eq v8, v14, :cond_24

    .line 84
    invoke-virtual/range {p0 .. p0}, Lu1/q;->I()I

    move-result v8

    goto :goto_1b

    :cond_24
    const/4 v8, 0x1

    :goto_1b
    const/4 v14, 0x0

    :goto_1c
    if-ge v14, v8, :cond_25

    move/from16 v24, v2

    .line 85
    invoke-virtual/range {p0 .. p0}, Lu1/q;->I()I

    move-result v2

    move/from16 v27, v8

    .line 86
    sget-object v8, Lv1/o;->a:[B

    move/from16 v41, v9

    move/from16 v42, v15

    const/4 v9, 0x4

    const/4 v15, 0x0

    invoke-static {v8, v15, v3, v7, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v7, v9

    .line 87
    invoke-virtual {v0, v7, v2, v3}, Lu1/q;->l(II[B)V

    add-int/2addr v7, v2

    const/4 v2, 0x1

    add-int/2addr v14, v2

    move/from16 v2, v24

    move/from16 v8, v27

    move/from16 v9, v41

    move/from16 v15, v42

    goto :goto_1c

    :cond_25
    move/from16 v24, v2

    move/from16 v41, v9

    move/from16 v42, v15

    const/4 v2, 0x1

    add-int/2addr v6, v2

    move/from16 v2, v24

    goto :goto_1a

    :cond_26
    move/from16 v41, v9

    move/from16 v42, v15

    .line 88
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "vvc1."

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "."

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    .line 89
    invoke-static {v3}, Lu7/g0;->r(Ljava/lang/Object;)Lu7/y0;

    move-result-object v1
    :try_end_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0

    const/16 v2, 0x8

    add-int/lit8 v3, v31, 0x8

    .line 90
    iput v5, v4, La9/a;->b:I

    .line 91
    const-string v2, "video/vvc"

    move-object v8, v2

    move v12, v3

    move-object v6, v13

    move/from16 v32, v23

    move/from16 v31, v39

    const/4 v5, -0x1

    const/4 v7, 0x1

    const/4 v9, 0x3

    const/4 v11, 0x5

    const/4 v13, 0x7

    const/4 v14, 0x2

    const/16 v27, 0x10

    move-object/from16 v23, v1

    move v1, v12

    move/from16 v3, v26

    move/from16 v26, v42

    goto/16 :goto_59

    .line 92
    :cond_27
    :try_start_2
    const-string v0, "Unsupported VVC version"

    const/4 v1, 0x0

    invoke-static {v1, v0}, Lr1/f0;->a(Ljava/lang/RuntimeException;Ljava/lang/String;)Lr1/f0;

    move-result-object v0

    throw v0
    :try_end_2
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_0

    .line 93
    :goto_1d
    const-string v1, "Error parsing VVC configuration"

    invoke-static {v0, v1}, Lr1/f0;->a(Ljava/lang/RuntimeException;Ljava/lang/String;)Lr1/f0;

    move-result-object v0

    throw v0

    :cond_28
    move-object/from16 v33, v3

    move/from16 v34, v7

    move/from16 v41, v9

    move/from16 v35, v14

    move/from16 v42, v15

    const v2, 0x76657875

    if-ne v5, v2, :cond_38

    const/16 v2, 0x8

    add-int/lit8 v5, v6, 0x8

    .line 94
    invoke-virtual {v0, v5}, Lu1/q;->O(I)V

    .line 95
    iget v2, v0, Lu1/q;->b:I

    const/4 v3, 0x0

    :goto_1e
    sub-int v5, v2, v6

    if-ge v5, v10, :cond_31

    .line 96
    invoke-virtual {v0, v2}, Lu1/q;->O(I)V

    .line 97
    invoke-virtual/range {p0 .. p0}, Lu1/q;->o()I

    move-result v5

    if-lez v5, :cond_29

    const/4 v7, 0x1

    goto :goto_1f

    :cond_29
    const/4 v7, 0x0

    .line 98
    :goto_1f
    invoke-static {v12, v7}, Ll2/b;->b(Ljava/lang/String;Z)V

    .line 99
    invoke-virtual/range {p0 .. p0}, Lu1/q;->o()I

    move-result v7

    const v9, 0x65796573

    if-ne v7, v9, :cond_30

    const/16 v7, 0x8

    add-int/lit8 v3, v2, 0x8

    .line 100
    invoke-virtual {v0, v3}, Lu1/q;->O(I)V

    .line 101
    iget v3, v0, Lu1/q;->b:I

    :goto_20
    sub-int v7, v3, v2

    if-ge v7, v5, :cond_2f

    .line 102
    invoke-virtual {v0, v3}, Lu1/q;->O(I)V

    .line 103
    invoke-virtual/range {p0 .. p0}, Lu1/q;->o()I

    move-result v7

    if-lez v7, :cond_2a

    const/4 v9, 0x1

    goto :goto_21

    :cond_2a
    const/4 v9, 0x0

    .line 104
    :goto_21
    invoke-static {v12, v9}, Ll2/b;->b(Ljava/lang/String;Z)V

    .line 105
    invoke-virtual/range {p0 .. p0}, Lu1/q;->o()I

    move-result v9

    const v11, 0x73747269

    if-ne v9, v11, :cond_2e

    const/4 v9, 0x4

    .line 106
    invoke-virtual {v0, v9}, Lu1/q;->P(I)V

    .line 107
    invoke-virtual/range {p0 .. p0}, Lu1/q;->B()I

    move-result v3

    .line 108
    new-instance v7, La1/i;

    new-instance v9, La2/o;

    const/4 v11, 0x1

    and-int/lit8 v14, v3, 0x1

    if-ne v14, v11, :cond_2b

    const/4 v11, 0x1

    :goto_22
    const/4 v14, 0x2

    goto :goto_23

    :cond_2b
    const/4 v11, 0x0

    goto :goto_22

    :goto_23
    and-int/lit8 v15, v3, 0x2

    if-ne v15, v14, :cond_2c

    const/4 v14, 0x1

    :goto_24
    const/16 v15, 0x8

    goto :goto_25

    :cond_2c
    const/4 v14, 0x0

    goto :goto_24

    :goto_25
    and-int/2addr v3, v15

    if-ne v3, v15, :cond_2d

    const/4 v3, 0x1

    goto :goto_26

    :cond_2d
    const/4 v3, 0x0

    :goto_26
    invoke-direct {v9, v11, v14, v3}, La2/o;-><init>(ZZZ)V

    const/16 v3, 0x14

    invoke-direct {v7, v3, v9}, La1/i;-><init>(ILjava/lang/Object;)V

    goto :goto_27

    :cond_2e
    add-int/2addr v3, v7

    goto :goto_20

    :cond_2f
    const/4 v7, 0x0

    :goto_27
    move-object v3, v7

    :cond_30
    add-int/2addr v2, v5

    goto :goto_1e

    :cond_31
    if-nez v3, :cond_32

    const/4 v2, 0x0

    goto :goto_28

    .line 109
    :cond_32
    new-instance v2, La1/i;

    const/16 v5, 0x15

    invoke-direct {v2, v5, v3}, La1/i;-><init>(ILjava/lang/Object;)V

    :goto_28
    if-eqz v2, :cond_34

    .line 110
    iget-object v2, v2, La1/i;->b:Ljava/lang/Object;

    check-cast v2, La1/i;

    .line 111
    iget-object v2, v2, La1/i;->b:Ljava/lang/Object;

    check-cast v2, La2/o;

    if-eqz v13, :cond_35

    iget-object v3, v13, La2/w0;->b:Ljava/lang/Object;

    check-cast v3, Lu7/g0;

    invoke-virtual {v3}, Ljava/util/AbstractCollection;->size()I

    move-result v3

    const/4 v5, 0x2

    if-lt v3, v5, :cond_35

    .line 112
    iget-boolean v3, v2, La2/o;->a:Z

    if-eqz v3, :cond_33

    .line 113
    iget-boolean v3, v2, La2/o;->b:Z

    if-eqz v3, :cond_33

    const/4 v3, 0x1

    goto :goto_29

    :cond_33
    const/4 v3, 0x0

    .line 114
    :goto_29
    const-string v5, "both eye views must be marked as available"

    .line 115
    invoke-static {v5, v3}, Ll2/b;->b(Ljava/lang/String;Z)V

    .line 116
    iget-boolean v2, v2, La2/o;->c:Z

    const/4 v3, 0x1

    xor-int/2addr v2, v3

    const-string v3, "for MV-HEVC, eye_views_reversed must be set to false"

    .line 117
    invoke-static {v3, v2}, Ll2/b;->b(Ljava/lang/String;Z)V

    :cond_34
    move/from16 v3, v26

    goto :goto_2b

    :cond_35
    move/from16 v3, v26

    const/4 v5, -0x1

    if-ne v3, v5, :cond_37

    .line 118
    iget-boolean v2, v2, La2/o;->c:Z

    if-eqz v2, :cond_36

    const/4 v2, 0x5

    goto :goto_2a

    :cond_36
    const/4 v2, 0x4

    :goto_2a
    move/from16 v26, v2

    goto :goto_2c

    :cond_37
    :goto_2b
    move/from16 v26, v3

    :goto_2c
    move-object v6, v13

    move/from16 v3, v26

    move/from16 v12, v31

    move/from16 v31, v39

    move/from16 v26, v42

    :goto_2d
    const/4 v5, -0x1

    const/4 v7, 0x1

    const/4 v9, 0x3

    :goto_2e
    const/4 v11, 0x5

    const/4 v13, 0x7

    const/4 v14, 0x2

    :goto_2f
    move/from16 v53, v23

    move-object/from16 v23, v1

    move/from16 v1, v32

    move/from16 v32, v53

    goto/16 :goto_59

    :cond_38
    move/from16 v3, v26

    const v2, 0x64766343

    if-eq v5, v2, :cond_39

    const v2, 0x64767643

    if-eq v5, v2, :cond_39

    const v2, 0x64767743

    if-ne v5, v2, :cond_3a

    :cond_39
    move-object/from16 p9, v13

    move/from16 v6, v39

    move/from16 v12, v40

    move/from16 v26, v42

    const/4 v5, -0x1

    const/4 v7, 0x1

    const/4 v9, 0x3

    const/4 v11, 0x5

    const/4 v13, 0x7

    const/4 v14, 0x2

    goto/16 :goto_58

    :cond_3a
    const v2, 0x76706343

    if-ne v5, v2, :cond_40

    if-nez v8, :cond_3b

    const/4 v2, 0x1

    :goto_30
    const/4 v5, 0x0

    goto :goto_31

    :cond_3b
    const/4 v2, 0x0

    goto :goto_30

    .line 119
    :goto_31
    invoke-static {v5, v2}, Ll2/b;->b(Ljava/lang/String;Z)V

    const v2, 0x76703038

    .line 120
    const-string v5, "video/x-vnd.on2.vp9"

    move/from16 v15, v42

    if-ne v15, v2, :cond_3c

    const-string v2, "video/x-vnd.on2.vp8"

    :goto_32
    const/16 v7, 0xc

    goto :goto_33

    :cond_3c
    move-object v2, v5

    goto :goto_32

    :goto_33
    add-int/2addr v6, v7

    .line 121
    invoke-virtual {v0, v6}, Lu1/q;->O(I)V

    .line 122
    invoke-virtual/range {p0 .. p0}, Lu1/q;->B()I

    move-result v6

    int-to-byte v6, v6

    .line 123
    invoke-virtual/range {p0 .. p0}, Lu1/q;->B()I

    move-result v7

    int-to-byte v7, v7

    .line 124
    invoke-virtual/range {p0 .. p0}, Lu1/q;->B()I

    move-result v8

    const/4 v9, 0x4

    shr-int/lit8 v11, v8, 0x4

    const/4 v9, 0x1

    shr-int/lit8 v12, v8, 0x1

    const/4 v14, 0x7

    and-int/2addr v12, v14

    int-to-byte v12, v12

    .line 125
    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3d

    int-to-byte v1, v11

    .line 126
    sget-object v5, Lu1/c;->a:[B

    const/16 v5, 0xc

    .line 127
    new-array v14, v5, [B

    const/4 v5, 0x0

    aput-byte v9, v14, v5

    aput-byte v9, v14, v9

    const/4 v5, 0x2

    aput-byte v6, v14, v5

    const/4 v6, 0x3

    aput-byte v5, v14, v6

    const/4 v5, 0x4

    aput-byte v9, v14, v5

    const/16 v16, 0x5

    aput-byte v7, v14, v16

    const/4 v7, 0x6

    aput-byte v6, v14, v7

    const/4 v6, 0x7

    aput-byte v9, v14, v6

    const/16 v6, 0x8

    aput-byte v1, v14, v6

    const/16 v1, 0x9

    aput-byte v5, v14, v1

    const/16 v7, 0xa

    aput-byte v9, v14, v7

    const/16 v1, 0xb

    aput-byte v12, v14, v1

    invoke-static {v14}, Lu7/g0;->r(Ljava/lang/Object;)Lu7/y0;

    move-result-object v23

    goto :goto_34

    :cond_3d
    const/16 v7, 0xa

    move-object/from16 v23, v1

    :goto_34
    and-int/lit8 v1, v8, 0x1

    if-eqz v1, :cond_3e

    const/4 v1, 0x1

    goto :goto_35

    :cond_3e
    const/4 v1, 0x0

    .line 128
    :goto_35
    invoke-virtual/range {p0 .. p0}, Lu1/q;->B()I

    move-result v5

    .line 129
    invoke-virtual/range {p0 .. p0}, Lu1/q;->B()I

    move-result v6

    .line 130
    invoke-static {v5}, Lr1/g;->g(I)I

    move-result v31

    if-eqz v1, :cond_3f

    const/4 v1, 0x1

    goto :goto_36

    :cond_3f
    const/4 v1, 0x2

    .line 131
    :goto_36
    invoke-static {v6}, Lr1/g;->h(I)I

    move-result v5

    move/from16 v32, v1

    move-object v8, v2

    move/from16 v40, v5

    move v1, v11

    move v12, v1

    move-object v6, v13

    move/from16 v26, v15

    const/4 v5, -0x1

    const/4 v7, 0x1

    const/4 v9, 0x3

    const/4 v11, 0x5

    const/4 v13, 0x7

    :goto_37
    const/4 v14, 0x2

    goto/16 :goto_59

    :cond_40
    move/from16 v15, v42

    const/16 v7, 0xa

    const v2, 0x61763143

    if-ne v5, v2, :cond_5a

    const/16 v2, 0x8

    add-int/lit8 v1, v10, -0x8

    .line 132
    new-array v5, v1, [B

    const/4 v8, 0x0

    .line 133
    invoke-virtual {v0, v8, v1, v5}, Lu1/q;->l(II[B)V

    .line 134
    invoke-static {v5}, Lu7/g0;->r(Ljava/lang/Object;)Lu7/y0;

    move-result-object v23

    add-int/2addr v6, v2

    .line 135
    invoke-virtual {v0, v6}, Lu1/q;->O(I)V

    .line 136
    new-instance v1, Lj3/f;

    .line 137
    iget-object v2, v0, Lu1/q;->a:[B

    .line 138
    array-length v5, v2

    invoke-direct {v1, v2, v5}, Lj3/f;-><init>([BI)V

    .line 139
    iget v2, v0, Lu1/q;->b:I

    const/16 v5, 0x8

    mul-int/lit8 v2, v2, 0x8

    .line 140
    invoke-virtual {v1, v2}, Lj3/f;->m(I)V

    const/4 v2, 0x1

    .line 141
    invoke-virtual {v1, v2}, Lj3/f;->p(I)V

    const/4 v2, 0x3

    .line 142
    invoke-virtual {v1, v2}, Lj3/f;->g(I)I

    move-result v5

    const/4 v2, 0x6

    .line 143
    invoke-virtual {v1, v2}, Lj3/f;->o(I)V

    .line 144
    invoke-virtual {v1}, Lj3/f;->f()Z

    move-result v2

    .line 145
    invoke-virtual {v1}, Lj3/f;->f()Z

    move-result v6

    const/16 v45, -0x1

    const/4 v8, 0x2

    if-ne v5, v8, :cond_43

    if-eqz v2, :cond_43

    if-eqz v6, :cond_41

    const/16 v2, 0xc

    goto :goto_38

    :cond_41
    const/16 v2, 0xa

    :goto_38
    if-eqz v6, :cond_42

    const/16 v5, 0xc

    goto :goto_39

    :cond_42
    const/16 v5, 0xa

    :goto_39
    move/from16 v51, v2

    move/from16 v52, v5

    :goto_3a
    const/16 v2, 0xd

    goto :goto_3d

    :cond_43
    if-gt v5, v8, :cond_46

    if-eqz v2, :cond_44

    const/16 v5, 0xa

    goto :goto_3b

    :cond_44
    const/16 v5, 0x8

    :goto_3b
    if-eqz v2, :cond_45

    const/16 v2, 0xa

    goto :goto_3c

    :cond_45
    const/16 v2, 0x8

    :goto_3c
    move/from16 v52, v2

    move/from16 v51, v5

    goto :goto_3a

    :cond_46
    const/16 v2, 0xd

    const/16 v51, -0x1

    const/16 v52, -0x1

    .line 146
    :goto_3d
    invoke-virtual {v1, v2}, Lj3/f;->o(I)V

    .line 147
    invoke-virtual {v1}, Lj3/f;->n()V

    const/4 v2, 0x4

    .line 148
    invoke-virtual {v1, v2}, Lj3/f;->g(I)I

    move-result v5

    const/16 v50, 0x0

    const/4 v2, 0x1

    if-eq v5, v2, :cond_47

    .line 149
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unsupported obu_type: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lu1/a;->j(Ljava/lang/String;)V

    .line 150
    new-instance v1, Lr1/g;

    move-object/from16 v42, v1

    move/from16 v43, v45

    move/from16 v44, v45

    move-object/from16 v46, v50

    move/from16 v47, v51

    move/from16 v48, v52

    invoke-direct/range {v42 .. v48}, Lr1/g;-><init>(III[BII)V

    goto/16 :goto_46

    .line 151
    :cond_47
    invoke-virtual {v1}, Lj3/f;->f()Z

    move-result v2

    if-eqz v2, :cond_48

    .line 152
    const-string v1, "Unsupported obu_extension_flag"

    invoke-static {v1}, Lu1/a;->j(Ljava/lang/String;)V

    .line 153
    new-instance v1, Lr1/g;

    move-object/from16 v42, v1

    move/from16 v43, v45

    move/from16 v44, v45

    move-object/from16 v46, v50

    move/from16 v47, v51

    move/from16 v48, v52

    invoke-direct/range {v42 .. v48}, Lr1/g;-><init>(III[BII)V

    goto/16 :goto_46

    .line 154
    :cond_48
    invoke-virtual {v1}, Lj3/f;->f()Z

    move-result v2

    .line 155
    invoke-virtual {v1}, Lj3/f;->n()V

    if-eqz v2, :cond_49

    const/16 v2, 0x8

    .line 156
    invoke-virtual {v1, v2}, Lj3/f;->g(I)I

    move-result v5

    if-le v5, v11, :cond_49

    .line 157
    const-string v1, "Excessive obu_size"

    invoke-static {v1}, Lu1/a;->j(Ljava/lang/String;)V

    .line 158
    new-instance v1, Lr1/g;

    move-object/from16 v42, v1

    move/from16 v43, v45

    move/from16 v44, v45

    move-object/from16 v46, v50

    move/from16 v47, v51

    move/from16 v48, v52

    invoke-direct/range {v42 .. v48}, Lr1/g;-><init>(III[BII)V

    goto/16 :goto_46

    :cond_49
    const/4 v2, 0x3

    .line 159
    invoke-virtual {v1, v2}, Lj3/f;->g(I)I

    move-result v5

    .line 160
    invoke-virtual {v1}, Lj3/f;->n()V

    .line 161
    invoke-virtual {v1}, Lj3/f;->f()Z

    move-result v2

    if-eqz v2, :cond_4a

    .line 162
    const-string v1, "Unsupported reduced_still_picture_header"

    invoke-static {v1}, Lu1/a;->j(Ljava/lang/String;)V

    .line 163
    new-instance v1, Lr1/g;

    move-object/from16 v42, v1

    move/from16 v43, v45

    move/from16 v44, v45

    move-object/from16 v46, v50

    move/from16 v47, v51

    move/from16 v48, v52

    invoke-direct/range {v42 .. v48}, Lr1/g;-><init>(III[BII)V

    goto/16 :goto_46

    .line 164
    :cond_4a
    invoke-virtual {v1}, Lj3/f;->f()Z

    move-result v2

    if-eqz v2, :cond_4b

    .line 165
    const-string v1, "Unsupported timing_info_present_flag"

    invoke-static {v1}, Lu1/a;->j(Ljava/lang/String;)V

    .line 166
    new-instance v1, Lr1/g;

    move-object/from16 v42, v1

    move/from16 v43, v45

    move/from16 v44, v45

    move-object/from16 v46, v50

    move/from16 v47, v51

    move/from16 v48, v52

    invoke-direct/range {v42 .. v48}, Lr1/g;-><init>(III[BII)V

    goto/16 :goto_46

    .line 167
    :cond_4b
    invoke-virtual {v1}, Lj3/f;->f()Z

    move-result v2

    if-eqz v2, :cond_4c

    .line 168
    const-string v1, "Unsupported initial_display_delay_present_flag"

    invoke-static {v1}, Lu1/a;->j(Ljava/lang/String;)V

    .line 169
    new-instance v1, Lr1/g;

    move-object/from16 v42, v1

    move/from16 v43, v45

    move/from16 v44, v45

    move-object/from16 v46, v50

    move/from16 v47, v51

    move/from16 v48, v52

    invoke-direct/range {v42 .. v48}, Lr1/g;-><init>(III[BII)V

    goto/16 :goto_46

    :cond_4c
    const/4 v2, 0x5

    .line 170
    invoke-virtual {v1, v2}, Lj3/f;->g(I)I

    move-result v6

    const/4 v8, 0x0

    :goto_3e
    if-gt v8, v6, :cond_4e

    const/16 v9, 0xc

    .line 171
    invoke-virtual {v1, v9}, Lj3/f;->o(I)V

    .line 172
    invoke-virtual {v1, v2}, Lj3/f;->g(I)I

    move-result v9

    const/4 v2, 0x7

    if-le v9, v2, :cond_4d

    .line 173
    invoke-virtual {v1}, Lj3/f;->n()V

    :cond_4d
    const/4 v2, 0x1

    add-int/2addr v8, v2

    const/4 v2, 0x5

    goto :goto_3e

    :cond_4e
    const/4 v2, 0x1

    const/4 v8, 0x4

    .line 174
    invoke-virtual {v1, v8}, Lj3/f;->g(I)I

    move-result v6

    .line 175
    invoke-virtual {v1, v8}, Lj3/f;->g(I)I

    move-result v9

    add-int/2addr v6, v2

    .line 176
    invoke-virtual {v1, v6}, Lj3/f;->o(I)V

    add-int/2addr v9, v2

    .line 177
    invoke-virtual {v1, v9}, Lj3/f;->o(I)V

    .line 178
    invoke-virtual {v1}, Lj3/f;->f()Z

    move-result v2

    if-eqz v2, :cond_4f

    const/4 v2, 0x7

    .line 179
    invoke-virtual {v1, v2}, Lj3/f;->o(I)V

    goto :goto_3f

    :cond_4f
    const/4 v2, 0x7

    .line 180
    :goto_3f
    invoke-virtual {v1, v2}, Lj3/f;->o(I)V

    .line 181
    invoke-virtual {v1}, Lj3/f;->f()Z

    move-result v2

    if-eqz v2, :cond_50

    const/4 v6, 0x2

    .line 182
    invoke-virtual {v1, v6}, Lj3/f;->o(I)V

    .line 183
    :cond_50
    invoke-virtual {v1}, Lj3/f;->f()Z

    move-result v6

    if-eqz v6, :cond_51

    const/4 v6, 0x1

    const/4 v8, 0x2

    goto :goto_40

    :cond_51
    const/4 v6, 0x1

    .line 184
    invoke-virtual {v1, v6}, Lj3/f;->g(I)I

    move-result v8

    :goto_40
    if-lez v8, :cond_52

    .line 185
    invoke-virtual {v1}, Lj3/f;->f()Z

    move-result v8

    if-nez v8, :cond_52

    .line 186
    invoke-virtual {v1, v6}, Lj3/f;->o(I)V

    :cond_52
    if-eqz v2, :cond_53

    const/4 v2, 0x3

    .line 187
    invoke-virtual {v1, v2}, Lj3/f;->o(I)V

    goto :goto_41

    :cond_53
    const/4 v2, 0x3

    .line 188
    :goto_41
    invoke-virtual {v1, v2}, Lj3/f;->o(I)V

    .line 189
    invoke-virtual {v1}, Lj3/f;->f()Z

    move-result v2

    const/4 v6, 0x2

    if-ne v5, v6, :cond_54

    if-eqz v2, :cond_54

    .line 190
    invoke-virtual {v1}, Lj3/f;->n()V

    :cond_54
    const/4 v2, 0x1

    if-eq v5, v2, :cond_55

    .line 191
    invoke-virtual {v1}, Lj3/f;->f()Z

    move-result v2

    if-eqz v2, :cond_55

    const/4 v2, 0x1

    goto :goto_42

    :cond_55
    const/4 v2, 0x0

    .line 192
    :goto_42
    invoke-virtual {v1}, Lj3/f;->f()Z

    move-result v5

    if-eqz v5, :cond_59

    const/16 v5, 0x8

    .line 193
    invoke-virtual {v1, v5}, Lj3/f;->g(I)I

    move-result v6

    .line 194
    invoke-virtual {v1, v5}, Lj3/f;->g(I)I

    move-result v8

    .line 195
    invoke-virtual {v1, v5}, Lj3/f;->g(I)I

    move-result v9

    if-nez v2, :cond_56

    const/4 v2, 0x1

    if-ne v6, v2, :cond_57

    const/16 v5, 0xd

    if-ne v8, v5, :cond_57

    if-nez v9, :cond_57

    const/4 v1, 0x1

    goto :goto_43

    :cond_56
    const/4 v2, 0x1

    .line 196
    :cond_57
    invoke-virtual {v1, v2}, Lj3/f;->g(I)I

    move-result v19

    move/from16 v1, v19

    .line 197
    :goto_43
    invoke-static {v6}, Lr1/g;->g(I)I

    move-result v45

    if-ne v1, v2, :cond_58

    const/4 v1, 0x1

    goto :goto_44

    :cond_58
    const/4 v1, 0x2

    .line 198
    :goto_44
    invoke-static {v8}, Lr1/g;->h(I)I

    move-result v2

    move/from16 v48, v1

    move/from16 v49, v2

    move/from16 v47, v45

    goto :goto_45

    :cond_59
    const/16 v47, -0x1

    const/16 v48, -0x1

    const/16 v49, -0x1

    .line 199
    :goto_45
    new-instance v1, Lr1/g;

    move-object/from16 v46, v1

    invoke-direct/range {v46 .. v52}, Lr1/g;-><init>(III[BII)V

    .line 200
    :goto_46
    const-string v2, "video/av01"

    iget v5, v1, Lr1/g;->e:I

    iget v6, v1, Lr1/g;->f:I

    iget v8, v1, Lr1/g;->a:I

    iget v9, v1, Lr1/g;->b:I

    iget v1, v1, Lr1/g;->c:I

    move/from16 v40, v1

    move v12, v5

    move v1, v6

    move/from16 v31, v8

    move/from16 v32, v9

    move-object v6, v13

    move/from16 v26, v15

    const/4 v5, -0x1

    const/4 v7, 0x1

    const/4 v9, 0x3

    const/4 v11, 0x5

    const/4 v13, 0x7

    const/4 v14, 0x2

    move-object v8, v2

    goto/16 :goto_59

    :cond_5a
    const v2, 0x636c6c69

    const/16 v9, 0x19

    if-ne v5, v2, :cond_5c

    if-nez v20, :cond_5b

    .line 201
    invoke-static {v9}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    sget-object v5, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v2, v5}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v20

    :cond_5b
    move-object/from16 v2, v20

    const/16 v11, 0x15

    .line 202
    invoke-virtual {v2, v11}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 203
    invoke-virtual/range {p0 .. p0}, Lu1/q;->y()S

    move-result v5

    invoke-virtual {v2, v5}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 204
    invoke-virtual/range {p0 .. p0}, Lu1/q;->y()S

    move-result v5

    invoke-virtual {v2, v5}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    move-object/from16 v20, v2

    move-object v6, v13

    move/from16 v26, v15

    :goto_47
    move/from16 v12, v31

    move/from16 v31, v39

    goto/16 :goto_2d

    :cond_5c
    const/16 v11, 0x15

    const v2, 0x6d646376

    if-ne v5, v2, :cond_5e

    if-nez v20, :cond_5d

    .line 205
    invoke-static {v9}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    sget-object v5, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v2, v5}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v20

    :cond_5d
    move-object/from16 v2, v20

    .line 206
    invoke-virtual/range {p0 .. p0}, Lu1/q;->y()S

    move-result v5

    .line 207
    invoke-virtual/range {p0 .. p0}, Lu1/q;->y()S

    move-result v6

    .line 208
    invoke-virtual/range {p0 .. p0}, Lu1/q;->y()S

    move-result v9

    .line 209
    invoke-virtual/range {p0 .. p0}, Lu1/q;->y()S

    move-result v12

    .line 210
    invoke-virtual/range {p0 .. p0}, Lu1/q;->y()S

    move-result v14

    .line 211
    invoke-virtual/range {p0 .. p0}, Lu1/q;->y()S

    move-result v7

    .line 212
    invoke-virtual/range {p0 .. p0}, Lu1/q;->y()S

    move-result v11

    move-object/from16 p9, v13

    .line 213
    invoke-virtual/range {p0 .. p0}, Lu1/q;->y()S

    move-result v13

    .line 214
    invoke-virtual/range {p0 .. p0}, Lu1/q;->D()J

    move-result-wide v42

    .line 215
    invoke-virtual/range {p0 .. p0}, Lu1/q;->D()J

    move-result-wide v44

    move/from16 v26, v15

    const/4 v15, 0x1

    .line 216
    invoke-virtual {v2, v15}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 217
    invoke-virtual {v2, v14}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 218
    invoke-virtual {v2, v7}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 219
    invoke-virtual {v2, v5}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 220
    invoke-virtual {v2, v6}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 221
    invoke-virtual {v2, v9}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 222
    invoke-virtual {v2, v12}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 223
    invoke-virtual {v2, v11}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 224
    invoke-virtual {v2, v13}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    const-wide/16 v5, 0x2710

    .line 225
    div-long v11, v42, v5

    long-to-int v7, v11

    int-to-short v7, v7

    invoke-virtual {v2, v7}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 226
    div-long v5, v44, v5

    long-to-int v6, v5

    int-to-short v5, v6

    invoke-virtual {v2, v5}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    move-object/from16 v6, p9

    move-object/from16 v20, v2

    goto :goto_47

    :cond_5e
    move-object/from16 p9, v13

    move/from16 v26, v15

    const v2, 0x64323633

    if-ne v5, v2, :cond_60

    if-nez v8, :cond_5f

    const/4 v2, 0x1

    :goto_48
    const/4 v7, 0x0

    goto :goto_49

    :cond_5f
    const/4 v2, 0x0

    goto :goto_48

    .line 227
    :goto_49
    invoke-static {v7, v2}, Ll2/b;->b(Ljava/lang/String;Z)V

    move-object/from16 v8, p7

    :goto_4a
    move-object/from16 v6, p9

    goto/16 :goto_47

    :cond_60
    const/4 v7, 0x0

    const v2, 0x65736473

    if-ne v5, v2, :cond_63

    if-nez v8, :cond_61

    const/4 v2, 0x1

    goto :goto_4b

    :cond_61
    const/4 v2, 0x0

    .line 228
    :goto_4b
    invoke-static {v7, v2}, Ll2/b;->b(Ljava/lang/String;Z)V

    .line 229
    invoke-static {v6, v0}, Lf3/e;->c(ILu1/q;)Lf2/y0;

    move-result-object v2

    .line 230
    iget-object v5, v2, Lf2/y0;->d:Ljava/lang/Object;

    check-cast v5, [B

    if-eqz v5, :cond_62

    .line 231
    invoke-static {v5}, Lu7/g0;->r(Ljava/lang/Object;)Lu7/y0;

    move-result-object v1

    .line 232
    :cond_62
    iget-object v5, v2, Lf2/y0;->c:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    move-object/from16 v6, p9

    move-object/from16 v37, v2

    move-object v8, v5

    goto/16 :goto_47

    :cond_63
    const v2, 0x62747274

    if-ne v5, v2, :cond_64

    const/16 v2, 0x8

    add-int/2addr v6, v2

    .line 233
    invoke-virtual {v0, v6}, Lu1/q;->O(I)V

    const/4 v2, 0x4

    .line 234
    invoke-virtual {v0, v2}, Lu1/q;->P(I)V

    .line 235
    invoke-virtual/range {p0 .. p0}, Lu1/q;->D()J

    move-result-wide v45

    .line 236
    invoke-virtual/range {p0 .. p0}, Lu1/q;->D()J

    move-result-wide v43

    .line 237
    new-instance v36, Landroidx/media3/exoplayer/video/y;

    const/16 v47, 0x1

    move-object/from16 v42, v36

    invoke-direct/range {v42 .. v47}, Landroidx/media3/exoplayer/video/y;-><init>(JJI)V

    goto :goto_4a

    :cond_64
    const v2, 0x70617370

    if-ne v5, v2, :cond_65

    const/16 v2, 0x8

    add-int/2addr v6, v2

    .line 238
    invoke-virtual {v0, v6}, Lu1/q;->O(I)V

    .line 239
    invoke-virtual/range {p0 .. p0}, Lu1/q;->F()I

    move-result v5

    .line 240
    invoke-virtual/range {p0 .. p0}, Lu1/q;->F()I

    move-result v6

    int-to-float v5, v5

    int-to-float v6, v6

    div-float/2addr v5, v6

    move-object/from16 v6, p9

    move/from16 v21, v5

    move/from16 v12, v31

    move/from16 v31, v39

    const/4 v5, -0x1

    const/4 v7, 0x1

    const/4 v9, 0x3

    const/4 v11, 0x5

    const/4 v13, 0x7

    const/4 v14, 0x2

    const/16 v38, 0x1

    goto/16 :goto_2f

    :cond_65
    const/16 v2, 0x8

    const v9, 0x73763364

    if-ne v5, v9, :cond_68

    add-int/lit8 v5, v6, 0x8

    :goto_4c
    sub-int v2, v5, v6

    if-ge v2, v10, :cond_67

    .line 241
    invoke-virtual {v0, v5}, Lu1/q;->O(I)V

    .line 242
    invoke-virtual/range {p0 .. p0}, Lu1/q;->o()I

    move-result v2

    .line 243
    invoke-virtual/range {p0 .. p0}, Lu1/q;->o()I

    move-result v9

    const v11, 0x70726f6a

    if-ne v9, v11, :cond_66

    .line 244
    iget-object v6, v0, Lu1/q;->a:[B

    add-int/2addr v2, v5

    .line 245
    invoke-static {v6, v5, v2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v2

    move-object/from16 v25, v2

    goto/16 :goto_4a

    :cond_66
    add-int/2addr v5, v2

    goto :goto_4c

    :cond_67
    move-object/from16 v25, v7

    goto/16 :goto_4a

    :cond_68
    const v2, 0x73743364

    if-ne v5, v2, :cond_6e

    .line 246
    invoke-virtual/range {p0 .. p0}, Lu1/q;->B()I

    move-result v2

    const/4 v9, 0x3

    .line 247
    invoke-virtual {v0, v9}, Lu1/q;->P(I)V

    if-nez v2, :cond_6d

    .line 248
    invoke-virtual/range {p0 .. p0}, Lu1/q;->B()I

    move-result v2

    if-eqz v2, :cond_6c

    const/4 v5, 0x1

    if-eq v2, v5, :cond_6b

    const/4 v5, 0x2

    if-eq v2, v5, :cond_6a

    if-eq v2, v9, :cond_69

    goto :goto_4d

    :cond_69
    const/4 v3, 0x3

    goto :goto_4d

    :cond_6a
    const/4 v3, 0x2

    goto :goto_4d

    :cond_6b
    const/4 v3, 0x1

    goto :goto_4d

    :cond_6c
    const/4 v3, 0x0

    :cond_6d
    :goto_4d
    move-object/from16 v6, p9

    move/from16 v12, v31

    move/from16 v31, v39

    const/4 v5, -0x1

    const/4 v7, 0x1

    goto/16 :goto_2e

    :cond_6e
    const/4 v9, 0x3

    const v2, 0x61707643

    if-ne v5, v2, :cond_75

    const/16 v2, 0xc

    add-int/lit8 v1, v10, -0xc

    .line 249
    new-array v5, v1, [B

    add-int/2addr v6, v2

    .line 250
    invoke-virtual {v0, v6}, Lu1/q;->O(I)V

    const/4 v6, 0x0

    .line 251
    invoke-virtual {v0, v6, v1, v5}, Lu1/q;->l(II[B)V

    .line 252
    sget-object v8, Lu1/c;->a:[B

    const/16 v8, 0x11

    if-lt v1, v8, :cond_6f

    const/4 v8, 0x1

    goto :goto_4e

    :cond_6f
    const/4 v8, 0x0

    .line 253
    :goto_4e
    const-string v11, "Invalid APV CSD length: %s"

    invoke-static {v11, v1, v8}, La9/o;->h(Ljava/lang/String;IZ)V

    .line 254
    aget-byte v8, v5, v6

    const/4 v11, 0x1

    if-ne v8, v11, :cond_70

    const/4 v11, 0x1

    goto :goto_4f

    :cond_70
    const/4 v11, 0x0

    :goto_4f
    const-string v12, "Invalid APV CSD version: %s"

    invoke-static {v12, v8, v11}, La9/o;->h(Ljava/lang/String;IZ)V

    const/4 v11, 0x5

    .line 255
    aget-byte v8, v5, v11

    and-int/lit16 v8, v8, 0xff

    const/4 v12, 0x6

    .line 256
    aget-byte v13, v5, v12

    and-int/lit16 v12, v13, 0xff

    const/4 v13, 0x7

    .line 257
    aget-byte v14, v5, v13

    and-int/lit16 v14, v14, 0xff

    .line 258
    sget-object v15, Lu1/f0;->a:Ljava/lang/String;

    .line 259
    sget-object v15, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v15, "apv1.apvf"

    .line 260
    const-string v2, ".apvl"

    const-string v6, ".apvb"

    .line 261
    invoke-static {v8, v12, v15, v2, v6}, Lta/q;->o(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 262
    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    .line 263
    invoke-static {v5}, Lu7/g0;->r(Ljava/lang/Object;)Lu7/y0;

    move-result-object v23

    .line 264
    new-instance v2, Lu1/q;

    invoke-direct {v2, v5}, Lu1/q;-><init>([B)V

    .line 265
    new-instance v6, Lj3/f;

    .line 266
    invoke-direct {v6, v5, v1}, Lj3/f;-><init>([BI)V

    .line 267
    iget v1, v2, Lu1/q;->b:I

    const/16 v2, 0x8

    mul-int/lit8 v1, v1, 0x8

    .line 268
    invoke-virtual {v6, v1}, Lj3/f;->m(I)V

    const/4 v1, 0x1

    .line 269
    invoke-virtual {v6, v1}, Lj3/f;->p(I)V

    .line 270
    invoke-virtual {v6, v2}, Lj3/f;->g(I)I

    move-result v5

    const/4 v8, 0x0

    const/4 v12, -0x1

    const/4 v14, -0x1

    const/4 v15, -0x1

    const/16 v31, -0x1

    const/16 v32, -0x1

    :goto_50
    if-ge v8, v5, :cond_74

    .line 271
    invoke-virtual {v6, v1}, Lj3/f;->p(I)V

    .line 272
    invoke-virtual {v6, v2}, Lj3/f;->g(I)I

    move-result v1

    move/from16 v16, v15

    move v15, v14

    move v14, v12

    const/4 v12, 0x0

    :goto_51
    if-ge v12, v1, :cond_73

    const/4 v7, 0x6

    .line 273
    invoke-virtual {v6, v7}, Lj3/f;->o(I)V

    .line 274
    invoke-virtual {v6}, Lj3/f;->f()Z

    move-result v15

    .line 275
    invoke-virtual {v6}, Lj3/f;->n()V

    const/16 v7, 0xb

    .line 276
    invoke-virtual {v6, v7}, Lj3/f;->p(I)V

    const/4 v7, 0x4

    .line 277
    invoke-virtual {v6, v7}, Lj3/f;->o(I)V

    .line 278
    invoke-virtual {v6, v7}, Lj3/f;->g(I)I

    move-result v16

    add-int/lit8 v16, v16, 0x8

    const/4 v7, 0x1

    .line 279
    invoke-virtual {v6, v7}, Lj3/f;->p(I)V

    if-eqz v15, :cond_72

    .line 280
    invoke-virtual {v6, v2}, Lj3/f;->g(I)I

    move-result v14

    .line 281
    invoke-virtual {v6, v2}, Lj3/f;->g(I)I

    move-result v15

    .line 282
    invoke-virtual {v6, v7}, Lj3/f;->p(I)V

    .line 283
    invoke-virtual {v6}, Lj3/f;->f()Z

    move-result v17

    .line 284
    invoke-static {v14}, Lr1/g;->g(I)I

    move-result v14

    if-eqz v17, :cond_71

    const/16 v17, 0x1

    goto :goto_52

    :cond_71
    const/16 v17, 0x2

    .line 285
    :goto_52
    invoke-static {v15}, Lr1/g;->h(I)I

    move-result v15

    move/from16 v31, v14

    move v14, v15

    move/from16 v32, v17

    :cond_72
    add-int/2addr v12, v7

    move/from16 v15, v16

    const/4 v7, 0x0

    goto :goto_51

    :cond_73
    const/4 v7, 0x1

    add-int/2addr v8, v7

    move v12, v14

    move v14, v15

    move/from16 v15, v16

    const/4 v1, 0x1

    const/4 v7, 0x0

    goto :goto_50

    :cond_74
    const/4 v7, 0x1

    .line 286
    new-instance v1, Lr1/g;

    .line 287
    const-string v1, "video/apv"

    move-object/from16 v6, p9

    move-object v8, v1

    move/from16 v40, v12

    move v12, v14

    move v1, v15

    const/4 v5, -0x1

    goto/16 :goto_37

    :cond_75
    const/16 v2, 0x8

    const/4 v7, 0x1

    const/4 v11, 0x5

    const/4 v13, 0x7

    const v6, 0x636f6c72

    if-ne v5, v6, :cond_7b

    move/from16 v6, v39

    const/4 v5, -0x1

    move/from16 v12, v40

    if-ne v6, v5, :cond_77

    if-ne v12, v5, :cond_77

    .line 288
    invoke-virtual/range {p0 .. p0}, Lu1/q;->o()I

    move-result v14

    const v15, 0x6e636c78

    if-eq v14, v15, :cond_78

    const v15, 0x6e636c63

    if-ne v14, v15, :cond_76

    goto :goto_54

    .line 289
    :cond_76
    new-instance v15, Ljava/lang/StringBuilder;

    const-string v2, "Unsupported color type: "

    invoke-direct {v15, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v14}, Lab/a;->b(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lu1/a;->p(Ljava/lang/String;)V

    :cond_77
    :goto_53
    const/4 v14, 0x2

    goto :goto_57

    .line 290
    :cond_78
    :goto_54
    invoke-virtual/range {p0 .. p0}, Lu1/q;->I()I

    move-result v2

    .line 291
    invoke-virtual/range {p0 .. p0}, Lu1/q;->I()I

    move-result v6

    const/4 v14, 0x2

    .line 292
    invoke-virtual {v0, v14}, Lu1/q;->P(I)V

    const/16 v12, 0x13

    if-ne v10, v12, :cond_79

    .line 293
    invoke-virtual/range {p0 .. p0}, Lu1/q;->B()I

    move-result v12

    and-int/lit16 v12, v12, 0x80

    if-eqz v12, :cond_79

    const/4 v12, 0x1

    goto :goto_55

    :cond_79
    const/4 v12, 0x0

    .line 294
    :goto_55
    invoke-static {v2}, Lr1/g;->g(I)I

    move-result v2

    if-eqz v12, :cond_7a

    const/4 v12, 0x1

    goto :goto_56

    :cond_7a
    const/4 v12, 0x2

    .line 295
    :goto_56
    invoke-static {v6}, Lr1/g;->h(I)I

    move-result v6

    move-object/from16 v23, v1

    move/from16 v40, v6

    move/from16 v1, v32

    move-object/from16 v6, p9

    move/from16 v32, v12

    move/from16 v12, v31

    move/from16 v31, v2

    goto :goto_59

    :cond_7b
    move/from16 v6, v39

    move/from16 v12, v40

    const/4 v5, -0x1

    goto :goto_53

    :goto_57
    move/from16 v40, v12

    move/from16 v12, v31

    move/from16 v31, v6

    move-object/from16 v6, p9

    goto/16 :goto_2f

    .line 296
    :goto_58
    invoke-static/range {p0 .. p0}, Lbd/c;->e(Lu1/q;)Lbd/c;

    move-result-object v22

    goto :goto_57

    :goto_59
    add-int v2, v41, v10

    move-object/from16 v11, p7

    move v9, v2

    move-object v13, v6

    move/from16 v15, v26

    move/from16 v7, v34

    move/from16 v14, v35

    move/from16 v2, p3

    move/from16 v35, v1

    move/from16 v26, v3

    move/from16 v34, v12

    move-object/from16 v3, v33

    move/from16 v33, v40

    move/from16 v1, p2

    goto/16 :goto_2

    :cond_7c
    move-object/from16 v1, v23

    move/from16 v6, v31

    move/from16 v23, v32

    move/from16 v12, v33

    move/from16 v31, v34

    move/from16 v32, v35

    move-object/from16 v33, v3

    move/from16 v34, v7

    move/from16 v35, v14

    move/from16 v3, v26

    move-object/from16 v0, v22

    :goto_5a
    if-eqz v0, :cond_7d

    .line 297
    const-string v8, "video/dolby-vision"

    iget-object v0, v0, Lbd/c;->b:Ljava/lang/String;

    goto :goto_5b

    :cond_7d
    move-object/from16 v0, v24

    :goto_5b
    if-nez v8, :cond_7e

    return-void

    .line 298
    :cond_7e
    new-instance v2, Lr1/o;

    invoke-direct {v2}, Lr1/o;-><init>()V

    .line 299
    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v2, Lr1/o;->a:Ljava/lang/String;

    .line 300
    invoke-static {v8}, Lr1/e0;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v2, Lr1/o;->n:Ljava/lang/String;

    .line 301
    iput-object v0, v2, Lr1/o;->j:Ljava/lang/String;

    move/from16 v0, v35

    .line 302
    iput v0, v2, Lr1/o;->u:I

    move/from16 v0, v34

    .line 303
    iput v0, v2, Lr1/o;->v:I

    move/from16 v0, v29

    .line 304
    iput v0, v2, Lr1/o;->w:I

    move/from16 v0, v30

    .line 305
    iput v0, v2, Lr1/o;->x:I

    move/from16 v0, v21

    .line 306
    iput v0, v2, Lr1/o;->A:F

    move/from16 v0, p6

    .line 307
    iput v0, v2, Lr1/o;->z:I

    move-object/from16 v0, v25

    .line 308
    iput-object v0, v2, Lr1/o;->B:[B

    .line 309
    iput v3, v2, Lr1/o;->C:I

    .line 310
    iput-object v1, v2, Lr1/o;->q:Ljava/util/List;

    move/from16 v0, v27

    .line 311
    iput v0, v2, Lr1/o;->p:I

    move/from16 v0, v28

    .line 312
    iput v0, v2, Lr1/o;->E:I

    move-object/from16 v3, v33

    .line 313
    iput-object v3, v2, Lr1/o;->r:Lr1/l;

    move-object/from16 v0, p5

    .line 314
    iput-object v0, v2, Lr1/o;->d:Ljava/lang/String;

    if-eqz v20, :cond_7f

    .line 315
    invoke-virtual/range {v20 .. v20}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    goto :goto_5c

    :cond_7f
    const/4 v0, 0x0

    .line 316
    :goto_5c
    new-instance v1, Lr1/g;

    move-object/from16 p0, v1

    move/from16 p1, v6

    move/from16 p2, v23

    move/from16 p3, v12

    move-object/from16 p4, v0

    move/from16 p5, v31

    move/from16 p6, v32

    invoke-direct/range {p0 .. p6}, Lr1/g;-><init>(III[BII)V

    .line 317
    iput-object v1, v2, Lr1/o;->D:Lr1/g;

    move-object/from16 v12, v36

    if-eqz v12, :cond_80

    .line 318
    iget-wide v0, v12, Landroidx/media3/exoplayer/video/y;->b:J

    invoke-static {v0, v1}, Ld/b;->i0(J)I

    move-result v0

    .line 319
    iput v0, v2, Lr1/o;->h:I

    .line 320
    iget-wide v0, v12, Landroidx/media3/exoplayer/video/y;->c:J

    invoke-static {v0, v1}, Ld/b;->i0(J)I

    move-result v0

    .line 321
    iput v0, v2, Lr1/o;->i:I

    goto :goto_5d

    :cond_80
    move-object/from16 v12, v37

    if-eqz v12, :cond_81

    .line 322
    iget-wide v0, v12, Lf2/y0;->a:J

    invoke-static {v0, v1}, Ld/b;->i0(J)I

    move-result v0

    .line 323
    iput v0, v2, Lr1/o;->h:I

    .line 324
    iget-wide v0, v12, Lf2/y0;->b:J

    invoke-static {v0, v1}, Ld/b;->i0(J)I

    move-result v0

    .line 325
    iput v0, v2, Lr1/o;->i:I

    .line 326
    :cond_81
    :goto_5d
    new-instance v0, Lr1/p;

    invoke-direct {v0, v2}, Lr1/p;-><init>(Lr1/o;)V

    .line 327
    iput-object v0, v4, La9/a;->e:Ljava/lang/Object;

    return-void
.end method
