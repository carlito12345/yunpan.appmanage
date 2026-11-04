.class public final enum Lqh/y;
.super Lqh/c0;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    const-string v0, "InBody"

    .line 2
    .line 3
    const/4 v1, 0x6

    .line 4
    invoke-direct {p0, v0, v1}, Lqh/c0;-><init>(Ljava/lang/String;I)V

    .line 5
    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public final d(Lqh/r0;Lqh/c;)Z
    .locals 27

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 1
    const-string v3, "h5"

    const-string v4, "h4"

    const-string v6, "h3"

    const-string v7, "h2"

    const-string v9, "h1"

    const-string v10, "dt"

    const-string v11, "dd"

    const-string v12, "p"

    const-string v13, "template"

    const-string v14, "li"

    const-string v5, "br"

    const-string v15, "body"

    iget v8, v1, Lqh/r0;->a:I

    invoke-static {v8}, Ld0/f;->c(I)I

    move-result v8

    if-eqz v8, :cond_c0

    move-object/from16 v19, v13

    sget-object v13, Lqh/c0;->d:Lqh/v;

    move-object/from16 v20, v13

    sget-object v13, Lqh/b0;->i:[Ljava/lang/String;

    move-object/from16 v21, v13

    sget-object v13, Lqh/b0;->l:[Ljava/lang/String;

    move-object/from16 v22, v13

    const/4 v13, 0x1

    if-eq v8, v13, :cond_57

    sget-object v13, Lqh/b0;->p:[Ljava/lang/String;

    move-object/from16 v23, v12

    const/4 v12, 0x2

    if-eq v8, v12, :cond_7

    const/4 v12, 0x3

    if-eq v8, v12, :cond_6

    const/4 v12, 0x4

    if-eq v8, v12, :cond_3

    const/4 v3, 0x6

    if-ne v8, v3, :cond_2

    .line 2
    iget-object v3, v2, Lqh/c;->r:Ljava/util/ArrayList;

    .line 3
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 4
    sget-object v3, Lqh/c0;->s:Lqh/l;

    .line 5
    invoke-virtual {v3, v1, v2}, Lqh/l;->d(Lqh/r0;Lqh/c;)Z

    move-result v1

    return v1

    .line 6
    :cond_0
    invoke-virtual {v2, v13}, Lqh/c;->D([Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 7
    invoke-virtual {v2, v0}, Lqh/c;->k(Lqh/c0;)V

    :cond_1
    :goto_0
    const/4 v1, 0x1

    goto :goto_2

    .line 8
    :cond_2
    iget v1, v1, Lqh/r0;->a:I

    invoke-static {v1}, Lorg/bouncycastle/jcajce/provider/digest/a;->x(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Unexpected state: "

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 9
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 10
    :cond_3
    check-cast v1, Lqh/j0;

    .line 11
    iget-object v3, v1, Lqh/j0;->d:Lkf/d;

    invoke-virtual {v3}, Lkf/d;->R()Ljava/lang/String;

    move-result-object v3

    .line 12
    sget-object v4, Lqh/c0;->A:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 13
    invoke-virtual {v2, v0}, Lqh/c;->k(Lqh/c0;)V

    :goto_1
    const/4 v1, 0x0

    return v1

    .line 14
    :cond_4
    iget-boolean v3, v2, Lqh/c;->u:Z

    if-eqz v3, :cond_5

    .line 15
    invoke-static {v1}, Lqh/c0;->a(Lqh/r0;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 16
    invoke-virtual/range {p2 .. p2}, Lqh/c;->L()V

    .line 17
    invoke-virtual {v2, v1}, Lqh/c;->t(Lqh/j0;)V

    goto :goto_0

    .line 18
    :cond_5
    invoke-virtual/range {p2 .. p2}, Lqh/c;->L()V

    .line 19
    invoke-virtual {v2, v1}, Lqh/c;->t(Lqh/j0;)V

    const/4 v1, 0x0

    .line 20
    iput-boolean v1, v2, Lqh/c;->u:Z

    goto :goto_0

    .line 21
    :cond_6
    check-cast v1, Lqh/k0;

    .line 22
    invoke-virtual {v2, v1}, Lqh/c;->v(Lqh/k0;)V

    goto :goto_0

    :goto_2
    return v1

    :cond_7
    const/4 v12, 0x4

    .line 23
    move-object v8, v1

    check-cast v8, Lqh/n0;

    .line 24
    invoke-virtual {v8}, Lqh/p0;->m()Ljava/lang/String;

    move-result-object v12

    .line 25
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Lqh/c;->x:[Ljava/lang/String;

    move-object/from16 v24, v1

    sget-object v1, Lqh/c0;->t:Lqh/m;

    move-object/from16 v25, v1

    const-string v1, "http://www.w3.org/1999/xhtml"

    invoke-virtual {v12}, Ljava/lang/String;->hashCode()I

    move-result v26

    sparse-switch v26, :sswitch_data_0

    :goto_3
    move-object/from16 v3, v19

    :goto_4
    const/16 v16, -0x1

    goto/16 :goto_5

    :sswitch_0
    const-string v3, "sarcasm"

    invoke-virtual {v12, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    goto :goto_3

    :cond_8
    const/16 v3, 0x10

    move-object/from16 v3, v19

    const/16 v16, 0x10

    goto/16 :goto_5

    :sswitch_1
    const-string v3, "span"

    invoke-virtual {v12, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9

    goto :goto_3

    :cond_9
    const/16 v3, 0xf

    move-object/from16 v3, v19

    const/16 v16, 0xf

    goto/16 :goto_5

    :sswitch_2
    const-string v3, "html"

    invoke-virtual {v12, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a

    goto :goto_3

    :cond_a
    const/16 v3, 0xe

    move-object/from16 v3, v19

    const/16 v16, 0xe

    goto/16 :goto_5

    :sswitch_3
    const-string v3, "form"

    invoke-virtual {v12, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_b

    goto :goto_3

    :cond_b
    const/16 v3, 0xd

    move-object/from16 v3, v19

    const/16 v16, 0xd

    goto/16 :goto_5

    :sswitch_4
    invoke-virtual {v12, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_c

    goto :goto_3

    :cond_c
    const/16 v3, 0xc

    move-object/from16 v3, v19

    const/16 v16, 0xc

    goto/16 :goto_5

    :sswitch_5
    invoke-virtual {v12, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_d

    goto :goto_3

    :cond_d
    const/16 v3, 0xb

    move-object/from16 v3, v19

    const/16 v16, 0xb

    goto/16 :goto_5

    :sswitch_6
    const-string v3, "h6"

    invoke-virtual {v12, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_e

    goto :goto_3

    :cond_e
    const/16 v3, 0xa

    move-object/from16 v3, v19

    const/16 v16, 0xa

    goto/16 :goto_5

    :sswitch_7
    invoke-virtual {v12, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_f

    goto :goto_3

    :cond_f
    const/16 v3, 0x9

    move-object/from16 v3, v19

    const/16 v16, 0x9

    goto/16 :goto_5

    :sswitch_8
    invoke-virtual {v12, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_10

    goto/16 :goto_3

    :cond_10
    move-object/from16 v3, v19

    const/16 v16, 0x8

    goto/16 :goto_5

    :sswitch_9
    invoke-virtual {v12, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_11

    goto/16 :goto_3

    :cond_11
    move-object/from16 v3, v19

    const/16 v16, 0x7

    goto/16 :goto_5

    :sswitch_a
    invoke-virtual {v12, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_12

    goto/16 :goto_3

    :cond_12
    move-object/from16 v3, v19

    const/16 v16, 0x6

    goto :goto_5

    :sswitch_b
    invoke-virtual {v12, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_13

    goto/16 :goto_3

    :cond_13
    move-object/from16 v3, v19

    const/16 v16, 0x5

    goto :goto_5

    :sswitch_c
    invoke-virtual {v12, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_14

    goto/16 :goto_3

    :cond_14
    move-object/from16 v3, v19

    const/16 v16, 0x4

    goto :goto_5

    :sswitch_d
    invoke-virtual {v12, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_15

    goto/16 :goto_3

    :cond_15
    move-object/from16 v3, v19

    const/16 v16, 0x3

    goto :goto_5

    :sswitch_e
    invoke-virtual {v12, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_16

    goto/16 :goto_3

    :cond_16
    move-object/from16 v3, v19

    const/16 v16, 0x2

    goto :goto_5

    :sswitch_f
    move-object/from16 v3, v23

    invoke-virtual {v12, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_17

    goto/16 :goto_3

    :cond_17
    move-object/from16 v3, v19

    const/16 v16, 0x1

    goto :goto_5

    :sswitch_10
    move-object/from16 v3, v19

    invoke-virtual {v12, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_18

    goto/16 :goto_4

    :cond_18
    const/16 v16, 0x0

    :goto_5
    packed-switch v16, :pswitch_data_0

    .line 26
    sget-object v3, Lqh/b0;->q:[Ljava/lang/String;

    invoke-static {v12, v3}, Loh/f;->d(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3c

    .line 27
    iget-object v3, v8, Lqh/p0;->e:Ljava/lang/String;

    .line 28
    invoke-virtual/range {p2 .. p2}, Lqh/c;->h()Lph/l;

    move-result-object v4

    .line 29
    iget-object v4, v4, Lph/l;->d:Lqh/f0;

    .line 30
    iget-object v4, v4, Lqh/f0;->c:Ljava/lang/String;

    .line 31
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_19

    invoke-virtual/range {p2 .. p2}, Lqh/c;->h()Lph/l;

    move-result-object v4

    .line 32
    iget-object v5, v2, Lqh/c;->q:Ljava/util/ArrayList;

    invoke-static {v5, v4}, Lqh/c;->C(Ljava/util/ArrayList;Lph/l;)Z

    move-result v4

    if-nez v4, :cond_19

    .line 33
    invoke-virtual/range {p2 .. p2}, Lqh/c;->E()Lph/l;

    goto/16 :goto_25

    :cond_19
    const/4 v4, 0x0

    :goto_6
    const/16 v8, 0x8

    if-lt v4, v8, :cond_1a

    goto/16 :goto_25

    :cond_1a
    const/4 v5, 0x1

    add-int/2addr v4, v5

    .line 34
    iget-object v6, v2, Lqh/c;->q:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    sub-int/2addr v6, v5

    :goto_7
    if-ltz v6, :cond_1d

    .line 35
    iget-object v5, v2, Lqh/c;->q:Ljava/util/ArrayList;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lph/l;

    if-nez v5, :cond_1b

    goto :goto_8

    .line 36
    :cond_1b
    iget-object v7, v5, Lph/l;->d:Lqh/f0;

    iget-object v7, v7, Lqh/f0;->c:Ljava/lang/String;

    .line 37
    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1c

    goto :goto_9

    :cond_1c
    const/4 v5, -0x1

    add-int/2addr v6, v5

    goto :goto_7

    :cond_1d
    :goto_8
    const/4 v5, 0x0

    :goto_9
    if-nez v5, :cond_1e

    .line 38
    invoke-virtual/range {p0 .. p2}, Lqh/y;->f(Lqh/r0;Lqh/c;)Z

    move-result v8

    goto/16 :goto_26

    .line 39
    :cond_1e
    iget-object v6, v2, Lqh/c;->e:Ljava/util/ArrayList;

    invoke-static {v6, v5}, Lqh/c;->C(Ljava/util/ArrayList;Lph/l;)Z

    move-result v6

    if-nez v6, :cond_1f

    .line 40
    invoke-virtual {v2, v0}, Lqh/c;->k(Lqh/c0;)V

    .line 41
    invoke-virtual {v2, v5}, Lqh/c;->M(Lph/l;)V

    goto/16 :goto_25

    .line 42
    :cond_1f
    iget-object v6, v5, Lph/l;->d:Lqh/f0;

    iget-object v7, v6, Lqh/f0;->c:Ljava/lang/String;

    .line 43
    invoke-virtual {v2, v7}, Lqh/c;->p(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_20

    .line 44
    invoke-virtual {v2, v0}, Lqh/c;->k(Lqh/c0;)V

    goto/16 :goto_22

    .line 45
    :cond_20
    invoke-virtual/range {p2 .. p2}, Lqh/c;->h()Lph/l;

    move-result-object v7

    if-eq v7, v5, :cond_21

    .line 46
    invoke-virtual {v2, v0}, Lqh/c;->k(Lqh/c0;)V

    .line 47
    :cond_21
    iget-object v7, v2, Lqh/c;->e:Ljava/util/ArrayList;

    .line 48
    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->lastIndexOf(Ljava/lang/Object;)I

    move-result v9

    const/4 v10, -0x1

    if-eq v9, v10, :cond_23

    const/4 v10, 0x1

    :cond_22
    add-int/2addr v9, v10

    .line 49
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-ge v9, v11, :cond_23

    .line 50
    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lph/l;

    .line 51
    invoke-static {v11}, Lqh/c;->A(Lph/l;)Z

    move-result v12

    if-eqz v12, :cond_22

    goto :goto_a

    :cond_23
    const/4 v11, 0x0

    :goto_a
    if-nez v11, :cond_25

    .line 52
    :goto_b
    invoke-virtual/range {p2 .. p2}, Lqh/c;->h()Lph/l;

    move-result-object v1

    if-eq v1, v5, :cond_24

    .line 53
    invoke-virtual/range {p2 .. p2}, Lqh/c;->E()Lph/l;

    goto :goto_b

    .line 54
    :cond_24
    invoke-virtual/range {p2 .. p2}, Lqh/c;->E()Lph/l;

    .line 55
    invoke-virtual {v2, v5}, Lqh/c;->M(Lph/l;)V

    goto/16 :goto_25

    .line 56
    :cond_25
    invoke-virtual {v2, v5}, Lqh/c;->a(Lph/l;)Lph/l;

    move-result-object v7

    if-nez v7, :cond_26

    .line 57
    invoke-virtual {v2, v0}, Lqh/c;->k(Lqh/c0;)V

    goto/16 :goto_25

    :cond_26
    const/4 v9, 0x0

    .line 58
    :goto_c
    iget-object v10, v2, Lqh/c;->q:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v9, v10, :cond_28

    .line 59
    iget-object v10, v2, Lqh/c;->q:Ljava/util/ArrayList;

    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    if-ne v5, v10, :cond_27

    const/4 v10, 0x1

    goto :goto_d

    :cond_27
    const/4 v10, 0x1

    add-int/2addr v9, v10

    goto :goto_c

    :cond_28
    const/4 v10, 0x1

    const/4 v9, -0x1

    :goto_d
    move-object v13, v11

    move-object v14, v13

    const/4 v12, 0x0

    :goto_e
    add-int/2addr v12, v10

    .line 60
    iget-object v10, v2, Lqh/c;->e:Ljava/util/ArrayList;

    invoke-static {v10, v13}, Lqh/c;->C(Ljava/util/ArrayList;Lph/l;)Z

    move-result v10

    if-nez v10, :cond_29

    .line 61
    iget-object v10, v13, Lph/q;->a:Lph/l;

    :goto_f
    move-object v13, v10

    goto :goto_10

    .line 62
    :cond_29
    invoke-virtual {v2, v13}, Lqh/c;->a(Lph/l;)Lph/l;

    move-result-object v10

    goto :goto_f

    :goto_10
    if-nez v13, :cond_2a

    .line 63
    invoke-virtual {v2, v0}, Lqh/c;->k(Lqh/c0;)V

    :goto_11
    const/4 v10, 0x3

    goto :goto_12

    :cond_2a
    if-ne v13, v5, :cond_2b

    goto :goto_11

    :cond_2b
    const/4 v10, 0x3

    if-le v12, v10, :cond_35

    .line 64
    iget-object v15, v2, Lqh/c;->q:Ljava/util/ArrayList;

    invoke-static {v15, v13}, Lqh/c;->C(Ljava/util/ArrayList;Lph/l;)Z

    move-result v15

    if-eqz v15, :cond_35

    .line 65
    invoke-virtual {v2, v13}, Lqh/c;->M(Lph/l;)V

    .line 66
    :goto_12
    invoke-virtual {v7, v14}, Lph/l;->A(Lph/q;)V

    .line 67
    new-instance v7, Lph/l;

    .line 68
    iget-object v12, v2, Lqh/c;->f:Ljava/lang/String;

    const/4 v13, 0x0

    .line 69
    invoke-direct {v7, v6, v12, v13}, Lph/l;-><init>(Lqh/f0;Ljava/lang/String;Lph/c;)V

    .line 70
    invoke-virtual {v7}, Lph/l;->c()Lph/c;

    move-result-object v6

    invoke-virtual {v5}, Lph/l;->c()Lph/c;

    move-result-object v12

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 71
    iget v13, v12, Lph/c;->a:I

    if-nez v13, :cond_2c

    goto :goto_18

    .line 72
    :cond_2c
    iget v14, v6, Lph/c;->a:I

    add-int/2addr v14, v13

    invoke-virtual {v6, v14}, Lph/c;->b(I)V

    .line 73
    iget v13, v6, Lph/c;->a:I

    if-eqz v13, :cond_2d

    const/4 v13, 0x1

    goto :goto_13

    :cond_2d
    const/4 v13, 0x0

    .line 74
    :goto_13
    new-instance v14, Lph/b;

    invoke-direct {v14, v12}, Lph/b;-><init>(Lph/c;)V

    .line 75
    :goto_14
    invoke-virtual {v14}, Lph/b;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_31

    invoke-virtual {v14}, Lph/b;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lph/a;

    .line 76
    const-string v15, ""

    if-eqz v13, :cond_2f

    .line 77
    iget-object v8, v12, Lph/a;->b:Ljava/lang/String;

    if-nez v8, :cond_2e

    goto :goto_15

    :cond_2e
    move-object v15, v8

    .line 78
    :goto_15
    iget-object v8, v12, Lph/a;->a:Ljava/lang/String;

    invoke-virtual {v6, v8, v15}, Lph/c;->j(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    iput-object v6, v12, Lph/a;->c:Lph/c;

    goto :goto_17

    .line 80
    :cond_2f
    iget-object v8, v12, Lph/a;->b:Ljava/lang/String;

    if-nez v8, :cond_30

    goto :goto_16

    :cond_30
    move-object v15, v8

    .line 81
    :goto_16
    iget-object v8, v12, Lph/a;->a:Ljava/lang/String;

    invoke-virtual {v6, v8, v15}, Lph/c;->a(Ljava/lang/String;Ljava/io/Serializable;)V

    :goto_17
    const/16 v8, 0x8

    goto :goto_14

    .line 82
    :cond_31
    :goto_18
    iget-object v6, v11, Lph/l;->e:Lph/k;

    invoke-virtual {v6}, Ljava/util/AbstractCollection;->size()I

    move-result v6

    if-nez v6, :cond_32

    .line 83
    sget-object v6, Lph/q;->c:Ljava/util/List;

    goto :goto_19

    .line 84
    :cond_32
    invoke-virtual {v11}, Lph/l;->h()Ljava/util/List;

    move-result-object v6

    .line 85
    new-instance v8, Ljava/util/ArrayList;

    check-cast v6, Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v12

    invoke-direct {v8, v12}, Ljava/util/ArrayList;-><init>(I)V

    .line 86
    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 87
    invoke-static {v8}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v6

    .line 88
    :goto_19
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1a
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_33

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lph/q;

    .line 89
    invoke-virtual {v7, v8}, Lph/l;->A(Lph/q;)V

    goto :goto_1a

    .line 90
    :cond_33
    invoke-virtual {v11, v7}, Lph/l;->A(Lph/q;)V

    .line 91
    invoke-virtual {v2, v5}, Lqh/c;->M(Lph/l;)V

    .line 92
    invoke-virtual {v2, v7}, Lqh/c;->b(Lph/l;)V

    .line 93
    :try_start_0
    iget-object v6, v2, Lqh/c;->q:Ljava/util/ArrayList;

    invoke-virtual {v6, v9, v7}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1b

    .line 94
    :catch_0
    iget-object v6, v2, Lqh/c;->q:Ljava/util/ArrayList;

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 95
    :goto_1b
    invoke-virtual {v2, v5}, Lqh/c;->N(Lph/l;)V

    .line 96
    iget-object v5, v2, Lqh/c;->e:Ljava/util/ArrayList;

    invoke-virtual {v5, v11}, Ljava/util/ArrayList;->lastIndexOf(Ljava/lang/Object;)I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_34

    const/4 v6, 0x1

    goto :goto_1c

    :cond_34
    const/4 v6, 0x0

    .line 97
    :goto_1c
    invoke-static {v6}, Lnh/b;->V(Z)V

    .line 98
    iget-object v6, v2, Lqh/c;->e:Ljava/util/ArrayList;

    const/4 v8, 0x1

    add-int/2addr v5, v8

    invoke-virtual {v6, v5, v7}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto/16 :goto_6

    .line 99
    :cond_35
    iget-object v8, v2, Lqh/c;->q:Ljava/util/ArrayList;

    invoke-static {v8, v13}, Lqh/c;->C(Ljava/util/ArrayList;Lph/l;)Z

    move-result v8

    if-nez v8, :cond_36

    .line 100
    invoke-virtual {v2, v13}, Lqh/c;->N(Lph/l;)V

    :goto_1d
    const/16 v8, 0x8

    const/4 v10, 0x1

    goto/16 :goto_e

    .line 101
    :cond_36
    new-instance v8, Lph/l;

    invoke-virtual {v13}, Lph/l;->o()Ljava/lang/String;

    move-result-object v15

    .line 102
    iget-object v10, v13, Lph/l;->d:Lqh/f0;

    iget-object v10, v10, Lqh/f0;->c:Ljava/lang/String;

    move-object/from16 v16, v3

    .line 103
    iget-object v3, v2, Lqh/c;->i:Lqh/h0;

    move/from16 v17, v4

    const/4 v4, 0x1

    invoke-virtual {v3, v15, v10, v1, v4}, Lqh/h0;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lqh/f0;

    move-result-object v3

    .line 104
    iget-object v4, v2, Lqh/c;->f:Ljava/lang/String;

    const/4 v10, 0x0

    .line 105
    invoke-direct {v8, v3, v4, v10}, Lph/l;-><init>(Lqh/f0;Ljava/lang/String;Lph/c;)V

    .line 106
    iget-object v3, v2, Lqh/c;->q:Ljava/util/ArrayList;

    .line 107
    invoke-virtual {v3, v13}, Ljava/util/ArrayList;->lastIndexOf(Ljava/lang/Object;)I

    move-result v4

    const/4 v10, -0x1

    if-eq v4, v10, :cond_37

    const/4 v15, 0x1

    goto :goto_1e

    :cond_37
    const/4 v15, 0x0

    .line 108
    :goto_1e
    invoke-static {v15}, Lnh/b;->V(Z)V

    .line 109
    invoke-virtual {v3, v4, v8}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 110
    iget-object v3, v2, Lqh/c;->e:Ljava/util/ArrayList;

    .line 111
    invoke-virtual {v3, v13}, Ljava/util/ArrayList;->lastIndexOf(Ljava/lang/Object;)I

    move-result v4

    if-eq v4, v10, :cond_38

    const/4 v10, 0x1

    goto :goto_1f

    :cond_38
    const/4 v10, 0x0

    .line 112
    :goto_1f
    invoke-static {v10}, Lnh/b;->V(Z)V

    .line 113
    invoke-virtual {v3, v4, v8}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    if-ne v14, v11, :cond_3b

    const/4 v3, 0x0

    .line 114
    :goto_20
    iget-object v4, v2, Lqh/c;->q:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_3a

    .line 115
    iget-object v4, v2, Lqh/c;->q:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-ne v8, v4, :cond_39

    const/4 v4, 0x1

    goto :goto_21

    :cond_39
    const/4 v4, 0x1

    add-int/2addr v3, v4

    goto :goto_20

    :cond_3a
    const/4 v4, 0x1

    const/4 v3, -0x1

    :goto_21
    add-int/2addr v3, v4

    move v9, v3

    .line 116
    :cond_3b
    invoke-virtual {v8, v14}, Lph/l;->A(Lph/q;)V

    move-object v13, v8

    move-object v14, v13

    move-object/from16 v3, v16

    move/from16 v4, v17

    goto :goto_1d

    .line 117
    :cond_3c
    sget-object v1, Lqh/b0;->o:[Ljava/lang/String;

    invoke-static {v12, v1}, Loh/f;->d(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3f

    .line 118
    invoke-virtual {v2, v12}, Lqh/c;->p(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3d

    .line 119
    invoke-virtual {v2, v0}, Lqh/c;->k(Lqh/c0;)V

    :goto_22
    const/4 v8, 0x0

    goto/16 :goto_26

    :cond_3d
    const/4 v1, 0x0

    .line 120
    invoke-virtual {v2, v1}, Lqh/c;->m(Z)V

    .line 121
    invoke-virtual {v2, v12}, Lqh/c;->i(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3e

    .line 122
    invoke-virtual {v2, v0}, Lqh/c;->k(Lqh/c0;)V

    .line 123
    :cond_3e
    invoke-virtual {v2, v12}, Lqh/c;->F(Ljava/lang/String;)V

    goto/16 :goto_25

    :cond_3f
    move-object/from16 v1, v22

    .line 124
    invoke-static {v12, v1}, Loh/f;->d(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_42

    .line 125
    const-string v1, "name"

    invoke-virtual {v2, v1}, Lqh/c;->p(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_56

    .line 126
    invoke-virtual {v2, v12}, Lqh/c;->p(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_40

    .line 127
    invoke-virtual {v2, v0}, Lqh/c;->k(Lqh/c0;)V

    goto :goto_22

    :cond_40
    const/4 v1, 0x0

    .line 128
    invoke-virtual {v2, v1}, Lqh/c;->m(Z)V

    .line 129
    invoke-virtual {v2, v12}, Lqh/c;->i(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_41

    .line 130
    invoke-virtual {v2, v0}, Lqh/c;->k(Lqh/c0;)V

    .line 131
    :cond_41
    invoke-virtual {v2, v12}, Lqh/c;->F(Ljava/lang/String;)V

    .line 132
    invoke-virtual/range {p2 .. p2}, Lqh/c;->c()V

    goto/16 :goto_25

    .line 133
    :cond_42
    invoke-virtual/range {p0 .. p2}, Lqh/y;->f(Lqh/r0;Lqh/c;)Z

    move-result v8

    goto/16 :goto_26

    .line 134
    :pswitch_0
    invoke-virtual/range {p0 .. p2}, Lqh/y;->f(Lqh/r0;Lqh/c;)Z

    move-result v8

    goto/16 :goto_26

    .line 135
    :pswitch_1
    invoke-virtual {v2, v15}, Lqh/c;->B(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_43

    .line 136
    invoke-virtual {v2, v0}, Lqh/c;->k(Lqh/c0;)V

    goto :goto_22

    .line 137
    :cond_43
    invoke-virtual {v2, v13}, Lqh/c;->D([Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_44

    .line 138
    invoke-virtual {v2, v0}, Lqh/c;->k(Lqh/c0;)V

    :cond_44
    move-object/from16 v1, v25

    .line 139
    iput-object v1, v2, Lqh/c;->l:Lqh/c0;

    move-object/from16 v8, p1

    .line 140
    invoke-virtual {v2, v8}, Lqh/c;->H(Lqh/r0;)Z

    move-result v8

    goto/16 :goto_26

    .line 141
    :pswitch_2
    invoke-virtual {v2, v3}, Lqh/c;->B(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_48

    .line 142
    iget-object v1, v2, Lqh/c;->p:Lph/o;

    const/4 v3, 0x0

    .line 143
    iput-object v3, v2, Lqh/c;->p:Lph/o;

    if-eqz v1, :cond_47

    .line 144
    invoke-virtual {v2, v12}, Lqh/c;->p(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_45

    goto :goto_23

    :cond_45
    const/4 v3, 0x0

    .line 145
    invoke-virtual {v2, v3}, Lqh/c;->m(Z)V

    .line 146
    invoke-virtual {v2, v12}, Lqh/c;->i(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_46

    .line 147
    invoke-virtual {v2, v0}, Lqh/c;->k(Lqh/c0;)V

    .line 148
    :cond_46
    invoke-virtual {v2, v1}, Lqh/c;->N(Lph/l;)V

    goto/16 :goto_25

    .line 149
    :cond_47
    :goto_23
    invoke-virtual {v2, v0}, Lqh/c;->k(Lqh/c0;)V

    goto/16 :goto_22

    .line 150
    :cond_48
    invoke-virtual {v2, v12}, Lqh/c;->p(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_49

    .line 151
    invoke-virtual {v2, v0}, Lqh/c;->k(Lqh/c0;)V

    goto/16 :goto_22

    :cond_49
    const/4 v1, 0x0

    .line 152
    invoke-virtual {v2, v1}, Lqh/c;->m(Z)V

    .line 153
    invoke-virtual {v2, v12}, Lqh/c;->i(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4a

    invoke-virtual {v2, v0}, Lqh/c;->k(Lqh/c0;)V

    .line 154
    :cond_4a
    invoke-virtual {v2, v12}, Lqh/c;->F(Ljava/lang/String;)V

    goto/16 :goto_25

    :pswitch_3
    move-object/from16 v1, v25

    .line 155
    invoke-virtual {v2, v15}, Lqh/c;->p(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4b

    .line 156
    invoke-virtual {v2, v0}, Lqh/c;->k(Lqh/c0;)V

    goto/16 :goto_22

    .line 157
    :cond_4b
    invoke-virtual {v2, v13}, Lqh/c;->D([Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4c

    .line 158
    invoke-virtual {v2, v0}, Lqh/c;->k(Lqh/c0;)V

    .line 159
    :cond_4c
    invoke-virtual {v2, v15}, Lqh/c;->n(Ljava/lang/String;)Lph/l;

    .line 160
    iput-object v1, v2, Lqh/c;->l:Lqh/c0;

    goto/16 :goto_25

    :pswitch_4
    move-object/from16 v3, v24

    .line 161
    sget-object v1, Lqh/c;->A:[Ljava/lang/String;

    .line 162
    iget-object v4, v2, Lqh/c;->w:[Ljava/lang/String;

    const/4 v5, 0x0

    .line 163
    aput-object v12, v4, v5

    .line 164
    invoke-virtual {v2, v4, v3, v1}, Lqh/c;->r([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4d

    .line 165
    invoke-virtual {v2, v0}, Lqh/c;->k(Lqh/c0;)V

    goto/16 :goto_22

    .line 166
    :cond_4d
    invoke-virtual {v2, v12}, Lqh/c;->l(Ljava/lang/String;)V

    .line 167
    invoke-virtual {v2, v12}, Lqh/c;->i(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4e

    .line 168
    invoke-virtual {v2, v0}, Lqh/c;->k(Lqh/c0;)V

    .line 169
    :cond_4e
    invoke-virtual {v2, v12}, Lqh/c;->F(Ljava/lang/String;)V

    goto/16 :goto_25

    :pswitch_5
    move-object/from16 v13, v21

    move-object/from16 v3, v24

    const/4 v4, 0x0

    .line 170
    invoke-virtual {v2, v13, v3, v4}, Lqh/c;->r([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4f

    .line 171
    invoke-virtual {v2, v0}, Lqh/c;->k(Lqh/c0;)V

    goto/16 :goto_22

    .line 172
    :cond_4f
    invoke-virtual {v2, v12}, Lqh/c;->l(Ljava/lang/String;)V

    .line 173
    invoke-virtual {v2, v12}, Lqh/c;->i(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_50

    .line 174
    invoke-virtual {v2, v0}, Lqh/c;->k(Lqh/c0;)V

    .line 175
    :cond_50
    iget-object v3, v2, Lqh/c;->e:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    :goto_24
    if-ltz v3, :cond_56

    .line 176
    invoke-virtual/range {p2 .. p2}, Lqh/c;->E()Lph/l;

    move-result-object v4

    .line 177
    iget-object v5, v4, Lph/l;->d:Lqh/f0;

    .line 178
    iget-object v5, v5, Lqh/f0;->c:Ljava/lang/String;

    .line 179
    invoke-static {v5, v13}, Loh/f;->d(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_51

    .line 180
    iget-object v4, v4, Lph/l;->d:Lqh/f0;

    iget-object v4, v4, Lqh/f0;->a:Ljava/lang/String;

    .line 181
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_51

    goto :goto_25

    :cond_51
    const/4 v4, -0x1

    add-int/2addr v3, v4

    goto :goto_24

    .line 182
    :pswitch_6
    invoke-virtual {v2, v12}, Lqh/c;->p(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_52

    .line 183
    invoke-virtual {v2, v0}, Lqh/c;->k(Lqh/c0;)V

    goto/16 :goto_22

    .line 184
    :cond_52
    invoke-virtual {v2, v12}, Lqh/c;->l(Ljava/lang/String;)V

    .line 185
    invoke-virtual {v2, v12}, Lqh/c;->i(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_53

    .line 186
    invoke-virtual {v2, v0}, Lqh/c;->k(Lqh/c0;)V

    .line 187
    :cond_53
    invoke-virtual {v2, v12}, Lqh/c;->F(Ljava/lang/String;)V

    goto :goto_25

    .line 188
    :pswitch_7
    invoke-virtual {v2, v0}, Lqh/c;->k(Lqh/c0;)V

    .line 189
    invoke-virtual {v2, v5}, Lqh/c;->J(Ljava/lang/String;)V

    goto/16 :goto_22

    .line 190
    :pswitch_8
    invoke-virtual {v2, v12}, Lqh/c;->o(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_54

    .line 191
    invoke-virtual {v2, v0}, Lqh/c;->k(Lqh/c0;)V

    .line 192
    invoke-virtual {v2, v12}, Lqh/c;->J(Ljava/lang/String;)V

    .line 193
    invoke-virtual {v2, v8}, Lqh/c;->H(Lqh/r0;)Z

    move-result v8

    goto :goto_26

    .line 194
    :cond_54
    invoke-virtual {v2, v12}, Lqh/c;->l(Ljava/lang/String;)V

    .line 195
    invoke-virtual {v2, v12}, Lqh/c;->i(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_55

    .line 196
    invoke-virtual {v2, v0}, Lqh/c;->k(Lqh/c0;)V

    .line 197
    :cond_55
    invoke-virtual {v2, v12}, Lqh/c;->F(Ljava/lang/String;)V

    goto :goto_25

    :pswitch_9
    move-object/from16 v8, p1

    .line 198
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object/from16 v12, v20

    .line 199
    invoke-virtual {v12, v8, v2}, Lqh/v;->d(Lqh/r0;Lqh/c;)Z

    :cond_56
    :goto_25
    const/4 v8, 0x1

    :goto_26
    return v8

    :cond_57
    move-object v8, v1

    move-object v13, v12

    move-object/from16 v12, v20

    move-object/from16 v1, v22

    const/16 v18, 0x3

    .line 200
    move-object v0, v8

    check-cast v0, Lqh/o0;

    .line 201
    invoke-virtual {v0}, Lqh/p0;->m()Ljava/lang/String;

    move-result-object v1

    .line 202
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v8, Lqh/b0;->j:[Ljava/lang/String;

    move-object/from16 v20, v8

    sget-object v8, Lqh/c0;->i:Lqh/a0;

    move-object/from16 v23, v8

    const-string v8, "ruby"

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v24

    sparse-switch v24, :sswitch_data_1

    :goto_27
    const/4 v5, -0x1

    goto/16 :goto_28

    :sswitch_11
    const-string v3, "noembed"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_58

    goto :goto_27

    :cond_58
    const/16 v5, 0x36

    goto/16 :goto_28

    :sswitch_12
    const-string v3, "plaintext"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_59

    goto :goto_27

    :cond_59
    const/16 v5, 0x35

    goto/16 :goto_28

    :sswitch_13
    const-string v3, "listing"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5a

    goto :goto_27

    :cond_5a
    const/16 v5, 0x34

    goto/16 :goto_28

    :sswitch_14
    const-string v3, "table"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5b

    goto :goto_27

    :cond_5b
    const/16 v5, 0x33

    goto/16 :goto_28

    :sswitch_15
    const-string v3, "small"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5c

    goto :goto_27

    :cond_5c
    const/16 v5, 0x32

    goto/16 :goto_28

    :sswitch_16
    const-string v3, "input"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5d

    goto :goto_27

    :cond_5d
    const/16 v5, 0x31

    goto/16 :goto_28

    :sswitch_17
    const-string v3, "image"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5e

    goto :goto_27

    :cond_5e
    const/16 v5, 0x30

    goto/16 :goto_28

    :sswitch_18
    const-string v3, "embed"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5f

    goto :goto_27

    :cond_5f
    const/16 v5, 0x2f

    goto/16 :goto_28

    :sswitch_19
    const-string v3, "span"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_60

    goto :goto_27

    :cond_60
    const/16 v5, 0x2e

    goto/16 :goto_28

    :sswitch_1a
    const-string v3, "nobr"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_61

    goto/16 :goto_27

    :cond_61
    const/16 v5, 0x2d

    goto/16 :goto_28

    :sswitch_1b
    const-string v3, "math"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_62

    goto/16 :goto_27

    :cond_62
    const/16 v5, 0x2c

    goto/16 :goto_28

    :sswitch_1c
    const-string v3, "html"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_63

    goto/16 :goto_27

    :cond_63
    const/16 v5, 0x2b

    goto/16 :goto_28

    :sswitch_1d
    const-string v3, "form"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_64

    goto/16 :goto_27

    :cond_64
    const/16 v5, 0x2a

    goto/16 :goto_28

    :sswitch_1e
    const-string v3, "font"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_65

    goto/16 :goto_27

    :cond_65
    const/16 v5, 0x29

    goto/16 :goto_28

    :sswitch_1f
    const-string v3, "code"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_66

    goto/16 :goto_27

    :cond_66
    const/16 v5, 0x28

    goto/16 :goto_28

    :sswitch_20
    invoke-virtual {v1, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_67

    goto/16 :goto_27

    :cond_67
    const/16 v5, 0x27

    goto/16 :goto_28

    :sswitch_21
    const-string v3, "area"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_68

    goto/16 :goto_27

    :cond_68
    const/16 v5, 0x26

    goto/16 :goto_28

    :sswitch_22
    const-string v3, "xmp"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_69

    goto/16 :goto_27

    :cond_69
    const/16 v5, 0x25

    goto/16 :goto_28

    :sswitch_23
    const-string v3, "wbr"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6a

    goto/16 :goto_27

    :cond_6a
    const/16 v5, 0x24

    goto/16 :goto_28

    :sswitch_24
    const-string v3, "svg"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6b

    goto/16 :goto_27

    :cond_6b
    const/16 v5, 0x23

    goto/16 :goto_28

    :sswitch_25
    const-string v3, "rtc"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6c

    goto/16 :goto_27

    :cond_6c
    const/16 v5, 0x22

    goto/16 :goto_28

    :sswitch_26
    const-string v3, "pre"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6d

    goto/16 :goto_27

    :cond_6d
    const/16 v5, 0x21

    goto/16 :goto_28

    :sswitch_27
    const-string v3, "img"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6e

    goto/16 :goto_27

    :cond_6e
    const/16 v5, 0x20

    goto/16 :goto_28

    :sswitch_28
    const-string v3, "big"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6f

    goto/16 :goto_27

    :cond_6f
    const/16 v5, 0x1f

    goto/16 :goto_28

    :sswitch_29
    const-string v3, "tt"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_70

    goto/16 :goto_27

    :cond_70
    const/16 v5, 0x1e

    goto/16 :goto_28

    :sswitch_2a
    const-string v3, "rt"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_71

    goto/16 :goto_27

    :cond_71
    const/16 v5, 0x1d

    goto/16 :goto_28

    :sswitch_2b
    const-string v3, "rp"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_72

    goto/16 :goto_27

    :cond_72
    const/16 v5, 0x1c

    goto/16 :goto_28

    :sswitch_2c
    const-string v3, "rb"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_73

    goto/16 :goto_27

    :cond_73
    const/16 v5, 0x1b

    goto/16 :goto_28

    :sswitch_2d
    invoke-virtual {v1, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_74

    goto/16 :goto_27

    :cond_74
    const/16 v5, 0x1a

    goto/16 :goto_28

    :sswitch_2e
    const-string v3, "hr"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_75

    goto/16 :goto_27

    :cond_75
    const/16 v5, 0x19

    goto/16 :goto_28

    :sswitch_2f
    const-string v3, "h6"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_76

    goto/16 :goto_27

    :cond_76
    const/16 v5, 0x18

    goto/16 :goto_28

    :sswitch_30
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_77

    goto/16 :goto_27

    :cond_77
    const/16 v5, 0x17

    goto/16 :goto_28

    :sswitch_31
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_78

    goto/16 :goto_27

    :cond_78
    const/16 v5, 0x16

    goto/16 :goto_28

    :sswitch_32
    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_79

    goto/16 :goto_27

    :cond_79
    const/16 v5, 0x15

    goto/16 :goto_28

    :sswitch_33
    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7a

    goto/16 :goto_27

    :cond_7a
    const/16 v5, 0x14

    goto/16 :goto_28

    :sswitch_34
    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7b

    goto/16 :goto_27

    :cond_7b
    const/16 v5, 0x13

    goto/16 :goto_28

    :sswitch_35
    const-string v3, "em"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7c

    goto/16 :goto_27

    :cond_7c
    const/16 v5, 0x12

    goto/16 :goto_28

    :sswitch_36
    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7d

    goto/16 :goto_27

    :cond_7d
    const/16 v5, 0x11

    goto/16 :goto_28

    :sswitch_37
    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7e

    goto/16 :goto_27

    :cond_7e
    const/16 v5, 0x10

    goto/16 :goto_28

    :sswitch_38
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7f

    goto/16 :goto_27

    :cond_7f
    const/16 v5, 0xf

    goto/16 :goto_28

    :sswitch_39
    const-string v3, "u"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_80

    goto/16 :goto_27

    :cond_80
    const/16 v5, 0xe

    goto/16 :goto_28

    :sswitch_3a
    const-string v3, "s"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_81

    goto/16 :goto_27

    :cond_81
    const/16 v5, 0xd

    goto/16 :goto_28

    :sswitch_3b
    const-string v3, "i"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_82

    goto/16 :goto_27

    :cond_82
    const/16 v5, 0xc

    goto/16 :goto_28

    :sswitch_3c
    const-string v3, "b"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_83

    goto/16 :goto_27

    :cond_83
    const/16 v5, 0xb

    goto/16 :goto_28

    :sswitch_3d
    const-string v3, "a"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_84

    goto/16 :goto_27

    :cond_84
    const/16 v5, 0xa

    goto/16 :goto_28

    :sswitch_3e
    const-string v3, "optgroup"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_85

    goto/16 :goto_27

    :cond_85
    const/16 v5, 0x9

    goto/16 :goto_28

    :sswitch_3f
    const-string v3, "strong"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_86

    goto/16 :goto_27

    :cond_86
    const/16 v5, 0x8

    goto/16 :goto_28

    :sswitch_40
    const-string v3, "strike"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_87

    goto/16 :goto_27

    :cond_87
    const/4 v5, 0x7

    goto :goto_28

    :sswitch_41
    const-string v3, "select"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_88

    goto/16 :goto_27

    :cond_88
    const/4 v5, 0x6

    goto :goto_28

    :sswitch_42
    const-string v3, "textarea"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_89

    goto/16 :goto_27

    :cond_89
    const/4 v5, 0x5

    goto :goto_28

    :sswitch_43
    const-string v3, "option"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8a

    goto/16 :goto_27

    :cond_8a
    const/4 v5, 0x4

    goto :goto_28

    :sswitch_44
    const-string v3, "keygen"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8b

    goto/16 :goto_27

    :cond_8b
    const/4 v5, 0x3

    goto :goto_28

    :sswitch_45
    const-string v3, "iframe"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8c

    goto/16 :goto_27

    :cond_8c
    const/4 v5, 0x2

    goto :goto_28

    :sswitch_46
    const-string v3, "button"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8d

    goto/16 :goto_27

    :cond_8d
    const/4 v5, 0x1

    goto :goto_28

    :sswitch_47
    const-string v3, "frameset"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8e

    goto/16 :goto_27

    :cond_8e
    const/4 v5, 0x0

    :goto_28
    packed-switch v5, :pswitch_data_1

    .line 203
    invoke-virtual {v2, v0}, Lqh/c;->Q(Lqh/o0;)Lqh/f0;

    move-result-object v3

    .line 204
    invoke-virtual {v3}, Lqh/f0;->f()Lqh/k3;

    move-result-object v4

    if-eqz v4, :cond_90

    .line 205
    invoke-static {v0, v2, v4}, Lqh/c0;->b(Lqh/o0;Lqh/c;Lqh/k3;)V

    :goto_29
    move-object/from16 v0, p0

    :cond_8f
    :goto_2a
    const/4 v5, 0x1

    goto/16 :goto_36

    .line 206
    :cond_90
    invoke-virtual {v3}, Lqh/f0;->c()Z

    move-result v3

    if-nez v3, :cond_91

    .line 207
    invoke-virtual {v2, v0}, Lqh/c;->w(Lqh/o0;)Lph/l;

    goto :goto_29

    .line 208
    :cond_91
    sget-object v3, Lqh/b0;->h:[Ljava/lang/String;

    invoke-static {v1, v3}, Loh/f;->d(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_93

    .line 209
    invoke-virtual {v2, v13}, Lqh/c;->o(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_92

    invoke-virtual {v2, v13}, Lqh/c;->I(Ljava/lang/String;)Z

    .line 210
    :cond_92
    invoke-virtual {v2, v0}, Lqh/c;->w(Lqh/o0;)Lph/l;

    goto :goto_29

    .line 211
    :cond_93
    sget-object v3, Lqh/b0;->g:[Ljava/lang/String;

    invoke-static {v1, v3}, Loh/f;->d(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_94

    move-object/from16 v3, p1

    .line 212
    invoke-virtual {v12, v3, v2}, Lqh/v;->d(Lqh/r0;Lqh/c;)Z

    move-result v8

    move-object/from16 v0, p0

    goto/16 :goto_37

    :cond_94
    move-object/from16 v3, v22

    .line 213
    invoke-static {v1, v3}, Loh/f;->d(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_95

    .line 214
    invoke-virtual/range {p2 .. p2}, Lqh/c;->L()V

    .line 215
    invoke-virtual {v2, v0}, Lqh/c;->w(Lqh/o0;)Lph/l;

    .line 216
    iget-object v0, v2, Lqh/c;->q:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    .line 217
    iput-boolean v0, v2, Lqh/c;->u:Z

    goto :goto_29

    .line 218
    :cond_95
    sget-object v3, Lqh/b0;->m:[Ljava/lang/String;

    invoke-static {v1, v3}, Loh/f;->d(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_96

    .line 219
    invoke-virtual {v2, v0}, Lqh/c;->x(Lqh/o0;)Lph/l;

    goto :goto_29

    .line 220
    :cond_96
    sget-object v3, Lqh/b0;->n:[Ljava/lang/String;

    invoke-static {v1, v3}, Loh/f;->d(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_98

    move-object/from16 v0, p0

    .line 221
    invoke-virtual {v2, v0}, Lqh/c;->k(Lqh/c0;)V

    :cond_97
    :goto_2b
    const/4 v8, 0x0

    goto/16 :goto_37

    :cond_98
    move-object v3, v0

    move-object/from16 v0, p0

    .line 222
    invoke-virtual/range {p2 .. p2}, Lqh/c;->L()V

    .line 223
    invoke-virtual {v2, v3}, Lqh/c;->w(Lqh/o0;)Lph/l;

    goto :goto_2a

    :pswitch_a
    move-object v3, v0

    move-object/from16 v0, p0

    .line 224
    invoke-virtual {v2, v3}, Lqh/c;->Q(Lqh/o0;)Lqh/f0;

    move-result-object v1

    invoke-virtual {v1}, Lqh/f0;->f()Lqh/k3;

    move-result-object v1

    invoke-static {v3, v2, v1}, Lqh/c0;->b(Lqh/o0;Lqh/c;Lqh/k3;)V

    goto/16 :goto_2a

    :pswitch_b
    move-object v3, v0

    move-object/from16 v0, p0

    .line 225
    invoke-virtual {v2, v13}, Lqh/c;->o(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_99

    .line 226
    invoke-virtual {v2, v13}, Lqh/c;->I(Ljava/lang/String;)Z

    .line 227
    :cond_99
    invoke-virtual {v2, v3}, Lqh/c;->w(Lqh/o0;)Lph/l;

    .line 228
    iget-object v1, v2, Lqh/c;->c:Lqh/t0;

    sget-object v2, Lqh/k3;->g:Lqh/h3;

    invoke-virtual {v1, v2}, Lqh/t0;->o(Lqh/k3;)V

    goto/16 :goto_2a

    :pswitch_c
    move-object v3, v0

    move-object/from16 v0, p0

    .line 229
    iget-object v1, v2, Lqh/c;->d:Lph/h;

    .line 230
    iget v1, v1, Lph/h;->l:I

    const/4 v4, 0x2

    if-eq v1, v4, :cond_9a

    .line 231
    invoke-virtual {v2, v13}, Lqh/c;->o(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9a

    .line 232
    invoke-virtual {v2, v13}, Lqh/c;->I(Ljava/lang/String;)Z

    .line 233
    :cond_9a
    invoke-virtual {v2, v3}, Lqh/c;->w(Lqh/o0;)Lph/l;

    const/4 v1, 0x0

    .line 234
    iput-boolean v1, v2, Lqh/c;->u:Z

    move-object/from16 v1, v23

    .line 235
    iput-object v1, v2, Lqh/c;->l:Lqh/c0;

    goto/16 :goto_2a

    :pswitch_d
    move-object v3, v0

    move-object/from16 v0, p0

    .line 236
    invoke-virtual/range {p2 .. p2}, Lqh/c;->L()V

    .line 237
    invoke-virtual {v2, v3}, Lqh/c;->x(Lqh/o0;)Lph/l;

    move-result-object v1

    .line 238
    const-string v3, "type"

    invoke-virtual {v1, v3}, Lph/q;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "hidden"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_8f

    const/4 v1, 0x0

    .line 239
    iput-boolean v1, v2, Lqh/c;->u:Z

    goto/16 :goto_2a

    :pswitch_e
    move-object v3, v0

    move-object/from16 v0, p0

    .line 240
    const-string v1, "svg"

    invoke-virtual {v2, v1}, Lqh/c;->n(Ljava/lang/String;)Lph/l;

    move-result-object v1

    if-nez v1, :cond_9b

    .line 241
    const-string v1, "img"

    invoke-virtual {v3, v1}, Lqh/p0;->k(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lqh/c;->H(Lqh/r0;)Z

    move-result v8

    goto/16 :goto_37

    .line 242
    :cond_9b
    invoke-virtual {v2, v3}, Lqh/c;->w(Lqh/o0;)Lph/l;

    goto/16 :goto_2a

    :pswitch_f
    move-object v3, v0

    move-object/from16 v0, p0

    .line 243
    invoke-virtual/range {p2 .. p2}, Lqh/c;->L()V

    .line 244
    invoke-virtual {v2, v3}, Lqh/c;->w(Lqh/o0;)Lph/l;

    goto/16 :goto_2a

    :pswitch_10
    move-object v3, v0

    move-object/from16 v0, p0

    .line 245
    invoke-virtual/range {p2 .. p2}, Lqh/c;->L()V

    .line 246
    const-string v1, "nobr"

    invoke-virtual {v2, v1}, Lqh/c;->p(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_9c

    .line 247
    invoke-virtual {v2, v0}, Lqh/c;->k(Lqh/c0;)V

    .line 248
    invoke-virtual {v2, v1}, Lqh/c;->I(Ljava/lang/String;)Z

    .line 249
    invoke-virtual/range {p2 .. p2}, Lqh/c;->L()V

    .line 250
    :cond_9c
    invoke-virtual {v2, v3}, Lqh/c;->w(Lqh/o0;)Lph/l;

    move-result-object v1

    .line 251
    invoke-virtual {v2, v1}, Lqh/c;->b(Lph/l;)V

    .line 252
    iget-object v2, v2, Lqh/c;->q:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2a

    :pswitch_11
    move-object v3, v0

    move-object/from16 v0, p0

    .line 253
    invoke-virtual/range {p2 .. p2}, Lqh/c;->L()V

    .line 254
    const-string v1, "http://www.w3.org/1998/Math/MathML"

    invoke-virtual {v2, v3, v1}, Lqh/c;->y(Lqh/o0;Ljava/lang/String;)V

    goto/16 :goto_2a

    :pswitch_12
    move-object v3, v0

    move-object/from16 v0, p0

    .line 255
    invoke-virtual {v2, v0}, Lqh/c;->k(Lqh/c0;)V

    move-object/from16 v1, v19

    .line 256
    invoke-virtual {v2, v1}, Lqh/c;->B(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9d

    :goto_2c
    goto/16 :goto_2b

    .line 257
    :cond_9d
    iget-object v1, v2, Lqh/c;->e:Ljava/util/ArrayList;

    .line 258
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_8f

    .line 259
    iget-object v1, v2, Lqh/c;->e:Ljava/util/ArrayList;

    const/4 v2, 0x0

    .line 260
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lph/l;

    .line 261
    invoke-static {v3, v1}, Lqh/c0;->c(Lqh/o0;Lph/l;)V

    goto/16 :goto_2a

    :pswitch_13
    move-object v3, v0

    move-object/from16 v1, v19

    move-object/from16 v0, p0

    .line 262
    iget-object v4, v2, Lqh/c;->p:Lph/o;

    if-eqz v4, :cond_9e

    .line 263
    invoke-virtual {v2, v1}, Lqh/c;->B(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_9e

    .line 264
    invoke-virtual {v2, v0}, Lqh/c;->k(Lqh/c0;)V

    goto/16 :goto_2b

    .line 265
    :cond_9e
    invoke-virtual {v2, v13}, Lqh/c;->o(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a0

    .line 266
    invoke-virtual {v2, v13}, Lqh/c;->l(Ljava/lang/String;)V

    .line 267
    invoke-virtual/range {p2 .. p2}, Lqh/c;->h()Lph/l;

    move-result-object v1

    .line 268
    iget-object v1, v1, Lph/l;->d:Lqh/f0;

    .line 269
    iget-object v1, v1, Lqh/f0;->c:Ljava/lang/String;

    .line 270
    invoke-virtual {v13, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9f

    .line 271
    iget-object v1, v2, Lqh/c;->l:Lqh/c0;

    .line 272
    invoke-virtual {v2, v1}, Lqh/c;->k(Lqh/c0;)V

    .line 273
    :cond_9f
    invoke-virtual {v2, v13}, Lqh/c;->F(Ljava/lang/String;)V

    :cond_a0
    const/4 v4, 0x1

    .line 274
    invoke-virtual {v2, v3, v4, v4}, Lqh/c;->z(Lqh/o0;ZZ)V

    goto/16 :goto_2a

    :pswitch_14
    move-object v3, v0

    move-object/from16 v1, v19

    const/4 v4, 0x1

    move-object/from16 v0, p0

    .line 275
    invoke-virtual {v2, v0}, Lqh/c;->k(Lqh/c0;)V

    .line 276
    iget-object v5, v2, Lqh/c;->e:Ljava/util/ArrayList;

    .line 277
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-eq v6, v4, :cond_97

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    const/4 v7, 0x2

    if-le v6, v7, :cond_a1

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lph/l;

    invoke-virtual {v5, v15}, Lph/q;->l(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_97

    :cond_a1
    invoke-virtual {v2, v1}, Lqh/c;->B(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a2

    goto/16 :goto_2b

    :cond_a2
    const/4 v1, 0x0

    .line 278
    iput-boolean v1, v2, Lqh/c;->u:Z

    .line 279
    invoke-virtual {v2, v15}, Lqh/c;->n(Ljava/lang/String;)Lph/l;

    move-result-object v1

    if-eqz v1, :cond_8f

    .line 280
    invoke-static {v3, v1}, Lqh/c0;->c(Lqh/o0;Lph/l;)V

    goto/16 :goto_2a

    :pswitch_15
    move-object v3, v0

    move-object/from16 v0, p0

    .line 281
    invoke-virtual {v2, v13}, Lqh/c;->o(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a3

    .line 282
    invoke-virtual {v2, v13}, Lqh/c;->I(Ljava/lang/String;)Z

    .line 283
    :cond_a3
    invoke-virtual/range {p2 .. p2}, Lqh/c;->L()V

    const/4 v1, 0x0

    .line 284
    iput-boolean v1, v2, Lqh/c;->u:Z

    .line 285
    invoke-virtual {v2, v3}, Lqh/c;->Q(Lqh/o0;)Lqh/f0;

    move-result-object v1

    invoke-virtual {v1}, Lqh/f0;->f()Lqh/k3;

    move-result-object v1

    invoke-static {v3, v2, v1}, Lqh/c0;->b(Lqh/o0;Lqh/c;Lqh/k3;)V

    goto/16 :goto_2a

    :pswitch_16
    move-object v3, v0

    move-object/from16 v0, p0

    .line 286
    invoke-virtual/range {p2 .. p2}, Lqh/c;->L()V

    .line 287
    const-string v1, "http://www.w3.org/2000/svg"

    invoke-virtual {v2, v3, v1}, Lqh/c;->y(Lqh/o0;Ljava/lang/String;)V

    goto/16 :goto_2a

    :pswitch_17
    move-object v3, v0

    move-object/from16 v0, p0

    .line 288
    invoke-virtual {v2, v13}, Lqh/c;->o(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a4

    .line 289
    invoke-virtual {v2, v13}, Lqh/c;->I(Ljava/lang/String;)Z

    .line 290
    :cond_a4
    invoke-virtual {v2, v3}, Lqh/c;->w(Lqh/o0;)Lph/l;

    .line 291
    iget-object v1, v2, Lqh/c;->b:Lqh/b;

    const-string v3, "\n"

    invoke-virtual {v1, v3}, Lqh/b;->T(Ljava/lang/String;)Z

    const/4 v1, 0x0

    .line 292
    iput-boolean v1, v2, Lqh/c;->u:Z

    goto/16 :goto_2a

    :pswitch_18
    move-object v3, v0

    move-object/from16 v0, p0

    .line 293
    invoke-virtual {v2, v8}, Lqh/c;->p(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a5

    .line 294
    const-string v1, "rtc"

    invoke-virtual {v2, v1}, Lqh/c;->l(Ljava/lang/String;)V

    .line 295
    invoke-virtual {v2, v1}, Lqh/c;->i(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_a5

    invoke-virtual {v2, v8}, Lqh/c;->i(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_a5

    .line 296
    invoke-virtual {v2, v0}, Lqh/c;->k(Lqh/c0;)V

    .line 297
    :cond_a5
    invoke-virtual {v2, v3}, Lqh/c;->w(Lqh/o0;)Lph/l;

    goto/16 :goto_2a

    :pswitch_19
    move-object v3, v0

    move-object/from16 v0, p0

    .line 298
    invoke-virtual {v2, v8}, Lqh/c;->p(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a6

    const/4 v1, 0x0

    .line 299
    invoke-virtual {v2, v1}, Lqh/c;->m(Z)V

    .line 300
    invoke-virtual {v2, v8}, Lqh/c;->i(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_a6

    .line 301
    invoke-virtual {v2, v0}, Lqh/c;->k(Lqh/c0;)V

    .line 302
    :cond_a6
    invoke-virtual {v2, v3}, Lqh/c;->w(Lqh/o0;)Lph/l;

    goto/16 :goto_2a

    :pswitch_1a
    move-object v3, v0

    move-object/from16 v4, v20

    const/4 v1, 0x0

    move-object/from16 v0, p0

    .line 303
    iput-boolean v1, v2, Lqh/c;->u:Z

    .line 304
    iget-object v1, v2, Lqh/c;->e:Ljava/util/ArrayList;

    .line 305
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    :goto_2d
    if-lez v5, :cond_a9

    .line 306
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lph/l;

    .line 307
    invoke-virtual {v6, v14}, Lph/q;->l(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_a7

    .line 308
    invoke-virtual {v2, v14}, Lqh/c;->I(Ljava/lang/String;)Z

    goto :goto_2e

    .line 309
    :cond_a7
    invoke-static {v6}, Lqh/c;->A(Lph/l;)Z

    move-result v7

    if-eqz v7, :cond_a8

    .line 310
    iget-object v6, v6, Lph/l;->d:Lqh/f0;

    iget-object v6, v6, Lqh/f0;->c:Ljava/lang/String;

    .line 311
    invoke-static {v6, v4}, Loh/f;->d(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_a8

    goto :goto_2e

    :cond_a8
    const/4 v6, -0x1

    add-int/2addr v5, v6

    goto :goto_2d

    .line 312
    :cond_a9
    :goto_2e
    invoke-virtual {v2, v13}, Lqh/c;->o(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_aa

    .line 313
    invoke-virtual {v2, v13}, Lqh/c;->I(Ljava/lang/String;)Z

    .line 314
    :cond_aa
    invoke-virtual {v2, v3}, Lqh/c;->w(Lqh/o0;)Lph/l;

    goto/16 :goto_2a

    :pswitch_1b
    move-object v3, v0

    move-object/from16 v0, p0

    .line 315
    invoke-virtual {v2, v13}, Lqh/c;->o(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_ab

    .line 316
    invoke-virtual {v2, v13}, Lqh/c;->I(Ljava/lang/String;)Z

    .line 317
    :cond_ab
    invoke-virtual {v2, v3}, Lqh/c;->x(Lqh/o0;)Lph/l;

    const/4 v1, 0x0

    .line 318
    iput-boolean v1, v2, Lqh/c;->u:Z

    goto/16 :goto_2a

    :pswitch_1c
    move-object v3, v0

    move-object/from16 v0, p0

    .line 319
    invoke-virtual {v2, v13}, Lqh/c;->o(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_ac

    .line 320
    invoke-virtual {v2, v13}, Lqh/c;->I(Ljava/lang/String;)Z

    .line 321
    :cond_ac
    invoke-virtual/range {p2 .. p2}, Lqh/c;->h()Lph/l;

    move-result-object v1

    .line 322
    iget-object v1, v1, Lph/l;->d:Lqh/f0;

    .line 323
    iget-object v1, v1, Lqh/f0;->c:Ljava/lang/String;

    move-object/from16 v4, v21

    .line 324
    invoke-static {v1, v4}, Loh/f;->d(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_ad

    .line 325
    invoke-virtual {v2, v0}, Lqh/c;->k(Lqh/c0;)V

    .line 326
    invoke-virtual/range {p2 .. p2}, Lqh/c;->E()Lph/l;

    .line 327
    :cond_ad
    invoke-virtual {v2, v3}, Lqh/c;->w(Lqh/o0;)Lph/l;

    goto/16 :goto_2a

    :pswitch_1d
    move-object v3, v0

    move-object/from16 v4, v20

    const/4 v1, 0x0

    move-object/from16 v0, p0

    .line 328
    iput-boolean v1, v2, Lqh/c;->u:Z

    .line 329
    iget-object v1, v2, Lqh/c;->e:Ljava/util/ArrayList;

    .line 330
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v6, 0x1

    add-int/lit8 v7, v5, -0x1

    const/16 v6, 0x18

    if-lt v7, v6, :cond_ae

    add-int/lit8 v8, v5, -0x19

    goto :goto_2f

    :cond_ae
    const/4 v8, 0x0

    :goto_2f
    if-lt v7, v8, :cond_b1

    .line 331
    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lph/l;

    .line 332
    iget-object v6, v5, Lph/l;->d:Lqh/f0;

    .line 333
    iget-object v6, v6, Lqh/f0;->c:Ljava/lang/String;

    .line 334
    sget-object v9, Lqh/b0;->k:[Ljava/lang/String;

    invoke-static {v6, v9}, Loh/f;->d(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v6

    iget-object v9, v5, Lph/l;->d:Lqh/f0;

    if-eqz v6, :cond_af

    .line 335
    iget-object v1, v9, Lqh/f0;->c:Ljava/lang/String;

    .line 336
    invoke-virtual {v2, v1}, Lqh/c;->I(Ljava/lang/String;)Z

    goto :goto_30

    .line 337
    :cond_af
    invoke-static {v5}, Lqh/c;->A(Lph/l;)Z

    move-result v5

    if-eqz v5, :cond_b0

    .line 338
    iget-object v5, v9, Lqh/f0;->c:Ljava/lang/String;

    .line 339
    invoke-static {v5, v4}, Loh/f;->d(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_b0

    goto :goto_30

    :cond_b0
    const/4 v5, -0x1

    add-int/2addr v7, v5

    goto :goto_2f

    .line 340
    :cond_b1
    :goto_30
    invoke-virtual {v2, v13}, Lqh/c;->o(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b2

    .line 341
    invoke-virtual {v2, v13}, Lqh/c;->I(Ljava/lang/String;)Z

    .line 342
    :cond_b2
    invoke-virtual {v2, v3}, Lqh/c;->w(Lqh/o0;)Lph/l;

    goto/16 :goto_2a

    :pswitch_1e
    move-object v3, v0

    const/4 v1, 0x0

    move-object/from16 v0, p0

    .line 343
    iget-object v4, v2, Lqh/c;->q:Ljava/util/ArrayList;

    .line 344
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    :goto_31
    const-string v5, "a"

    if-ltz v4, :cond_b5

    .line 345
    iget-object v6, v2, Lqh/c;->q:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lph/l;

    if-nez v6, :cond_b3

    goto :goto_32

    .line 346
    :cond_b3
    invoke-virtual {v6, v5}, Lph/q;->l(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_b4

    move-object v13, v6

    goto :goto_33

    :cond_b4
    const/4 v6, -0x1

    add-int/2addr v4, v6

    goto :goto_31

    :cond_b5
    :goto_32
    move-object v13, v1

    :goto_33
    if-eqz v13, :cond_b6

    .line 347
    invoke-virtual {v2, v0}, Lqh/c;->k(Lqh/c0;)V

    .line 348
    invoke-virtual {v2, v5}, Lqh/c;->I(Ljava/lang/String;)Z

    .line 349
    invoke-virtual {v2, v5}, Lqh/c;->n(Ljava/lang/String;)Lph/l;

    move-result-object v1

    if-eqz v1, :cond_b6

    .line 350
    invoke-virtual {v2, v1}, Lqh/c;->M(Lph/l;)V

    .line 351
    invoke-virtual {v2, v1}, Lqh/c;->N(Lph/l;)V

    .line 352
    :cond_b6
    invoke-virtual/range {p2 .. p2}, Lqh/c;->L()V

    .line 353
    invoke-virtual {v2, v3}, Lqh/c;->w(Lqh/o0;)Lph/l;

    move-result-object v1

    .line 354
    invoke-virtual {v2, v1}, Lqh/c;->b(Lph/l;)V

    .line 355
    iget-object v2, v2, Lqh/c;->q:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2a

    :pswitch_1f
    move-object v3, v0

    move-object/from16 v0, p0

    .line 356
    invoke-virtual/range {p2 .. p2}, Lqh/c;->L()V

    .line 357
    invoke-virtual {v2, v3}, Lqh/c;->w(Lqh/o0;)Lph/l;

    move-result-object v1

    .line 358
    invoke-virtual {v2, v1}, Lqh/c;->b(Lph/l;)V

    .line 359
    iget-object v2, v2, Lqh/c;->q:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2a

    :pswitch_20
    move-object v3, v0

    move-object/from16 v1, v23

    move-object/from16 v0, p0

    .line 360
    invoke-virtual/range {p2 .. p2}, Lqh/c;->L()V

    .line 361
    invoke-virtual {v2, v3}, Lqh/c;->w(Lqh/o0;)Lph/l;

    const/4 v4, 0x0

    .line 362
    iput-boolean v4, v2, Lqh/c;->u:Z

    .line 363
    iget-boolean v3, v3, Lqh/p0;->f:Z

    if-eqz v3, :cond_b7

    goto/16 :goto_2a

    .line 364
    :cond_b7
    iget-object v3, v2, Lqh/c;->l:Lqh/c0;

    .line 365
    invoke-virtual {v3, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b9

    sget-object v1, Lqh/c0;->k:Lqh/e;

    invoke-virtual {v3, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b9

    sget-object v1, Lqh/c0;->m:Lqh/g;

    invoke-virtual {v3, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b9

    sget-object v1, Lqh/c0;->n:Lqh/h;

    invoke-virtual {v3, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b9

    sget-object v1, Lqh/c0;->p:Lqh/i;

    invoke-virtual {v3, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b8

    goto :goto_34

    .line 366
    :cond_b8
    sget-object v1, Lqh/c0;->q:Lqh/j;

    .line 367
    iput-object v1, v2, Lqh/c;->l:Lqh/c0;

    goto/16 :goto_2a

    .line 368
    :cond_b9
    :goto_34
    sget-object v1, Lqh/c0;->r:Lqh/k;

    .line 369
    iput-object v1, v2, Lqh/c;->l:Lqh/c0;

    goto/16 :goto_2a

    :pswitch_21
    move-object v3, v0

    const/4 v1, 0x0

    move-object/from16 v0, p0

    .line 370
    iput-boolean v1, v2, Lqh/c;->u:Z

    .line 371
    invoke-virtual {v2, v3}, Lqh/c;->Q(Lqh/o0;)Lqh/f0;

    move-result-object v1

    invoke-virtual {v1}, Lqh/f0;->f()Lqh/k3;

    move-result-object v1

    invoke-static {v3, v2, v1}, Lqh/c0;->b(Lqh/o0;Lqh/c;Lqh/k3;)V

    goto/16 :goto_2a

    :pswitch_22
    move-object v3, v0

    move-object/from16 v0, p0

    .line 372
    const-string v1, "option"

    invoke-virtual {v2, v1}, Lqh/c;->i(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_ba

    .line 373
    invoke-virtual {v2, v1}, Lqh/c;->I(Ljava/lang/String;)Z

    .line 374
    :cond_ba
    invoke-virtual/range {p2 .. p2}, Lqh/c;->L()V

    .line 375
    invoke-virtual {v2, v3}, Lqh/c;->w(Lqh/o0;)Lph/l;

    goto/16 :goto_2a

    :pswitch_23
    move-object v3, v0

    move-object/from16 v0, p0

    .line 376
    invoke-virtual/range {p2 .. p2}, Lqh/c;->L()V

    .line 377
    invoke-virtual {v2, v3}, Lqh/c;->x(Lqh/o0;)Lph/l;

    const/4 v1, 0x0

    .line 378
    iput-boolean v1, v2, Lqh/c;->u:Z

    goto/16 :goto_2a

    :pswitch_24
    move-object v3, v0

    const/4 v1, 0x0

    move-object/from16 v0, p0

    .line 379
    iput-boolean v1, v2, Lqh/c;->u:Z

    .line 380
    invoke-virtual {v2, v3}, Lqh/c;->Q(Lqh/o0;)Lqh/f0;

    move-result-object v1

    invoke-virtual {v1}, Lqh/f0;->f()Lqh/k3;

    move-result-object v1

    invoke-static {v3, v2, v1}, Lqh/c0;->b(Lqh/o0;Lqh/c;Lqh/k3;)V

    goto/16 :goto_2a

    :pswitch_25
    move-object v3, v0

    move-object/from16 v0, p0

    .line 381
    const-string v1, "button"

    invoke-virtual {v2, v1}, Lqh/c;->o(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_bb

    .line 382
    invoke-virtual {v2, v0}, Lqh/c;->k(Lqh/c0;)V

    .line 383
    invoke-virtual {v2, v1}, Lqh/c;->I(Ljava/lang/String;)Z

    .line 384
    invoke-virtual {v2, v3}, Lqh/c;->H(Lqh/r0;)Z

    goto/16 :goto_2a

    .line 385
    :cond_bb
    invoke-virtual/range {p2 .. p2}, Lqh/c;->L()V

    .line 386
    invoke-virtual {v2, v3}, Lqh/c;->w(Lqh/o0;)Lph/l;

    const/4 v1, 0x0

    .line 387
    iput-boolean v1, v2, Lqh/c;->u:Z

    goto/16 :goto_2a

    :pswitch_26
    move-object v3, v0

    move-object/from16 v0, p0

    .line 388
    invoke-virtual {v2, v0}, Lqh/c;->k(Lqh/c0;)V

    .line 389
    iget-object v1, v2, Lqh/c;->e:Ljava/util/ArrayList;

    .line 390
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x1

    if-eq v4, v5, :cond_97

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v6, 0x2

    if-le v4, v6, :cond_bc

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lph/l;

    invoke-virtual {v4, v15}, Lph/q;->l(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_bc

    goto/16 :goto_2b

    .line 391
    :cond_bc
    iget-boolean v4, v2, Lqh/c;->u:Z

    if-nez v4, :cond_bd

    goto/16 :goto_2c

    .line 392
    :cond_bd
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lph/l;

    .line 393
    iget-object v5, v4, Lph/q;->a:Lph/l;

    if-eqz v5, :cond_be

    if-eqz v5, :cond_be

    .line 394
    invoke-virtual {v5, v4}, Lph/q;->x(Lph/q;)V

    .line 395
    :cond_be
    :goto_35
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x1

    if-le v4, v5, :cond_bf

    .line 396
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    sub-int/2addr v4, v5

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_35

    .line 397
    :cond_bf
    invoke-virtual {v2, v3}, Lqh/c;->w(Lqh/o0;)Lph/l;

    .line 398
    sget-object v1, Lqh/c0;->v:Lqh/o;

    .line 399
    iput-object v1, v2, Lqh/c;->l:Lqh/c0;

    :goto_36
    const/4 v8, 0x1

    :goto_37
    return v8

    .line 400
    :cond_c0
    invoke-virtual {v2, v0}, Lqh/c;->k(Lqh/c0;)V

    goto/16 :goto_1

    :sswitch_data_0
    .sparse-switch
        -0x4ec53386 -> :sswitch_10
        0x70 -> :sswitch_f
        0xc50 -> :sswitch_e
        0xc80 -> :sswitch_d
        0xc90 -> :sswitch_c
        0xcc9 -> :sswitch_b
        0xcca -> :sswitch_a
        0xccb -> :sswitch_9
        0xccc -> :sswitch_8
        0xccd -> :sswitch_7
        0xcce -> :sswitch_6
        0xd7d -> :sswitch_5
        0x2e39a2 -> :sswitch_4
        0x300cc4 -> :sswitch_3
        0x3107ab -> :sswitch_2
        0x35f74a -> :sswitch_1
        0x6f67a51c -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_6
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :sswitch_data_1
    .sparse-switch
        -0x620c002b -> :sswitch_47
        -0x521dd8ce -> :sswitch_46
        -0x47007d5c -> :sswitch_45
        -0x43a19f6f -> :sswitch_44
        -0x3c35778b -> :sswitch_43
        -0x3bcc48c6 -> :sswitch_42
        -0x3600cb04 -> :sswitch_41
        -0x352aa04e -> :sswitch_40
        -0x352a8969 -> :sswitch_3f
        -0x4d08054 -> :sswitch_3e
        0x61 -> :sswitch_3d
        0x62 -> :sswitch_3c
        0x69 -> :sswitch_3b
        0x73 -> :sswitch_3a
        0x75 -> :sswitch_39
        0xc50 -> :sswitch_38
        0xc80 -> :sswitch_37
        0xc90 -> :sswitch_36
        0xca8 -> :sswitch_35
        0xcc9 -> :sswitch_34
        0xcca -> :sswitch_33
        0xccb -> :sswitch_32
        0xccc -> :sswitch_31
        0xccd -> :sswitch_30
        0xcce -> :sswitch_2f
        0xd0a -> :sswitch_2e
        0xd7d -> :sswitch_2d
        0xe30 -> :sswitch_2c
        0xe3e -> :sswitch_2b
        0xe42 -> :sswitch_2a
        0xe80 -> :sswitch_29
        0x17d00 -> :sswitch_28
        0x197c3 -> :sswitch_27
        0x1b2a3 -> :sswitch_26
        0x1ba61 -> :sswitch_25
        0x1be64 -> :sswitch_24
        0x1cb07 -> :sswitch_23
        0x1d01b -> :sswitch_22
        0x2dd08d -> :sswitch_21
        0x2e39a2 -> :sswitch_20
        0x2eaded -> :sswitch_1f
        0x300c4f -> :sswitch_1e
        0x300cc4 -> :sswitch_1d
        0x3107ab -> :sswitch_1c
        0x330708 -> :sswitch_1b
        0x33add1 -> :sswitch_1a
        0x35f74a -> :sswitch_19
        0x5c24ed9 -> :sswitch_18
        0x5faa95b -> :sswitch_17
        0x5fb57ca -> :sswitch_16
        0x6879507 -> :sswitch_15
        0x6903bce -> :sswitch_14
        0xad8ba84 -> :sswitch_13
        0x759d29f7 -> :sswitch_12
        0x7e19b1b8 -> :sswitch_11
    .end sparse-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1f
        :pswitch_22
        :pswitch_1e
        :pswitch_1f
        :pswitch_1f
        :pswitch_1f
        :pswitch_1f
        :pswitch_23
        :pswitch_1d
        :pswitch_1d
        :pswitch_1f
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_18
        :pswitch_1f
        :pswitch_1f
        :pswitch_23
        :pswitch_17
        :pswitch_19
        :pswitch_16
        :pswitch_23
        :pswitch_15
        :pswitch_23
        :pswitch_14
        :pswitch_1f
        :pswitch_1f
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_23
        :pswitch_e
        :pswitch_d
        :pswitch_1f
        :pswitch_c
        :pswitch_17
        :pswitch_b
        :pswitch_a
    .end packed-switch
.end method

.method public final f(Lqh/r0;Lqh/c;)Z
    .locals 6

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    check-cast p1, Lqh/n0;

    .line 5
    .line 6
    iget-object p1, p1, Lqh/p0;->e:Ljava/lang/String;

    .line 7
    .line 8
    iget-object v0, p2, Lqh/c;->e:Ljava/util/ArrayList;

    .line 9
    .line 10
    invoke-virtual {p2, p1}, Lqh/c;->n(Ljava/lang/String;)Lph/l;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    const/4 v2, 0x0

    .line 15
    if-nez v1, :cond_0

    .line 16
    .line 17
    invoke-virtual {p2, p0}, Lqh/c;->k(Lqh/c0;)V

    .line 18
    .line 19
    .line 20
    return v2

    .line 21
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    const/4 v3, 0x1

    .line 26
    sub-int/2addr v1, v3

    .line 27
    :goto_0
    if-ltz v1, :cond_4

    .line 28
    .line 29
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v4

    .line 33
    check-cast v4, Lph/l;

    .line 34
    .line 35
    invoke-virtual {v4, p1}, Lph/q;->l(Ljava/lang/String;)Z

    .line 36
    .line 37
    .line 38
    move-result v5

    .line 39
    if-eqz v5, :cond_2

    .line 40
    .line 41
    invoke-virtual {p2, p1}, Lqh/c;->l(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {p2, p1}, Lqh/c;->i(Ljava/lang/String;)Z

    .line 45
    .line 46
    .line 47
    move-result v0

    .line 48
    if-nez v0, :cond_1

    .line 49
    .line 50
    invoke-virtual {p2, p0}, Lqh/c;->k(Lqh/c0;)V

    .line 51
    .line 52
    .line 53
    :cond_1
    invoke-virtual {p2, p1}, Lqh/c;->F(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    goto :goto_1

    .line 57
    :cond_2
    invoke-static {v4}, Lqh/c;->A(Lph/l;)Z

    .line 58
    .line 59
    .line 60
    move-result v4

    .line 61
    if-eqz v4, :cond_3

    .line 62
    .line 63
    invoke-virtual {p2, p0}, Lqh/c;->k(Lqh/c0;)V

    .line 64
    .line 65
    .line 66
    return v2

    .line 67
    :cond_3
    add-int/lit8 v1, v1, -0x1

    .line 68
    .line 69
    goto :goto_0

    .line 70
    :cond_4
    :goto_1
    return v3
.end method
