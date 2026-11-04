.class public final Llf/c;
.super Lab/a;
.source "SourceFile"


# instance fields
.field public final c:I


# direct methods
.method public constructor <init>(II)V
    .locals 1

    .line 1
    const/4 v0, 0x3

    .line 2
    invoke-direct {p0, p1, v0}, Lab/a;-><init>(II)V

    .line 3
    .line 4
    .line 5
    iput p2, p0, Llf/c;->c:I

    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public final f(Lmf/h;Ljava/util/Locale;)Ljava/lang/String;
    .locals 2

    .line 1
    new-instance p1, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    iget p2, p0, Llf/c;->c:I

    .line 7
    .line 8
    div-int/lit8 p2, p2, 0x2

    .line 9
    .line 10
    add-int/lit8 p2, p2, -0x1

    .line 11
    .line 12
    :goto_0
    if-ltz p2, :cond_0

    .line 13
    .line 14
    mul-int/lit8 v0, p2, 0x8

    .line 15
    .line 16
    iget v1, p0, Lab/a;->b:I

    .line 17
    .line 18
    shr-int v0, v1, v0

    .line 19
    .line 20
    and-int/lit16 v0, v0, 0xff

    .line 21
    .line 22
    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    add-int/lit8 p2, p2, -0x1

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    return-object p1
.end method
