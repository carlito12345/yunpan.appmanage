.class public abstract Lh1/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:I

.field public b:I

.field public c:I

.field public d:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, Lm7/e;->b:Lm7/e;

    if-nez v0, :cond_0

    .line 3
    new-instance v0, Lm7/e;

    const/16 v1, 0x19

    invoke-direct {v0, v1}, Lm7/e;-><init>(I)V

    sput-object v0, Lm7/e;->b:Lm7/e;

    :cond_0
    return-void
.end method

.method public constructor <init>(ILjava/lang/Class;II)V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput p1, p0, Lh1/c;->a:I

    .line 12
    iput-object p2, p0, Lh1/c;->d:Ljava/lang/Object;

    .line 13
    iput p3, p0, Lh1/c;->c:I

    .line 14
    iput p4, p0, Lh1/c;->b:I

    return-void
.end method

.method public constructor <init>(Lke/f;)V
    .locals 1

    const-string v0, "map"

    invoke-static {p1, v0}, Lue/d;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput-object p1, p0, Lh1/c;->d:Ljava/lang/Object;

    const/4 v0, -0x1

    .line 6
    iput v0, p0, Lh1/c;->b:I

    .line 7
    iget p1, p1, Lke/f;->h:I

    .line 8
    iput p1, p0, Lh1/c;->c:I

    .line 9
    invoke-virtual {p0}, Lh1/c;->e()V

    return-void
.end method


# virtual methods
.method public a(I)I
    .locals 2

    .line 1
    iget v0, p0, Lh1/c;->c:I

    .line 2
    .line 3
    if-ge p1, v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lh1/c;->d:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v0, Ljava/nio/ByteBuffer;

    .line 8
    .line 9
    iget v1, p0, Lh1/c;->b:I

    .line 10
    .line 11
    add-int/2addr v1, p1

    .line 12
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->getShort(I)S

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 p1, 0x0

    .line 18
    :goto_0
    return p1
.end method

.method public b()V
    .locals 2

    .line 1
    iget-object v0, p0, Lh1/c;->d:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lke/f;

    .line 4
    .line 5
    iget v0, v0, Lke/f;->h:I

    .line 6
    .line 7
    iget v1, p0, Lh1/c;->c:I

    .line 8
    .line 9
    if-ne v0, v1, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    new-instance v0, Ljava/util/ConcurrentModificationException;

    .line 13
    .line 14
    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    .line 15
    .line 16
    .line 17
    throw v0
.end method

.method public abstract c(Landroid/view/View;)Ljava/lang/Object;
.end method

.method public abstract d(Landroid/view/View;Ljava/lang/Object;)V
.end method

.method public e()V
    .locals 3

    .line 1
    :goto_0
    iget v0, p0, Lh1/c;->a:I

    .line 2
    .line 3
    iget-object v1, p0, Lh1/c;->d:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast v1, Lke/f;

    .line 6
    .line 7
    iget v2, v1, Lke/f;->f:I

    .line 8
    .line 9
    if-ge v0, v2, :cond_0

    .line 10
    .line 11
    iget-object v1, v1, Lke/f;->c:[I

    .line 12
    .line 13
    aget v1, v1, v0

    .line 14
    .line 15
    if-gez v1, :cond_0

    .line 16
    .line 17
    add-int/lit8 v0, v0, 0x1

    .line 18
    .line 19
    iput v0, p0, Lh1/c;->a:I

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    return-void
.end method

.method public f(Landroid/view/View;Ljava/lang/Object;)V
    .locals 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    iget v1, p0, Lh1/c;->b:I

    .line 4
    .line 5
    if-lt v0, v1, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0, p1, p2}, Lh1/c;->d(Landroid/view/View;Ljava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    goto :goto_2

    .line 11
    :cond_0
    const/16 v1, 0x13

    .line 12
    .line 13
    if-lt v0, v1, :cond_6

    .line 14
    .line 15
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 16
    .line 17
    iget v1, p0, Lh1/c;->b:I

    .line 18
    .line 19
    if-lt v0, v1, :cond_1

    .line 20
    .line 21
    invoke-virtual {p0, p1}, Lh1/c;->c(Landroid/view/View;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    goto :goto_0

    .line 26
    :cond_1
    const/16 v1, 0x13

    .line 27
    .line 28
    if-lt v0, v1, :cond_2

    .line 29
    .line 30
    iget v0, p0, Lh1/c;->a:I

    .line 31
    .line 32
    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    iget-object v1, p0, Lh1/c;->d:Ljava/lang/Object;

    .line 37
    .line 38
    check-cast v1, Ljava/lang/Class;

    .line 39
    .line 40
    invoke-virtual {v1, v0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    .line 41
    .line 42
    .line 43
    move-result v1

    .line 44
    if-eqz v1, :cond_2

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_2
    const/4 v0, 0x0

    .line 48
    :goto_0
    invoke-virtual {p0, v0, p2}, Lh1/c;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 49
    .line 50
    .line 51
    move-result v0

    .line 52
    if-eqz v0, :cond_6

    .line 53
    .line 54
    invoke-static {p1}, Lx0/b1;->d(Landroid/view/View;)Landroid/view/View$AccessibilityDelegate;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    if-nez v0, :cond_3

    .line 59
    .line 60
    const/4 v0, 0x0

    .line 61
    goto :goto_1

    .line 62
    :cond_3
    instance-of v1, v0, Lx0/a;

    .line 63
    .line 64
    if-eqz v1, :cond_4

    .line 65
    .line 66
    check-cast v0, Lx0/a;

    .line 67
    .line 68
    iget-object v0, v0, Lx0/a;->a:Lx0/c;

    .line 69
    .line 70
    goto :goto_1

    .line 71
    :cond_4
    new-instance v1, Lx0/c;

    .line 72
    .line 73
    invoke-direct {v1, v0}, Lx0/c;-><init>(Landroid/view/View$AccessibilityDelegate;)V

    .line 74
    .line 75
    .line 76
    move-object v0, v1

    .line 77
    :goto_1
    if-nez v0, :cond_5

    .line 78
    .line 79
    new-instance v0, Lx0/c;

    .line 80
    .line 81
    invoke-direct {v0}, Lx0/c;-><init>()V

    .line 82
    .line 83
    .line 84
    :cond_5
    invoke-static {p1, v0}, Lx0/b1;->x(Landroid/view/View;Lx0/c;)V

    .line 85
    .line 86
    .line 87
    iget v0, p0, Lh1/c;->a:I

    .line 88
    .line 89
    invoke-virtual {p1, v0, p2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 90
    .line 91
    .line 92
    iget p2, p0, Lh1/c;->c:I

    .line 93
    .line 94
    invoke-static {p2, p1}, Lx0/b1;->n(ILandroid/view/View;)V

    .line 95
    .line 96
    .line 97
    :cond_6
    :goto_2
    return-void
.end method

.method public abstract g(Ljava/lang/Object;Ljava/lang/Object;)Z
.end method

.method public hasNext()Z
    .locals 2

    .line 1
    iget v0, p0, Lh1/c;->a:I

    .line 2
    .line 3
    iget-object v1, p0, Lh1/c;->d:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast v1, Lke/f;

    .line 6
    .line 7
    iget v1, v1, Lke/f;->f:I

    .line 8
    .line 9
    if-ge v0, v1, :cond_0

    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 v0, 0x0

    .line 14
    :goto_0
    return v0
.end method

.method public remove()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lh1/c;->b()V

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lh1/c;->b:I

    .line 5
    .line 6
    const/4 v1, -0x1

    .line 7
    if-eq v0, v1, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lh1/c;->d:Ljava/lang/Object;

    .line 10
    .line 11
    check-cast v0, Lke/f;

    .line 12
    .line 13
    invoke-virtual {v0}, Lke/f;->c()V

    .line 14
    .line 15
    .line 16
    iget v2, p0, Lh1/c;->b:I

    .line 17
    .line 18
    invoke-virtual {v0, v2}, Lke/f;->n(I)V

    .line 19
    .line 20
    .line 21
    iput v1, p0, Lh1/c;->b:I

    .line 22
    .line 23
    iget v0, v0, Lke/f;->h:I

    .line 24
    .line 25
    iput v0, p0, Lh1/c;->c:I

    .line 26
    .line 27
    return-void

    .line 28
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 29
    .line 30
    const-string v1, "Call next() before removing element from the iterator."

    .line 31
    .line 32
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    throw v0
.end method
