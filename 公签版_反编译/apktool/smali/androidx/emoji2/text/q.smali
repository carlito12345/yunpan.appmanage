.class public final Landroidx/emoji2/text/q;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:I

.field public b:I

.field public c:I

.field public d:Ljava/lang/Object;

.field public e:Ljava/lang/Object;

.field public f:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroidx/emoji2/text/t;)V
    .locals 1

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 19
    iput v0, p0, Landroidx/emoji2/text/q;->a:I

    .line 20
    iput-object p1, p0, Landroidx/emoji2/text/q;->d:Ljava/lang/Object;

    .line 21
    iput-object p1, p0, Landroidx/emoji2/text/q;->e:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lz7/s;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    :try_start_0
    const-string v0, "FileId"

    invoke-virtual {p1, v0}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    move-result-object v0

    invoke-virtual {v0}, Lz7/p;->e()I

    move-result v0

    iput v0, p0, Landroidx/emoji2/text/q;->a:I

    .line 3
    const-string v0, "FileName"

    invoke-virtual {p1, v0}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    move-result-object v0

    invoke-virtual {v0}, Lz7/p;->i()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroidx/emoji2/text/q;->d:Ljava/lang/Object;

    .line 4
    const-string v0, "Type"

    invoke-virtual {p1, v0}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    move-result-object v0

    invoke-virtual {v0}, Lz7/p;->e()I

    move-result v0

    iput v0, p0, Landroidx/emoji2/text/q;->b:I

    .line 5
    const-string v0, "Size"

    invoke-virtual {p1, v0}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    move-result-object v0

    invoke-virtual {v0}, Lz7/p;->e()I

    move-result v0

    iput v0, p0, Landroidx/emoji2/text/q;->c:I

    .line 6
    const-string v0, "ContentType"

    invoke-virtual {p1, v0}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    move-result-object v0

    invoke-virtual {v0}, Lz7/p;->i()Ljava/lang/String;

    .line 7
    const-string v0, "S3KeyFlag"

    invoke-virtual {p1, v0}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    move-result-object v0

    invoke-virtual {v0}, Lz7/p;->i()Ljava/lang/String;

    .line 8
    const-string v0, "CreateAt"

    invoke-virtual {p1, v0}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    move-result-object v0

    invoke-virtual {v0}, Lz7/p;->i()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroidx/emoji2/text/q;->e:Ljava/lang/Object;

    .line 9
    const-string v0, "UpdateAt"

    invoke-virtual {p1, v0}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    move-result-object v0

    invoke-virtual {v0}, Lz7/p;->i()Ljava/lang/String;

    .line 10
    const-string v0, "Etag"

    invoke-virtual {p1, v0}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    move-result-object v0

    invoke-virtual {v0}, Lz7/p;->i()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroidx/emoji2/text/q;->f:Ljava/lang/Object;

    .line 11
    const-string v0, "DownloadUrl"

    invoke-virtual {p1, v0}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    move-result-object v0

    invoke-virtual {v0}, Lz7/p;->i()Ljava/lang/String;

    .line 12
    const-string v0, "Status"

    invoke-virtual {p1, v0}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    move-result-object v0

    invoke-virtual {v0}, Lz7/p;->e()I

    .line 13
    const-string v0, "ParentFileId"

    invoke-virtual {p1, v0}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    move-result-object v0

    invoke-virtual {v0}, Lz7/p;->e()I

    .line 14
    const-string v0, "Category"

    invoke-virtual {p1, v0}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    move-result-object v0

    invoke-virtual {v0}, Lz7/p;->e()I

    .line 15
    const-string v0, "PunishFlag"

    invoke-virtual {p1, v0}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    move-result-object v0

    invoke-virtual {v0}, Lz7/p;->e()I

    .line 16
    const-string v0, "StorageNode"

    invoke-virtual {p1, v0}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    move-result-object v0

    invoke-virtual {v0}, Lz7/p;->i()Ljava/lang/String;

    .line 17
    const-string v0, "PreviewType"

    invoke-virtual {p1, v0}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    move-result-object p1

    invoke-virtual {p1}, Lz7/p;->e()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method


# virtual methods
.method public a(I)I
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/emoji2/text/q;->e:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Landroidx/emoji2/text/t;

    .line 4
    .line 5
    iget-object v0, v0, Landroidx/emoji2/text/t;->a:Landroid/util/SparseArray;

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Landroidx/emoji2/text/t;

    .line 16
    .line 17
    :goto_0
    iget v1, p0, Landroidx/emoji2/text/q;->a:I

    .line 18
    .line 19
    const/4 v2, 0x1

    .line 20
    const/4 v3, 0x2

    .line 21
    if-eq v1, v3, :cond_2

    .line 22
    .line 23
    if-nez v0, :cond_1

    .line 24
    .line 25
    invoke-virtual {p0}, Landroidx/emoji2/text/q;->b()V

    .line 26
    .line 27
    .line 28
    goto :goto_3

    .line 29
    :cond_1
    iput v3, p0, Landroidx/emoji2/text/q;->a:I

    .line 30
    .line 31
    iput-object v0, p0, Landroidx/emoji2/text/q;->e:Ljava/lang/Object;

    .line 32
    .line 33
    iput v2, p0, Landroidx/emoji2/text/q;->c:I

    .line 34
    .line 35
    :goto_1
    const/4 v2, 0x2

    .line 36
    goto :goto_3

    .line 37
    :cond_2
    if-eqz v0, :cond_3

    .line 38
    .line 39
    iput-object v0, p0, Landroidx/emoji2/text/q;->e:Ljava/lang/Object;

    .line 40
    .line 41
    iget v0, p0, Landroidx/emoji2/text/q;->c:I

    .line 42
    .line 43
    add-int/2addr v0, v2

    .line 44
    iput v0, p0, Landroidx/emoji2/text/q;->c:I

    .line 45
    .line 46
    goto :goto_1

    .line 47
    :cond_3
    const v0, 0xfe0e

    .line 48
    .line 49
    .line 50
    if-ne p1, v0, :cond_4

    .line 51
    .line 52
    invoke-virtual {p0}, Landroidx/emoji2/text/q;->b()V

    .line 53
    .line 54
    .line 55
    goto :goto_3

    .line 56
    :cond_4
    const v0, 0xfe0f

    .line 57
    .line 58
    .line 59
    if-ne p1, v0, :cond_5

    .line 60
    .line 61
    goto :goto_1

    .line 62
    :cond_5
    iget-object v0, p0, Landroidx/emoji2/text/q;->e:Ljava/lang/Object;

    .line 63
    .line 64
    check-cast v0, Landroidx/emoji2/text/t;

    .line 65
    .line 66
    iget-object v1, v0, Landroidx/emoji2/text/t;->b:Landroidx/emoji2/text/p;

    .line 67
    .line 68
    if-eqz v1, :cond_8

    .line 69
    .line 70
    iget v1, p0, Landroidx/emoji2/text/q;->c:I

    .line 71
    .line 72
    const/4 v3, 0x3

    .line 73
    if-ne v1, v2, :cond_7

    .line 74
    .line 75
    invoke-virtual {p0}, Landroidx/emoji2/text/q;->c()Z

    .line 76
    .line 77
    .line 78
    move-result v0

    .line 79
    if-eqz v0, :cond_6

    .line 80
    .line 81
    iget-object v0, p0, Landroidx/emoji2/text/q;->e:Ljava/lang/Object;

    .line 82
    .line 83
    check-cast v0, Landroidx/emoji2/text/t;

    .line 84
    .line 85
    iput-object v0, p0, Landroidx/emoji2/text/q;->f:Ljava/lang/Object;

    .line 86
    .line 87
    invoke-virtual {p0}, Landroidx/emoji2/text/q;->b()V

    .line 88
    .line 89
    .line 90
    :goto_2
    const/4 v2, 0x3

    .line 91
    goto :goto_3

    .line 92
    :cond_6
    invoke-virtual {p0}, Landroidx/emoji2/text/q;->b()V

    .line 93
    .line 94
    .line 95
    goto :goto_3

    .line 96
    :cond_7
    iput-object v0, p0, Landroidx/emoji2/text/q;->f:Ljava/lang/Object;

    .line 97
    .line 98
    invoke-virtual {p0}, Landroidx/emoji2/text/q;->b()V

    .line 99
    .line 100
    .line 101
    goto :goto_2

    .line 102
    :cond_8
    invoke-virtual {p0}, Landroidx/emoji2/text/q;->b()V

    .line 103
    .line 104
    .line 105
    :goto_3
    iput p1, p0, Landroidx/emoji2/text/q;->b:I

    .line 106
    .line 107
    return v2
.end method

.method public b()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput v0, p0, Landroidx/emoji2/text/q;->a:I

    .line 3
    .line 4
    iget-object v0, p0, Landroidx/emoji2/text/q;->d:Ljava/lang/Object;

    .line 5
    .line 6
    check-cast v0, Landroidx/emoji2/text/t;

    .line 7
    .line 8
    iput-object v0, p0, Landroidx/emoji2/text/q;->e:Ljava/lang/Object;

    .line 9
    .line 10
    const/4 v0, 0x0

    .line 11
    iput v0, p0, Landroidx/emoji2/text/q;->c:I

    .line 12
    .line 13
    return-void
.end method

.method public c()Z
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/emoji2/text/q;->e:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Landroidx/emoji2/text/t;

    .line 4
    .line 5
    iget-object v0, v0, Landroidx/emoji2/text/t;->b:Landroidx/emoji2/text/p;

    .line 6
    .line 7
    invoke-virtual {v0}, Landroidx/emoji2/text/p;->c()Lh1/a;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    const/4 v1, 0x6

    .line 12
    invoke-virtual {v0, v1}, Lh1/c;->a(I)I

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    const/4 v2, 0x1

    .line 17
    if-eqz v1, :cond_0

    .line 18
    .line 19
    iget-object v3, v0, Lh1/c;->d:Ljava/lang/Object;

    .line 20
    .line 21
    check-cast v3, Ljava/nio/ByteBuffer;

    .line 22
    .line 23
    iget v0, v0, Lh1/c;->a:I

    .line 24
    .line 25
    add-int/2addr v1, v0

    .line 26
    invoke-virtual {v3, v1}, Ljava/nio/ByteBuffer;->get(I)B

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    if-eqz v0, :cond_0

    .line 31
    .line 32
    return v2

    .line 33
    :cond_0
    iget v0, p0, Landroidx/emoji2/text/q;->b:I

    .line 34
    .line 35
    const v1, 0xfe0f

    .line 36
    .line 37
    .line 38
    if-ne v0, v1, :cond_1

    .line 39
    .line 40
    return v2

    .line 41
    :cond_1
    const/4 v0, 0x0

    .line 42
    return v0
.end method
