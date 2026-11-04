.class public final Lmb/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/text/CharacterIterator;


# instance fields
.field public final a:Lmb/h;

.field public b:I


# direct methods
.method public constructor <init>(Lmb/h;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lmb/c;->a:Lmb/h;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final clone()Ljava/lang/Object;
    .locals 2

    .line 1
    new-instance v0, Lmb/c;

    .line 2
    .line 3
    iget-object v1, p0, Lmb/c;->a:Lmb/h;

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lmb/c;-><init>(Lmb/h;)V

    .line 6
    .line 7
    .line 8
    iget v1, p0, Lmb/c;->b:I

    .line 9
    .line 10
    iput v1, v0, Lmb/c;->b:I

    .line 11
    .line 12
    return-object v0
.end method

.method public final current()C
    .locals 3

    .line 1
    iget v0, p0, Lmb/c;->b:I

    .line 2
    .line 3
    iget-object v1, p0, Lmb/c;->a:Lmb/h;

    .line 4
    .line 5
    iget v2, v1, Lmb/h;->c:I

    .line 6
    .line 7
    if-ne v0, v2, :cond_0

    .line 8
    .line 9
    const v0, 0xffff

    .line 10
    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    invoke-virtual {v1, v0}, Lmb/h;->charAt(I)C

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    :goto_0
    return v0
.end method

.method public final first()C
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lmb/c;->b:I

    .line 3
    .line 4
    invoke-virtual {p0}, Lmb/c;->current()C

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    return v0
.end method

.method public final getBeginIndex()I
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return v0
.end method

.method public final getEndIndex()I
    .locals 1

    .line 1
    iget-object v0, p0, Lmb/c;->a:Lmb/h;

    .line 2
    .line 3
    iget v0, v0, Lmb/h;->c:I

    .line 4
    .line 5
    return v0
.end method

.method public final getIndex()I
    .locals 1

    .line 1
    iget v0, p0, Lmb/c;->b:I

    .line 2
    .line 3
    return v0
.end method

.method public final last()C
    .locals 1

    .line 1
    iget-object v0, p0, Lmb/c;->a:Lmb/h;

    .line 2
    .line 3
    iget v0, v0, Lmb/h;->c:I

    .line 4
    .line 5
    add-int/lit8 v0, v0, -0x1

    .line 6
    .line 7
    iput v0, p0, Lmb/c;->b:I

    .line 8
    .line 9
    if-gez v0, :cond_0

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    iput v0, p0, Lmb/c;->b:I

    .line 13
    .line 14
    :cond_0
    invoke-virtual {p0}, Lmb/c;->current()C

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    return v0
.end method

.method public final next()C
    .locals 1

    .line 1
    iget v0, p0, Lmb/c;->b:I

    .line 2
    .line 3
    add-int/lit8 v0, v0, 0x1

    .line 4
    .line 5
    iput v0, p0, Lmb/c;->b:I

    .line 6
    .line 7
    invoke-virtual {p0}, Lmb/c;->current()C

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    return v0
.end method

.method public final previous()C
    .locals 1

    .line 1
    iget v0, p0, Lmb/c;->b:I

    .line 2
    .line 3
    add-int/lit8 v0, v0, -0x1

    .line 4
    .line 5
    iput v0, p0, Lmb/c;->b:I

    .line 6
    .line 7
    if-gez v0, :cond_0

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    iput v0, p0, Lmb/c;->b:I

    .line 11
    .line 12
    :cond_0
    invoke-virtual {p0}, Lmb/c;->current()C

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    return v0
.end method

.method public final setIndex(I)C
    .locals 0

    .line 1
    iput p1, p0, Lmb/c;->b:I

    .line 2
    .line 3
    invoke-virtual {p0}, Lmb/c;->current()C

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method
