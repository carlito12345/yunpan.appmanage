.class public final Lb5/d;
.super Ljava/io/FilterWriter;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:I

.field public final c:I

.field public d:I

.field public e:Z

.field public f:I


# direct methods
.method public constructor <init>(ILjava/io/StringWriter;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0, p2}, Ljava/io/FilterWriter;-><init>(Ljava/io/Writer;)V

    .line 2
    .line 3
    .line 4
    if-ltz p1, :cond_3

    .line 5
    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    move p2, p1

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const p2, 0x7fffffff

    .line 11
    .line 12
    .line 13
    :goto_0
    iput p2, p0, Lb5/d;->b:I

    .line 14
    .line 15
    const/4 p2, 0x1

    .line 16
    shr-int/2addr p1, p2

    .line 17
    iput p1, p0, Lb5/d;->c:I

    .line 18
    .line 19
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-nez v0, :cond_1

    .line 24
    .line 25
    const/4 p3, 0x0

    .line 26
    :cond_1
    iput-object p3, p0, Lb5/d;->a:Ljava/lang/String;

    .line 27
    .line 28
    const/4 p3, 0x0

    .line 29
    iput p3, p0, Lb5/d;->d:I

    .line 30
    .line 31
    if-eqz p1, :cond_2

    .line 32
    .line 33
    goto :goto_1

    .line 34
    :cond_2
    const/4 p2, 0x0

    .line 35
    :goto_1
    iput-boolean p2, p0, Lb5/d;->e:Z

    .line 36
    .line 37
    iput p3, p0, Lb5/d;->f:I

    .line 38
    .line 39
    return-void

    .line 40
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 41
    .line 42
    const-string p2, "width < 0"

    .line 43
    .line 44
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    throw p1
.end method


# virtual methods
.method public final write(I)V
    .locals 7

    .line 1
    iget-object v0, p0, Ljava/io/FilterWriter;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-boolean v1, p0, Lb5/d;->e:Z

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v4, 0x20

    if-eqz v1, :cond_1

    if-ne p1, v4, :cond_0

    .line 3
    iget v1, p0, Lb5/d;->f:I

    add-int/2addr v1, v3

    iput v1, p0, Lb5/d;->f:I

    .line 4
    iget v5, p0, Lb5/d;->c:I

    if-lt v1, v5, :cond_1

    .line 5
    iput v5, p0, Lb5/d;->f:I

    .line 6
    iput-boolean v2, p0, Lb5/d;->e:Z

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_4

    .line 7
    :cond_0
    iput-boolean v2, p0, Lb5/d;->e:Z

    .line 8
    :cond_1
    :goto_0
    iget v1, p0, Lb5/d;->d:I

    iget v5, p0, Lb5/d;->b:I

    const/16 v6, 0xa

    if-ne v1, v5, :cond_2

    if-eq p1, v6, :cond_2

    .line 9
    iget-object v1, p0, Ljava/io/FilterWriter;->out:Ljava/io/Writer;

    invoke-virtual {v1, v6}, Ljava/io/Writer;->write(I)V

    .line 10
    iput v2, p0, Lb5/d;->d:I

    .line 11
    :cond_2
    iget v1, p0, Lb5/d;->d:I

    if-nez v1, :cond_5

    .line 12
    iget-object v1, p0, Lb5/d;->a:Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 13
    iget-object v5, p0, Ljava/io/FilterWriter;->out:Ljava/io/Writer;

    invoke-virtual {v5, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 14
    :cond_3
    iget-boolean v1, p0, Lb5/d;->e:Z

    if-nez v1, :cond_5

    const/4 v1, 0x0

    .line 15
    :goto_1
    iget v5, p0, Lb5/d;->f:I

    if-ge v1, v5, :cond_4

    .line 16
    iget-object v5, p0, Ljava/io/FilterWriter;->out:Ljava/io/Writer;

    invoke-virtual {v5, v4}, Ljava/io/Writer;->write(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 17
    :cond_4
    iput v5, p0, Lb5/d;->d:I

    .line 18
    :cond_5
    iget-object v1, p0, Ljava/io/FilterWriter;->out:Ljava/io/Writer;

    invoke-virtual {v1, p1}, Ljava/io/Writer;->write(I)V

    if-ne p1, v6, :cond_7

    .line 19
    iput v2, p0, Lb5/d;->d:I

    .line 20
    iget p1, p0, Lb5/d;->c:I

    if-eqz p1, :cond_6

    goto :goto_2

    :cond_6
    const/4 v3, 0x0

    :goto_2
    iput-boolean v3, p0, Lb5/d;->e:Z

    .line 21
    iput v2, p0, Lb5/d;->f:I

    goto :goto_3

    .line 22
    :cond_7
    iget p1, p0, Lb5/d;->d:I

    add-int/2addr p1, v3

    iput p1, p0, Lb5/d;->d:I

    .line 23
    :goto_3
    monitor-exit v0

    return-void

    :goto_4
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_6

    :goto_5
    throw p1

    :goto_6
    goto :goto_5
.end method

.method public final write(Ljava/lang/String;II)V
    .locals 2

    .line 27
    iget-object v0, p0, Ljava/io/FilterWriter;->lock:Ljava/lang/Object;

    monitor-enter v0

    :goto_0
    if-lez p3, :cond_0

    .line 28
    :try_start_0
    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {p0, v1}, Lb5/d;->write(I)V

    add-int/lit8 p2, p2, 0x1

    add-int/lit8 p3, p3, -0x1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 29
    :cond_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    :goto_2
    throw p1

    :goto_3
    goto :goto_2
.end method

.method public final write([CII)V
    .locals 2

    .line 24
    iget-object v0, p0, Ljava/io/FilterWriter;->lock:Ljava/lang/Object;

    monitor-enter v0

    :goto_0
    if-lez p3, :cond_0

    .line 25
    :try_start_0
    aget-char v1, p1, p2

    invoke-virtual {p0, v1}, Lb5/d;->write(I)V

    add-int/lit8 p2, p2, 0x1

    add-int/lit8 p3, p3, -0x1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 26
    :cond_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    :goto_2
    throw p1

    :goto_3
    goto :goto_2
.end method
