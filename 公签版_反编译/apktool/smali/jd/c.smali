.class public final Ljd/c;
.super Lid/d;
.source "SourceFile"

# interfaces
.implements Lad/i;


# static fields
.field public static final I:Lorg/slf4j/Logger;


# instance fields
.field public final D:[B

.field public final E:Ljava/lang/String;

.field public F:I

.field public G:J

.field public H:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Ljd/c;

    .line 2
    .line 3
    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Ljd/c;->I:Lorg/slf4j/Logger;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>(Lvc/f;[BLjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lid/d;-><init>(Lvc/f;)V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, Ljd/c;->D:[B

    .line 5
    .line 6
    iput-object p3, p0, Ljd/c;->E:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final getLastWriteTime()J
    .locals 2

    .line 1
    iget-wide v0, p0, Ljd/c;->G:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final getSize()J
    .locals 2

    .line 1
    iget-wide v0, p0, Ljd/c;->H:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final l0(I[B)I
    .locals 4

    .line 1
    invoke-static {p1, p2}, Lrd/a;->a(I[B)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/16 v1, 0x3c

    .line 6
    .line 7
    if-ne v0, v1, :cond_1

    .line 8
    .line 9
    add-int/lit8 v0, p1, 0x2

    .line 10
    .line 11
    invoke-static {v0, p2}, Lrd/a;->a(I[B)I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    iput v0, p0, Ljd/c;->F:I

    .line 16
    .line 17
    add-int/lit8 v0, p1, 0x8

    .line 18
    .line 19
    invoke-static {v0, p2}, Lrd/a;->d(I[B)J

    .line 20
    .line 21
    .line 22
    add-int/lit8 v0, p1, 0x10

    .line 23
    .line 24
    invoke-static {v0, p2}, Lrd/a;->d(I[B)J

    .line 25
    .line 26
    .line 27
    add-int/lit8 v0, p1, 0x18

    .line 28
    .line 29
    invoke-static {v0, p2}, Lrd/a;->d(I[B)J

    .line 30
    .line 31
    .line 32
    move-result-wide v0

    .line 33
    iput-wide v0, p0, Ljd/c;->G:J

    .line 34
    .line 35
    add-int/lit8 v0, p1, 0x20

    .line 36
    .line 37
    invoke-static {v0, p2}, Lrd/a;->d(I[B)J

    .line 38
    .line 39
    .line 40
    add-int/lit8 v0, p1, 0x28

    .line 41
    .line 42
    invoke-static {v0, p2}, Lrd/a;->c(I[B)J

    .line 43
    .line 44
    .line 45
    add-int/lit8 v0, p1, 0x30

    .line 46
    .line 47
    invoke-static {v0, p2}, Lrd/a;->c(I[B)J

    .line 48
    .line 49
    .line 50
    move-result-wide v0

    .line 51
    iput-wide v0, p0, Ljd/c;->H:J

    .line 52
    .line 53
    add-int/lit8 v0, p1, 0x38

    .line 54
    .line 55
    invoke-static {v0, p2}, Lrd/a;->b(I[B)I

    .line 56
    .line 57
    .line 58
    add-int/lit8 p2, p1, 0x3c

    .line 59
    .line 60
    sget-object v0, Ljd/c;->I:Lorg/slf4j/Logger;

    .line 61
    .line 62
    invoke-interface {v0}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    .line 63
    .line 64
    .line 65
    move-result v1

    .line 66
    if-eqz v1, :cond_0

    .line 67
    .line 68
    iget-object v1, p0, Ljd/c;->D:[B

    .line 69
    .line 70
    array-length v2, v1

    .line 71
    const/4 v3, 0x0

    .line 72
    invoke-static {v1, v3, v2}, Lge/a;->m([BII)Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v1

    .line 76
    const-string v2, "Closed "

    .line 77
    .line 78
    const-string v3, " ("

    .line 79
    .line 80
    invoke-static {v2, v1, v3}, Lda/b;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    move-result-object v1

    .line 84
    iget-object v2, p0, Ljd/c;->E:Ljava/lang/String;

    .line 85
    .line 86
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    const-string v2, ")"

    .line 90
    .line 91
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v1

    .line 98
    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    :cond_0
    sub-int/2addr p2, p1

    .line 102
    return p2

    .line 103
    :cond_1
    new-instance p1, Lad/g;

    .line 104
    .line 105
    const-string p2, "Expected structureSize = 60"

    .line 106
    .line 107
    invoke-direct {p1, p2}, Lad/g;-><init>(Ljava/lang/String;)V

    .line 108
    .line 109
    .line 110
    throw p1
.end method

.method public final p0(I[B)I
    .locals 0

    .line 1
    const/4 p1, 0x0

    .line 2
    return p1
.end method
