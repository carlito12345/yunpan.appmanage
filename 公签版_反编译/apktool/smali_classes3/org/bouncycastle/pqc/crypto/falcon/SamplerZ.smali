.class Lorg/bouncycastle/pqc/crypto/falcon/SamplerZ;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static BerExp(Lorg/bouncycastle/pqc/crypto/falcon/FalconRNG;DD)I
    .locals 5

    const-wide v0, 0x3ff71547652b82feL    # 1.4426950408889634

    mul-double v0, v0, p1

    double-to-int v0, v0

    int-to-double v1, v0

    const-wide v3, 0x3fe62e42fefa39efL    # 0.6931471805599453

    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v1, v1, v3

    sub-double/2addr p1, v1

    xor-int/lit8 v1, v0, 0x3f

    rsub-int/lit8 v2, v0, 0x3f

    ushr-int/lit8 v2, v2, 0x1f

    neg-int v2, v2

    and-int/2addr v1, v2

    xor-int/2addr v0, v1

    invoke-static {p1, p2, p3, p4}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_expm_p63(DD)J

    move-result-wide p1

    const/4 p3, 0x1

    shl-long/2addr p1, p3

    const-wide/16 p3, 0x1

    sub-long/2addr p1, p3

    ushr-long/2addr p1, v0

    const/16 p3, 0x40

    :cond_0
    add-int/lit8 p3, p3, -0x8

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/crypto/falcon/FalconRNG;->prng_get_u8()B

    move-result p4

    and-int/lit16 p4, p4, 0xff

    ushr-long v0, p1, p3

    long-to-int v1, v0

    and-int/lit16 v0, v1, 0xff

    sub-int/2addr p4, v0

    if-nez p4, :cond_1

    if-gtz p3, :cond_0

    :cond_1
    ushr-int/lit8 p0, p4, 0x1f

    return p0
.end method

.method public static gaussian0_sampler(Lorg/bouncycastle/pqc/crypto/falcon/FalconRNG;)I
    .locals 9

    const/4 v0, 0x0

    const/16 v1, 0x36

    new-array v2, v1, [I

    fill-array-data v2, :array_0

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/crypto/falcon/FalconRNG;->prng_get_u64()J

    move-result-wide v3

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/crypto/falcon/FalconRNG;->prng_get_u8()B

    move-result p0

    and-int/lit16 p0, p0, 0xff

    long-to-int v5, v3

    const v6, 0xffffff

    and-int/2addr v5, v6

    const/16 v7, 0x18

    ushr-long v7, v3, v7

    long-to-int v8, v7

    and-int/2addr v6, v8

    const/16 v7, 0x30

    ushr-long/2addr v3, v7

    long-to-int v4, v3

    shl-int/lit8 p0, p0, 0x10

    or-int/2addr p0, v4

    const/4 v3, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    add-int/lit8 v4, v0, 0x2

    aget v4, v2, v4

    add-int/lit8 v7, v0, 0x1

    aget v7, v2, v7

    aget v8, v2, v0

    sub-int v4, v5, v4

    ushr-int/lit8 v4, v4, 0x1f

    sub-int v7, v6, v7

    sub-int/2addr v7, v4

    ushr-int/lit8 v4, v7, 0x1f

    sub-int v7, p0, v8

    sub-int/2addr v7, v4

    ushr-int/lit8 v4, v7, 0x1f

    add-int/2addr v3, v4

    add-int/lit8 v0, v0, 0x3

    goto :goto_0

    :cond_0
    return v3

    :array_0
    .array-data 4
        0xa3f7f4
        0x2ed3ac
        0x391802
        0x54d32b
        0x181f3f
        0x7ddb82
        0x227dcd
        0xd09348
        0x29c1ff
        0xad175
        0x4377c7
        0x994ae4
        0x29584
        0x6caef3
        0x3f1f6f
        0x774a
        0xc754ed
        0x74bd5f
        0x1024
        0xdd542b
        0x776ae4
        0x1a1
        0xffdc65
        0xad63da
        0x1f
        0x80d88a
        0x7b6428
        0x1
        0xc3fdb2
        0x40c69
        0x0
        0x12cf24
        0xd031fb
        0x0
        0x949f
        0x8b091f
        0x0
        0x366
        0x5da998
        0x0
        0xe
        0xbf6ebb
        0x0
        0x0
        0x2f5d7e
        0x0
        0x0
        0x7098
        0x0
        0x0
        0xc6
        0x0
        0x0
        0x1
    .end array-data
.end method

.method public static sample(Lorg/bouncycastle/pqc/crypto/falcon/SamplerCtx;DD)I
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lorg/bouncycastle/pqc/crypto/falcon/SamplerZ;->sampler(Lorg/bouncycastle/pqc/crypto/falcon/SamplerCtx;DD)I

    move-result p0

    return p0
.end method

.method private static sampler(Lorg/bouncycastle/pqc/crypto/falcon/SamplerCtx;DD)I
    .locals 17

    move-object/from16 v0, p0

    invoke-static/range {p1 .. p2}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_floor(D)J

    move-result-wide v1

    long-to-int v2, v1

    int-to-double v3, v2

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    sub-double v3, p1, v3

    mul-double v5, p3, p3

    const-wide/high16 v7, 0x3fe0000000000000L    # 0.5

    mul-double v5, v5, v7

    iget-wide v7, v0, Lorg/bouncycastle/pqc/crypto/falcon/SamplerCtx;->sigma_min:D

    mul-double v7, v7, p3

    :cond_0
    iget-object v1, v0, Lorg/bouncycastle/pqc/crypto/falcon/SamplerCtx;->p:Lorg/bouncycastle/pqc/crypto/falcon/FalconRNG;

    invoke-static {v1}, Lorg/bouncycastle/pqc/crypto/falcon/SamplerZ;->gaussian0_sampler(Lorg/bouncycastle/pqc/crypto/falcon/FalconRNG;)I

    move-result v1

    iget-object v9, v0, Lorg/bouncycastle/pqc/crypto/falcon/SamplerCtx;->p:Lorg/bouncycastle/pqc/crypto/falcon/FalconRNG;

    invoke-virtual {v9}, Lorg/bouncycastle/pqc/crypto/falcon/FalconRNG;->prng_get_u8()B

    move-result v9

    and-int/lit8 v9, v9, 0x1

    shl-int/lit8 v10, v9, 0x1

    add-int/lit8 v10, v10, -0x1

    mul-int v10, v10, v1

    add-int/2addr v10, v9

    int-to-double v11, v10

    invoke-static {v11, v12}, Ljava/lang/Double;->isNaN(D)Z

    sub-double/2addr v11, v3

    mul-double v11, v11, v11

    mul-double v11, v11, v5

    mul-int v1, v1, v1

    int-to-double v13, v1

    const-wide v15, 0x3fc34f8bc183bbc2L    # 0.15086504887537272

    invoke-static {v13, v14}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v13, v13, v15

    sub-double/2addr v11, v13

    iget-object v1, v0, Lorg/bouncycastle/pqc/crypto/falcon/SamplerCtx;->p:Lorg/bouncycastle/pqc/crypto/falcon/FalconRNG;

    invoke-static {v1, v11, v12, v7, v8}, Lorg/bouncycastle/pqc/crypto/falcon/SamplerZ;->BerExp(Lorg/bouncycastle/pqc/crypto/falcon/FalconRNG;DD)I

    move-result v1

    if-eqz v1, :cond_0

    add-int/2addr v2, v10

    return v2
.end method
