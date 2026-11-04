.class public final Lag/m;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:I

.field public b:I

.field public c:Z

.field public final d:I

.field public final e:I

.field public final f:I

.field public g:Ljava/lang/String;

.field public h:J

.field public i:J

.field public j:Z


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    .line 2
    iput v0, p0, Lag/m;->a:I

    const/4 v1, 0x6

    .line 3
    iput v1, p0, Lag/m;->b:I

    const/4 v1, 0x0

    .line 4
    iput-boolean v1, p0, Lag/m;->c:Z

    const/4 v1, 0x1

    .line 5
    iput v1, p0, Lag/m;->d:I

    const/4 v2, 0x3

    .line 6
    iput v2, p0, Lag/m;->e:I

    .line 7
    iput v0, p0, Lag/m;->f:I

    const-wide/16 v2, 0x0

    .line 8
    iput-wide v2, p0, Lag/m;->h:J

    const-wide/16 v2, -0x1

    .line 9
    iput-wide v2, p0, Lag/m;->i:J

    .line 10
    iput-boolean v1, p0, Lag/m;->j:Z

    return-void
.end method

.method public constructor <init>(Lag/m;)V
    .locals 4

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    .line 12
    iput v0, p0, Lag/m;->a:I

    const/4 v1, 0x6

    .line 13
    iput v1, p0, Lag/m;->b:I

    const/4 v1, 0x0

    .line 14
    iput-boolean v1, p0, Lag/m;->c:Z

    const/4 v1, 0x1

    .line 15
    iput v1, p0, Lag/m;->d:I

    const/4 v2, 0x3

    .line 16
    iput v2, p0, Lag/m;->e:I

    .line 17
    iput v0, p0, Lag/m;->f:I

    const-wide/16 v2, 0x0

    .line 18
    iput-wide v2, p0, Lag/m;->h:J

    const-wide/16 v2, -0x1

    .line 19
    iput-wide v2, p0, Lag/m;->i:J

    .line 20
    iput-boolean v1, p0, Lag/m;->j:Z

    .line 21
    iget v0, p1, Lag/m;->a:I

    .line 22
    iput v0, p0, Lag/m;->a:I

    .line 23
    iget v0, p1, Lag/m;->b:I

    .line 24
    iput v0, p0, Lag/m;->b:I

    .line 25
    iget-boolean v0, p1, Lag/m;->c:Z

    .line 26
    iput-boolean v0, p0, Lag/m;->c:Z

    .line 27
    iget v0, p1, Lag/m;->d:I

    .line 28
    iput v0, p0, Lag/m;->d:I

    .line 29
    iget v0, p1, Lag/m;->e:I

    .line 30
    iput v0, p0, Lag/m;->e:I

    .line 31
    iget v0, p1, Lag/m;->f:I

    .line 32
    iput v0, p0, Lag/m;->f:I

    .line 33
    iget-object v0, p1, Lag/m;->g:Ljava/lang/String;

    .line 34
    iput-object v0, p0, Lag/m;->g:Ljava/lang/String;

    .line 35
    iget-wide v0, p1, Lag/m;->h:J

    .line 36
    iput-wide v0, p0, Lag/m;->h:J

    .line 37
    iget-wide v0, p1, Lag/m;->i:J

    .line 38
    iput-wide v0, p0, Lag/m;->i:J

    .line 39
    iget-boolean p1, p1, Lag/m;->j:Z

    .line 40
    iput-boolean p1, p0, Lag/m;->j:Z

    return-void
.end method
