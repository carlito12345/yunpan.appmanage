.class public final Le/b;
.super Le/a;
.source "SourceFile"


# instance fields
.field public final a:Landroid/util/SparseIntArray;

.field public final b:Landroid/os/Parcel;

.field public final c:I

.field public final d:I

.field public final e:Ljava/lang/String;

.field public f:I

.field public g:I


# direct methods
.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    invoke-virtual {p1}, Landroid/os/Parcel;->dataSize()I

    move-result v1

    const-string v2, ""

    invoke-direct {p0, p1, v0, v1, v2}, Le/b;-><init>(Landroid/os/Parcel;IILjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;IILjava/lang/String;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Le/b;->a:Landroid/util/SparseIntArray;

    const/4 v0, -0x1

    .line 4
    iput v0, p0, Le/b;->f:I

    .line 5
    iput-object p1, p0, Le/b;->b:Landroid/os/Parcel;

    .line 6
    iput p2, p0, Le/b;->c:I

    .line 7
    iput p3, p0, Le/b;->d:I

    .line 8
    iput p2, p0, Le/b;->g:I

    .line 9
    iput-object p4, p0, Le/b;->e:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a()Le/b;
    .locals 6

    .line 1
    new-instance v0, Le/b;

    .line 2
    .line 3
    iget-object v1, p0, Le/b;->b:Landroid/os/Parcel;

    .line 4
    .line 5
    invoke-virtual {v1}, Landroid/os/Parcel;->dataPosition()I

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    iget v3, p0, Le/b;->g:I

    .line 10
    .line 11
    iget v4, p0, Le/b;->c:I

    .line 12
    .line 13
    if-ne v3, v4, :cond_0

    .line 14
    .line 15
    iget v3, p0, Le/b;->d:I

    .line 16
    .line 17
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    .line 18
    .line 19
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 20
    .line 21
    .line 22
    iget-object v5, p0, Le/b;->e:Ljava/lang/String;

    .line 23
    .line 24
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    const-string v5, "  "

    .line 28
    .line 29
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v4

    .line 36
    invoke-direct {v0, v1, v2, v3, v4}, Le/b;-><init>(Landroid/os/Parcel;IILjava/lang/String;)V

    .line 37
    .line 38
    .line 39
    return-object v0
.end method

.method public final c(I)Z
    .locals 5

    .line 1
    :cond_0
    iget v0, p0, Le/b;->g:I

    .line 2
    .line 3
    iget v1, p0, Le/b;->d:I

    .line 4
    .line 5
    const/4 v2, -0x1

    .line 6
    iget-object v3, p0, Le/b;->b:Landroid/os/Parcel;

    .line 7
    .line 8
    if-ge v0, v1, :cond_1

    .line 9
    .line 10
    invoke-virtual {v3, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v3}, Landroid/os/Parcel;->readInt()I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    invoke-virtual {v3}, Landroid/os/Parcel;->readInt()I

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    iget v4, p0, Le/b;->g:I

    .line 22
    .line 23
    add-int/2addr v4, v0

    .line 24
    iput v4, p0, Le/b;->g:I

    .line 25
    .line 26
    if-ne v1, p1, :cond_0

    .line 27
    .line 28
    invoke-virtual {v3}, Landroid/os/Parcel;->dataPosition()I

    .line 29
    .line 30
    .line 31
    move-result p1

    .line 32
    goto :goto_0

    .line 33
    :cond_1
    move p1, v2

    .line 34
    :goto_0
    if-ne p1, v2, :cond_2

    .line 35
    .line 36
    const/4 p1, 0x0

    .line 37
    return p1

    .line 38
    :cond_2
    invoke-virtual {v3, p1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 39
    .line 40
    .line 41
    const/4 p1, 0x1

    .line 42
    return p1
.end method

.method public final g(I)V
    .locals 5

    .line 1
    iget v0, p0, Le/b;->f:I

    .line 2
    .line 3
    iget-object v1, p0, Le/b;->a:Landroid/util/SparseIntArray;

    .line 4
    .line 5
    iget-object v2, p0, Le/b;->b:Landroid/os/Parcel;

    .line 6
    .line 7
    if-ltz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {v1, v0}, Landroid/util/SparseIntArray;->get(I)I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    invoke-virtual {v2}, Landroid/os/Parcel;->dataPosition()I

    .line 14
    .line 15
    .line 16
    move-result v3

    .line 17
    sub-int v4, v3, v0

    .line 18
    .line 19
    invoke-virtual {v2, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v2, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v2, v3}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 26
    .line 27
    .line 28
    :cond_0
    iput p1, p0, Le/b;->f:I

    .line 29
    .line 30
    invoke-virtual {v2}, Landroid/os/Parcel;->dataPosition()I

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    invoke-virtual {v1, p1, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 35
    .line 36
    .line 37
    const/4 v0, 0x0

    .line 38
    invoke-virtual {v2, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v2, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 42
    .line 43
    .line 44
    return-void
.end method
