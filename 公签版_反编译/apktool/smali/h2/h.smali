.class public final Lh2/h;
.super Lr1/u0;
.source "SourceFile"


# instance fields
.field public final A:Z

.field public final B:Z

.field public final C:Z

.field public final D:Z

.field public final E:Landroid/util/SparseArray;

.field public final F:Landroid/util/SparseBooleanArray;

.field public final x:Z

.field public final y:Z

.field public final z:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lr1/u0;-><init>()V

    .line 2
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lh2/h;->E:Landroid/util/SparseArray;

    .line 3
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lh2/h;->F:Landroid/util/SparseBooleanArray;

    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Lh2/h;->x:Z

    .line 5
    iput-boolean v0, p0, Lh2/h;->y:Z

    .line 6
    iput-boolean v0, p0, Lh2/h;->z:Z

    .line 7
    iput-boolean v0, p0, Lh2/h;->A:Z

    .line 8
    iput-boolean v0, p0, Lh2/h;->B:Z

    .line 9
    iput-boolean v0, p0, Lh2/h;->C:Z

    .line 10
    iput-boolean v0, p0, Lh2/h;->D:Z

    return-void
.end method

.method public constructor <init>(Lh2/i;)V
    .locals 5

    .line 11
    invoke-direct {p0, p1}, Lr1/u0;-><init>(Lr1/v0;)V

    .line 12
    iget-boolean v0, p1, Lh2/i;->x:Z

    iput-boolean v0, p0, Lh2/h;->x:Z

    .line 13
    iget-boolean v0, p1, Lh2/i;->y:Z

    iput-boolean v0, p0, Lh2/h;->y:Z

    .line 14
    iget-boolean v0, p1, Lh2/i;->z:Z

    iput-boolean v0, p0, Lh2/h;->z:Z

    .line 15
    iget-boolean v0, p1, Lh2/i;->A:Z

    iput-boolean v0, p0, Lh2/h;->A:Z

    .line 16
    iget-boolean v0, p1, Lh2/i;->B:Z

    iput-boolean v0, p0, Lh2/h;->B:Z

    .line 17
    iget-boolean v0, p1, Lh2/i;->C:Z

    iput-boolean v0, p0, Lh2/h;->C:Z

    .line 18
    iget-boolean v0, p1, Lh2/i;->D:Z

    iput-boolean v0, p0, Lh2/h;->D:Z

    .line 19
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    const/4 v1, 0x0

    .line 20
    :goto_0
    iget-object v2, p1, Lh2/i;->E:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 21
    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    new-instance v4, Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    invoke-direct {v4, v2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    invoke-virtual {v0, v3, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 22
    :cond_0
    iput-object v0, p0, Lh2/h;->E:Landroid/util/SparseArray;

    .line 23
    iget-object p1, p1, Lh2/i;->F:Landroid/util/SparseBooleanArray;

    invoke-virtual {p1}, Landroid/util/SparseBooleanArray;->clone()Landroid/util/SparseBooleanArray;

    move-result-object p1

    iput-object p1, p0, Lh2/h;->F:Landroid/util/SparseBooleanArray;

    return-void
.end method


# virtual methods
.method public final a()Lr1/v0;
    .locals 1

    .line 1
    new-instance v0, Lh2/i;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lh2/i;-><init>(Lh2/h;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public final b(I)Lr1/u0;
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lr1/u0;->b(I)Lr1/u0;

    .line 2
    .line 3
    .line 4
    return-object p0
.end method

.method public final d()Lr1/u0;
    .locals 1

    .line 1
    const/4 v0, -0x3

    .line 2
    iput v0, p0, Lr1/u0;->u:I

    .line 3
    .line 4
    return-object p0
.end method

.method public final e(Lr1/s0;)Lr1/u0;
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lr1/u0;->e(Lr1/s0;)Lr1/u0;

    .line 2
    .line 3
    .line 4
    return-object p0
.end method

.method public final f()Lr1/u0;
    .locals 0

    .line 1
    invoke-super {p0}, Lr1/u0;->f()Lr1/u0;

    .line 2
    .line 3
    .line 4
    return-object p0
.end method

.method public final g([Ljava/lang/String;)Lr1/u0;
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lr1/u0;->g([Ljava/lang/String;)Lr1/u0;

    .line 2
    .line 3
    .line 4
    return-object p0
.end method

.method public final h()Lr1/u0;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lr1/u0;->s:Z

    .line 3
    .line 4
    return-object p0
.end method

.method public final i(IZ)Lr1/u0;
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lr1/u0;->i(IZ)Lr1/u0;

    .line 2
    .line 3
    .line 4
    return-object p0
.end method

.method public final j(Ljava/util/Set;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lr1/u0;->w:Ljava/util/HashSet;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lr1/u0;->w:Ljava/util/HashSet;

    .line 7
    .line 8
    invoke-virtual {v0, p1}, Ljava/util/AbstractCollection;->addAll(Ljava/util/Collection;)Z

    .line 9
    .line 10
    .line 11
    return-void
.end method
