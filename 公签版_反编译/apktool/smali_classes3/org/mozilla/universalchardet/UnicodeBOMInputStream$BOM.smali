.class public final Lorg/mozilla/universalchardet/UnicodeBOMInputStream$BOM;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mozilla/universalchardet/UnicodeBOMInputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "BOM"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field public static final NONE:Lorg/mozilla/universalchardet/UnicodeBOMInputStream$BOM;

.field public static final UTF_16_BE:Lorg/mozilla/universalchardet/UnicodeBOMInputStream$BOM;

.field public static final UTF_16_LE:Lorg/mozilla/universalchardet/UnicodeBOMInputStream$BOM;

.field public static final UTF_32_BE:Lorg/mozilla/universalchardet/UnicodeBOMInputStream$BOM;

.field public static final UTF_32_LE:Lorg/mozilla/universalchardet/UnicodeBOMInputStream$BOM;

.field public static final UTF_8:Lorg/mozilla/universalchardet/UnicodeBOMInputStream$BOM;


# instance fields
.field final bytes:[B

.field private final description:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    const/4 v0, 0x4

    .line 2
    const/4 v1, 0x2

    .line 3
    new-instance v2, Lorg/mozilla/universalchardet/UnicodeBOMInputStream$BOM;

    .line 4
    .line 5
    const/4 v3, 0x0

    .line 6
    new-array v3, v3, [B

    .line 7
    .line 8
    const-string v4, "NONE"

    .line 9
    .line 10
    invoke-direct {v2, v3, v4}, Lorg/mozilla/universalchardet/UnicodeBOMInputStream$BOM;-><init>([BLjava/lang/String;)V

    .line 11
    .line 12
    .line 13
    sput-object v2, Lorg/mozilla/universalchardet/UnicodeBOMInputStream$BOM;->NONE:Lorg/mozilla/universalchardet/UnicodeBOMInputStream$BOM;

    .line 14
    .line 15
    new-instance v2, Lorg/mozilla/universalchardet/UnicodeBOMInputStream$BOM;

    .line 16
    .line 17
    const/4 v3, 0x3

    .line 18
    new-array v3, v3, [B

    .line 19
    .line 20
    fill-array-data v3, :array_0

    .line 21
    .line 22
    .line 23
    const-string v4, "UTF-8"

    .line 24
    .line 25
    invoke-direct {v2, v3, v4}, Lorg/mozilla/universalchardet/UnicodeBOMInputStream$BOM;-><init>([BLjava/lang/String;)V

    .line 26
    .line 27
    .line 28
    sput-object v2, Lorg/mozilla/universalchardet/UnicodeBOMInputStream$BOM;->UTF_8:Lorg/mozilla/universalchardet/UnicodeBOMInputStream$BOM;

    .line 29
    .line 30
    new-instance v2, Lorg/mozilla/universalchardet/UnicodeBOMInputStream$BOM;

    .line 31
    .line 32
    new-array v3, v1, [B

    .line 33
    .line 34
    fill-array-data v3, :array_1

    .line 35
    .line 36
    .line 37
    const-string v4, "UTF-16 little-endian"

    .line 38
    .line 39
    invoke-direct {v2, v3, v4}, Lorg/mozilla/universalchardet/UnicodeBOMInputStream$BOM;-><init>([BLjava/lang/String;)V

    .line 40
    .line 41
    .line 42
    sput-object v2, Lorg/mozilla/universalchardet/UnicodeBOMInputStream$BOM;->UTF_16_LE:Lorg/mozilla/universalchardet/UnicodeBOMInputStream$BOM;

    .line 43
    .line 44
    new-instance v2, Lorg/mozilla/universalchardet/UnicodeBOMInputStream$BOM;

    .line 45
    .line 46
    new-array v1, v1, [B

    .line 47
    .line 48
    fill-array-data v1, :array_2

    .line 49
    .line 50
    .line 51
    const-string v3, "UTF-16 big-endian"

    .line 52
    .line 53
    invoke-direct {v2, v1, v3}, Lorg/mozilla/universalchardet/UnicodeBOMInputStream$BOM;-><init>([BLjava/lang/String;)V

    .line 54
    .line 55
    .line 56
    sput-object v2, Lorg/mozilla/universalchardet/UnicodeBOMInputStream$BOM;->UTF_16_BE:Lorg/mozilla/universalchardet/UnicodeBOMInputStream$BOM;

    .line 57
    .line 58
    new-instance v1, Lorg/mozilla/universalchardet/UnicodeBOMInputStream$BOM;

    .line 59
    .line 60
    new-array v2, v0, [B

    .line 61
    .line 62
    fill-array-data v2, :array_3

    .line 63
    .line 64
    .line 65
    const-string v3, "UTF-32 little-endian"

    .line 66
    .line 67
    invoke-direct {v1, v2, v3}, Lorg/mozilla/universalchardet/UnicodeBOMInputStream$BOM;-><init>([BLjava/lang/String;)V

    .line 68
    .line 69
    .line 70
    sput-object v1, Lorg/mozilla/universalchardet/UnicodeBOMInputStream$BOM;->UTF_32_LE:Lorg/mozilla/universalchardet/UnicodeBOMInputStream$BOM;

    .line 71
    .line 72
    new-instance v1, Lorg/mozilla/universalchardet/UnicodeBOMInputStream$BOM;

    .line 73
    .line 74
    new-array v0, v0, [B

    .line 75
    .line 76
    fill-array-data v0, :array_4

    .line 77
    .line 78
    .line 79
    const-string v2, "UTF-32 big-endian"

    .line 80
    .line 81
    invoke-direct {v1, v0, v2}, Lorg/mozilla/universalchardet/UnicodeBOMInputStream$BOM;-><init>([BLjava/lang/String;)V

    .line 82
    .line 83
    .line 84
    sput-object v1, Lorg/mozilla/universalchardet/UnicodeBOMInputStream$BOM;->UTF_32_BE:Lorg/mozilla/universalchardet/UnicodeBOMInputStream$BOM;

    .line 85
    .line 86
    return-void

    .line 87
    :array_0
    .array-data 1
        -0x11t
        -0x45t
        -0x41t
    .end array-data

    .line 88
    .line 89
    .line 90
    .line 91
    .line 92
    .line 93
    :array_1
    .array-data 1
        -0x1t
        -0x2t
    .end array-data

    .line 94
    .line 95
    .line 96
    .line 97
    .line 98
    nop

    .line 99
    :array_2
    .array-data 1
        -0x2t
        -0x1t
    .end array-data

    .line 100
    .line 101
    .line 102
    .line 103
    .line 104
    nop

    .line 105
    :array_3
    .array-data 1
        -0x1t
        -0x2t
        0x0t
        0x0t
    .end array-data

    .line 106
    .line 107
    .line 108
    .line 109
    .line 110
    .line 111
    :array_4
    .array-data 1
        0x0t
        0x0t
        -0x2t
        -0x1t
    .end array-data
.end method

.method private constructor <init>([BLjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lorg/mozilla/universalchardet/UnicodeBOMInputStream$BOM;->bytes:[B

    .line 5
    .line 6
    iput-object p2, p0, Lorg/mozilla/universalchardet/UnicodeBOMInputStream$BOM;->description:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final getBytes()[B
    .locals 4

    .line 1
    iget-object v0, p0, Lorg/mozilla/universalchardet/UnicodeBOMInputStream$BOM;->bytes:[B

    .line 2
    .line 3
    array-length v1, v0

    .line 4
    new-array v2, v1, [B

    .line 5
    .line 6
    const/4 v3, 0x0

    .line 7
    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 8
    .line 9
    .line 10
    return-object v2
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/mozilla/universalchardet/UnicodeBOMInputStream$BOM;->description:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method
