.class public Lcom/owen/tvrecyclerview/ItemEntries;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final MIN_SIZE:I = 0xa


# instance fields
.field private mAdapterSize:I

.field private mItemEntries:[Lcom/owen/tvrecyclerview/BaseLayoutManager$ItemEntry;

.field private mRestoringItem:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private ensureSize(I)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/owen/tvrecyclerview/ItemEntries;->mItemEntries:[Lcom/owen/tvrecyclerview/BaseLayoutManager$ItemEntry;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    const/16 v0, 0xa

    .line 7
    .line 8
    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    add-int/lit8 p1, p1, 0x1

    .line 13
    .line 14
    new-array p1, p1, [Lcom/owen/tvrecyclerview/BaseLayoutManager$ItemEntry;

    .line 15
    .line 16
    iput-object p1, p0, Lcom/owen/tvrecyclerview/ItemEntries;->mItemEntries:[Lcom/owen/tvrecyclerview/BaseLayoutManager$ItemEntry;

    .line 17
    .line 18
    invoke-static {p1, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 19
    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    array-length v2, v0

    .line 23
    if-lt p1, v2, :cond_1

    .line 24
    .line 25
    invoke-direct {p0, p1}, Lcom/owen/tvrecyclerview/ItemEntries;->sizeForPosition(I)I

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    new-array p1, p1, [Lcom/owen/tvrecyclerview/BaseLayoutManager$ItemEntry;

    .line 30
    .line 31
    iput-object p1, p0, Lcom/owen/tvrecyclerview/ItemEntries;->mItemEntries:[Lcom/owen/tvrecyclerview/BaseLayoutManager$ItemEntry;

    .line 32
    .line 33
    array-length v2, v0

    .line 34
    const/4 v3, 0x0

    .line 35
    invoke-static {v0, v3, p1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 36
    .line 37
    .line 38
    iget-object p1, p0, Lcom/owen/tvrecyclerview/ItemEntries;->mItemEntries:[Lcom/owen/tvrecyclerview/BaseLayoutManager$ItemEntry;

    .line 39
    .line 40
    array-length v0, v0

    .line 41
    array-length v2, p1

    .line 42
    invoke-static {p1, v0, v2, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    .line 43
    .line 44
    .line 45
    :cond_1
    :goto_0
    return-void
.end method

.method private sizeForPosition(I)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/owen/tvrecyclerview/ItemEntries;->mItemEntries:[Lcom/owen/tvrecyclerview/BaseLayoutManager$ItemEntry;

    .line 2
    .line 3
    array-length v0, v0

    .line 4
    :goto_0
    if-gt v0, p1, :cond_0

    .line 5
    .line 6
    mul-int/lit8 v0, v0, 0x2

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    iget-boolean p1, p0, Lcom/owen/tvrecyclerview/ItemEntries;->mRestoringItem:Z

    .line 10
    .line 11
    if-nez p1, :cond_1

    .line 12
    .line 13
    iget p1, p0, Lcom/owen/tvrecyclerview/ItemEntries;->mAdapterSize:I

    .line 14
    .line 15
    if-le v0, p1, :cond_1

    .line 16
    .line 17
    move v0, p1

    .line 18
    :cond_1
    return v0
.end method


# virtual methods
.method public clear()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/owen/tvrecyclerview/ItemEntries;->mItemEntries:[Lcom/owen/tvrecyclerview/BaseLayoutManager$ItemEntry;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 7
    .line 8
    .line 9
    :cond_0
    return-void
.end method

.method public getItemEntry(I)Lcom/owen/tvrecyclerview/BaseLayoutManager$ItemEntry;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/owen/tvrecyclerview/ItemEntries;->mItemEntries:[Lcom/owen/tvrecyclerview/BaseLayoutManager$ItemEntry;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    array-length v1, v0

    .line 6
    if-ge p1, v1, :cond_1

    .line 7
    .line 8
    if-gez p1, :cond_0

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    aget-object p1, v0, p1

    .line 12
    .line 13
    return-object p1

    .line 14
    :cond_1
    :goto_0
    const/4 p1, 0x0

    .line 15
    return-object p1
.end method

.method public invalidateItemLanesAfter(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/owen/tvrecyclerview/ItemEntries;->mItemEntries:[Lcom/owen/tvrecyclerview/BaseLayoutManager$ItemEntry;

    .line 2
    .line 3
    if-eqz v0, :cond_2

    .line 4
    .line 5
    array-length v0, v0

    .line 6
    if-lt p1, v0, :cond_0

    .line 7
    .line 8
    goto :goto_1

    .line 9
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/owen/tvrecyclerview/ItemEntries;->mItemEntries:[Lcom/owen/tvrecyclerview/BaseLayoutManager$ItemEntry;

    .line 10
    .line 11
    array-length v1, v0

    .line 12
    if-ge p1, v1, :cond_2

    .line 13
    .line 14
    aget-object v0, v0, p1

    .line 15
    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    invoke-virtual {v0}, Lcom/owen/tvrecyclerview/BaseLayoutManager$ItemEntry;->invalidateLane()V

    .line 19
    .line 20
    .line 21
    :cond_1
    add-int/lit8 p1, p1, 0x1

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_2
    :goto_1
    return-void
.end method

.method public offsetForAddition(II)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/owen/tvrecyclerview/ItemEntries;->mItemEntries:[Lcom/owen/tvrecyclerview/BaseLayoutManager$ItemEntry;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    array-length v0, v0

    .line 6
    if-lt p1, v0, :cond_0

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    add-int v0, p1, p2

    .line 10
    .line 11
    invoke-direct {p0, v0}, Lcom/owen/tvrecyclerview/ItemEntries;->ensureSize(I)V

    .line 12
    .line 13
    .line 14
    iget-object v1, p0, Lcom/owen/tvrecyclerview/ItemEntries;->mItemEntries:[Lcom/owen/tvrecyclerview/BaseLayoutManager$ItemEntry;

    .line 15
    .line 16
    array-length v2, v1

    .line 17
    sub-int/2addr v2, p1

    .line 18
    sub-int/2addr v2, p2

    .line 19
    invoke-static {v1, p1, v1, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 20
    .line 21
    .line 22
    iget-object p2, p0, Lcom/owen/tvrecyclerview/ItemEntries;->mItemEntries:[Lcom/owen/tvrecyclerview/BaseLayoutManager$ItemEntry;

    .line 23
    .line 24
    const/4 v1, 0x0

    .line 25
    invoke-static {p2, p1, v0, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    .line 26
    .line 27
    .line 28
    :cond_1
    :goto_0
    return-void
.end method

.method public offsetForRemoval(II)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/owen/tvrecyclerview/ItemEntries;->mItemEntries:[Lcom/owen/tvrecyclerview/BaseLayoutManager$ItemEntry;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    array-length v0, v0

    .line 6
    if-lt p1, v0, :cond_0

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    add-int v0, p1, p2

    .line 10
    .line 11
    invoke-direct {p0, v0}, Lcom/owen/tvrecyclerview/ItemEntries;->ensureSize(I)V

    .line 12
    .line 13
    .line 14
    iget-object v1, p0, Lcom/owen/tvrecyclerview/ItemEntries;->mItemEntries:[Lcom/owen/tvrecyclerview/BaseLayoutManager$ItemEntry;

    .line 15
    .line 16
    array-length v2, v1

    .line 17
    sub-int/2addr v2, p1

    .line 18
    sub-int/2addr v2, p2

    .line 19
    invoke-static {v1, v0, v1, p1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 20
    .line 21
    .line 22
    iget-object p1, p0, Lcom/owen/tvrecyclerview/ItemEntries;->mItemEntries:[Lcom/owen/tvrecyclerview/BaseLayoutManager$ItemEntry;

    .line 23
    .line 24
    array-length v0, p1

    .line 25
    sub-int/2addr v0, p2

    .line 26
    array-length p2, p1

    .line 27
    const/4 v1, 0x0

    .line 28
    invoke-static {p1, v0, p2, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    .line 29
    .line 30
    .line 31
    :cond_1
    :goto_0
    return-void
.end method

.method public putItemEntry(ILcom/owen/tvrecyclerview/BaseLayoutManager$ItemEntry;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lcom/owen/tvrecyclerview/ItemEntries;->ensureSize(I)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/owen/tvrecyclerview/ItemEntries;->mItemEntries:[Lcom/owen/tvrecyclerview/BaseLayoutManager$ItemEntry;

    .line 5
    .line 6
    aput-object p2, v0, p1

    .line 7
    .line 8
    return-void
.end method

.method public restoreItemEntry(ILcom/owen/tvrecyclerview/BaseLayoutManager$ItemEntry;)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/owen/tvrecyclerview/ItemEntries;->mRestoringItem:Z

    .line 3
    .line 4
    invoke-virtual {p0, p1, p2}, Lcom/owen/tvrecyclerview/ItemEntries;->putItemEntry(ILcom/owen/tvrecyclerview/BaseLayoutManager$ItemEntry;)V

    .line 5
    .line 6
    .line 7
    const/4 p1, 0x0

    .line 8
    iput-boolean p1, p0, Lcom/owen/tvrecyclerview/ItemEntries;->mRestoringItem:Z

    .line 9
    .line 10
    return-void
.end method

.method public setAdapterSize(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/owen/tvrecyclerview/ItemEntries;->mAdapterSize:I

    .line 2
    .line 3
    return-void
.end method

.method public size()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/owen/tvrecyclerview/ItemEntries;->mItemEntries:[Lcom/owen/tvrecyclerview/BaseLayoutManager$ItemEntry;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    array-length v0, v0

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 v0, 0x0

    .line 8
    :goto_0
    return v0
.end method
