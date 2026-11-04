.class public final Lr1/t;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:J

.field public b:J

.field public c:J

.field public d:F

.field public e:F


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 2
    iput-wide v0, p0, Lr1/t;->a:J

    .line 3
    iput-wide v0, p0, Lr1/t;->b:J

    .line 4
    iput-wide v0, p0, Lr1/t;->c:J

    const v0, -0x800001

    .line 5
    iput v0, p0, Lr1/t;->d:F

    .line 6
    iput v0, p0, Lr1/t;->e:F

    return-void
.end method

.method public constructor <init>(Lr1/u;)V
    .locals 2

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iget-wide v0, p1, Lr1/u;->a:J

    iput-wide v0, p0, Lr1/t;->a:J

    .line 9
    iget-wide v0, p1, Lr1/u;->b:J

    iput-wide v0, p0, Lr1/t;->b:J

    .line 10
    iget-wide v0, p1, Lr1/u;->c:J

    iput-wide v0, p0, Lr1/t;->c:J

    .line 11
    iget v0, p1, Lr1/u;->d:F

    iput v0, p0, Lr1/t;->d:F

    .line 12
    iget p1, p1, Lr1/u;->e:F

    iput p1, p0, Lr1/t;->e:F

    return-void
.end method


# virtual methods
.method public final a()Lr1/u;
    .locals 1

    .line 1
    new-instance v0, Lr1/u;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lr1/u;-><init>(Lr1/t;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method
