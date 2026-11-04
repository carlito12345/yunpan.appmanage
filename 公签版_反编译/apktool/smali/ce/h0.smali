.class public final Lce/h0;
.super Lce/a;
.source "SourceFile"


# instance fields
.field public F:Ljava/lang/String;

.field public G:Ljava/lang/String;

.field public H:Ljava/lang/String;

.field public I:Z

.field public K:[B


# direct methods
.method public constructor <init>(Lce/q;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lce/a;-><init>(Lce/q;)V

    .line 2
    .line 3
    .line 4
    const-string p1, ""

    .line 5
    .line 6
    iput-object p1, p0, Lce/h0;->F:Ljava/lang/String;

    .line 7
    .line 8
    iput-object p1, p0, Lce/h0;->G:Ljava/lang/String;

    .line 9
    .line 10
    iput-object p1, p0, Lce/h0;->H:Ljava/lang/String;

    .line 11
    .line 12
    const/4 p1, 0x0

    .line 13
    iput-object p1, p0, Lce/h0;->K:[B

    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public final d(I[B)I
    .locals 3

    .line 1
    iget-boolean v0, p0, Lce/q;->s:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lce/h0;->K:[B

    .line 6
    .line 7
    array-length v1, v0

    .line 8
    const/4 v2, 0x0

    .line 9
    invoke-static {p2, p1, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Lce/h0;->K:[B

    .line 13
    .line 14
    array-length v0, v0

    .line 15
    add-int/2addr v0, p1

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    move v0, p1

    .line 18
    :goto_0
    const/16 v1, 0x100

    .line 19
    .line 20
    iget-boolean v2, p0, Lce/q;->q:Z

    .line 21
    .line 22
    invoke-virtual {p0, p2, v0, v1, v2}, Lce/q;->j([BIIZ)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    iput-object v1, p0, Lce/h0;->F:Ljava/lang/String;

    .line 27
    .line 28
    invoke-virtual {p0, v0, v1}, Lce/q;->n(ILjava/lang/String;)I

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    add-int/2addr v1, v0

    .line 33
    iget v0, p0, Lce/q;->p:I

    .line 34
    .line 35
    add-int/2addr v0, p1

    .line 36
    iget-boolean v2, p0, Lce/q;->q:Z

    .line 37
    .line 38
    invoke-virtual {p0, p2, v1, v0, v2}, Lce/q;->k([BIIZ)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    iput-object v0, p0, Lce/h0;->G:Ljava/lang/String;

    .line 43
    .line 44
    invoke-virtual {p0, v1, v0}, Lce/q;->n(ILjava/lang/String;)I

    .line 45
    .line 46
    .line 47
    move-result v0

    .line 48
    add-int/2addr v0, v1

    .line 49
    iget-boolean v1, p0, Lce/q;->s:Z

    .line 50
    .line 51
    if-nez v1, :cond_1

    .line 52
    .line 53
    iget v1, p0, Lce/q;->p:I

    .line 54
    .line 55
    add-int/2addr v1, p1

    .line 56
    iget-boolean v2, p0, Lce/q;->q:Z

    .line 57
    .line 58
    invoke-virtual {p0, p2, v0, v1, v2}, Lce/q;->k([BIIZ)Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object p2

    .line 62
    iput-object p2, p0, Lce/h0;->H:Ljava/lang/String;

    .line 63
    .line 64
    invoke-virtual {p0, v0, p2}, Lce/q;->n(ILjava/lang/String;)I

    .line 65
    .line 66
    .line 67
    move-result p2

    .line 68
    add-int/2addr v0, p2

    .line 69
    :cond_1
    sub-int/2addr v0, p1

    .line 70
    return v0
.end method

.method public final i(I[B)I
    .locals 2

    .line 1
    aget-byte v0, p2, p1

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    and-int/2addr v0, v1

    .line 5
    if-ne v0, v1, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 v1, 0x0

    .line 9
    :goto_0
    iput-boolean v1, p0, Lce/h0;->I:Z

    .line 10
    .line 11
    add-int/lit8 v0, p1, 0x2

    .line 12
    .line 13
    iget-boolean v1, p0, Lce/q;->s:Z

    .line 14
    .line 15
    if-eqz v1, :cond_1

    .line 16
    .line 17
    invoke-static {v0, p2}, Lce/q;->f(I[B)I

    .line 18
    .line 19
    .line 20
    move-result p2

    .line 21
    add-int/lit8 v0, p1, 0x4

    .line 22
    .line 23
    new-array p2, p2, [B

    .line 24
    .line 25
    iput-object p2, p0, Lce/h0;->K:[B

    .line 26
    .line 27
    :cond_1
    sub-int/2addr v0, p1

    .line 28
    return v0
.end method

.method public final o(I[B)I
    .locals 0

    .line 1
    const/4 p1, 0x0

    .line 2
    return p1
.end method

.method public final t(I[B)I
    .locals 0

    .line 1
    const/4 p1, 0x0

    .line 2
    return p1
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/String;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    const-string v2, "SmbComSessionSetupAndXResponse["

    .line 6
    .line 7
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-super {p0}, Lce/a;->toString()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    const-string v2, ",isLoggedInAsGuest="

    .line 18
    .line 19
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    iget-boolean v2, p0, Lce/h0;->I:Z

    .line 23
    .line 24
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    const-string v2, ",nativeOs="

    .line 28
    .line 29
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    iget-object v2, p0, Lce/h0;->F:Ljava/lang/String;

    .line 33
    .line 34
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    const-string v2, ",nativeLanMan="

    .line 38
    .line 39
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    iget-object v2, p0, Lce/h0;->G:Ljava/lang/String;

    .line 43
    .line 44
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    const-string v2, ",primaryDomain="

    .line 48
    .line 49
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    iget-object v2, p0, Lce/h0;->H:Ljava/lang/String;

    .line 53
    .line 54
    const-string v3, "]"

    .line 55
    .line 56
    invoke-static {v2, v3, v1}, Lg/b;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    return-object v0
.end method
