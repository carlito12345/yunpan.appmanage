.class public final Lfi/f;
.super Lfi/d;
.source "SourceFile"


# instance fields
.field public final q:Ljava/io/OutputStream;


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lfi/d;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lfi/f;->q:Ljava/io/OutputStream;

    .line 5
    .line 6
    const-wide/16 v0, 0x0

    .line 7
    .line 8
    iput-wide v0, p0, Lfi/d;->l:J

    .line 9
    .line 10
    const/4 p1, -0x1

    .line 11
    iput p1, p0, Lfi/d;->m:I

    .line 12
    .line 13
    const/4 p1, 0x0

    .line 14
    iput-byte p1, p0, Lfi/d;->o:B

    .line 15
    .line 16
    const-wide/16 v0, 0x1

    .line 17
    .line 18
    iput-wide v0, p0, Lfi/d;->n:J

    .line 19
    .line 20
    return-void
.end method


# virtual methods
.method public final u0(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lfi/f;->q:Ljava/io/OutputStream;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
