.class public final Lyf/f;
.super Lmg/a;
.source "SourceFile"


# instance fields
.field public final a:Lyf/g;


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lmg/a;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lyf/g;

    .line 5
    .line 6
    invoke-static {p1}, Leg/c;->e(Ljava/io/File;)[Ljava/io/File;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-direct {v0, p1, v1}, Lyf/g;-><init>(Ljava/io/File;[Ljava/io/File;)V

    .line 11
    .line 12
    .line 13
    iput-object v0, p0, Lyf/f;->a:Lyf/g;

    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public final close()V
    .locals 1

    .line 1
    iget-object v0, p0, Lyf/f;->a:Lyf/g;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lyf/g;->close()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public final r(Lag/f;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lyf/f;->a:Lyf/g;

    .line 2
    .line 3
    iget-wide v1, p1, Lag/f;->y:J

    .line 4
    .line 5
    invoke-virtual {v0, v1, v2}, Lyf/g;->seek(J)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final read()I
    .locals 1

    .line 1
    iget-object v0, p0, Lyf/f;->a:Lyf/g;

    invoke-virtual {v0}, Lyf/g;->read()I

    move-result v0

    return v0
.end method

.method public final read([B)I
    .locals 3

    .line 2
    array-length v0, p1

    .line 3
    iget-object v1, p0, Lyf/f;->a:Lyf/g;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2, v0}, Lyf/g;->read([BII)I

    move-result p1

    return p1
.end method

.method public final read([BII)I
    .locals 1

    .line 4
    iget-object v0, p0, Lyf/f;->a:Lyf/g;

    invoke-virtual {v0, p1, p2, p3}, Lyf/g;->read([BII)I

    move-result p1

    return p1
.end method
