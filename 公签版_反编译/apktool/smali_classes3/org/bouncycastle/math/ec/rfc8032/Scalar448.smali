.class abstract Lorg/bouncycastle/math/ec/rfc8032/Scalar448;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final L:[I

.field private static final L4_0:I = 0x29eec34

.field private static final L4_1:I = 0x1cf5b55

.field private static final L4_2:I = 0x9c2ab72

.field private static final L4_3:I = 0xf635c8e

.field private static final L4_4:I = 0x5bf7a4c

.field private static final L4_5:I = 0xd944a72

.field private static final L4_6:I = 0x8eec492

.field private static final L4_7:I = 0x20cd7705

.field private static final LSq:[I

.field private static final L_0:I = 0x4a7bb0d

.field private static final L_1:I = 0x873d6d5

.field private static final L_2:I = 0xa70aadc

.field private static final L_3:I = 0x3d8d723

.field private static final L_4:I = 0x96fde93

.field private static final L_5:I = 0xb65129c

.field private static final L_6:I = 0x63bb124

.field private static final L_7:I = 0x8335dc1

.field private static final M26L:J = 0x3ffffffL

.field private static final M28L:J = 0xfffffffL

.field private static final M32L:J = 0xffffffffL

.field private static final SCALAR_BYTES:I = 0x39

.field static final SIZE:I = 0xe

.field private static final TARGET_LENGTH:I = 0x1bf


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0xe

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lorg/bouncycastle/math/ec/rfc8032/Scalar448;->L:[I

    const/16 v0, 0x1c

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lorg/bouncycastle/math/ec/rfc8032/Scalar448;->LSq:[I

    return-void

    nop

    :array_0
    .array-data 4
        -0x54a7bb0d
        0x2378c292
        -0x723a70ab
        0x216cc272
        -0x5129c970
        -0x3bb124b7
        0x7cca23e9
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        0x3fffffff    # 1.9999999f
    .end array-data

    :array_1
    .array-data 4
        0x1ba1fea9
        -0x3e520448
        0x49e0a8b2    # 1840406.2f
        -0x46e40ac9
        -0x189b27eb
        0x4525492b
        -0x5d478e93    # -4.9993394E-18f
        0x4ae17cf6    # 7388795.0f
        -0x45c3b83c
        -0xe5633ec
        0x7e4d070a
        -0x6dfad435
        -0x607dc48e
        -0x3cbfd56d
        0x55ac2279
        -0x6e439eb7
        0x46e2c7aa
        0x10b66139
        -0x2894e4b8
        -0x1dd8925c
        -0x419aee0c
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        0xfffffff
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkVar([B[I)Z
    .locals 1

    const/16 v0, 0x38

    aget-byte v0, p0, v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-static {p0, p1}, Lorg/bouncycastle/math/ec/rfc8032/Scalar448;->decode([B[I)V

    const/16 p0, 0xe

    sget-object v0, Lorg/bouncycastle/math/ec/rfc8032/Scalar448;->L:[I

    invoke-static {p0, p1, v0}, Lorg/bouncycastle/math/raw/Nat;->gte(I[I[I)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public static decode([B[I)V
    .locals 2

    const/4 v0, 0x0

    const/16 v1, 0xe

    invoke-static {p0, v0, p1, v0, v1}, Lorg/bouncycastle/math/ec/rfc8032/Codec;->decode32([BI[III)V

    return-void
.end method

.method public static getOrderWnafVar(I[B)V
    .locals 1

    sget-object v0, Lorg/bouncycastle/math/ec/rfc8032/Scalar448;->L:[I

    invoke-static {v0, p0, p1}, Lorg/bouncycastle/math/ec/rfc8032/Wnaf;->getSignedVar([II[B)V

    return-void
.end method

.method public static multiply225Var([I[I[I)V
    .locals 10

    const/16 v0, 0x16

    new-array v9, v0, [I

    const/16 v6, 0xe

    const/4 v8, 0x0

    const/4 v2, 0x0

    const/16 v3, 0x8

    const/4 v5, 0x0

    move-object v1, p1

    move-object v4, p0

    move-object v7, v9

    invoke-static/range {v1 .. v8}, Lorg/bouncycastle/math/raw/Nat;->mul([III[III[II)V

    const/4 v1, 0x7

    aget p1, p1, v1

    const/4 v1, 0x0

    if-gez p1, :cond_0

    sget-object p1, Lorg/bouncycastle/math/ec/rfc8032/Scalar448;->L:[I

    const/16 v2, 0xe

    const/16 v3, 0x8

    invoke-static {v2, p1, v1, v9, v3}, Lorg/bouncycastle/math/raw/Nat;->addTo(I[II[II)I

    invoke-static {v2, p0, v1, v9, v3}, Lorg/bouncycastle/math/raw/Nat;->subFrom(I[II[II)I

    :cond_0
    const/16 p0, 0x58

    new-array p0, p0, [B

    invoke-static {v9, v1, v0, p0, v1}, Lorg/bouncycastle/math/ec/rfc8032/Codec;->encode32([III[BI)V

    invoke-static {p0}, Lorg/bouncycastle/math/ec/rfc8032/Scalar448;->reduce704([B)[B

    move-result-object p0

    invoke-static {p0, p2}, Lorg/bouncycastle/math/ec/rfc8032/Scalar448;->decode([B[I)V

    return-void
.end method

.method public static reduce704([B)[B
    .locals 80

    move-object/from16 v0, p0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/bouncycastle/math/ec/rfc8032/Codec;->decode32([BI)I

    move-result v2

    int-to-long v2, v2

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    const/4 v6, 0x4

    invoke-static {v0, v6}, Lorg/bouncycastle/math/ec/rfc8032/Codec;->decode24([BI)I

    move-result v7

    shl-int/2addr v7, v6

    int-to-long v7, v7

    and-long/2addr v7, v4

    const/4 v9, 0x7

    invoke-static {v0, v9}, Lorg/bouncycastle/math/ec/rfc8032/Codec;->decode32([BI)I

    move-result v10

    int-to-long v10, v10

    and-long/2addr v10, v4

    const/16 v12, 0xb

    invoke-static {v0, v12}, Lorg/bouncycastle/math/ec/rfc8032/Codec;->decode24([BI)I

    move-result v12

    shl-int/2addr v12, v6

    int-to-long v12, v12

    and-long/2addr v12, v4

    const/16 v14, 0xe

    invoke-static {v0, v14}, Lorg/bouncycastle/math/ec/rfc8032/Codec;->decode32([BI)I

    move-result v15

    int-to-long v14, v15

    and-long/2addr v14, v4

    const/16 v9, 0x12

    invoke-static {v0, v9}, Lorg/bouncycastle/math/ec/rfc8032/Codec;->decode24([BI)I

    move-result v9

    shl-int/2addr v9, v6

    move-wide/from16 v16, v2

    int-to-long v1, v9

    and-long/2addr v1, v4

    const/16 v3, 0x15

    invoke-static {v0, v3}, Lorg/bouncycastle/math/ec/rfc8032/Codec;->decode32([BI)I

    move-result v9

    move-wide/from16 v19, v7

    int-to-long v6, v9

    and-long/2addr v6, v4

    const/16 v8, 0x19

    invoke-static {v0, v8}, Lorg/bouncycastle/math/ec/rfc8032/Codec;->decode24([BI)I

    move-result v8

    const/4 v9, 0x4

    shl-int/2addr v8, v9

    move-wide/from16 v21, v10

    int-to-long v9, v8

    and-long/2addr v9, v4

    const/16 v8, 0x1c

    invoke-static {v0, v8}, Lorg/bouncycastle/math/ec/rfc8032/Codec;->decode32([BI)I

    move-result v11

    move-wide/from16 v23, v9

    int-to-long v8, v11

    and-long/2addr v8, v4

    const/16 v11, 0x20

    invoke-static {v0, v11}, Lorg/bouncycastle/math/ec/rfc8032/Codec;->decode24([BI)I

    move-result v11

    const/16 v18, 0x4

    shl-int/lit8 v11, v11, 0x4

    int-to-long v10, v11

    and-long v26, v10, v4

    const/16 v11, 0x23

    invoke-static {v0, v11}, Lorg/bouncycastle/math/ec/rfc8032/Codec;->decode32([BI)I

    move-result v10

    move-wide/from16 v28, v12

    int-to-long v11, v10

    and-long/2addr v11, v4

    const/16 v10, 0x27

    invoke-static {v0, v10}, Lorg/bouncycastle/math/ec/rfc8032/Codec;->decode24([BI)I

    move-result v10

    shl-int/lit8 v10, v10, 0x4

    move-wide/from16 v30, v14

    int-to-long v13, v10

    and-long/2addr v13, v4

    const/16 v10, 0x2a

    invoke-static {v0, v10}, Lorg/bouncycastle/math/ec/rfc8032/Codec;->decode32([BI)I

    move-result v15

    move-wide/from16 v32, v11

    int-to-long v10, v15

    and-long v34, v10, v4

    const/16 v10, 0x2e

    invoke-static {v0, v10}, Lorg/bouncycastle/math/ec/rfc8032/Codec;->decode24([BI)I

    move-result v10

    shl-int/lit8 v10, v10, 0x4

    int-to-long v10, v10

    and-long v36, v10, v4

    const/16 v11, 0x31

    invoke-static {v0, v11}, Lorg/bouncycastle/math/ec/rfc8032/Codec;->decode32([BI)I

    move-result v10

    int-to-long v11, v10

    and-long/2addr v11, v4

    const/16 v10, 0x35

    invoke-static {v0, v10}, Lorg/bouncycastle/math/ec/rfc8032/Codec;->decode24([BI)I

    move-result v10

    shl-int/lit8 v10, v10, 0x4

    move-wide/from16 v38, v1

    int-to-long v1, v10

    and-long/2addr v1, v4

    const/16 v10, 0x38

    invoke-static {v0, v10}, Lorg/bouncycastle/math/ec/rfc8032/Codec;->decode32([BI)I

    move-result v10

    move-wide/from16 v40, v6

    int-to-long v6, v10

    and-long/2addr v6, v4

    const/16 v10, 0x3c

    invoke-static {v0, v10}, Lorg/bouncycastle/math/ec/rfc8032/Codec;->decode24([BI)I

    move-result v10

    shl-int/lit8 v10, v10, 0x4

    move-wide/from16 v42, v8

    int-to-long v8, v10

    and-long v44, v8, v4

    const/16 v10, 0x3f

    invoke-static {v0, v10}, Lorg/bouncycastle/math/ec/rfc8032/Codec;->decode32([BI)I

    move-result v10

    move-wide/from16 v46, v8

    int-to-long v8, v10

    and-long/2addr v8, v4

    const/16 v10, 0x43

    invoke-static {v0, v10}, Lorg/bouncycastle/math/ec/rfc8032/Codec;->decode24([BI)I

    move-result v10

    shl-int/lit8 v10, v10, 0x4

    move-wide/from16 v48, v8

    int-to-long v8, v10

    and-long/2addr v8, v4

    const/16 v10, 0x46

    invoke-static {v0, v10}, Lorg/bouncycastle/math/ec/rfc8032/Codec;->decode32([BI)I

    move-result v10

    move-wide/from16 v50, v8

    int-to-long v8, v10

    and-long v52, v8, v4

    const/16 v10, 0x4a

    invoke-static {v0, v10}, Lorg/bouncycastle/math/ec/rfc8032/Codec;->decode24([BI)I

    move-result v10

    shl-int/lit8 v10, v10, 0x4

    move-wide/from16 v54, v8

    int-to-long v8, v10

    and-long/2addr v8, v4

    const/16 v10, 0x4d

    invoke-static {v0, v10}, Lorg/bouncycastle/math/ec/rfc8032/Codec;->decode32([BI)I

    move-result v10

    move-wide/from16 v56, v8

    int-to-long v8, v10

    and-long/2addr v8, v4

    const/16 v10, 0x51

    invoke-static {v0, v10}, Lorg/bouncycastle/math/ec/rfc8032/Codec;->decode24([BI)I

    move-result v10

    shl-int/lit8 v10, v10, 0x4

    move-wide/from16 v58, v8

    int-to-long v8, v10

    and-long/2addr v8, v4

    const/16 v10, 0x54

    invoke-static {v0, v10}, Lorg/bouncycastle/math/ec/rfc8032/Codec;->decode32([BI)I

    move-result v0

    move-wide/from16 v60, v8

    int-to-long v8, v0

    and-long/2addr v4, v8

    const/16 v0, 0x1c

    ushr-long/2addr v4, v0

    const/16 v0, 0x2a

    const-wide/32 v62, 0xfffffff

    and-long v8, v8, v62

    const-wide/32 v64, 0x29eec34

    mul-long v66, v4, v64

    add-long v66, v66, v26

    const-wide/32 v25, 0x1cf5b55

    mul-long v68, v4, v25

    add-long v68, v68, v32

    const-wide/32 v32, 0x9c2ab72

    mul-long v70, v4, v32

    add-long v70, v70, v13

    const-wide/32 v13, 0xf635c8e

    mul-long v72, v4, v13

    add-long v72, v72, v34

    const-wide/32 v34, 0x5bf7a4c

    mul-long v74, v4, v34

    add-long v74, v74, v36

    const-wide/32 v36, 0xd944a72

    mul-long v76, v4, v36

    add-long v76, v76, v11

    const-wide/32 v11, 0x8eec492

    mul-long v78, v4, v11

    add-long v78, v78, v1

    const-wide/32 v1, 0x20cd7705

    mul-long v4, v4, v1

    add-long/2addr v4, v6

    const/16 v6, 0x1c

    ushr-long v52, v52, v6

    add-long v52, v56, v52

    and-long v54, v54, v62

    ushr-long v56, v52, v6

    add-long v56, v58, v56

    and-long v52, v52, v62

    ushr-long v58, v56, v6

    add-long v58, v60, v58

    and-long v56, v56, v62

    ushr-long v60, v58, v6

    add-long v8, v8, v60

    and-long v6, v58, v62

    mul-long v58, v8, v64

    add-long v58, v58, v42

    mul-long v42, v8, v25

    add-long v42, v42, v66

    mul-long v60, v8, v32

    add-long v60, v60, v68

    mul-long v66, v8, v13

    add-long v66, v66, v70

    mul-long v68, v8, v34

    add-long v68, v68, v72

    mul-long v70, v8, v36

    add-long v70, v70, v74

    mul-long v72, v8, v11

    add-long v72, v72, v76

    mul-long v8, v8, v1

    add-long v8, v8, v78

    mul-long v74, v6, v64

    add-long v74, v74, v23

    mul-long v23, v6, v25

    add-long v23, v23, v58

    mul-long v58, v6, v32

    add-long v58, v58, v42

    mul-long v42, v6, v13

    add-long v42, v42, v60

    mul-long v60, v6, v34

    add-long v60, v60, v66

    mul-long v66, v6, v36

    add-long v66, v66, v68

    mul-long v68, v6, v11

    add-long v68, v68, v70

    mul-long v6, v6, v1

    add-long v6, v6, v72

    mul-long v70, v56, v64

    add-long v70, v70, v40

    mul-long v40, v56, v25

    add-long v40, v40, v74

    mul-long v72, v56, v32

    add-long v72, v72, v23

    mul-long v23, v56, v13

    add-long v23, v23, v58

    mul-long v58, v56, v34

    add-long v58, v58, v42

    mul-long v42, v56, v36

    add-long v42, v42, v60

    mul-long v60, v56, v11

    add-long v60, v60, v66

    mul-long v56, v56, v1

    add-long v56, v56, v68

    const/16 v10, 0x1c

    ushr-long v44, v44, v10

    add-long v44, v48, v44

    and-long v46, v46, v62

    ushr-long v48, v44, v10

    add-long v48, v50, v48

    and-long v44, v44, v62

    ushr-long v50, v48, v10

    add-long v54, v54, v50

    and-long v48, v48, v62

    ushr-long v50, v54, v10

    add-long v52, v52, v50

    and-long v50, v54, v62

    mul-long v54, v52, v64

    add-long v54, v54, v38

    mul-long v38, v52, v25

    add-long v38, v38, v70

    mul-long v66, v52, v32

    add-long v66, v66, v40

    mul-long v40, v52, v13

    add-long v40, v40, v72

    mul-long v68, v52, v34

    add-long v68, v68, v23

    mul-long v23, v52, v36

    add-long v23, v23, v58

    mul-long v58, v52, v11

    add-long v58, v58, v42

    mul-long v52, v52, v1

    add-long v52, v52, v60

    mul-long v42, v50, v64

    add-long v42, v42, v30

    mul-long v30, v50, v25

    add-long v30, v30, v54

    mul-long v54, v50, v32

    add-long v54, v54, v38

    mul-long v38, v50, v13

    add-long v38, v38, v66

    mul-long v60, v50, v34

    add-long v60, v60, v40

    mul-long v40, v50, v36

    add-long v40, v40, v68

    mul-long v66, v50, v11

    add-long v66, v66, v23

    mul-long v50, v50, v1

    add-long v50, v50, v58

    mul-long v23, v48, v64

    add-long v23, v23, v28

    mul-long v27, v48, v25

    add-long v27, v27, v42

    mul-long v42, v48, v32

    add-long v42, v42, v30

    mul-long v29, v48, v13

    add-long v29, v29, v54

    mul-long v54, v48, v34

    add-long v54, v54, v38

    mul-long v38, v48, v36

    add-long v38, v38, v60

    mul-long v58, v48, v11

    add-long v58, v58, v40

    mul-long v48, v48, v1

    add-long v48, v48, v66

    const/16 v10, 0x1c

    ushr-long v40, v6, v10

    add-long v8, v8, v40

    and-long v6, v6, v62

    ushr-long v40, v8, v10

    add-long v4, v4, v40

    and-long v40, v8, v62

    ushr-long v60, v4, v10

    add-long v46, v46, v60

    and-long v4, v4, v62

    ushr-long v60, v46, v10

    add-long v44, v44, v60

    and-long v46, v46, v62

    mul-long v60, v44, v64

    add-long v60, v60, v21

    mul-long v21, v44, v25

    add-long v21, v21, v23

    mul-long v23, v44, v32

    add-long v23, v23, v27

    mul-long v27, v44, v13

    add-long v27, v27, v42

    mul-long v42, v44, v34

    add-long v42, v42, v29

    mul-long v29, v44, v36

    add-long v29, v29, v54

    mul-long v54, v44, v11

    add-long v54, v54, v38

    mul-long v44, v44, v1

    add-long v44, v44, v58

    mul-long v64, v64, v46

    add-long v64, v64, v19

    mul-long v25, v25, v46

    add-long v25, v25, v60

    mul-long v32, v32, v46

    add-long v32, v32, v21

    mul-long v13, v13, v46

    add-long v13, v13, v23

    mul-long v34, v34, v46

    add-long v34, v34, v27

    mul-long v36, v36, v46

    add-long v36, v36, v42

    mul-long v11, v11, v46

    add-long v11, v11, v29

    mul-long v46, v46, v1

    add-long v46, v46, v54

    const-wide/16 v1, 0x4

    mul-long v4, v4, v1

    const/16 v1, 0x1a

    ushr-long v18, v40, v1

    add-long v4, v4, v18

    const-wide/32 v18, 0x3ffffff

    and-long v8, v8, v18

    const-wide/16 v20, 0x1

    add-long v4, v4, v20

    const-wide/32 v22, 0x4a7bb0d

    mul-long v22, v22, v4

    add-long v22, v22, v16

    const-wide/32 v16, 0x873d6d5

    mul-long v16, v16, v4

    add-long v16, v16, v64

    const-wide/32 v27, 0xa70aadc

    mul-long v27, v27, v4

    add-long v27, v27, v25

    const-wide/32 v24, 0x3d8d723

    mul-long v24, v24, v4

    add-long v24, v24, v32

    const-wide/32 v29, 0x96fde93

    mul-long v29, v29, v4

    add-long v29, v29, v13

    const-wide/32 v13, 0xb65129c

    mul-long v13, v13, v4

    add-long v13, v13, v34

    const-wide/32 v32, 0x63bb124

    mul-long v32, v32, v4

    add-long v32, v32, v36

    const-wide/32 v34, 0x8335dc1

    mul-long v4, v4, v34

    add-long/2addr v4, v11

    const/16 v2, 0x1c

    ushr-long v10, v22, v2

    add-long v16, v16, v10

    and-long v11, v22, v62

    ushr-long v22, v16, v2

    add-long v27, v27, v22

    and-long v16, v16, v62

    ushr-long v22, v27, v2

    add-long v24, v24, v22

    and-long v22, v27, v62

    ushr-long v26, v24, v2

    add-long v29, v29, v26

    and-long v24, v24, v62

    ushr-long v26, v29, v2

    add-long v13, v13, v26

    and-long v26, v29, v62

    ushr-long v28, v13, v2

    add-long v32, v32, v28

    and-long v13, v13, v62

    ushr-long v28, v32, v2

    add-long v4, v4, v28

    and-long v28, v32, v62

    ushr-long v30, v4, v2

    add-long v46, v46, v30

    and-long v4, v4, v62

    ushr-long v30, v46, v2

    add-long v44, v44, v30

    and-long v30, v46, v62

    ushr-long v32, v44, v2

    add-long v48, v48, v32

    and-long v32, v44, v62

    ushr-long v34, v48, v2

    add-long v50, v50, v34

    and-long v34, v48, v62

    ushr-long v36, v50, v2

    add-long v52, v52, v36

    and-long v36, v50, v62

    ushr-long v38, v52, v2

    add-long v56, v56, v38

    and-long v38, v52, v62

    ushr-long v40, v56, v2

    add-long v6, v6, v40

    and-long v40, v56, v62

    ushr-long v42, v6, v2

    add-long v8, v8, v42

    and-long v6, v6, v62

    ushr-long v1, v8, v1

    and-long v8, v8, v18

    sub-long v1, v1, v20

    const-wide/32 v18, 0x4a7bb0d

    and-long v18, v1, v18

    sub-long v11, v11, v18

    const-wide/32 v18, 0x873d6d5

    and-long v18, v1, v18

    sub-long v16, v16, v18

    const-wide/32 v18, 0xa70aadc

    and-long v18, v1, v18

    sub-long v22, v22, v18

    const-wide/32 v18, 0x3d8d723

    and-long v18, v1, v18

    sub-long v24, v24, v18

    const-wide/32 v18, 0x96fde93

    and-long v18, v1, v18

    sub-long v26, v26, v18

    const-wide/32 v18, 0xb65129c

    and-long v18, v1, v18

    sub-long v13, v13, v18

    const-wide/32 v18, 0x63bb124

    and-long v18, v1, v18

    sub-long v28, v28, v18

    const-wide/32 v18, 0x8335dc1

    and-long v1, v1, v18

    sub-long/2addr v4, v1

    const/16 v1, 0x1c

    shr-long v18, v11, v1

    add-long v16, v16, v18

    and-long v11, v11, v62

    shr-long v18, v16, v1

    add-long v22, v22, v18

    and-long v16, v16, v62

    shr-long v18, v22, v1

    add-long v24, v24, v18

    and-long v18, v22, v62

    shr-long v20, v24, v1

    add-long v26, v26, v20

    and-long v20, v24, v62

    shr-long v22, v26, v1

    add-long v13, v13, v22

    and-long v22, v26, v62

    shr-long v24, v13, v1

    add-long v28, v28, v24

    and-long v13, v13, v62

    shr-long v24, v28, v1

    add-long v4, v4, v24

    and-long v24, v28, v62

    shr-long v26, v4, v1

    add-long v30, v30, v26

    and-long v4, v4, v62

    shr-long v26, v30, v1

    add-long v32, v32, v26

    and-long v26, v30, v62

    shr-long v28, v32, v1

    add-long v34, v34, v28

    and-long v28, v32, v62

    shr-long v30, v34, v1

    add-long v36, v36, v30

    and-long v30, v34, v62

    shr-long v32, v36, v1

    add-long v38, v38, v32

    and-long v32, v36, v62

    shr-long v34, v38, v1

    add-long v40, v40, v34

    and-long v34, v38, v62

    shr-long v36, v40, v1

    add-long v6, v6, v36

    and-long v36, v40, v62

    shr-long v38, v6, v1

    add-long v8, v8, v38

    and-long v6, v6, v62

    const/16 v2, 0x39

    new-array v2, v2, [B

    shl-long v16, v16, v1

    or-long v11, v11, v16

    const/4 v10, 0x0

    invoke-static {v11, v12, v2, v10}, Lorg/bouncycastle/math/ec/rfc8032/Codec;->encode56(J[BI)V

    shl-long v10, v20, v1

    or-long v10, v18, v10

    const/4 v12, 0x7

    invoke-static {v10, v11, v2, v12}, Lorg/bouncycastle/math/ec/rfc8032/Codec;->encode56(J[BI)V

    shl-long v10, v13, v1

    or-long v10, v22, v10

    const/16 v12, 0xe

    invoke-static {v10, v11, v2, v12}, Lorg/bouncycastle/math/ec/rfc8032/Codec;->encode56(J[BI)V

    shl-long/2addr v4, v1

    or-long v4, v24, v4

    invoke-static {v4, v5, v2, v3}, Lorg/bouncycastle/math/ec/rfc8032/Codec;->encode56(J[BI)V

    shl-long v3, v28, v1

    or-long v3, v26, v3

    invoke-static {v3, v4, v2, v1}, Lorg/bouncycastle/math/ec/rfc8032/Codec;->encode56(J[BI)V

    shl-long v3, v32, v1

    or-long v3, v30, v3

    const/16 v5, 0x23

    invoke-static {v3, v4, v2, v5}, Lorg/bouncycastle/math/ec/rfc8032/Codec;->encode56(J[BI)V

    shl-long v3, v36, v1

    or-long v3, v34, v3

    invoke-static {v3, v4, v2, v0}, Lorg/bouncycastle/math/ec/rfc8032/Codec;->encode56(J[BI)V

    shl-long v0, v8, v1

    or-long/2addr v0, v6

    const/16 v3, 0x31

    invoke-static {v0, v1, v2, v3}, Lorg/bouncycastle/math/ec/rfc8032/Codec;->encode56(J[BI)V

    return-object v2
.end method

.method public static reduce912([B)[B
    .locals 98

    move-object/from16 v0, p0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/bouncycastle/math/ec/rfc8032/Codec;->decode32([BI)I

    move-result v2

    int-to-long v2, v2

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    const/4 v6, 0x4

    invoke-static {v0, v6}, Lorg/bouncycastle/math/ec/rfc8032/Codec;->decode24([BI)I

    move-result v7

    shl-int/2addr v7, v6

    int-to-long v7, v7

    and-long/2addr v7, v4

    const/4 v9, 0x7

    invoke-static {v0, v9}, Lorg/bouncycastle/math/ec/rfc8032/Codec;->decode32([BI)I

    move-result v10

    int-to-long v10, v10

    and-long/2addr v10, v4

    const/16 v12, 0xb

    invoke-static {v0, v12}, Lorg/bouncycastle/math/ec/rfc8032/Codec;->decode24([BI)I

    move-result v12

    shl-int/2addr v12, v6

    int-to-long v12, v12

    and-long/2addr v12, v4

    const/16 v14, 0xe

    invoke-static {v0, v14}, Lorg/bouncycastle/math/ec/rfc8032/Codec;->decode32([BI)I

    move-result v15

    int-to-long v14, v15

    and-long/2addr v14, v4

    const/16 v9, 0x12

    invoke-static {v0, v9}, Lorg/bouncycastle/math/ec/rfc8032/Codec;->decode24([BI)I

    move-result v9

    shl-int/2addr v9, v6

    move-wide/from16 v16, v2

    int-to-long v1, v9

    and-long/2addr v1, v4

    const/16 v3, 0x15

    invoke-static {v0, v3}, Lorg/bouncycastle/math/ec/rfc8032/Codec;->decode32([BI)I

    move-result v9

    move-wide/from16 v19, v7

    int-to-long v6, v9

    and-long/2addr v6, v4

    const/16 v8, 0x19

    invoke-static {v0, v8}, Lorg/bouncycastle/math/ec/rfc8032/Codec;->decode24([BI)I

    move-result v8

    const/4 v9, 0x4

    shl-int/2addr v8, v9

    move-wide/from16 v21, v10

    int-to-long v9, v8

    and-long/2addr v9, v4

    const/16 v8, 0x1c

    invoke-static {v0, v8}, Lorg/bouncycastle/math/ec/rfc8032/Codec;->decode32([BI)I

    move-result v11

    move-wide/from16 v23, v9

    int-to-long v8, v11

    and-long/2addr v8, v4

    const/16 v11, 0x20

    invoke-static {v0, v11}, Lorg/bouncycastle/math/ec/rfc8032/Codec;->decode24([BI)I

    move-result v11

    const/16 v18, 0x4

    shl-int/lit8 v11, v11, 0x4

    int-to-long v10, v11

    and-long v26, v10, v4

    const/16 v11, 0x23

    invoke-static {v0, v11}, Lorg/bouncycastle/math/ec/rfc8032/Codec;->decode32([BI)I

    move-result v10

    move-wide/from16 v28, v12

    int-to-long v11, v10

    and-long/2addr v11, v4

    const/16 v10, 0x27

    invoke-static {v0, v10}, Lorg/bouncycastle/math/ec/rfc8032/Codec;->decode24([BI)I

    move-result v10

    shl-int/lit8 v10, v10, 0x4

    move-wide/from16 v30, v14

    int-to-long v13, v10

    and-long/2addr v13, v4

    const/16 v10, 0x2a

    invoke-static {v0, v10}, Lorg/bouncycastle/math/ec/rfc8032/Codec;->decode32([BI)I

    move-result v15

    move-wide/from16 v32, v11

    int-to-long v10, v15

    and-long v34, v10, v4

    const/16 v10, 0x2e

    invoke-static {v0, v10}, Lorg/bouncycastle/math/ec/rfc8032/Codec;->decode24([BI)I

    move-result v10

    shl-int/lit8 v10, v10, 0x4

    int-to-long v10, v10

    and-long v36, v10, v4

    const/16 v11, 0x31

    invoke-static {v0, v11}, Lorg/bouncycastle/math/ec/rfc8032/Codec;->decode32([BI)I

    move-result v10

    int-to-long v11, v10

    and-long/2addr v11, v4

    const/16 v10, 0x35

    invoke-static {v0, v10}, Lorg/bouncycastle/math/ec/rfc8032/Codec;->decode24([BI)I

    move-result v10

    shl-int/lit8 v10, v10, 0x4

    move-wide/from16 v38, v1

    int-to-long v1, v10

    and-long/2addr v1, v4

    const/16 v10, 0x38

    invoke-static {v0, v10}, Lorg/bouncycastle/math/ec/rfc8032/Codec;->decode32([BI)I

    move-result v10

    move-wide/from16 v40, v6

    int-to-long v6, v10

    and-long/2addr v6, v4

    const/16 v10, 0x3c

    invoke-static {v0, v10}, Lorg/bouncycastle/math/ec/rfc8032/Codec;->decode24([BI)I

    move-result v10

    shl-int/lit8 v10, v10, 0x4

    move-wide/from16 v42, v8

    int-to-long v8, v10

    and-long/2addr v8, v4

    const/16 v10, 0x3f

    invoke-static {v0, v10}, Lorg/bouncycastle/math/ec/rfc8032/Codec;->decode32([BI)I

    move-result v10

    move-wide/from16 v44, v13

    int-to-long v13, v10

    and-long/2addr v13, v4

    const/16 v10, 0x43

    invoke-static {v0, v10}, Lorg/bouncycastle/math/ec/rfc8032/Codec;->decode24([BI)I

    move-result v10

    shl-int/lit8 v10, v10, 0x4

    move-wide/from16 v46, v11

    int-to-long v10, v10

    and-long/2addr v10, v4

    const/16 v12, 0x46

    invoke-static {v0, v12}, Lorg/bouncycastle/math/ec/rfc8032/Codec;->decode32([BI)I

    move-result v12

    move-wide/from16 v48, v1

    int-to-long v1, v12

    and-long/2addr v1, v4

    const/16 v12, 0x4a

    invoke-static {v0, v12}, Lorg/bouncycastle/math/ec/rfc8032/Codec;->decode24([BI)I

    move-result v12

    shl-int/lit8 v12, v12, 0x4

    move-wide/from16 v50, v1

    int-to-long v1, v12

    and-long/2addr v1, v4

    const/16 v12, 0x4d

    invoke-static {v0, v12}, Lorg/bouncycastle/math/ec/rfc8032/Codec;->decode32([BI)I

    move-result v12

    move-wide/from16 v52, v1

    int-to-long v1, v12

    and-long/2addr v1, v4

    const/16 v12, 0x51

    invoke-static {v0, v12}, Lorg/bouncycastle/math/ec/rfc8032/Codec;->decode24([BI)I

    move-result v12

    shl-int/lit8 v12, v12, 0x4

    move-wide/from16 v54, v1

    int-to-long v1, v12

    and-long/2addr v1, v4

    const/16 v12, 0x54

    invoke-static {v0, v12}, Lorg/bouncycastle/math/ec/rfc8032/Codec;->decode32([BI)I

    move-result v12

    move-wide/from16 v56, v1

    int-to-long v1, v12

    and-long v58, v1, v4

    const/16 v12, 0x58

    invoke-static {v0, v12}, Lorg/bouncycastle/math/ec/rfc8032/Codec;->decode24([BI)I

    move-result v12

    shl-int/lit8 v12, v12, 0x4

    move-wide/from16 v60, v1

    int-to-long v1, v12

    and-long/2addr v1, v4

    const/16 v12, 0x5b

    invoke-static {v0, v12}, Lorg/bouncycastle/math/ec/rfc8032/Codec;->decode32([BI)I

    move-result v12

    move-wide/from16 v62, v1

    int-to-long v1, v12

    and-long v64, v1, v4

    const/16 v12, 0x5f

    invoke-static {v0, v12}, Lorg/bouncycastle/math/ec/rfc8032/Codec;->decode24([BI)I

    move-result v12

    shl-int/lit8 v12, v12, 0x4

    move-wide/from16 v66, v1

    int-to-long v1, v12

    and-long/2addr v1, v4

    const/16 v12, 0x62

    invoke-static {v0, v12}, Lorg/bouncycastle/math/ec/rfc8032/Codec;->decode32([BI)I

    move-result v12

    move-wide/from16 v68, v1

    int-to-long v1, v12

    and-long v70, v1, v4

    const/16 v12, 0x66

    invoke-static {v0, v12}, Lorg/bouncycastle/math/ec/rfc8032/Codec;->decode24([BI)I

    move-result v12

    shl-int/lit8 v12, v12, 0x4

    move-wide/from16 v72, v1

    int-to-long v1, v12

    and-long/2addr v1, v4

    const/16 v12, 0x69

    invoke-static {v0, v12}, Lorg/bouncycastle/math/ec/rfc8032/Codec;->decode32([BI)I

    move-result v12

    move-wide/from16 v74, v1

    int-to-long v1, v12

    and-long v76, v1, v4

    const/16 v12, 0x6d

    invoke-static {v0, v12}, Lorg/bouncycastle/math/ec/rfc8032/Codec;->decode24([BI)I

    move-result v12

    shl-int/lit8 v12, v12, 0x4

    move-wide/from16 v78, v1

    int-to-long v1, v12

    and-long/2addr v1, v4

    const/16 v12, 0x70

    invoke-static {v0, v12}, Lorg/bouncycastle/math/ec/rfc8032/Codec;->decode16([BI)I

    move-result v0

    move-wide/from16 v80, v1

    int-to-long v0, v0

    and-long/2addr v0, v4

    const-wide/32 v4, 0x29eec34

    mul-long v82, v0, v4

    add-long v82, v82, v6

    const-wide/32 v6, 0x1cf5b55

    mul-long v84, v0, v6

    add-long v84, v84, v8

    const-wide/32 v8, 0x9c2ab72

    mul-long v86, v0, v8

    add-long v86, v86, v13

    const-wide/32 v12, 0xf635c8e

    mul-long v88, v0, v12

    add-long v88, v88, v10

    const-wide/32 v90, 0x5bf7a4c

    mul-long v10, v0, v90

    add-long v50, v10, v50

    const-wide/32 v92, 0xd944a72

    mul-long v10, v0, v92

    add-long v52, v10, v52

    const-wide/32 v94, 0x8eec492

    mul-long v10, v0, v94

    add-long v54, v10, v54

    const-wide/32 v96, 0x20cd7705

    mul-long v0, v0, v96

    add-long v0, v0, v56

    const/16 v2, 0x1c

    ushr-long v56, v76, v2

    const/16 v2, 0x2a

    add-long v14, v80, v56

    const-wide/32 v56, 0xfffffff

    and-long v76, v78, v56

    mul-long v78, v14, v4

    add-long v78, v78, v48

    mul-long v48, v14, v6

    add-long v48, v48, v82

    mul-long v80, v14, v8

    add-long v80, v80, v84

    mul-long v82, v14, v12

    add-long v82, v82, v86

    mul-long v84, v14, v90

    add-long v84, v84, v88

    mul-long v86, v14, v92

    add-long v86, v86, v50

    mul-long v50, v14, v94

    add-long v50, v50, v52

    mul-long v14, v14, v96

    add-long v14, v14, v54

    mul-long v52, v76, v4

    add-long v52, v52, v46

    mul-long v46, v76, v6

    add-long v46, v46, v78

    mul-long v54, v76, v8

    add-long v54, v54, v48

    mul-long v48, v76, v12

    add-long v48, v48, v80

    mul-long v78, v76, v90

    add-long v78, v78, v82

    mul-long v80, v76, v92

    add-long v80, v80, v84

    mul-long v82, v76, v94

    add-long v82, v82, v86

    mul-long v76, v76, v96

    add-long v76, v76, v50

    const/16 v10, 0x1c

    ushr-long v50, v70, v10

    add-long v50, v74, v50

    and-long v70, v72, v56

    mul-long v72, v50, v4

    add-long v72, v72, v36

    mul-long v36, v50, v6

    add-long v36, v36, v52

    mul-long v52, v50, v8

    add-long v52, v52, v46

    mul-long v46, v50, v12

    add-long v46, v46, v54

    mul-long v54, v50, v90

    add-long v54, v54, v48

    mul-long v48, v50, v92

    add-long v48, v48, v78

    mul-long v74, v50, v94

    add-long v74, v74, v80

    mul-long v50, v50, v96

    add-long v50, v50, v82

    mul-long v78, v70, v4

    add-long v78, v78, v34

    mul-long v34, v70, v6

    add-long v34, v34, v72

    mul-long v72, v70, v8

    add-long v72, v72, v36

    mul-long v36, v70, v12

    add-long v36, v36, v52

    mul-long v52, v70, v90

    add-long v52, v52, v46

    mul-long v46, v70, v92

    add-long v46, v46, v54

    mul-long v54, v70, v94

    add-long v54, v54, v48

    mul-long v70, v70, v96

    add-long v70, v70, v74

    const/16 v10, 0x1c

    ushr-long v48, v64, v10

    add-long v48, v68, v48

    and-long v64, v66, v56

    mul-long v66, v48, v4

    add-long v66, v66, v44

    mul-long v44, v48, v6

    add-long v44, v44, v78

    mul-long v68, v48, v8

    add-long v68, v68, v34

    mul-long v34, v48, v12

    add-long v34, v34, v72

    mul-long v72, v48, v90

    add-long v72, v72, v36

    mul-long v36, v48, v92

    add-long v36, v36, v52

    mul-long v52, v48, v94

    add-long v52, v52, v46

    mul-long v48, v48, v96

    add-long v48, v48, v54

    mul-long v46, v64, v4

    add-long v46, v46, v32

    mul-long v32, v64, v6

    add-long v32, v32, v66

    mul-long v54, v64, v8

    add-long v54, v54, v44

    mul-long v44, v64, v12

    add-long v44, v44, v68

    mul-long v66, v64, v90

    add-long v66, v66, v34

    mul-long v34, v64, v92

    add-long v34, v34, v72

    mul-long v68, v64, v94

    add-long v68, v68, v36

    mul-long v64, v64, v96

    add-long v64, v64, v52

    const/16 v10, 0x1c

    ushr-long v36, v58, v10

    add-long v36, v62, v36

    and-long v52, v60, v56

    mul-long v58, v36, v4

    add-long v58, v58, v26

    mul-long v25, v36, v6

    add-long v25, v25, v46

    mul-long v46, v36, v8

    add-long v46, v46, v32

    mul-long v32, v36, v12

    add-long v32, v32, v54

    mul-long v54, v36, v90

    add-long v54, v54, v44

    mul-long v44, v36, v92

    add-long v44, v44, v66

    mul-long v60, v36, v94

    add-long v60, v60, v34

    mul-long v36, v36, v96

    add-long v36, v36, v68

    const/16 v10, 0x1c

    ushr-long v34, v50, v10

    add-long v76, v76, v34

    and-long v34, v50, v56

    ushr-long v50, v76, v10

    add-long v14, v14, v50

    and-long v50, v76, v56

    ushr-long v62, v14, v10

    add-long v0, v0, v62

    and-long v14, v14, v56

    ushr-long v62, v0, v10

    add-long v52, v52, v62

    and-long v0, v0, v56

    mul-long v62, v52, v4

    add-long v62, v62, v42

    mul-long v42, v52, v6

    add-long v42, v42, v58

    mul-long v58, v52, v8

    add-long v58, v58, v25

    mul-long v25, v52, v12

    add-long v25, v25, v46

    mul-long v46, v52, v90

    add-long v46, v46, v32

    mul-long v32, v52, v92

    add-long v32, v32, v54

    mul-long v54, v52, v94

    add-long v54, v54, v44

    mul-long v52, v52, v96

    add-long v52, v52, v60

    mul-long v44, v0, v4

    add-long v44, v44, v23

    mul-long v23, v0, v6

    add-long v23, v23, v62

    mul-long v60, v0, v8

    add-long v60, v60, v42

    mul-long v42, v0, v12

    add-long v42, v42, v58

    mul-long v58, v0, v90

    add-long v58, v58, v25

    mul-long v25, v0, v92

    add-long v25, v25, v46

    mul-long v46, v0, v94

    add-long v46, v46, v32

    mul-long v0, v0, v96

    add-long v0, v0, v54

    mul-long v32, v14, v4

    add-long v32, v32, v40

    mul-long v40, v14, v6

    add-long v40, v40, v44

    mul-long v44, v14, v8

    add-long v44, v44, v23

    mul-long v23, v14, v12

    add-long v23, v23, v60

    mul-long v54, v14, v90

    add-long v54, v54, v42

    mul-long v42, v14, v92

    add-long v42, v42, v58

    mul-long v58, v14, v94

    add-long v58, v58, v25

    mul-long v14, v14, v96

    add-long v14, v14, v46

    const/16 v10, 0x1c

    ushr-long v25, v64, v10

    add-long v48, v48, v25

    and-long v25, v64, v56

    ushr-long v46, v48, v10

    add-long v70, v70, v46

    and-long v46, v48, v56

    ushr-long v48, v70, v10

    add-long v34, v34, v48

    and-long v48, v70, v56

    ushr-long v60, v34, v10

    add-long v50, v50, v60

    and-long v34, v34, v56

    mul-long v60, v50, v4

    add-long v60, v60, v38

    mul-long v38, v50, v6

    add-long v38, v38, v32

    mul-long v32, v50, v8

    add-long v32, v32, v40

    mul-long v40, v50, v12

    add-long v40, v40, v44

    mul-long v44, v50, v90

    add-long v44, v44, v23

    mul-long v23, v50, v92

    add-long v23, v23, v54

    mul-long v54, v50, v94

    add-long v54, v54, v42

    mul-long v50, v50, v96

    add-long v50, v50, v58

    mul-long v42, v34, v4

    add-long v42, v42, v30

    mul-long v30, v34, v6

    add-long v30, v30, v60

    mul-long v58, v34, v8

    add-long v58, v58, v38

    mul-long v38, v34, v12

    add-long v38, v38, v32

    mul-long v32, v34, v90

    add-long v32, v32, v40

    mul-long v40, v34, v92

    add-long v40, v40, v44

    mul-long v44, v34, v94

    add-long v44, v44, v23

    mul-long v34, v34, v96

    add-long v34, v34, v54

    mul-long v23, v48, v4

    add-long v23, v23, v28

    mul-long v27, v48, v6

    add-long v27, v27, v42

    mul-long v42, v48, v8

    add-long v42, v42, v30

    mul-long v29, v48, v12

    add-long v29, v29, v58

    mul-long v54, v48, v90

    add-long v54, v54, v38

    mul-long v38, v48, v92

    add-long v38, v38, v32

    mul-long v32, v48, v94

    add-long v32, v32, v40

    mul-long v48, v48, v96

    add-long v48, v48, v44

    const/16 v10, 0x1c

    ushr-long v40, v0, v10

    add-long v52, v52, v40

    and-long v0, v0, v56

    ushr-long v40, v52, v10

    add-long v36, v36, v40

    and-long v40, v52, v56

    ushr-long v44, v36, v10

    add-long v25, v25, v44

    and-long v36, v36, v56

    ushr-long v44, v25, v10

    add-long v46, v46, v44

    and-long v25, v25, v56

    mul-long v44, v46, v4

    add-long v44, v44, v21

    mul-long v21, v46, v6

    add-long v21, v21, v23

    mul-long v23, v46, v8

    add-long v23, v23, v27

    mul-long v27, v46, v12

    add-long v27, v27, v42

    mul-long v42, v46, v90

    add-long v42, v42, v29

    mul-long v29, v46, v92

    add-long v29, v29, v54

    mul-long v54, v46, v94

    add-long v54, v54, v38

    mul-long v46, v46, v96

    add-long v46, v46, v32

    mul-long v4, v4, v25

    add-long v4, v4, v19

    mul-long v6, v6, v25

    add-long v6, v6, v44

    mul-long v8, v8, v25

    add-long v8, v8, v21

    mul-long v12, v12, v25

    add-long v12, v12, v23

    mul-long v90, v90, v25

    add-long v90, v90, v27

    mul-long v92, v92, v25

    add-long v92, v92, v42

    mul-long v94, v94, v25

    add-long v94, v94, v29

    mul-long v25, v25, v96

    add-long v25, v25, v54

    const-wide/16 v18, 0x4

    mul-long v36, v36, v18

    const/16 v11, 0x1a

    ushr-long v18, v40, v11

    add-long v36, v36, v18

    const-wide/32 v18, 0x3ffffff

    and-long v20, v52, v18

    const-wide/16 v22, 0x1

    add-long v36, v36, v22

    const-wide/32 v27, 0x4a7bb0d

    mul-long v27, v27, v36

    add-long v27, v27, v16

    const-wide/32 v16, 0x873d6d5

    mul-long v16, v16, v36

    add-long v16, v16, v4

    const-wide/32 v4, 0xa70aadc

    mul-long v4, v4, v36

    add-long/2addr v4, v6

    const-wide/32 v6, 0x3d8d723

    mul-long v6, v6, v36

    add-long/2addr v6, v8

    const-wide/32 v8, 0x96fde93

    mul-long v8, v8, v36

    add-long/2addr v8, v12

    const-wide/32 v12, 0xb65129c

    mul-long v12, v12, v36

    add-long v12, v12, v90

    const-wide/32 v29, 0x63bb124

    mul-long v29, v29, v36

    add-long v29, v29, v92

    const-wide/32 v32, 0x8335dc1

    mul-long v36, v36, v32

    add-long v36, v36, v94

    const/16 v10, 0x1c

    ushr-long v32, v27, v10

    add-long v16, v16, v32

    and-long v27, v27, v56

    ushr-long v32, v16, v10

    add-long v4, v4, v32

    and-long v16, v16, v56

    ushr-long v32, v4, v10

    add-long v6, v6, v32

    and-long v4, v4, v56

    ushr-long v32, v6, v10

    add-long v8, v8, v32

    and-long v6, v6, v56

    ushr-long v32, v8, v10

    add-long v12, v12, v32

    and-long v8, v8, v56

    ushr-long v32, v12, v10

    add-long v29, v29, v32

    and-long v12, v12, v56

    ushr-long v32, v29, v10

    add-long v36, v36, v32

    and-long v29, v29, v56

    ushr-long v32, v36, v10

    add-long v25, v25, v32

    and-long v32, v36, v56

    ushr-long v36, v25, v10

    add-long v46, v46, v36

    and-long v25, v25, v56

    ushr-long v36, v46, v10

    add-long v48, v48, v36

    and-long v36, v46, v56

    ushr-long v38, v48, v10

    add-long v34, v34, v38

    and-long v38, v48, v56

    ushr-long v40, v34, v10

    add-long v50, v50, v40

    and-long v34, v34, v56

    ushr-long v40, v50, v10

    add-long v14, v14, v40

    and-long v40, v50, v56

    ushr-long v42, v14, v10

    add-long v0, v0, v42

    and-long v14, v14, v56

    ushr-long v42, v0, v10

    add-long v20, v20, v42

    and-long v0, v0, v56

    ushr-long v42, v20, v11

    and-long v18, v20, v18

    sub-long v42, v42, v22

    const-wide/32 v20, 0x4a7bb0d

    and-long v20, v42, v20

    sub-long v27, v27, v20

    const-wide/32 v20, 0x873d6d5

    and-long v20, v42, v20

    sub-long v16, v16, v20

    const-wide/32 v20, 0xa70aadc

    and-long v20, v42, v20

    sub-long v4, v4, v20

    const-wide/32 v20, 0x3d8d723

    and-long v20, v42, v20

    sub-long v6, v6, v20

    const-wide/32 v20, 0x96fde93

    and-long v20, v42, v20

    sub-long v8, v8, v20

    const-wide/32 v20, 0xb65129c

    and-long v20, v42, v20

    sub-long v12, v12, v20

    const-wide/32 v20, 0x63bb124

    and-long v20, v42, v20

    sub-long v29, v29, v20

    const-wide/32 v20, 0x8335dc1

    and-long v20, v42, v20

    sub-long v32, v32, v20

    const/16 v10, 0x1c

    shr-long v20, v27, v10

    add-long v16, v16, v20

    and-long v20, v27, v56

    shr-long v22, v16, v10

    add-long v4, v4, v22

    and-long v16, v16, v56

    shr-long v22, v4, v10

    add-long v6, v6, v22

    and-long v4, v4, v56

    shr-long v22, v6, v10

    add-long v8, v8, v22

    and-long v6, v6, v56

    shr-long v22, v8, v10

    add-long v12, v12, v22

    and-long v8, v8, v56

    shr-long v22, v12, v10

    add-long v29, v29, v22

    and-long v12, v12, v56

    shr-long v22, v29, v10

    add-long v32, v32, v22

    and-long v22, v29, v56

    shr-long v27, v32, v10

    add-long v25, v25, v27

    and-long v27, v32, v56

    shr-long v29, v25, v10

    add-long v36, v36, v29

    and-long v25, v25, v56

    shr-long v29, v36, v10

    add-long v38, v38, v29

    and-long v29, v36, v56

    shr-long v32, v38, v10

    add-long v34, v34, v32

    and-long v32, v38, v56

    shr-long v36, v34, v10

    add-long v40, v40, v36

    and-long v34, v34, v56

    shr-long v36, v40, v10

    add-long v14, v14, v36

    and-long v36, v40, v56

    shr-long v38, v14, v10

    add-long v0, v0, v38

    and-long v14, v14, v56

    shr-long v38, v0, v10

    add-long v18, v18, v38

    and-long v0, v0, v56

    const/16 v11, 0x39

    new-array v11, v11, [B

    shl-long v16, v16, v10

    or-long v2, v20, v16

    move-wide/from16 v16, v0

    const/4 v0, 0x0

    invoke-static {v2, v3, v11, v0}, Lorg/bouncycastle/math/ec/rfc8032/Codec;->encode56(J[BI)V

    shl-long v0, v6, v10

    or-long/2addr v0, v4

    const/4 v2, 0x7

    invoke-static {v0, v1, v11, v2}, Lorg/bouncycastle/math/ec/rfc8032/Codec;->encode56(J[BI)V

    shl-long v0, v12, v10

    or-long/2addr v0, v8

    const/16 v2, 0xe

    invoke-static {v0, v1, v11, v2}, Lorg/bouncycastle/math/ec/rfc8032/Codec;->encode56(J[BI)V

    shl-long v0, v27, v10

    or-long v0, v22, v0

    const/16 v2, 0x15

    invoke-static {v0, v1, v11, v2}, Lorg/bouncycastle/math/ec/rfc8032/Codec;->encode56(J[BI)V

    shl-long v0, v29, v10

    or-long v0, v25, v0

    invoke-static {v0, v1, v11, v10}, Lorg/bouncycastle/math/ec/rfc8032/Codec;->encode56(J[BI)V

    shl-long v0, v34, v10

    or-long v0, v32, v0

    const/16 v2, 0x23

    invoke-static {v0, v1, v11, v2}, Lorg/bouncycastle/math/ec/rfc8032/Codec;->encode56(J[BI)V

    shl-long v0, v14, v10

    or-long v0, v36, v0

    const/16 v2, 0x2a

    invoke-static {v0, v1, v11, v2}, Lorg/bouncycastle/math/ec/rfc8032/Codec;->encode56(J[BI)V

    shl-long v0, v18, v10

    or-long v0, v16, v0

    const/16 v2, 0x31

    invoke-static {v0, v1, v11, v2}, Lorg/bouncycastle/math/ec/rfc8032/Codec;->encode56(J[BI)V

    return-object v11
.end method

.method public static reduceBasisVar([I[I[I)Z
    .locals 26

    move-object/from16 v0, p0

    const/16 v1, 0x1c

    new-array v2, v1, [I

    sget-object v3, Lorg/bouncycastle/math/ec/rfc8032/Scalar448;->LSq:[I

    const/4 v4, 0x0

    invoke-static {v3, v4, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-array v3, v1, [I

    invoke-static {v0, v3}, Lorg/bouncycastle/math/raw/Nat448;->square([I[I)V

    aget v5, v3, v4

    const/4 v6, 0x1

    add-int/2addr v5, v6

    aput v5, v3, v4

    new-array v5, v1, [I

    sget-object v7, Lorg/bouncycastle/math/ec/rfc8032/Scalar448;->L:[I

    invoke-static {v7, v0, v5}, Lorg/bouncycastle/math/raw/Nat448;->mul([I[I[I)V

    new-array v1, v1, [I

    const/16 v13, 0x8

    new-array v8, v13, [I

    invoke-static {v7, v4, v8, v4, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-array v7, v13, [I

    new-array v9, v13, [I

    invoke-static {v0, v4, v9, v4, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-array v0, v13, [I

    aput v6, v0, v4

    const/16 v10, 0x1b

    invoke-static {v10, v3}, Lorg/bouncycastle/math/ec/rfc8032/ScalarUtil;->getBitLengthPositive(I[I)I

    move-result v11

    const/16 v12, 0x6fc

    move-object/from16 v20, v7

    move-object/from16 v21, v8

    move-object v15, v9

    move v12, v11

    const/16 v7, 0x6fc

    const/16 v14, 0x1b

    :goto_0
    const/16 v8, 0x1bf

    if-le v12, v8, :cond_3

    add-int/lit8 v22, v7, -0x1

    if-gez v22, :cond_0

    return v4

    :cond_0
    invoke-static {v14, v5}, Lorg/bouncycastle/math/ec/rfc8032/ScalarUtil;->getBitLength(I[I)I

    move-result v7

    sub-int/2addr v7, v12

    shr-int/lit8 v8, v7, 0x1f

    xor-int/lit8 v8, v8, -0x1

    and-int v16, v7, v8

    aget v7, v5, v14

    if-gez v7, :cond_1

    move v7, v14

    move/from16 v8, v16

    move-object v9, v2

    move-object v10, v3

    move-object v11, v5

    move/from16 v23, v12

    move-object v12, v1

    invoke-static/range {v7 .. v12}, Lorg/bouncycastle/math/ec/rfc8032/ScalarUtil;->addShifted_NP(II[I[I[I[I)V

    const/4 v7, 0x7

    move v12, v14

    move v14, v7

    move-object v11, v15

    move/from16 v15, v16

    move-object/from16 v16, v21

    move-object/from16 v17, v20

    move-object/from16 v18, v11

    move-object/from16 v19, v0

    invoke-static/range {v14 .. v19}, Lorg/bouncycastle/math/ec/rfc8032/ScalarUtil;->addShifted_UV(II[I[I[I[I)V

    move-object v9, v11

    move v10, v12

    goto :goto_1

    :cond_1
    move/from16 v23, v12

    move v12, v14

    move-object v11, v15

    move v7, v12

    move/from16 v8, v16

    move-object v9, v2

    move-object v10, v3

    move-object v11, v5

    move-object v12, v1

    invoke-static/range {v7 .. v12}, Lorg/bouncycastle/math/ec/rfc8032/ScalarUtil;->subShifted_NP(II[I[I[I[I)V

    const/4 v7, 0x7

    move v10, v14

    move v14, v7

    move-object v9, v15

    move/from16 v15, v16

    move-object/from16 v16, v21

    move-object/from16 v17, v20

    move-object/from16 v18, v9

    move-object/from16 v19, v0

    invoke-static/range {v14 .. v19}, Lorg/bouncycastle/math/ec/rfc8032/ScalarUtil;->subShifted_UV(II[I[I[I[I)V

    :goto_1
    invoke-static {v10, v2, v3}, Lorg/bouncycastle/math/ec/rfc8032/ScalarUtil;->lessThan(I[I[I)Z

    move-result v7

    if-eqz v7, :cond_2

    ushr-int/lit8 v7, v23, 0x5

    invoke-static {v7, v2}, Lorg/bouncycastle/math/ec/rfc8032/ScalarUtil;->getBitLengthPositive(I[I)I

    move-result v8

    move v14, v7

    move v12, v8

    move-object/from16 v15, v21

    move-object/from16 v21, v9

    move-object/from16 v24, v20

    move-object/from16 v20, v0

    move-object/from16 v0, v24

    move-object/from16 v25, v3

    move-object v3, v2

    move-object/from16 v2, v25

    goto :goto_2

    :cond_2
    move-object v15, v9

    move v14, v10

    move/from16 v12, v23

    :goto_2
    move/from16 v7, v22

    goto :goto_0

    :cond_3
    move-object/from16 v2, p1

    move-object v9, v15

    invoke-static {v9, v4, v2, v4, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object/from16 v1, p2

    invoke-static {v0, v4, v1, v4, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return v6
.end method

.method public static toSignedDigits(I[I[I)V
    .locals 4

    add-int/lit16 p0, p0, -0x1c0

    const/4 v0, 0x1

    shl-int p0, v0, p0

    const/4 v1, 0x0

    aget v2, p1, v1

    xor-int/lit8 v2, v2, -0x1

    and-int/2addr v0, v2

    sget-object v2, Lorg/bouncycastle/math/ec/rfc8032/Scalar448;->L:[I

    const/16 v3, 0xe

    invoke-static {v3, v0, p1, v2, p2}, Lorg/bouncycastle/math/raw/Nat;->cadd(II[I[I[I)I

    move-result p1

    add-int/2addr p1, p0

    aput p1, p2, v3

    const/16 p0, 0xf

    invoke-static {p0, p2, v1}, Lorg/bouncycastle/math/raw/Nat;->shiftDownBit(I[II)I

    return-void
.end method
