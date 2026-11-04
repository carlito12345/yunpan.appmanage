.class public abstract Lag/b;
.super Lab/a;
.source "SourceFile"


# instance fields
.field public c:I

.field public d:[B

.field public e:I

.field public f:J

.field public g:J

.field public h:J

.field public i:J

.field public j:I

.field public k:Ljava/lang/String;

.field public l:Z

.field public m:I

.field public n:Z

.field public p:Lag/k;

.field public q:Lag/a;

.field public r:Z

.field public s:Ljava/util/List;

.field public t:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    const/4 v0, 0x2

    .line 2
    const/4 v1, 0x0

    .line 3
    invoke-direct {p0, v0, v1}, Lab/a;-><init>(IZ)V

    .line 4
    .line 5
    .line 6
    const-wide/16 v0, 0x0

    .line 7
    .line 8
    iput-wide v0, p0, Lag/b;->g:J

    .line 9
    .line 10
    iput-wide v0, p0, Lag/b;->h:J

    .line 11
    .line 12
    iput-wide v0, p0, Lag/b;->i:J

    .line 13
    .line 14
    const/4 v0, 0x1

    .line 15
    iput v0, p0, Lag/b;->m:I

    .line 16
    .line 17
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    instance-of v1, p1, Lag/b;

    .line 6
    .line 7
    if-nez v1, :cond_1

    .line 8
    .line 9
    return v0

    .line 10
    :cond_1
    iget-object v0, p0, Lag/b;->k:Ljava/lang/String;

    .line 11
    .line 12
    check-cast p1, Lag/b;

    .line 13
    .line 14
    iget-object p1, p1, Lag/b;->k:Ljava/lang/String;

    .line 15
    .line 16
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    return p1
.end method
