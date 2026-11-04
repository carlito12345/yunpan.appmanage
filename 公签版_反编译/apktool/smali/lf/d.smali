.class public final Llf/d;
.super Lab/a;
.source "SourceFile"


# instance fields
.field public final c:S


# direct methods
.method public constructor <init>(IS)V
    .locals 1

    .line 1
    const/4 v0, 0x3

    .line 2
    invoke-direct {p0, p1, v0}, Lab/a;-><init>(II)V

    .line 3
    .line 4
    .line 5
    iput-short p2, p0, Llf/d;->c:S

    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public final f(Lmf/h;Ljava/util/Locale;)Ljava/lang/String;
    .locals 4

    .line 1
    new-instance p1, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string p2, "{"

    .line 4
    .line 5
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-short p2, p0, Llf/d;->c:S

    .line 9
    .line 10
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string p2, ":"

    .line 14
    .line 15
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget p2, p0, Lab/a;->b:I

    .line 19
    .line 20
    int-to-long v0, p2

    .line 21
    const-wide v2, 0xffffffffL

    .line 22
    .line 23
    .line 24
    .line 25
    .line 26
    and-long/2addr v0, v2

    .line 27
    const-string p2, "}"

    .line 28
    .line 29
    invoke-static {p1, v0, v1, p2}, Landroid/support/v4/media/session/a;->t(Ljava/lang/StringBuilder;JLjava/lang/String;)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    return-object p1
.end method
