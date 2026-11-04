.class public final La2/w;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:I

.field public b:I

.field public c:I

.field public d:Z

.field public e:Z

.field public f:I

.field public g:Lr1/d;

.field public h:I

.field public i:I

.field public j:Z

.field public k:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, Lr1/d;->d:Lr1/d;

    iput-object v0, p0, La2/w;->g:Lr1/d;

    const/4 v0, 0x0

    .line 3
    iput v0, p0, La2/w;->h:I

    const/4 v0, -0x1

    .line 4
    iput v0, p0, La2/w;->i:I

    return-void
.end method

.method public constructor <init>(La2/x;)V
    .locals 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iget v0, p1, La2/x;->a:I

    iput v0, p0, La2/w;->a:I

    .line 7
    iget v0, p1, La2/x;->b:I

    iput v0, p0, La2/w;->b:I

    .line 8
    iget v0, p1, La2/x;->c:I

    iput v0, p0, La2/w;->c:I

    .line 9
    iget-boolean v0, p1, La2/x;->d:Z

    iput-boolean v0, p0, La2/w;->d:Z

    .line 10
    iget-boolean v0, p1, La2/x;->e:Z

    iput-boolean v0, p0, La2/w;->e:Z

    .line 11
    iget v0, p1, La2/x;->f:I

    iput v0, p0, La2/w;->f:I

    .line 12
    iget-object v0, p1, La2/x;->g:Lr1/d;

    iput-object v0, p0, La2/w;->g:Lr1/d;

    .line 13
    iget v0, p1, La2/x;->h:I

    iput v0, p0, La2/w;->h:I

    .line 14
    iget v0, p1, La2/x;->i:I

    iput v0, p0, La2/w;->i:I

    .line 15
    iget-boolean v0, p1, La2/x;->j:Z

    iput-boolean v0, p0, La2/w;->j:Z

    .line 16
    iget-boolean p1, p1, La2/x;->k:Z

    iput-boolean p1, p0, La2/w;->k:Z

    return-void
.end method
