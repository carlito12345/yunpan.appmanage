.class public final Lba/s;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:J

.field public d:J

.field public e:I

.field public final f:I

.field public final g:I

.field public h:Ljava/io/Serializable;

.field public final i:Ljava/io/Serializable;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;JIII[ILjava/util/TreeMap;)V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lba/s;->a:Ljava/lang/String;

    .line 37
    iput-object p2, p0, Lba/s;->b:Ljava/lang/String;

    .line 38
    iput-wide p3, p0, Lba/s;->c:J

    const-wide/16 p1, 0x0

    .line 39
    iput-wide p1, p0, Lba/s;->d:J

    .line 40
    iput p5, p0, Lba/s;->e:I

    .line 41
    iput p6, p0, Lba/s;->f:I

    .line 42
    iput p7, p0, Lba/s;->g:I

    .line 43
    iput-object p8, p0, Lba/s;->h:Ljava/io/Serializable;

    .line 44
    iput-object p9, p0, Lba/s;->i:Ljava/io/Serializable;

    return-void
.end method

.method public constructor <init>(Lz7/s;)V
    .locals 8

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    const-string v0, "fileType"

    invoke-virtual {p1, v0}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    move-result-object v0

    invoke-virtual {v0}, Lz7/p;->e()I

    move-result v0

    iput v0, p0, Lba/s;->f:I

    const/4 v1, 0x1

    .line 3
    const-string v2, "updTime"

    const-string v3, "type"

    const-string v4, "name"

    const-string v5, "sortId"

    const-string v6, "userId"

    if-ne v0, v1, :cond_5

    .line 4
    const-string v0, "iconId"

    invoke-virtual {p1, v0}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    move-result-object v0

    invoke-virtual {v0}, Lz7/p;->h()J

    .line 5
    const-string v0, "fileName"

    invoke-virtual {p1, v0}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    move-result-object v0

    invoke-virtual {v0}, Lz7/p;->i()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lba/s;->i:Ljava/io/Serializable;

    .line 6
    const-string v1, "fileSaves"

    invoke-virtual {p1, v1}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    move-result-object v1

    invoke-virtual {v1}, Lz7/p;->h()J

    .line 7
    const-string v1, "fileStars"

    invoke-virtual {p1, v1}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    move-result-object v1

    invoke-virtual {v1}, Lz7/p;->c()D

    .line 8
    invoke-virtual {p1, v3}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    move-result-object v1

    invoke-virtual {v1}, Lz7/p;->e()I

    .line 9
    invoke-virtual {p1, v6}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    .line 10
    iput v1, p0, Lba/s;->e:I

    goto :goto_0

    .line 11
    :cond_0
    invoke-virtual {p1, v6}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    move-result-object v1

    invoke-virtual {v1}, Lz7/p;->e()I

    move-result v1

    iput v1, p0, Lba/s;->e:I

    .line 12
    :goto_0
    const-string v1, "fileComments"

    invoke-virtual {p1, v1}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    move-result-object v1

    invoke-virtual {v1}, Lz7/p;->e()I

    .line 13
    const-string v1, "fileSize"

    invoke-virtual {p1, v1}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    move-result-object v1

    invoke-virtual {v1}, Lz7/p;->h()J

    move-result-wide v6

    iput-wide v6, p0, Lba/s;->c:J

    .line 14
    const-string v1, "fileIcon"

    invoke-virtual {p1, v1}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    move-result-object v1

    invoke-virtual {v1}, Lz7/p;->i()Ljava/lang/String;

    .line 15
    invoke-virtual {p1, v2}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    move-result-object v1

    invoke-virtual {v1}, Lz7/p;->i()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lba/s;->a:Ljava/lang/String;

    .line 16
    invoke-virtual {p1, v5}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    move-result-object v1

    if-nez v1, :cond_1

    goto :goto_1

    .line 17
    :cond_1
    invoke-virtual {p1, v5}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    move-result-object v1

    invoke-virtual {v1}, Lz7/p;->h()J

    .line 18
    :goto_1
    invoke-virtual {p1, v4}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    move-result-object v1

    if-nez v1, :cond_2

    .line 19
    iput-object v0, p0, Lba/s;->b:Ljava/lang/String;

    goto :goto_2

    .line 20
    :cond_2
    invoke-virtual {p1, v4}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    move-result-object v0

    invoke-virtual {v0}, Lz7/p;->i()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lba/s;->b:Ljava/lang/String;

    .line 21
    :goto_2
    const-string v0, "fileDownloads"

    invoke-virtual {p1, v0}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    move-result-object v0

    invoke-virtual {v0}, Lz7/p;->h()J

    .line 22
    const-string v0, "fileUrl"

    invoke-virtual {p1, v0}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {p1, v0}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 23
    instance-of v1, v1, Lz7/r;

    if-eqz v1, :cond_3

    goto :goto_3

    .line 24
    :cond_3
    invoke-virtual {p1, v0}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    move-result-object v0

    invoke-virtual {v0}, Lz7/p;->i()Ljava/lang/String;

    .line 25
    :cond_4
    :goto_3
    const-string v0, "fileLikes"

    invoke-virtual {p1, v0}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    move-result-object v0

    invoke-virtual {v0}, Lz7/p;->h()J

    .line 26
    const-string v0, "fileId"

    invoke-virtual {p1, v0}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    move-result-object p1

    invoke-virtual {p1}, Lz7/p;->h()J

    move-result-wide v0

    iput-wide v0, p0, Lba/s;->d:J

    goto :goto_4

    .line 27
    :cond_5
    :try_start_0
    const-string v0, "folderDesc"

    invoke-virtual {p1, v0}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    move-result-object v0

    invoke-virtual {v0}, Lz7/p;->i()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 28
    :catch_0
    invoke-virtual {p1, v2}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    move-result-object v0

    invoke-virtual {v0}, Lz7/p;->i()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lba/s;->a:Ljava/lang/String;

    .line 29
    invoke-virtual {p1, v5}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    move-result-object v0

    invoke-virtual {v0}, Lz7/p;->h()J

    .line 30
    invoke-virtual {p1, v4}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    move-result-object v0

    invoke-virtual {v0}, Lz7/p;->i()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lba/s;->b:Ljava/lang/String;

    .line 31
    const-string v0, "folderName"

    invoke-virtual {p1, v0}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    move-result-object v0

    invoke-virtual {v0}, Lz7/p;->i()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lba/s;->h:Ljava/io/Serializable;

    .line 32
    invoke-virtual {p1, v3}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    move-result-object v0

    invoke-virtual {v0}, Lz7/p;->e()I

    .line 33
    invoke-virtual {p1, v6}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    move-result-object v0

    invoke-virtual {v0}, Lz7/p;->e()I

    move-result v0

    iput v0, p0, Lba/s;->e:I

    .line 34
    const-string v0, "folderId"

    invoke-virtual {p1, v0}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    move-result-object p1

    invoke-virtual {p1}, Lz7/p;->e()I

    move-result p1

    iput p1, p0, Lba/s;->g:I

    :goto_4
    return-void
.end method
