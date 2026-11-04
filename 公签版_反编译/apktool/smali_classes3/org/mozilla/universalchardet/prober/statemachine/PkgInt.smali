.class public Lorg/mozilla/universalchardet/prober/statemachine/PkgInt;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final BIT_SHIFT_16BITS:I = 0x4

.field public static final BIT_SHIFT_4BITS:I = 0x2

.field public static final BIT_SHIFT_8BITS:I = 0x3

.field public static final INDEX_SHIFT_16BITS:I = 0x1

.field public static final INDEX_SHIFT_4BITS:I = 0x3

.field public static final INDEX_SHIFT_8BITS:I = 0x2

.field public static final SHIFT_MASK_16BITS:I = 0x1

.field public static final SHIFT_MASK_4BITS:I = 0x7

.field public static final SHIFT_MASK_8BITS:I = 0x3

.field public static final UNIT_MASK_16BITS:I = 0xffff

.field public static final UNIT_MASK_4BITS:I = 0xf

.field public static final UNIT_MASK_8BITS:I = 0xff


# instance fields
.field private bitShift:I

.field private data:[I

.field private indexShift:I

.field private shiftMask:I

.field private unitMask:I


# direct methods
.method public constructor <init>(IIII[I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lorg/mozilla/universalchardet/prober/statemachine/PkgInt;->indexShift:I

    .line 5
    .line 6
    iput p2, p0, Lorg/mozilla/universalchardet/prober/statemachine/PkgInt;->shiftMask:I

    .line 7
    .line 8
    iput p3, p0, Lorg/mozilla/universalchardet/prober/statemachine/PkgInt;->bitShift:I

    .line 9
    .line 10
    iput p4, p0, Lorg/mozilla/universalchardet/prober/statemachine/PkgInt;->unitMask:I

    .line 11
    .line 12
    invoke-virtual {p5}, [I->clone()Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    check-cast p1, [I

    .line 17
    .line 18
    iput-object p1, p0, Lorg/mozilla/universalchardet/prober/statemachine/PkgInt;->data:[I

    .line 19
    .line 20
    return-void
.end method

.method public static pack16bits(II)I
    .locals 0

    shl-int/lit8 p1, p1, 0x10

    or-int/2addr p0, p1

    return p0
.end method

.method public static pack4bits(IIIIIIII)I
    .locals 0

    shl-int/lit8 p1, p1, 0x4

    or-int/2addr p0, p1

    shl-int/lit8 p1, p3, 0x4

    or-int/2addr p1, p2

    shl-int/lit8 p2, p5, 0x4

    or-int/2addr p2, p4

    shl-int/lit8 p3, p7, 0x4

    or-int/2addr p3, p6

    .line 1
    invoke-static {p0, p1, p2, p3}, Lorg/mozilla/universalchardet/prober/statemachine/PkgInt;->pack8bits(IIII)I

    move-result p0

    return p0
.end method

.method public static pack8bits(IIII)I
    .locals 0

    .line 1
    shl-int/lit8 p1, p1, 0x8

    .line 2
    .line 3
    or-int/2addr p0, p1

    .line 4
    shl-int/lit8 p1, p3, 0x8

    .line 5
    .line 6
    or-int/2addr p1, p2

    .line 7
    invoke-static {p0, p1}, Lorg/mozilla/universalchardet/prober/statemachine/PkgInt;->pack16bits(II)I

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    return p0
.end method


# virtual methods
.method public unpack(I)I
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/mozilla/universalchardet/prober/statemachine/PkgInt;->data:[I

    .line 2
    .line 3
    iget v1, p0, Lorg/mozilla/universalchardet/prober/statemachine/PkgInt;->indexShift:I

    .line 4
    .line 5
    shr-int v1, p1, v1

    .line 6
    .line 7
    aget v0, v0, v1

    .line 8
    .line 9
    iget v1, p0, Lorg/mozilla/universalchardet/prober/statemachine/PkgInt;->shiftMask:I

    .line 10
    .line 11
    and-int/2addr p1, v1

    .line 12
    iget v1, p0, Lorg/mozilla/universalchardet/prober/statemachine/PkgInt;->bitShift:I

    .line 13
    .line 14
    shl-int/2addr p1, v1

    .line 15
    shr-int p1, v0, p1

    .line 16
    .line 17
    iget v0, p0, Lorg/mozilla/universalchardet/prober/statemachine/PkgInt;->unitMask:I

    .line 18
    .line 19
    and-int/2addr p1, v0

    .line 20
    return p1
.end method
