.class public final Lcg/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:I

.field public b:J

.field public c:J

.field public d:I

.field public e:I

.field public f:Ljava/lang/Exception;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput v0, p0, Lcg/a;->a:I

    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public final a(J)V
    .locals 5

    .line 1
    iget-wide v0, p0, Lcg/a;->c:J

    .line 2
    .line 3
    add-long/2addr v0, p1

    .line 4
    iput-wide v0, p0, Lcg/a;->c:J

    .line 5
    .line 6
    iget-wide p1, p0, Lcg/a;->b:J

    .line 7
    .line 8
    const-wide/16 v2, 0x0

    .line 9
    .line 10
    cmp-long v4, p1, v2

    .line 11
    .line 12
    if-lez v4, :cond_0

    .line 13
    .line 14
    const-wide/16 v2, 0x64

    .line 15
    .line 16
    mul-long v0, v0, v2

    .line 17
    .line 18
    div-long/2addr v0, p1

    .line 19
    long-to-int p1, v0

    .line 20
    iput p1, p0, Lcg/a;->d:I

    .line 21
    .line 22
    const/16 p2, 0x64

    .line 23
    .line 24
    if-le p1, p2, :cond_0

    .line 25
    .line 26
    iput p2, p0, Lcg/a;->d:I

    .line 27
    .line 28
    :cond_0
    return-void
.end method
