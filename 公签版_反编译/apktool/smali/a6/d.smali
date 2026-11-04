.class public final La6/d;
.super La0/e;
.source "SourceFile"


# instance fields
.field public g:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, La0/e;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final clear()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, La6/d;->g:I

    .line 3
    .line 4
    invoke-super {p0}, La0/t;->clear()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public final g(La0/e;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, La6/d;->g:I

    .line 3
    .line 4
    invoke-super {p0, p1}, La0/t;->g(La0/e;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public final h(I)Ljava/lang/Object;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, La6/d;->g:I

    .line 3
    .line 4
    invoke-super {p0, p1}, La0/t;->h(I)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    return-object p1
.end method

.method public final hashCode()I
    .locals 1

    .line 1
    iget v0, p0, La6/d;->g:I

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-super {p0}, La0/t;->hashCode()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    iput v0, p0, La6/d;->g:I

    .line 10
    .line 11
    :cond_0
    iget v0, p0, La6/d;->g:I

    .line 12
    .line 13
    return v0
.end method

.method public final i(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, La6/d;->g:I

    .line 3
    .line 4
    invoke-super {p0, p1, p2}, La0/t;->i(ILjava/lang/Object;)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    return-object p1
.end method

.method public final put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, La6/d;->g:I

    .line 3
    .line 4
    invoke-super {p0, p1, p2}, La0/t;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    return-object p1
.end method
