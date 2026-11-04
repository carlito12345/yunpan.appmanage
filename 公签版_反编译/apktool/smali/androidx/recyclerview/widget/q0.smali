.class public final Landroidx/recyclerview/widget/q0;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "SourceFile"


# instance fields
.field public a:Z

.field public final synthetic b:Landroidx/recyclerview/widget/u0;


# direct methods
.method public constructor <init>(Landroidx/recyclerview/widget/u0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/recyclerview/widget/q0;->b:Landroidx/recyclerview/widget/u0;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 p1, 0x1

    .line 7
    iput-boolean p1, p0, Landroidx/recyclerview/widget/q0;->a:Z

    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final onDown(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public final onLongPress(Landroid/view/MotionEvent;)V
    .locals 6

    .line 1
    iget-boolean v0, p0, Landroidx/recyclerview/widget/q0;->a:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Landroidx/recyclerview/widget/q0;->b:Landroidx/recyclerview/widget/u0;

    .line 7
    .line 8
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/u0;->i(Landroid/view/MotionEvent;)Landroid/view/View;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    if-eqz v1, :cond_2

    .line 13
    .line 14
    iget-object v2, v0, Landroidx/recyclerview/widget/u0;->r:Landroidx/recyclerview/widget/RecyclerView;

    .line 15
    .line 16
    invoke-virtual {v2, v1}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    if-eqz v1, :cond_2

    .line 21
    .line 22
    iget-object v2, v0, Landroidx/recyclerview/widget/u0;->m:Ld6/a;

    .line 23
    .line 24
    iget-object v3, v0, Landroidx/recyclerview/widget/u0;->r:Landroidx/recyclerview/widget/RecyclerView;

    .line 25
    .line 26
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 27
    .line 28
    .line 29
    const-string v4, "recyclerView"

    .line 30
    .line 31
    invoke-static {v3, v4}, Lue/d;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    instance-of v4, v1, Lh6/b;

    .line 35
    .line 36
    const/4 v5, 0x0

    .line 37
    if-eqz v4, :cond_1

    .line 38
    .line 39
    const/4 v2, 0x0

    .line 40
    goto :goto_0

    .line 41
    :cond_1
    iget v2, v2, Ld6/a;->h:I

    .line 42
    .line 43
    shl-int/lit8 v4, v2, 0x10

    .line 44
    .line 45
    or-int/2addr v2, v4

    .line 46
    :goto_0
    sget-object v4, Lx0/b1;->a:Ljava/util/WeakHashMap;

    .line 47
    .line 48
    invoke-static {v3}, Lx0/k0;->d(Landroid/view/View;)I

    .line 49
    .line 50
    .line 51
    move-result v3

    .line 52
    invoke-static {v2, v3}, Landroidx/recyclerview/widget/p0;->a(II)I

    .line 53
    .line 54
    .line 55
    move-result v2

    .line 56
    const/high16 v3, 0xff0000

    .line 57
    .line 58
    and-int/2addr v2, v3

    .line 59
    if-eqz v2, :cond_2

    .line 60
    .line 61
    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getPointerId(I)I

    .line 62
    .line 63
    .line 64
    move-result v2

    .line 65
    iget v3, v0, Landroidx/recyclerview/widget/u0;->l:I

    .line 66
    .line 67
    if-ne v2, v3, :cond_2

    .line 68
    .line 69
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    .line 70
    .line 71
    .line 72
    move-result v2

    .line 73
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    .line 74
    .line 75
    .line 76
    move-result v3

    .line 77
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    .line 78
    .line 79
    .line 80
    move-result p1

    .line 81
    iput v3, v0, Landroidx/recyclerview/widget/u0;->d:F

    .line 82
    .line 83
    iput p1, v0, Landroidx/recyclerview/widget/u0;->e:F

    .line 84
    .line 85
    const/4 p1, 0x0

    .line 86
    iput p1, v0, Landroidx/recyclerview/widget/u0;->i:F

    .line 87
    .line 88
    iput p1, v0, Landroidx/recyclerview/widget/u0;->h:F

    .line 89
    .line 90
    iget-object p1, v0, Landroidx/recyclerview/widget/u0;->m:Ld6/a;

    .line 91
    .line 92
    iget-boolean p1, p1, Ld6/a;->f:Z

    .line 93
    .line 94
    if-eqz p1, :cond_2

    .line 95
    .line 96
    const/4 p1, 0x2

    .line 97
    invoke-virtual {v0, v1, p1}, Landroidx/recyclerview/widget/u0;->n(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V

    .line 98
    .line 99
    .line 100
    nop

    .line 101
    :cond_2
    return-void
.end method
