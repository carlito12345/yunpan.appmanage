.class public final Landroidx/recyclerview/widget/f;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final h:Landroidx/recyclerview/widget/e;


# instance fields
.field public final a:Landroidx/recyclerview/widget/c;

.field public final b:La2/g1;

.field public final c:Landroidx/recyclerview/widget/e;

.field public final d:Ljava/util/concurrent/CopyOnWriteArrayList;

.field public e:Ljava/util/List;

.field public f:Ljava/util/List;

.field public g:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Landroidx/recyclerview/widget/e;

    .line 2
    .line 3
    invoke-direct {v0}, Landroidx/recyclerview/widget/e;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Landroidx/recyclerview/widget/f;->h:Landroidx/recyclerview/widget/e;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>(Landroidx/recyclerview/widget/c;La2/g1;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Landroidx/recyclerview/widget/f;->d:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 10
    .line 11
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iput-object v0, p0, Landroidx/recyclerview/widget/f;->f:Ljava/util/List;

    .line 16
    .line 17
    iput-object p1, p0, Landroidx/recyclerview/widget/f;->a:Landroidx/recyclerview/widget/c;

    .line 18
    .line 19
    iput-object p2, p0, Landroidx/recyclerview/widget/f;->b:La2/g1;

    .line 20
    .line 21
    sget-object p1, Landroidx/recyclerview/widget/f;->h:Landroidx/recyclerview/widget/e;

    .line 22
    .line 23
    iput-object p1, p0, Landroidx/recyclerview/widget/f;->c:Landroidx/recyclerview/widget/e;

    .line 24
    .line 25
    return-void
.end method


# virtual methods
.method public final a(Ljava/util/List;Ljava/lang/Runnable;)V
    .locals 1

    .line 1
    iget-object p1, p0, Landroidx/recyclerview/widget/f;->d:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    check-cast v0, Landroidx/recyclerview/widget/b1;

    .line 18
    .line 19
    iget-object v0, v0, Landroidx/recyclerview/widget/b1;->a:Landroidx/recyclerview/widget/c1;

    .line 20
    .line 21
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    if-eqz p2, :cond_1

    .line 26
    .line 27
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    .line 28
    .line 29
    .line 30
    :cond_1
    return-void
.end method

.method public final b(Ljava/util/List;Ljava/lang/Runnable;)V
    .locals 8

    .line 1
    iget v0, p0, Landroidx/recyclerview/widget/f;->g:I

    .line 2
    .line 3
    add-int/lit8 v5, v0, 0x1

    .line 4
    .line 5
    iput v5, p0, Landroidx/recyclerview/widget/f;->g:I

    .line 6
    .line 7
    iget-object v3, p0, Landroidx/recyclerview/widget/f;->e:Ljava/util/List;

    .line 8
    .line 9
    if-ne p1, v3, :cond_1

    .line 10
    .line 11
    if-eqz p2, :cond_0

    .line 12
    .line 13
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    .line 14
    .line 15
    .line 16
    :cond_0
    return-void

    .line 17
    :cond_1
    iget-object v0, p0, Landroidx/recyclerview/widget/f;->f:Ljava/util/List;

    .line 18
    .line 19
    const/4 v1, 0x0

    .line 20
    iget-object v2, p0, Landroidx/recyclerview/widget/f;->a:Landroidx/recyclerview/widget/c;

    .line 21
    .line 22
    if-nez p1, :cond_2

    .line 23
    .line 24
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 25
    .line 26
    .line 27
    move-result p1

    .line 28
    const/4 v3, 0x0

    .line 29
    iput-object v3, p0, Landroidx/recyclerview/widget/f;->e:Ljava/util/List;

    .line 30
    .line 31
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 32
    .line 33
    .line 34
    move-result-object v3

    .line 35
    iput-object v3, p0, Landroidx/recyclerview/widget/f;->f:Ljava/util/List;

    .line 36
    .line 37
    invoke-virtual {v2, v1, p1}, Landroidx/recyclerview/widget/c;->e(II)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {p0, v0, p2}, Landroidx/recyclerview/widget/f;->a(Ljava/util/List;Ljava/lang/Runnable;)V

    .line 41
    .line 42
    .line 43
    return-void

    .line 44
    :cond_2
    if-nez v3, :cond_3

    .line 45
    .line 46
    iput-object p1, p0, Landroidx/recyclerview/widget/f;->e:Ljava/util/List;

    .line 47
    .line 48
    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 49
    .line 50
    .line 51
    move-result-object v3

    .line 52
    iput-object v3, p0, Landroidx/recyclerview/widget/f;->f:Ljava/util/List;

    .line 53
    .line 54
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 55
    .line 56
    .line 57
    move-result p1

    .line 58
    invoke-virtual {v2, v1, p1}, Landroidx/recyclerview/widget/c;->d(II)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {p0, v0, p2}, Landroidx/recyclerview/widget/f;->a(Ljava/util/List;Ljava/lang/Runnable;)V

    .line 62
    .line 63
    .line 64
    return-void

    .line 65
    :cond_3
    iget-object v0, p0, Landroidx/recyclerview/widget/f;->b:La2/g1;

    .line 66
    .line 67
    iget-object v0, v0, La2/g1;->b:Ljava/lang/Object;

    .line 68
    .line 69
    check-cast v0, Ljava/util/concurrent/ExecutorService;

    .line 70
    .line 71
    new-instance v7, Landroidx/fragment/app/u1;

    .line 72
    .line 73
    move-object v1, v7

    .line 74
    move-object v2, p0

    .line 75
    move-object v4, p1

    .line 76
    move-object v6, p2

    .line 77
    invoke-direct/range {v1 .. v6}, Landroidx/fragment/app/u1;-><init>(Landroidx/recyclerview/widget/f;Ljava/util/List;Ljava/util/List;ILjava/lang/Runnable;)V

    .line 78
    .line 79
    .line 80
    invoke-interface {v0, v7}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 81
    .line 82
    .line 83
    return-void
.end method
