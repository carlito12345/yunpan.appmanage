.class public final Ljg/y;
.super Lyg/b;
.source "SourceFile"


# instance fields
.field public final synthetic b:Ljg/z;


# direct methods
.method public constructor <init>(Ljg/z;Ljava/io/OutputStream;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ljg/y;->b:Ljg/z;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Lyg/b;-><init>(Ljava/io/OutputStream;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final write(I)V
    .locals 1

    .line 7
    invoke-super {p0, p1}, Lyg/b;->write(I)V

    .line 8
    iget-object v0, p0, Ljg/y;->b:Ljg/z;

    iget-object v0, v0, Ljg/z;->d:Ljava/util/zip/CRC32;

    .line 9
    invoke-virtual {v0, p1}, Ljava/util/zip/CRC32;->update(I)V

    return-void
.end method

.method public final write([B)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lyg/b;->write([B)V

    .line 2
    iget-object v0, p0, Ljg/y;->b:Ljg/z;

    iget-object v0, v0, Ljg/z;->d:Ljava/util/zip/CRC32;

    .line 3
    invoke-virtual {v0, p1}, Ljava/util/zip/CRC32;->update([B)V

    return-void
.end method

.method public final write([BII)V
    .locals 1

    .line 4
    invoke-super {p0, p1, p2, p3}, Lyg/b;->write([BII)V

    .line 5
    iget-object v0, p0, Ljg/y;->b:Ljg/z;

    iget-object v0, v0, Ljg/z;->d:Ljava/util/zip/CRC32;

    .line 6
    invoke-virtual {v0, p1, p2, p3}, Ljava/util/zip/CRC32;->update([BII)V

    return-void
.end method
