.class public final Lfd/d;
.super Led/c;
.source "SourceFile"

# interfaces
.implements Lad/e;


# static fields
.field public static final H:Lorg/slf4j/Logger;


# instance fields
.field public final G:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lfd/d;

    .line 2
    .line 3
    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Lfd/d;->H:Lorg/slf4j/Logger;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>(Lvc/f;I)V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x4

    .line 3
    invoke-direct {p0, p1, v1, v0}, Led/c;-><init>(Lvc/f;BLjava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput p2, p0, Lfd/d;->G:I

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final M(Lvc/b;)Lad/d;
    .locals 1

    .line 1
    new-instance v0, Lfd/c;

    .line 2
    .line 3
    invoke-interface {p1}, Lvc/b;->e()Lvc/f;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-direct {v0, p1}, Lfd/c;-><init>(Lvc/f;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, v0}, Led/c;->s(Lad/d;)V

    .line 11
    .line 12
    .line 13
    return-object v0
.end method

.method public final b()Lad/d;
    .locals 1

    .line 1
    iget-object v0, p0, Led/c;->w:Led/c;

    .line 2
    check-cast v0, Lfd/c;

    return-object v0
.end method

.method public final b()Lhe/d;
    .locals 1

    .line 3
    iget-object v0, p0, Led/c;->w:Led/c;

    .line 4
    check-cast v0, Lfd/c;

    return-object v0
.end method

.method public final g0()Led/c;
    .locals 1

    .line 1
    iget-object v0, p0, Led/c;->w:Led/c;

    .line 2
    .line 3
    check-cast v0, Lfd/c;

    .line 4
    .line 5
    return-object v0
.end method

.method public final i0(I[B)I
    .locals 0

    .line 1
    const/4 p1, 0x0

    .line 2
    return p1
.end method

.method public final k0(I[B)I
    .locals 0

    .line 1
    const/4 p1, 0x0

    .line 2
    return p1
.end method

.method public final o0(I[B)I
    .locals 0

    .line 1
    const/4 p1, 0x0

    .line 2
    return p1
.end method

.method public final q0(I[B)I
    .locals 2

    .line 1
    iget v0, p0, Lfd/d;->G:I

    .line 2
    .line 3
    int-to-long v0, v0

    .line 4
    invoke-static {v0, v1, p2, p1}, Lrd/a;->e(J[BI)V

    .line 5
    .line 6
    .line 7
    add-int/lit8 p1, p1, 0x2

    .line 8
    .line 9
    iget-object v0, p0, Led/c;->v:Led/b;

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    sget-object v0, Led/b;->e:Lorg/slf4j/Logger;

    .line 14
    .line 15
    const-wide/16 v0, -0x1

    .line 16
    .line 17
    invoke-static {v0, v1, p2, p1}, Lrd/a;->f(J[BI)V

    .line 18
    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    sget-object p1, Lfd/d;->H:Lorg/slf4j/Logger;

    .line 22
    .line 23
    const-string p2, "SmbComClose without a digest"

    .line 24
    .line 25
    invoke-interface {p1, p2}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    :goto_0
    const/4 p1, 0x6

    .line 29
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
    const-string v2, "SmbComClose["

    .line 6
    .line 7
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-super {p0}, Led/c;->toString()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    const-string v2, ",fid="

    .line 18
    .line 19
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    iget v2, p0, Lfd/d;->G:I

    .line 23
    .line 24
    const-string v3, ",lastWriteTime=0]"

    .line 25
    .line 26
    invoke-static {v1, v2, v3}, Landroid/support/v4/media/session/a;->s(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    return-object v0
.end method
