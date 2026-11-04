.class public final Lr1/o;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public A:F

.field public B:[B

.field public C:I

.field public D:Lr1/g;

.field public E:I

.field public F:I

.field public G:I

.field public H:I

.field public I:I

.field public J:I

.field public K:I

.field public L:I

.field public final M:I

.field public final N:I

.field public O:I

.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Lu7/g0;

.field public d:Ljava/lang/String;

.field public e:I

.field public f:I

.field public g:I

.field public h:I

.field public i:I

.field public j:Ljava/lang/String;

.field public k:Lr1/d0;

.field public l:Ljava/lang/String;

.field public m:Ljava/lang/String;

.field public n:Ljava/lang/String;

.field public o:I

.field public p:I

.field public q:Ljava/util/List;

.field public r:Lr1/l;

.field public s:J

.field public t:Z

.field public u:I

.field public v:I

.field public w:I

.field public x:I

.field public y:F

.field public z:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, Lu7/g0;->b:Lu7/e0;

    .line 3
    sget-object v0, Lu7/y0;->e:Lu7/y0;

    .line 4
    iput-object v0, p0, Lr1/o;->c:Lu7/g0;

    const/4 v0, -0x1

    .line 5
    iput v0, p0, Lr1/o;->h:I

    .line 6
    iput v0, p0, Lr1/o;->i:I

    .line 7
    iput v0, p0, Lr1/o;->o:I

    .line 8
    iput v0, p0, Lr1/o;->p:I

    const-wide v1, 0x7fffffffffffffffL

    .line 9
    iput-wide v1, p0, Lr1/o;->s:J

    .line 10
    iput v0, p0, Lr1/o;->u:I

    .line 11
    iput v0, p0, Lr1/o;->v:I

    .line 12
    iput v0, p0, Lr1/o;->w:I

    .line 13
    iput v0, p0, Lr1/o;->x:I

    const/high16 v1, -0x40800000    # -1.0f

    .line 14
    iput v1, p0, Lr1/o;->y:F

    const/high16 v1, 0x3f800000    # 1.0f

    .line 15
    iput v1, p0, Lr1/o;->A:F

    .line 16
    iput v0, p0, Lr1/o;->C:I

    .line 17
    iput v0, p0, Lr1/o;->E:I

    .line 18
    iput v0, p0, Lr1/o;->F:I

    .line 19
    iput v0, p0, Lr1/o;->G:I

    .line 20
    iput v0, p0, Lr1/o;->H:I

    .line 21
    iput v0, p0, Lr1/o;->K:I

    const/4 v1, 0x1

    .line 22
    iput v1, p0, Lr1/o;->L:I

    .line 23
    iput v0, p0, Lr1/o;->M:I

    .line 24
    iput v0, p0, Lr1/o;->N:I

    const/4 v0, 0x0

    .line 25
    iput v0, p0, Lr1/o;->O:I

    .line 26
    iput v0, p0, Lr1/o;->g:I

    return-void
.end method

.method public constructor <init>(Lr1/p;)V
    .locals 2

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iget-object v0, p1, Lr1/p;->a:Ljava/lang/String;

    iput-object v0, p0, Lr1/o;->a:Ljava/lang/String;

    .line 29
    iget-object v0, p1, Lr1/p;->b:Ljava/lang/String;

    iput-object v0, p0, Lr1/o;->b:Ljava/lang/String;

    .line 30
    iget-object v0, p1, Lr1/p;->c:Lu7/g0;

    iput-object v0, p0, Lr1/o;->c:Lu7/g0;

    .line 31
    iget-object v0, p1, Lr1/p;->d:Ljava/lang/String;

    iput-object v0, p0, Lr1/o;->d:Ljava/lang/String;

    .line 32
    iget v0, p1, Lr1/p;->e:I

    iput v0, p0, Lr1/o;->e:I

    .line 33
    iget v0, p1, Lr1/p;->f:I

    iput v0, p0, Lr1/o;->f:I

    .line 34
    iget v0, p1, Lr1/p;->h:I

    iput v0, p0, Lr1/o;->h:I

    .line 35
    iget v0, p1, Lr1/p;->i:I

    iput v0, p0, Lr1/o;->i:I

    .line 36
    iget-object v0, p1, Lr1/p;->k:Ljava/lang/String;

    iput-object v0, p0, Lr1/o;->j:Ljava/lang/String;

    .line 37
    iget-object v0, p1, Lr1/p;->l:Lr1/d0;

    iput-object v0, p0, Lr1/o;->k:Lr1/d0;

    .line 38
    iget-object v0, p1, Lr1/p;->m:Ljava/lang/String;

    iput-object v0, p0, Lr1/o;->l:Ljava/lang/String;

    .line 39
    iget-object v0, p1, Lr1/p;->n:Ljava/lang/String;

    iput-object v0, p0, Lr1/o;->m:Ljava/lang/String;

    .line 40
    iget-object v0, p1, Lr1/p;->o:Ljava/lang/String;

    iput-object v0, p0, Lr1/o;->n:Ljava/lang/String;

    .line 41
    iget v0, p1, Lr1/p;->p:I

    iput v0, p0, Lr1/o;->o:I

    .line 42
    iget v0, p1, Lr1/p;->q:I

    iput v0, p0, Lr1/o;->p:I

    .line 43
    iget-object v0, p1, Lr1/p;->r:Ljava/util/List;

    iput-object v0, p0, Lr1/o;->q:Ljava/util/List;

    .line 44
    iget-object v0, p1, Lr1/p;->s:Lr1/l;

    iput-object v0, p0, Lr1/o;->r:Lr1/l;

    .line 45
    iget-wide v0, p1, Lr1/p;->t:J

    iput-wide v0, p0, Lr1/o;->s:J

    .line 46
    iget-boolean v0, p1, Lr1/p;->u:Z

    iput-boolean v0, p0, Lr1/o;->t:Z

    .line 47
    iget v0, p1, Lr1/p;->v:I

    iput v0, p0, Lr1/o;->u:I

    .line 48
    iget v0, p1, Lr1/p;->w:I

    iput v0, p0, Lr1/o;->v:I

    .line 49
    iget v0, p1, Lr1/p;->x:I

    iput v0, p0, Lr1/o;->w:I

    .line 50
    iget v0, p1, Lr1/p;->y:I

    iput v0, p0, Lr1/o;->x:I

    .line 51
    iget v0, p1, Lr1/p;->z:F

    iput v0, p0, Lr1/o;->y:F

    .line 52
    iget v0, p1, Lr1/p;->A:I

    iput v0, p0, Lr1/o;->z:I

    .line 53
    iget v0, p1, Lr1/p;->B:F

    iput v0, p0, Lr1/o;->A:F

    .line 54
    iget-object v0, p1, Lr1/p;->C:[B

    iput-object v0, p0, Lr1/o;->B:[B

    .line 55
    iget v0, p1, Lr1/p;->D:I

    iput v0, p0, Lr1/o;->C:I

    .line 56
    iget-object v0, p1, Lr1/p;->E:Lr1/g;

    iput-object v0, p0, Lr1/o;->D:Lr1/g;

    .line 57
    iget v0, p1, Lr1/p;->F:I

    iput v0, p0, Lr1/o;->E:I

    .line 58
    iget v0, p1, Lr1/p;->G:I

    iput v0, p0, Lr1/o;->F:I

    .line 59
    iget v0, p1, Lr1/p;->H:I

    iput v0, p0, Lr1/o;->G:I

    .line 60
    iget v0, p1, Lr1/p;->I:I

    iput v0, p0, Lr1/o;->H:I

    .line 61
    iget v0, p1, Lr1/p;->J:I

    iput v0, p0, Lr1/o;->I:I

    .line 62
    iget v0, p1, Lr1/p;->K:I

    iput v0, p0, Lr1/o;->J:I

    .line 63
    iget v0, p1, Lr1/p;->L:I

    iput v0, p0, Lr1/o;->K:I

    .line 64
    iget v0, p1, Lr1/p;->M:I

    iput v0, p0, Lr1/o;->L:I

    .line 65
    iget v0, p1, Lr1/p;->N:I

    iput v0, p0, Lr1/o;->M:I

    .line 66
    iget v0, p1, Lr1/p;->O:I

    iput v0, p0, Lr1/o;->N:I

    .line 67
    iget p1, p1, Lr1/p;->P:I

    iput p1, p0, Lr1/o;->O:I

    return-void
.end method


# virtual methods
.method public final a()Lr1/p;
    .locals 1

    .line 1
    new-instance v0, Lr1/p;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lr1/p;-><init>(Lr1/o;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public final b(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p1}, Lr1/e0;->l(Ljava/lang/String;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iput-object p1, p0, Lr1/o;->m:Ljava/lang/String;

    .line 6
    .line 7
    return-void
.end method

.method public final c(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p1}, Lr1/e0;->l(Ljava/lang/String;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iput-object p1, p0, Lr1/o;->n:Ljava/lang/String;

    .line 6
    .line 7
    return-void
.end method
