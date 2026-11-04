.class public final Lfi/e;
.super Lfi/d;
.source "SourceFile"


# instance fields
.field public final q:[B

.field public r:I


# direct methods
.method public constructor <init>(Lyh/b;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lfi/d;-><init>()V

    .line 2
    .line 3
    .line 4
    const/high16 v0, 0x10000

    .line 5
    .line 6
    invoke-virtual {p1, v0}, Lyh/b;->a(I)[B

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    iput-object p1, p0, Lfi/e;->q:[B

    .line 11
    .line 12
    invoke-virtual {p0}, Lfi/e;->v0()V

    .line 13
    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public final s0()I
    .locals 3

    .line 1
    iget v0, p0, Lfi/e;->r:I

    .line 2
    .line 3
    iget-wide v1, p0, Lfi/d;->n:J

    .line 4
    .line 5
    long-to-int v2, v1

    .line 6
    add-int/2addr v0, v2

    .line 7
    add-int/lit8 v0, v0, 0x4

    .line 8
    .line 9
    return v0
.end method

.method public final u0(I)V
    .locals 2

    .line 1
    iget v0, p0, Lfi/e;->r:I

    .line 2
    .line 3
    add-int/lit8 v1, v0, 0x1

    .line 4
    .line 5
    iput v1, p0, Lfi/e;->r:I

    .line 6
    .line 7
    int-to-byte p1, p1

    .line 8
    iget-object v1, p0, Lfi/e;->q:[B

    .line 9
    .line 10
    aput-byte p1, v1, v0

    .line 11
    .line 12
    return-void
.end method

.method public final v0()V
    .locals 3

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    iput-wide v0, p0, Lfi/d;->l:J

    .line 4
    .line 5
    const/4 v0, -0x1

    .line 6
    iput v0, p0, Lfi/d;->m:I

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    iput-byte v0, p0, Lfi/d;->o:B

    .line 10
    .line 11
    const-wide/16 v1, 0x1

    .line 12
    .line 13
    iput-wide v1, p0, Lfi/d;->n:J

    .line 14
    .line 15
    iput v0, p0, Lfi/e;->r:I

    .line 16
    .line 17
    return-void
.end method
