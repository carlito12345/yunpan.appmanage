.class public final Lph/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field public a:I

.field public b:I

.field public final synthetic c:Lph/c;


# direct methods
.method public constructor <init>(Lph/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lph/b;->c:Lph/c;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    iget p1, p1, Lph/c;->a:I

    .line 7
    .line 8
    iput p1, p0, Lph/b;->a:I

    .line 9
    .line 10
    const/4 p1, 0x0

    .line 11
    iput p1, p0, Lph/b;->b:I

    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public final hasNext()Z
    .locals 4

    .line 1
    iget-object v0, p0, Lph/b;->c:Lph/c;

    .line 2
    .line 3
    iget v1, v0, Lph/c;->a:I

    .line 4
    .line 5
    iget v2, p0, Lph/b;->a:I

    .line 6
    .line 7
    if-ne v1, v2, :cond_2

    .line 8
    .line 9
    :goto_0
    iget v1, p0, Lph/b;->b:I

    .line 10
    .line 11
    iget v2, v0, Lph/c;->a:I

    .line 12
    .line 13
    const/4 v3, 0x1

    .line 14
    if-ge v1, v2, :cond_0

    .line 15
    .line 16
    iget-object v2, v0, Lph/c;->b:[Ljava/lang/String;

    .line 17
    .line 18
    aget-object v1, v2, v1

    .line 19
    .line 20
    invoke-static {v1}, Lph/c;->i(Ljava/lang/String;)Z

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    if-eqz v1, :cond_0

    .line 25
    .line 26
    iget v1, p0, Lph/b;->b:I

    .line 27
    .line 28
    add-int/2addr v1, v3

    .line 29
    iput v1, p0, Lph/b;->b:I

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    iget v1, p0, Lph/b;->b:I

    .line 33
    .line 34
    iget v0, v0, Lph/c;->a:I

    .line 35
    .line 36
    if-ge v1, v0, :cond_1

    .line 37
    .line 38
    goto :goto_1

    .line 39
    :cond_1
    const/4 v3, 0x0

    .line 40
    :goto_1
    return v3

    .line 41
    :cond_2
    new-instance v0, Ljava/util/ConcurrentModificationException;

    .line 42
    .line 43
    const-string v1, "Use Iterator#remove() instead to remove attributes while iterating."

    .line 44
    .line 45
    invoke-direct {v0, v1}, Ljava/util/ConcurrentModificationException;-><init>(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    goto :goto_3

    .line 49
    :goto_2
    throw v0

    .line 50
    :goto_3
    goto :goto_2
.end method

.method public final next()Ljava/lang/Object;
    .locals 5

    .line 1
    iget-object v0, p0, Lph/b;->c:Lph/c;

    .line 2
    .line 3
    iget v1, v0, Lph/c;->a:I

    .line 4
    .line 5
    iget v2, p0, Lph/b;->a:I

    .line 6
    .line 7
    if-ne v1, v2, :cond_1

    .line 8
    .line 9
    iget v2, p0, Lph/b;->b:I

    .line 10
    .line 11
    if-ge v2, v1, :cond_0

    .line 12
    .line 13
    iget-object v1, v0, Lph/c;->b:[Ljava/lang/String;

    .line 14
    .line 15
    aget-object v1, v1, v2

    .line 16
    .line 17
    new-instance v2, Lph/a;

    .line 18
    .line 19
    iget-object v3, v0, Lph/c;->c:[Ljava/lang/Object;

    .line 20
    .line 21
    iget v4, p0, Lph/b;->b:I

    .line 22
    .line 23
    aget-object v3, v3, v4

    .line 24
    .line 25
    check-cast v3, Ljava/lang/String;

    .line 26
    .line 27
    invoke-direct {v2, v1, v3, v0}, Lph/a;-><init>(Ljava/lang/String;Ljava/lang/String;Lph/c;)V

    .line 28
    .line 29
    .line 30
    iget v0, p0, Lph/b;->b:I

    .line 31
    .line 32
    add-int/lit8 v0, v0, 0x1

    .line 33
    .line 34
    iput v0, p0, Lph/b;->b:I

    .line 35
    .line 36
    return-object v2

    .line 37
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    .line 38
    .line 39
    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    .line 40
    .line 41
    .line 42
    throw v0

    .line 43
    :cond_1
    new-instance v0, Ljava/util/ConcurrentModificationException;

    .line 44
    .line 45
    const-string v1, "Use Iterator#remove() instead to remove attributes while iterating."

    .line 46
    .line 47
    invoke-direct {v0, v1}, Ljava/util/ConcurrentModificationException;-><init>(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    throw v0
.end method

.method public final remove()V
    .locals 2

    .line 1
    iget v0, p0, Lph/b;->b:I

    .line 2
    .line 3
    add-int/lit8 v0, v0, -0x1

    .line 4
    .line 5
    iput v0, p0, Lph/b;->b:I

    .line 6
    .line 7
    iget-object v1, p0, Lph/b;->c:Lph/c;

    .line 8
    .line 9
    invoke-virtual {v1, v0}, Lph/c;->k(I)V

    .line 10
    .line 11
    .line 12
    iget v0, p0, Lph/b;->a:I

    .line 13
    .line 14
    add-int/lit8 v0, v0, -0x1

    .line 15
    .line 16
    iput v0, p0, Lph/b;->a:I

    .line 17
    .line 18
    return-void
.end method
