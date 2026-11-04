.class public final Ljd/b;
.super Lid/c;
.source "SourceFile"

# interfaces
.implements Lid/a;


# static fields
.field public static final B:Lorg/slf4j/Logger;


# instance fields
.field public A:I

.field public y:[B

.field public final z:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Ljd/b;

    .line 2
    .line 3
    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Ljd/b;->B:Lorg/slf4j/Logger;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>(Lvc/f;[B)V
    .locals 1

    .line 4
    const-string v0, ""

    invoke-direct {p0, p1, p2, v0}, Ljd/b;-><init>(Lvc/f;[BLjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lvc/f;[BLjava/lang/String;)V
    .locals 1

    const/4 v0, 0x6

    .line 1
    invoke-direct {p0, p1, v0}, Lid/c;-><init>(Lvc/f;I)V

    .line 2
    iput-object p2, p0, Ljd/b;->y:[B

    .line 3
    iput-object p3, p0, Ljd/b;->z:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final l0(I[B)I
    .locals 0

    .line 1
    const/4 p1, 0x0

    .line 2
    return p1
.end method

.method public final p0(I[B)I
    .locals 4

    .line 1
    const-wide/16 v0, 0x18

    .line 2
    .line 3
    invoke-static {v0, v1, p2, p1}, Lrd/a;->e(J[BI)V

    .line 4
    .line 5
    .line 6
    iget v0, p0, Ljd/b;->A:I

    .line 7
    .line 8
    int-to-long v0, v0

    .line 9
    add-int/lit8 v2, p1, 0x2

    .line 10
    .line 11
    invoke-static {v0, v1, p2, v2}, Lrd/a;->e(J[BI)V

    .line 12
    .line 13
    .line 14
    add-int/lit8 v0, p1, 0x8

    .line 15
    .line 16
    iget-object v1, p0, Ljd/b;->y:[B

    .line 17
    .line 18
    const/4 v2, 0x0

    .line 19
    const/16 v3, 0x10

    .line 20
    .line 21
    invoke-static {v1, v2, p2, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 22
    .line 23
    .line 24
    add-int/lit8 p2, p1, 0x18

    .line 25
    .line 26
    sget-object v0, Ljd/b;->B:Lorg/slf4j/Logger;

    .line 27
    .line 28
    invoke-interface {v0}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    if-eqz v1, :cond_0

    .line 33
    .line 34
    iget-object v1, p0, Ljd/b;->y:[B

    .line 35
    .line 36
    array-length v3, v1

    .line 37
    invoke-static {v1, v2, v3}, Lge/a;->m([BII)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    const-string v2, "Closing "

    .line 42
    .line 43
    const-string v3, " ("

    .line 44
    .line 45
    invoke-static {v2, v1, v3}, Lda/b;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    iget-object v2, p0, Ljd/b;->z:Ljava/lang/String;

    .line 50
    .line 51
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    const-string v2, ")"

    .line 55
    .line 56
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    :cond_0
    sub-int/2addr p2, p1

    .line 67
    return p2
.end method

.method public final q0(Lvc/b;)Lid/d;
    .locals 3

    .line 1
    new-instance v0, Ljd/c;

    .line 2
    .line 3
    invoke-interface {p1}, Lvc/b;->e()Lvc/f;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    iget-object v1, p0, Ljd/b;->y:[B

    .line 8
    .line 9
    iget-object v2, p0, Ljd/b;->z:Ljava/lang/String;

    .line 10
    .line 11
    invoke-direct {v0, p1, v1, v2}, Ljd/c;-><init>(Lvc/f;[BLjava/lang/String;)V

    .line 12
    .line 13
    .line 14
    return-object v0
.end method

.method public final size()I
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    const/16 v1, 0x58

    .line 3
    .line 4
    invoke-static {v1, v0}, Lid/b;->o0(II)I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    return v0
.end method

.method public final w([B)V
    .locals 0

    .line 1
    iput-object p1, p0, Ljd/b;->y:[B

    .line 2
    .line 3
    return-void
.end method
