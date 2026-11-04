.class public Lorg/mozilla/universalchardet/prober/distributionanalysis/EUCJPDistributionAnalysis;
.super Lorg/mozilla/universalchardet/prober/distributionanalysis/JISDistributionAnalysis;
.source "SourceFile"


# static fields
.field public static final HIGHBYTE_BEGIN:I = 0xa1

.field public static final HIGHBYTE_END:I = 0xfe

.field public static final LOWBYTE_BEGIN:I = 0xa1

.field public static final LOWBYTE_END:I = 0xfe


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/mozilla/universalchardet/prober/distributionanalysis/JISDistributionAnalysis;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public getOrder([BI)I
    .locals 2

    .line 1
    aget-byte v0, p1, p2

    .line 2
    .line 3
    and-int/lit16 v0, v0, 0xff

    .line 4
    .line 5
    const/16 v1, 0xa1

    .line 6
    .line 7
    if-lt v0, v1, :cond_0

    .line 8
    .line 9
    add-int/lit8 p2, p2, 0x1

    .line 10
    .line 11
    aget-byte p1, p1, p2

    .line 12
    .line 13
    and-int/lit16 p1, p1, 0xff

    .line 14
    .line 15
    sub-int/2addr v0, v1

    .line 16
    mul-int/lit8 v0, v0, 0x5e

    .line 17
    .line 18
    add-int/2addr v0, p1

    .line 19
    sub-int/2addr v0, v1

    .line 20
    return v0

    .line 21
    :cond_0
    const/4 p1, -0x1

    .line 22
    return p1
.end method
